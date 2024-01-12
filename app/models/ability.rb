class Ability
  include CanCan::Ability
  def initialize(user)
    return unless user.present?

    can(%i[create read], Group, user:)
    can(%i[create read], Item, user:)
    can(%i[create read], GroupsItem, group: { user: })
    can(%i[create read], GroupsItem, item: { user: })
  end
end
