class Taggable < ActiveRecord::Base
  attr_accessible :img_url
  has_many :tags
  belongs_to :user
end
