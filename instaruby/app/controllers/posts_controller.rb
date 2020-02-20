class PostsController < ApplicationController

    def create
        Post.create(post_params)
    end

    private
    def post_params
        params.require(:post).permit(:description, :image, :user_id)
    end

    def show
        @post = Post.find(params[:id])
    end
end
