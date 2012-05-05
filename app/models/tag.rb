class Tag < ActiveRecord::Base
  attr_accessible :lowerRightX, :lowerRightY, :person, :upperLeftX, :upperLeftY
  belongs_to :taggable
  attr_accessible :tags_attributes
end
