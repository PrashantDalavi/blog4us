class Category < ApplicationRecord
    has_many :posts
    belongs_to :user

    private
    def category_params   
        params.require(:category).permit(:name)
    end
end
