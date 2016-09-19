class CommentsController < ApplicationController
  def create
	product = Product.find(params[:id])
	product.comment.create(comments_params)
	redirect_to post
  end

  private
   def comments_params
   	params.require(:comment).permit(:commentary).merge(user:current_user)
   end

  
end
