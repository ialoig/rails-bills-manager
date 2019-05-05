class WelcomeController < ApplicationController

	def index
		if not signed_in?.blank?
			redirect_to home_path
		end
	end

end
