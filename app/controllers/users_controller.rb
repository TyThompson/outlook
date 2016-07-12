class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def index
    @users = User.all
  end

  def new
    @account = AccountForm.new
  end

  def edit
  end

  def show
    @phones = Phone.where(user_id: @user.id)
  end

  def create
    @account = AccountForm.new account_params
    if @account.save
      redirect_to root_path, notice: "Account info saved"
    else
      render :new
    end
  end

private

  def account_params
    params.require(:account_form).permit(:username, phone_type: [], phone_number: [])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
