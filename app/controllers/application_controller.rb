class ApplicationController < ActionController::Base
    helper_method :all_categories
    helper_method :all_posts
   
   

    def all_categories
        @categories = Category.all
    end

    def all_posts
        @posts = Post.all
    end

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to main_app.root_url, notice: exception.message
    end

  
end
