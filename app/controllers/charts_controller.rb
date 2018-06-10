class ChartsController < ApplicationController

	def bills_amount_by_year
		if Bill.all.count > 0
			bills = Bill.group_by_month_of_year(:period, format: "%b").sum(:amount)
			logger.debug "bills = #{bills}"
  			render json: [{name: 'Total (€)', data: bills}]
  		else
  			bills = Bill.group_by_month_of_year(:period, format: "%b").sum(0)
  			render json: [{name: 'Total (€)', data: bills}] 
  		end
  	end

  	def bills_amount_by_company
  		if Bill.all.count > 0
  			amount_by_company = Bill.includes(:company).group('companies.name').group_by_month_of_year(:period, format: "%b").sum(:amount).chart_json
  			logger.debug "amount_by_company = #{amount_by_company}"
  			render json: amount_by_company
  		else
  			amount_by_company = Bill.includes(:company).group_by_month_of_year(:period, format: "%b").sum(0).chart_json
  			render json: amount_by_company
  		end
  	end
end