class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :amount, default: 900
      t.string :interval, default: "month"
      t.string :stripe_id
      t.string :name

      t.timestamps null: false
    end
  end
end
