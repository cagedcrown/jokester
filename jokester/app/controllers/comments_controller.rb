class CommentsController < ApplicationController
before_action :set_comment, only: [:show, :edit, :update, :destroy]

	def index
		@comments = Comment.all
	end

	def show
	end

	def new
		@jokes = Joke.all
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(joke_params)
		if @comment.save
			redirect_to @comment
		else
			redirect_to 'new'
		end
	end

	def edit
	end

	def update
		@comment.update(comment_params)
	end

	def destroy
		@comment.destory
	end
	
	private 

		def set_comment
			@comment = Comment.find(params[:id])
		end

		def comment_params
			params.require(:comments).permit(:body, :user_id, :joke_id)
		end
end