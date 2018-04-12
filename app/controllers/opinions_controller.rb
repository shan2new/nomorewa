class OpinionsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_issue
	def index
		redirect_to root_path
	end

	def show
		@opinion = Opinion.find(params[:id])
	end

	def new 
		@opinion = @issue.opinions.new
	end

	def create 
		@opinion = @issue.opinions.create(opinion_params)
		@opinion.user_id = current_user.id
		@opinion.save!

		redirect_to issue_path(@issue)

	end

	def destroy
	end

	private 
	
	def opinion_params
		params.require(:opinion).permit(:solution_approach, :solution_link, :suggestion, :upvotes)
	end

	def set_issue
		@issue = Issue.find(params[:issue_id])
	end
end
