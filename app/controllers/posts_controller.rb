class PostsController < ApplicationController
    def index 
        @posts = Post.all
        search_term = params[:q]
    end

    def show
        @post = Post.find(params[:id])
        @comments = @post.comments.order("created_at DESC")
    end

    def new
        @post = Post.new
        @category = Category.all
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path, notice: "your Post has been Published"
        else
            render "new"
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(post_params)
            redirect_to post_path, notice: "Your Post has been Updated"
        else
            render "edit"
        end
    end    
   
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, notice: "Your Post has been deleted"
    end

    private

    def post_params
        params.require(:post).permit!
    end

end

