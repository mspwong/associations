class MissingDonation < ActiveRecord::Base
  self.primary_key = 'mor_id'
  attr_accessor :name

  has_one :xref_missing_donation_shop_event, foreign_key: 'missing_donation_id'
  has_one :shop_event, through: :xref_missing_donation_shop_event, foreign_key: 'shop_event_id'
end
