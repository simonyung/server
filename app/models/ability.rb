class Ability
  include CanCan::Ability

  def initialize(user)
    if user.blank?
      cannot :manage, :all
      can :read,    Post
      can :read,    Photo
    else
      can :create, Post
      can :update, Post do |post|
        (post.user_id == user.id)
      end
      can :destroy, Post do |post|
        (post.user_id == user.id)
      end
      can :create, Photo
      can :update, Photo do |photo|
        (photo.user_id == user.id)
      end
      can :destroy, Photo do |photo|
        (photo.user_id == user.id)
      end
      can :read,    Post
      can :read,    Photo
    end
  end
end
