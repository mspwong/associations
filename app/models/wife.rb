class Wife < ActiveRecord::Base
  attr_accessor :name

  has_one :xref_wife_husband, foreign_key: 'wife_id'
  has_one :husband, through: :xref_wife_husband, foreign_key: 'husband_id'
end
