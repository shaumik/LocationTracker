class AddLastCheckinAtToUsers < ActiveRecord::Migration
  def change
	  add_column :users, :last_checkin_at, :datetime
  end
end
