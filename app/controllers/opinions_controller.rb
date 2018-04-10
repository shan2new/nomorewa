class OpinionsController < ApplicationController
	before_action :authenticate_user!
	def index
		redirect_to root_path
	end

	def show
		@opinion = Opinion.find(params[:id])
	end

	def new 
		@opinion = Opinion.new
	end

	def create 
		Opinion.create(opinion_params, user_id: current_user.id)
	end

	def destroy
	end

	private 
	
	def opinion_params
		params.require(:opinion).permit(:solution_approach, :solution_link, :suggestion, :upvotes)
	end
end
