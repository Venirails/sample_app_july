class AddChangesToTables < ActiveRecord::Migration
  def change
	  add_column :books,:price,:float
	  rename_column :employees,:name,:emp_name
	  remove_timestamps :employees
  end
end
