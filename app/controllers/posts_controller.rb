class PostsController < ApplicationController
  #before_action :require_user, only: [:index, :show]

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to 'news'
    else
      redirect_to 'posts/new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @author = @post.user
  end

  def index
    @posts = Post.order(created_at: :desc)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    redirect_to 'posts'
  end

  private

    def post_params
      params.require(:post).permit(:title_en, :title_ru, :text_en, :text_ru, :preview)
    end

end
