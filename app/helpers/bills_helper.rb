module BillsHelper

	def number_to_euro(amount)
		number_to_currency(amount, :unit=>'€', format: "%u %n");
	end

	def format_period(period)
		logger.debug "BillsHelper:format_period: period before format= #{period}";
		formatted_period = "";
		if period != nil
			formatted_period = period.strftime("%d-%m-%Y");
		end
		logger.debug "BillsHelper:format_period: period after format= #{formatted_period}";
		return formatted_period;
	end
end
