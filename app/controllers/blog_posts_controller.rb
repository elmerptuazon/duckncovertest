class BlogPostsController < ApplicationController
    def index
        @blog_posts = BlogPost.all
    end

    def new
        @blog_post = BlogPost.new
    end

    def show
        @blog_posts = BlogPost.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
    end

    def create
        @blog_post = BlogPost.new(blog_post_params)
        if @blog_post.save
            redirect_to @blog_post
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def blog_post_params
        params.require(:blog_post).permit(:title, :body, :author_name, :author_email)
    end
end