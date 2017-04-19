# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#  username               :string(255)
#  slug                   :string(255)
#  status                 :integer          default(0)
#  department_id          :integer
#  type                   :integer
#  title                  :string(255)
#  address                :string(255)
#  phone                  :string(255)
#  profile_photo          :string(255)
#  current_research       :text(65535)
#  education              :text(65535)
#  achievements           :text(65535)
#  selected_publications  :text(65535)
#  nickname               :string(255)
#  elevator               :boolean
#

class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  #include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :rememberable, :trackable #, :validatable

  rolify

  #has_one :profile
  #enum role: {user: 0, faculty: 1, staff: 2, liftadmin: 3, deptadmin: 4, editor: 5, admin: 6, superadmin: 7, alumniadmin: 8}
  #attr_reader :id

  has_many :conversations, :foreign_key => :sender_id
  has_many :pages
  has_many :experts
  has_many :expertises, through: :experts
  has_many :manderson_visitors
  
  belongs_to :building
  #has_and_belongs_to_many :programs
  
  has_and_belongs_to_many :departments
  #has_and_belongs_to_many :roles, :join_table => :users_roles
  
  enum employee_type: [ :Faculty, :Staff, :VisitingScholar, :VisitingFaculty ]
  #enum status: [ :active, :inactive ]
  #after_initialize :set_default_role, :if => :new_record?


  def faculty_profile
      url = "https://beta.digitalmeasures.com/login/service/v4/UserSchema/USERNAME:#{self.username}/INDIVIDUAL-ACTIVITIES-Business"
      RestClient::Request.execute method: :get, url: url, user: 'ua/fac_reports', password: 'UA$51973'
  end

  #validates :username, presence: true, uniqueness: true
  #before_validation :get_ldap_email
  #before_validation :get_ldap_id

  #after_create do
	#  create_profile(:username => self.username) #  Associations must be defined correctly
  #end

  mount_uploader :profile_photo, ProfilePhotoUploader
  mount_uploader :cv, CvUploader

  scope :active, lambda { where(:status => true) }
  scope :alphasort, lambda { order('last_name ASC')}
  scope :faculty, lambda { where(:employee_type => 0)}
  scope :staff, lambda { where(:employee_type => 1)}
  scope :alpha_range, lambda { where("from = ? AND to = ?", from, to) }

  def slug_candidates
    [
      :username,
      [:username, :last_name],
      [:username, :last_name, :first_name]

    ]
  end
                                                       
  def set_default_role
    self.add_role :not_self_registered
  end

  def get_ldap_email
    self.email = Devise::LDAP::Adapter.get_ldap_param(self.username,"mail").first
  end

  def get_ldap_id
    self.id = Devise::LDAP::Adapter.get_ldap_param(self.username,"uidnumber").first
  end

  # hack for remember_token
  #def authenticatable_token
  #  Digest::SHA1.hexdigest(email)[0,29]
  #end

  #def fullname
  #  "#{first_name} #{last_name}"
  #end

  def self.search(search)
    where("fullname LIKE ?", "%#{search}%")
  end

  #Getter and Setter for all_tags vertial attribute
  def all_expertises=(names)
    self.expertises = names.split(",").map do |name|
      Expertise.where(name: name.strip).first_or_create!
    end
  end

  def all_expertises
    self.expertises.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Expertise.find_by_name!(name).users
  end

end