# frozen_string_literal: true

class ArticlePolicy < ApplicationPolicy
  class Scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.is_admin?
        scope.all
      else
        scope.where(publication: user.publications)
      end
    end

    private

    attr_reader :user, :scope

  end
end
