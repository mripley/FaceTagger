class Taggable < ActiveRecord::Base
 # attr_accessible :img_url
  has_many :tags
  belongs_to :user
  has_attached_file :photo, :styles => { :small => "150x150>", :med => "250x250>", :editable => "600x600>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  attr_accessible :photo
end
