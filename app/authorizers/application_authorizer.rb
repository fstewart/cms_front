# Other authorizers should subclass this one
class ApplicationAuthorizer < Authority::Authorizer

  # Any class method from Authority::Authorizer that isn't overridden
  # will call its authorizer's default method.
  #
  # @param [Symbol] adjective; example: `:creatable`
  # @param [Object] user - whatever represents the current user in your app
  # @return [Boolean]

  # Example call: `default(:creatable, current_user)`

  def readable_by?(user)
    # ask the resource's parent "album" if this user can read it
    resource.page.readable_by?(user)
  end

  # Class method: can this user at least sometimes create a Schedule?
  def self.creatable_by?(user)
    user.has_role?(:admin)
  end

  def self.updatable_by?(user)
    user.has_role?(:admin)
  end

  def self.readable_by?(user)
    user.has_role?(:admin)
  end

  protected

end
