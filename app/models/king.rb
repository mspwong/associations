class King < ActiveRecord::Base
  self.primary_key = 'k_id'
  attr_accessor :country

  has_one :xref_queen_king, foreign_key: 'k_id'
  has_one :queen, through: :xref_queen_king, foreign_key: 'q_id'
end
