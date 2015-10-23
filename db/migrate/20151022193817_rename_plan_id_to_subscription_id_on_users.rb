class RenamePlanIdToSubscriptionIdOnUsers < ActiveRecord::Migration
  def change
    rename_column :users, :plan_id, :subscription_id
  end
end
