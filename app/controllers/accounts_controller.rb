class AccountsController < ApplicationController
	before_action :authenticate_user!, only: [ :dashboard]
	before_action :authenticate_user!, only: [ :new, :create,  ]

	def sign_up

		@user = User.new
		render "accounts/index"

	end

	def sign_up_form

		@user = User.new(user_params)

    if @user.save
      session[:current_user_id] = @user.id
      redirect_to '/dashboard'
    else
      flash[:register_errors] = @user.errors.full_messages
      redirect_to '/sign_up'
    end

	end


	private

		def user_params
			params.require(:user).permit(:last_name, :first_name, :email, :gender, :date_of_birth, :password)
		end
	
end
