class Ability
  include CanCan::Ability

  def initialize(user)
    if user.blank?
      cannot :manage, :all
      can :read, Post
    else
      can :create, Post
      can :update, Post do |post|
        (post.user_id == user.id)
      end
      can :destroy,Post do |post|
        (post.user_id == user.id)
      end
      can :read, Post
    end
  end
end
