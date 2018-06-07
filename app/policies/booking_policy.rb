class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end


  def create?
    return true
  end

  def mybookings?
    record.all? do |record_item|
      record_item.user == user
    end
  end
end
