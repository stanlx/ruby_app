class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    respond_to do |format|
      format.html
      format.json {render json: UsersDatatable.new(view_context)}

    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

   # respond_to do |format|
   #   format.html # show.html.erb
   #   format.json { render :json => @user }
   # end
  end
end
