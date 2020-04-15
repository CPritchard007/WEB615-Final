# frozen_string_literal: true

class ApplicationPolicy

  def index?
    true
  end

  def show?
    scope.where(id: record.id).exists?
  end

  def create?
    if user.isadmin?
      true
    else
      false
    end
  end

  def new?
    if user.isadmin?
      true
    else
      false
    end
  end

  def update?
    if user.isadmin?
      true
    else
      false
    end
  end

  def destroy?
    if user.is_admin?
      true
    else
      false
    end
  end

end
