class LikesController < ApplicationController
  def index

  end

  def create
    @like = Like.create(story_id: params[:format])
    redirect_to stories_index_path(params[:story_id])
  end

  def show
  end
end
