class AddBirthdayTitleAndInfoToUserModel < ActiveRecord::Migration
  def change
    add_column :users, :birthday, :date
    add_column :users, :title, :string
    add_column :users, :information, :string
  end
end
