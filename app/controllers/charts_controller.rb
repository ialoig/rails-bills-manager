class ChartsController < ApplicationController

	def bills_amount_by_year
		bills = Bill.group_by_month_of_year(:period, format: "%b").sum(:amount)
		logger.debug "bills = #{bills}"
  		render json: [{name: 'Total (€)', data: bills}]
  	end

  	def bills_amount_by_company
  		amount_by_company = Bill.includes(:company).group('companies.name').group_by_month_of_year(:period, format: "%b").sum(:amount).chart_json
  		logger.debug "amount_by_company = #{amount_by_company}"

  		render json: amount_by_company
  	end
end