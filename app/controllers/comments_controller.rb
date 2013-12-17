class CommentsController < ApplicationController
  def index
    
  end

  def new
  end

  def create
         @comment = Comment.new(params[:comment]) #(user) will transfer all the users in the terminal
  if @comment.save

  else
    render "new"
  end

  def show #i can see only one 
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
