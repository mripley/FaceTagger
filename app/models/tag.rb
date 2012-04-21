class Tag < ActiveRecord::Base
  attr_accessible :lowerRightX, :lowerRightY, :name, :upperLeftX, :upperLeftY
  belongs_to :taggable
end
