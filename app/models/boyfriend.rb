class Boyfriend < ActiveRecord::Base
  attr_accessor :name

  has_one :xref_girlfriend_boyfriend, foreign_key: 'guyfriend_id'
  has_one :girlfriend, through: :xref_girlfriend_boyfriend, foreign_key: 'galfriend_id'
end
