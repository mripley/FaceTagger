class Tag < ActiveRecord::Base
  attr_accessible :lowerRightX, :lowerRightY, :person, :upperLeftX, :upperLeftY
  belongs_to :taggable
end
