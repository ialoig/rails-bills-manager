class DashboardController < ApplicationController

	def index
		@bills = Bill.all
	end

end
