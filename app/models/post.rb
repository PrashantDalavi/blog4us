class Post < ApplicationRecord
    
    belongs_to :category


  private

  def post_params
   
    params.require(:post).permit(:title, :body, :category_id, :authour_id)
  end
end
