class MerchantRequest < ApplicationRecord
  extend FriendlyId
  friendly_id :merchant_type, use: :slugged
  belongs_to  :user , optional: true
end
