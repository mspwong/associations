class Queen < ActiveRecord::Base
  self.primary_key = 'q_id'
  attr_accessor :country

  has_one :xref_queen_king, foreign_key: 'q_id'
  has_one :king, through: :xref_queen_king, foreign_key: 'k_id'
end
