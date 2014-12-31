class XrefQueenKing < ActiveRecord::Base
  belongs_to :queen, foreign_key: 'q_id'
  belongs_to :king, foreign_key: 'k_id'
end
