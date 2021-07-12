class OrderItem < ApplicationRecord
  belongs_to :orderable, polymorphic: true
  belongs_to :order

  before_save :set_unit_price
  before_save :set_total

  def unit_price
    #If there is a record 
    if presisted?
      self[:unit_price]
    else
      book.price
    end
  end

  def total
    return unit_price * quantity
  end

  private

  def set_unit_price
    self[:unit_price] = unit_price
  end
  def set_total
    self[:total] = total * quantity
  end
end
