class RepliesController < ApplicationController

  before_action :set_story,  only: [:new]
  before_action :set_comment, only: [:create]

  def index
  end

  def create
    @reply = Reply.create(comment_params)
  end

  def show

  end


  def new
    @reply = Reply.new
  end


  def set_story
    @story = Story.find(params[:format])

  end
  def set_comment
    story = Story.find(params[:format])
    @comment = story.comment
    binding.pry
  end


  def comment_params
    params.permit(:story_id, :comment_id, :description, :user_name)
  end
end
