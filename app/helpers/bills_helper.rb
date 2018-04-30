module BillsHelper

	def number_to_euro(amount)
		number_to_currency(amount, :unit=>'€', format: "%u %n");
	end

	def format_period(period)
		period.strftime("%d-%m-%Y");
	end
end
