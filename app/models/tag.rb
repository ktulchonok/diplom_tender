class Tag < ActiveRecord::Base
  has_many :tag_to_tenders
  has_many :tenders, :through=> :tag_to_tenders
end
