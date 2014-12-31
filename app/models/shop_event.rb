class ShopEvent < ActiveRecord::Base
  attr_accessor :name

  has_one :xref_missing_donation_shop_event, foreign_key: 'shop_event_id'
  has_one :missing_donation, through: :xref_missing_donation_shop_event, foreign_key: 'missing_donation_id'
end
