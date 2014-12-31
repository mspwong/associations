class XrefGirlfriendBoyfriend < ActiveRecord::Base
  belongs_to :girlfriend, foreign_key: 'galfriend_id'
  belongs_to :boyfriend, foreign_key: 'guyfriend_id'
end
