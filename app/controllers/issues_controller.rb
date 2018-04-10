class IssuesController < ApplicationController
	before_action :authenticate_user!
	def index
		@issues = Issue.all
	end

	def show
		@issue = Issue.find(params[:id])
	end

	def new 
		@issue = Issue.new
	end

	def create 
		@issue.create(issue_params, current_user.id)
	end

	def destroy
	end

	private 
	
	def issue_params
		params.require(:issue).permit(:problem_link, :solution_link, :description, :upvotes)
	end
end
