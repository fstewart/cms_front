# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  page_id    :integer
#  position   :integer
#  title      :string(255)
#  desc       :text(65535)
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Section < ActiveRecord::Base
  #extend FriendlyId
  #friendly_id :title, use: :slugged
  
  belongs_to :page
  #validates :page, :presence => true

  #acts_as_list :scope => :page
  #after_save :touch_page

  #has_many :subpages, :class_name => 'Page', :foreign_key => 'parent_id'
  #belongs_to :parent, :class_name => 'Page', :foreign_key => 'parent_id'

  #after_destroy :delete_related_components

  has_many :accordions, :dependent => :delete_all
  accepts_nested_attributes_for :accordions, :allow_destroy => true

  has_many :listgroups, :dependent => :delete_all
  accepts_nested_attributes_for :listgroups, :allow_destroy => true

  has_many :carousels, :dependent => :delete_all
  accepts_nested_attributes_for :carousels, :allow_destroy => true

  has_many :fullslides, :dependent => :delete_all
  accepts_nested_attributes_for :fullslides, :allow_destroy => true

  has_many :timelines, :dependent => :delete_all
  accepts_nested_attributes_for :timelines, :allow_destroy => true

  has_many :imageboxes, :dependent => :delete_all
  accepts_nested_attributes_for :imageboxes, :allow_destroy => true

  has_many :iconboxes, :dependent => :delete_all
  accepts_nested_attributes_for :iconboxes, :allow_destroy => true

  has_many :galleries, :dependent => :delete_all
  accepts_nested_attributes_for :galleries, :allow_destroy => true

  has_many :texts, :dependent => :delete_all
  accepts_nested_attributes_for :texts, :allow_destroy => true

  has_many :videos, :dependent => :delete_all
  accepts_nested_attributes_for :videos, :allow_destroy => true

  has_many :profiles, :dependent => :delete_all
  accepts_nested_attributes_for :profiles, :allow_destroy => true

  has_many :countdowns, :dependent => :delete_all
  accepts_nested_attributes_for :countdowns, :allow_destroy => true

  enum target: { "_self" => 0, "_blank" => 1 }

  scope :published, lambda { where(:status => true) }
  scope :titled, lambda { where.not(:title => '') }
  scope :unpublished, lambda { where(:status => false) }
  scope :sorted, lambda { order('sections.position ASC') }
  scope :oldest_first, lambda { where ('sections.created_at ASC') }
  scope :newest_first, lambda { order('sections.created_at DESC') }
 
  #scope :search, lambda {|query|
  #where(["title LIKE ? OR desc LIKE ?", "%#{query}%","%#{query}%"])
  #}

  def total_accordions
    self.accordions.count
  end

  private

    def touch_page
      page.touch
    end

    def delete_related_components
      self.sections.each do |section|
        # Or perhaps instead of destroy, you would
        # move them to a another page.
        section.destroy
      end
    end

end
