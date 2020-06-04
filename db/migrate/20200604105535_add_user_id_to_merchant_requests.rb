class AddUserIdToMerchantRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :merchant_requests, :user_id, :integer
  end
end
