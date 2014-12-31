class XrefMissingDonationShopEvent < ActiveRecord::Base
  belongs_to :shop_event, foreign_key: 'shop_event_id'
  belongs_to :missing_donation, foreign_key: 'missing_donation_id'
end
