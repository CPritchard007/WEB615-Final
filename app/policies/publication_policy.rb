# frozen_string_literal: true

class ApplicationPolicy

  def index?
    true
  end

  def show?
    scope.where(id: record.id).exists?
  end

  def create?
    create?
  end

  def new?
    create?
  end

  def update?
    create?
  end

  def edit?
    update?
  end

  def destroy?
    if user.is_admin?
      true
    else
      false
    end
  end

end
