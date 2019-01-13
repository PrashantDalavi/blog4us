class Category < ApplicationRecord
    has_many :posts

    private
    def category_params   
        params.require(:category).permit(:name)
    end
end
