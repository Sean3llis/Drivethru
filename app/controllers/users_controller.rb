class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
  	@users = User.all
  end

  def show
  end

  def new
  	@user = User.new
  end


  def edit

  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		render 'index'
  	else
  		render 'new'
  	end
  end

  def update
    # byebug
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @vendor, notice: 'Vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor }
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  	def set_user
  		@user = User.find(params[:id])
  	end

	  def user_params
	  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
	  end

end
