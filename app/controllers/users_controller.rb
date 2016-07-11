class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @account = Account.new
  end

  def edit
  end

  def show
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
    params.require(:account_form).permit(:username, :phone_type, :phone_number)
  end
end
