class TaggingController < ApplicationController
  before_filter :authenticate_user!

  def tagimage
    logger.debug("in tag image. Id = #{params[:id]}")
    @taggable = current_user.taggables.find(params[:id])
    
    if !@taggable.nil?
      @url_path = URI.parse(@taggable.photo.url(:editable)).path
      @tags = @taggable.tags
    end
  end


end
