class XrefWifeHusband < ActiveRecord::Base
  belongs_to :wife, foreign_key: 'wife_id'
  belongs_to :husband, foreign_key: 'husband_id'
end
