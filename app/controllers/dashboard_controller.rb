class DashboardController < ApplicationController
	before_action :authenticate_user!

	def index
		@bills = Bill.all
		@companies = Company.all
	end

end
