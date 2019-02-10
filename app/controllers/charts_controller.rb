class ChartsController < ApplicationController

	def bills_amount_by_year
		if Bill.all.count > 0
			logger.debug "maggiore di zero"
      bills = Bill.group_by_month(:period, format: "%b %y", last: 10).sum(:amount)
      logger.debug "bills = #{bills}"
      render json: [{name: 'Total (€)', data: bills}]
    else
      logger.debug "sono qui"
      bills = Bill.group_by_month(:period, format: "%b %y", last: 10).sum(0)
      render json: [{name: 'Total (€)', data: bills}] 
    end
  end

  def bills_amount_by_company
    last_month = params[:last_month]
    logger.debug "last_month passed= #{last_month}"
    respond_to do |format|
      if Bill.all.count > 0
        amount_by_company = Bill.includes(:company).group('companies.name').group_by_month(:period, format: "%b %y", last: last_month).sum(:amount).chart_json
        format.json {render json: amount_by_company}
        format.js
      else
       amount_by_company = Bill.includes(:company).group_by_month(:period, format: "%b %y", last: last_month).sum(0).chart_json
       format.json {render json: amount_by_company}
       format.js
      end
    end
  end

  def bills_total_amount_by_companies
    if Bill.all.count >0 
      total_by_companies = Bill.includes(:company).group('companies.name').sum(:amount)
      render json: total_by_companies
    end
  end


end