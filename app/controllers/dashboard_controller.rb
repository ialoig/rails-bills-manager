class DashboardController < ApplicationController

	def index
		@bills = Bill.all
		@companies = Company.all
	end

end
