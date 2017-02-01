class Verification < ActiveRecord::Base
  belongs_to :user
  scope :orders, -> {where.not(order_id:'')}
  def self.order_status
    orders = self.orders
    orders.each {|order| order.check_order}
  end
  def check_order
    check = V1::UserVerificationService.new self.user
    check.order_status
  end
end
