class AccountsController < ApplicationController
	before_action :authenticate_user!, only: [ :dashboard]
	before_action :authenticate_user!, only: [ :new, :create,  ]

	def sign_up

		@user = User.new
		render "accounts/index"

	end

end
