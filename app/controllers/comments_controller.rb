class CommentsController < ApplicationController
  before_action :set_story,  only: [:new]
  def index
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to stories_show_path(params[:story_id])
  end

  def show
    @story=Story.find(params[:format])
    @comment=@story.comments
  end

  def new
    @comment = Comment.new
  end

  private

  def set_story
    @story = Story.find(params[:format])
  end

  def comment_params
    params.permit(:story_id, :description, :user_name)
  end
end
