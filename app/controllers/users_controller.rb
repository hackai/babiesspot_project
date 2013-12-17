class UsersController < ApplicationController
  def index #means show all my data

  end

  def new #it's shows a view page,the user
    @user = User.new #View page, will give me only the view in the view file.
  end

  def create
      @user = User.new(params[:user]) #it's the logic #(user) will transfer all the users in the terminal (database)
    if @user.save
      redirect_to homes_index_path, notice: "User was successfully created."
    else
      #render :text =>"here"
      render action: "new"
    end
  end

  def show
    @user =User.find(current_user.id)
  end

  def edit #It's the logic,edit gives me the view page to edit the info
  end

  def update #will update the user in the database.
  end

  def destroy
  end
end
