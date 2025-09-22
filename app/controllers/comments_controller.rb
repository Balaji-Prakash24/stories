class CommentsController < ApplicationController
  before_action :set_story
  def index
  end

  def create
    @comment = Comment.create(comment_params)
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  private

  def set_story
    @story = Story.find(params[:format])
  end

  def comment_params
    params.require(:comment).permit(:story_id, :description, :user_name)
  end
end
