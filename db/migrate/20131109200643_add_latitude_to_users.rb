class AddLatitudeToUsers < ActiveRecord::Migration
  def change
	  add_column :users, :latitutude, :string
  end
end
