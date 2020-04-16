# frozen_string_literal: true

class PublicationPolicy < ApplicationPolicy
  def destroy?
    if user.is_admin?
      true
    else
      false
    end
  end

end
