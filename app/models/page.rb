# == Schema Information
#
# Table name: pages
#
#  id               :integer          not null, primary key
#  parent_id        :string(255)
#  unit_id          :integer
#  title            :string(255)
#  pagehead         :string(255)
#  page_url         :string(255)
#  external_url     :string(255)
#  short_desc       :string(255)
#  desc             :string(10000)
#  meta_title       :string(255)
#  meta_keyword     :string(255)
#  meta_description :string(255)
#  status           :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  navlabel         :string(255)
#  position         :integer
#  department_id    :integer          default(0)
#  priority         :integer
#  ancestry         :string(255)
#  program_id       :integer
#  emba_id          :integer
#  ces_event_id     :integer
#  slug             :string(255)               git
#  center_id        :integer
#  event_id         :integer
#  article_id       :integer
#  user_id          :integer
#

class Page < ActiveRecord::Base
  before_save :default_parent
  include Authority::Abilities
  #self.authorizer_name = 'PageAuthorizer'

  resourcify

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  include Filterable

  has_many :subpages, :class_name => 'Page', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'Page', :foreign_key => 'parent_id'
  belongs_to :departments, :foreign_key => 'department_id'

  has_many :sections, :dependent => :delete_all
  after_destroy :delete_related_sections

  has_many :calltoactions
  accepts_nested_attributes_for :calltoactions, :allow_destroy => true

  mount_uploader :header_image, HeaderImageUploader

  scope :published, lambda { where(:status => true) }
  scope :unpublished, lambda { where(:status => false) }
  scope :alphasort, lambda { order('title ASC')}
  scope :parental, lambda { where(:parent_id => '0') }
  scope :sorted, lambda { order('position ASC') }
  scope :oldest_first, lambda { where('pages.created_at ASC') }
  scope :newest_first, lambda { order('pages.created_at DESC') }

  def slug_candidates
    [
      :title,
      [:title, :title_and_sequence]
    ]
  end

  def title_and_sequence
    slug = normalize_friencly_id(title)
    sequence = Manual.where("slug like #{slug}--%").count + 2
    "#{slug}--#{sequence}"
  end

  def default_parent
    self.parent_id ||= '0' if self.parent_id.nil?
  end
  
  def children?
    subpages.any?
  end

  def self.find_main
    Page.find(:all, :conditions => ['parent_id IS NULL || parent_id IS 0'], :order => 'priority')
  end

  def self.find_main_public
    Page.find(:all, :conditions => ["parent_id IS NULL and admin != ?", true], :order => 'priority')
  end

  #scope :search, lambda {|query|
  #  where(["title LIKE ? OR desc LIKE ?", "%#{query}%","%#{query}%"])
  #}

  #def slug_candidates
  #  [
  #      [:created_at, :title],
  #  ]
  #end

  
  private

    def delete_related_sections
      self.sections.each do |section|
        # Or perhaps instead of destroy, you would
        # move them to a another page.
        section.destroy
      end
    end

end
