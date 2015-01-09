class JokesController < ApplicationController
	before_action :set_joke, only: [:show, :edit, :update, :destroy]

	def index
		@jokes = Joke.all
	end

	def show
	end

	def new
		@users = User.all
		@joke = Joke.new
	end

	def create
		@joke = Joke.new(joke_params)
		if @joke.save
			redirect_to @joke
		else
			redirect_to 'new'
		end
	end

	def edit
	end

	def update
		@joke.update(joke_params)
	end

	def destroy
		@joke.destory
	end
	
	private 

		def set_joke
			@joke = Joke.find(params[:id])
		end

		def joke_params
			params.require(:jokes).permit(:body, :user_id)
		end

end