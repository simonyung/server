class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:comment, :post))
    @comment.user_id = current_user.id if current_user
    @comment.save

    if @comment.save
      redirect_to @post
    else
      render 'posts/show'
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    if @comment.update(params[:comment].permit(:comment))
      redirect_to post_path(@post)
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post
  end
end
