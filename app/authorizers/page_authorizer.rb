class PageAuthorizer < ApplicationAuthorizer

  def self.readable_by?(user)
    user.has_role?(:admin)
  end

  # Class method: can this user at least sometimes create a Schedule?
  def self.creatable_by?(user)
    user.has_role?(:admin)
  end

  def self.updatable_by?(user)
    user.has_role?(:admin)
  end

  def self.deletable_by?(user)
    user.has_role?(:admin)
  end

end