class ChartsController < ApplicationController

	def bills_amount_by_year
		bills = Bill.group(:period).where('amount > 0').sum(:amount)
		render json: [{name: 'Period', data: bills}]
	end
end