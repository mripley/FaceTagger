class Taggable < ActiveRecord::Base
  has_many :tags
  belongs_to :user

  has_attached_file :photo, :styles => { :small => "150x150>", :med => "250x250>", :editable => "600x600>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  attr_accessible :tags
  attr_accessible :photo
  attr_accessible :user_id

  accepts_nested_attributes_for :tags
  attr_accessible :tags_attributes
end
