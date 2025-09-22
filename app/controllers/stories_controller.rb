class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def create
  end

  def show
    @story = Story.find(params[:format])
  end

end
