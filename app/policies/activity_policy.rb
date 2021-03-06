class ActivityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      #scope.where(user: user)
    end
  end

  def myactivities?
    record.all? do |record_item|
      record_item.user == user
    end
  end

  def create?
    return true
  end

  # def activitytimer?
  #   return true
  # end

  def update?
    record.user == user
    # - record: the activity passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end

  #def filters?
   # return true
  #end
end
