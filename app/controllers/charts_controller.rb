class ChartsController < ApplicationController

	def bills_amount_by_year
		bills = Bill.all.group_by_month(:period, last: 12, format: "%B").sum(:amount)
		series = Array.new(11, 0)

    	logger.debug "bills = #{bills}"
  		render json: [{name: 'Total (€) x month', data: bills}]
  	end

  	def bills_amount_by_company
		bills = Bill.group(:period).where('amount > 0')

		result = {}
		bills.each do |b|
			month = b.period.strftime("%B")
			logger.debug "period = #{month}" 
    		logger.debug "company = #{b.company.name}"
    		amount = b.amount
    		if result[b.company.name] == nil
    			result[b.company.name] = amount
    		else
    			result[b.company.name] += amount
    		end
    		logger.debug "result = #{result}"
  		end
  		render json: [{name: 'Total (€)', data: result}]
  	end
end