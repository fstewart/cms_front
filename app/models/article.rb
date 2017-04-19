# == Schema Information
#
# Table name: articles
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  body               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  news_category_id   :integer
#  url                :string(255)
#  quote              :string(255)
#  name               :string(255)
#  designation        :string(255)
#  phone              :string(255)
#  email              :string(255)
#  story_url          :string(255)
#  story_short_desc   :string(255)
#  quote_author       :string(255)
#  quote_author_title :string(255)
#  photo              :string(255)
#  home_photo         :string(255)
#  school_affi_degree :string(255)
#  school_affi_year   :integer
#  news_date          :date
#  approved_date      :date
#  featured           :boolean
#  quoted             :boolean
#  status             :boolean
#  slug               :string(255)
#

class Article < ActiveRecord::Base
 #extend FriendlyId

  belongs_to :user

  has_many :article_news_categories
  has_many :news_categories, through: :article_news_categories

  has_many :taggings
  has_many :tags, through: :taggings

  scope :published, -> { where status: true }
  scope :unpublished, -> { where status: false }
  scope :featured, -> { where featured: true }
  scope :sorted, lambda { order('articles.news_date DESC') }


  #friendly_id :title, use: [:slugged, :history]
  validates_presence_of :title

  #after_create :autobuild_searchable
  #after_commit :update_search

  #Getter and Setter for all_tags vertial attribute
  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).articles
  end
  
  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
    where("body LIKE ?", "%#{search}%")
  end

  mount_uploader :photo, PhotoUploader
  mount_uploader :home_photo, HomePhotoUploader

  def should_generate_new_friendly_id?
    slug.blank? || story_url_changed?
  end

  private



end
