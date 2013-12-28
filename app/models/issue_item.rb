class IssueItem < ActiveRecord::Base

  has_many :products

  attr_accessor :comment, :startDate, :finishDate
end
