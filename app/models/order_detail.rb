class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :soccer_filed
end
