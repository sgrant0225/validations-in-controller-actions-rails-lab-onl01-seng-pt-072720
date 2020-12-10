class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

<<<<<<< HEAD
  def update  #Change update to re-render the form if the updated post is invalid.
=======
  def update
>>>>>>> cd1447e1a415c7fc8f1fcc67643d34d50ec34a18
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
