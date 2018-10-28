module BillsHelper

	def number_to_euro(amount)
		number_to_currency(amount, :unit=>'€', format: "%u %n");
	end

	def format_period(period)
		logger.debug "period before format= #{period}";
		formatted_period = period.strftime("%d-%m-%Y");
		logger.debug "period after format= #{formatted_period}";
	end
end
