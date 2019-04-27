class ChangeCategoryTypeToBeEnum < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      ALTER TABLE companies ALTER COLUMN category TYPE integer USING (category::integer);
    SQL
  end
end
