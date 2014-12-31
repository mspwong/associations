class Husband < ActiveRecord::Base
  attr_accessor :name

  has_one :xref_wife_husband, foreign_key: 'husband_id'
  has_one :wife, through: :xref_wife_husband, foreign_key: 'wife_id'
end
