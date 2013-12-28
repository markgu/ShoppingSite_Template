class BillingProduct < ActiveRecord::Base

  belongs_to :billing

  attr_accessor :productName, :amount, :subTotal, :total
end
