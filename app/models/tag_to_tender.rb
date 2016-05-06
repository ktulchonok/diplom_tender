class TagToTender < ActiveRecord::Base
  belongs_to :tender
  belongs_to :tag
end
