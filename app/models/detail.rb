class Detail < ApplicationRecord
  extend FriendlyId
  friendly_id :shop_name, use: :slugged
  belongs_to  :user , optional: true
end
