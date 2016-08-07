class PostsController < ApplicationController
	before_action :authenticate_user!, :except => [:show, :index]
	def new
	end

	def create
		@post = Post.new(post_params)

		@post.save
		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all
	end

	def okinawa
	end
private
	def post_params
		params.require(:post).permit(:title, :text, :photo)
	end
end