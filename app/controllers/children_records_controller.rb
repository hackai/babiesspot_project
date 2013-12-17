class ChildrenRecordsController < ApplicationController
  def index
  end

  def new
  end

  def create
         @user = User.new(params[:user]) #(user) will transfer all the users in the terminal
  if @user.save

  else
    render "new"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
