class PostsController < ApplicationController
	
	def index
		
	end

	def new
	 @post = Post.new
	end
    
    def create
      @post = Post.new(post_params)
      @post.user = current_user #relaciona usuario actual
      if @post.save 
      	 redirect_to posts_path
      else
         render :new
      end
    end

    private
     def post_params
       params.required(:post).permit(:title, :body)
     end

end
