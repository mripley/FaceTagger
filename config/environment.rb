# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
FaceTagger::Application.initialize!

#init the logger
Rails.logger = Logger.new(STDOUT)
