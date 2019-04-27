class AddEndPeriodToBills < ActiveRecord::Migration[5.1]
  def change
  	add_column :bills, :end_period, :datetime
  end
end
