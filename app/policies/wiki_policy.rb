class  WikiPolicy < ApplicationPolicy
  def update?
    user.present? && record.user == user
  end
end