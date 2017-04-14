class PostsController < ApplicationController
 before_action :find_post, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, except: [:index, :show]
 load_and_authorize_resource

 def index
  @posts = Post.where(["title LIKE ?","%#{params[:search]}%"])
  @posts = Post.order("created_at desc").page(params[:page]).per(5)
 end

 def show

 end

 def new
  @post = current_user.posts.build
 end

 def create
  @post = current_user.posts.build(post_params)
  if @post.save
   redirect_to @post
  else
   render :new
  end
 end

 def edit

 end

 def update
  @post = current_user.posts.find(params[:id])
  if @post.update(post_params)
   redirect_to @post
  else
   render :edit
  end
 end

 def destroy
  @post.destroy
  redirect_to posts_path
 end

 private

 def post_params
  params.require(:post).permit(:title, :content)
 end

 def find_post
  @post = Post.find(params[:id])
 end

end