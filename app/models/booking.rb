class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_one :review, dependent: :destroy

  before_save :set_amount

  def set_amount
    self.amount = self.activity.price
  end

  monetize :amount_cents

end
