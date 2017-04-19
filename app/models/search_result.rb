class SearchResult < ActiveRecord::Base
  belongs_to :user
  belongs_to :searchable, polymorphic: true
end
