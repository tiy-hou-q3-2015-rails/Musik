class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :amount
      t.string :interval
      t.string :stripe_id

      t.timestamps null: false
    end
  end
end
