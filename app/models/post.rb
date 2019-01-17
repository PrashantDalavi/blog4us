class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments
   
    
  private

  def post_params
   
    params.require(:post).permit(:title, :body, :category_id, :authour_id)
  end
end
