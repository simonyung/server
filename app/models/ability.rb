class Ability
  include CanCan::Ability

  def initialize(user)
    if user.blank?
      cannot :manage, :all
      can :read, Post
      can :read, Photo
      can :read, Video
      can :read, Comment
      can :read, Pcomment
      can :read, Vcomment
    else
      can :create, Post
      can :create, Photo
      can :create, Video
      can :create, Comment
      can :create, Pcomment
      can :create, Vcomment
      can :update, Post do |post|
        (post.user_id == user.id)
      end
      can :update, Video do |video|
        (video.user_id == user.id)
      end
      can :update, Photo do |photo|
        (photo.user_id == user.id)
      end
      can :update, Comment do |comment|
        (comment.user_id == user.id)
      end
      can :update, Pcomment do |pcomment|
        (pcomment.user_id == user.id)
      end
      can :update, Vcomment do |vcomment|
        (vcomment.user_id == user.id)
      end
      can :destroy, Post do |post|
        (post.user_id == user.id)
      end
      can :destroy, Photo do |photo|
        (photo.user_id == user.id)
      end
      can :destroy, Video do |video|
        (video.user_id == user.id)
      end
      can :destroy, Comment do |comment|
        (comment.user_id == user.id)
      end
      can :destroy, Pcomment do |pcomment|
        (pcomment.user_id == user.id)
      end
      can :destroy, Vcomment do |vcomment|
        (vcomment.user_id == user.id)
      end
      can :read, Post
      can :read, Photo
      can :read, Video
      can :read, Comment
      can :read, Pcomment
      can :read, Vcomment
    end
  end
end
