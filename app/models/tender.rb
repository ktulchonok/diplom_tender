class Tender < ActiveRecord::Base
  has_many :tag_to_tenders
  has_many :tags, :through => :tag_to_tenders
  belongs_to :area
  belongs_to :category
  belongs_to :user
  has_many :answers

  scope :status, -> (status) { where status: status }
  scope :area, -> (area) { where area: area }
  scope :category, -> (category) { where category: category }
  scope :tenders_like, -> (title) { where("title like ?", "#{title}%")}

end
