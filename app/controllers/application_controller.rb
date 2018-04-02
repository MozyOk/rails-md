class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def new
  @post = Post.new
end

def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
end

def show
  @post = Post.find(params[:id])
  @post.save!
end

private

def post_params
   params.require(:post).permit(:content)
end