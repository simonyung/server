class Ability
  include CanCan::Ability

  def initialize(user)
    if user.blank?
      cannot :manage, :all
      can :read, Post
    else
      can :create, Post
      can :update, Post, active: true, user_id: user.id
      can :destroy, Post, active: true, user_id: user.id
      can :read, Post
    end
  end
end