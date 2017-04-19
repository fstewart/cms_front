# == Schema Information
#
# Table name: profiles
#
#  id                   :integer          not null, primary key
#  department_id        :integer
#  designation          :integer
#  name                 :string(255)
#  title                :string(255)
#  address              :string(255)
#  phone                :string(255)
#  email                :string(255)
#  profile_photo        :string(255)
#  current_research     :string(255)
#  education            :string(255)
#  achievements         :string(255)
#  selected_publication :text(65535)
#  status               :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  slug                 :string(255)
#  elevator             :boolean
#  first_name           :string(255)
#  last_name            :string(255)
#  nickname             :string(255)
#  user_id              :integer
#  username             :string(255)
#

class Profile < ActiveRecord::Base

  extend FriendlyId
  friendly_id :username, use: [:slugged, :history]

  belongs_to :department
  belongs_to :user
  has_many :experts
  has_many :expertises, through: :experts

  mount_uploader :profile_photo, ProfilePhotoUploader


  #validates_presence_of :name, :slug
  
  #Type of Profile to select Faculty or Staff

  enum designation: [:Faculty, :Staff]

  def fullname
    #if self.nickname?
    #  self.first_name << " " << "(#{self.nickname})" << " " << self.last_name
    #else
    #  self.first_name << " " << self.last_name
    #end
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
    Expertise.find_by_name!(name).profiles
  end


  def self.search(search)
    where("last_name LIKE ?","%#{search}%")
  end

end
