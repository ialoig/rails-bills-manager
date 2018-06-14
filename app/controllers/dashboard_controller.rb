class DashboardController < ApplicationController

	def index
		@bill = Bill.all
	end

end
