class UsersController < ApplicationController
  before_action :current_user, only: [ :show, :edit, :update, :destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # 
  def edit
    @user = User.edit
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    redirect_to user
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    user = User.find(params[:id])
    user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
    redirect_to root_path
  end

  private
   
    # Only allow a list of trusted parameters through.
    def user_params
    params.require(:user).permit(:email, :password)
  
  end
end
