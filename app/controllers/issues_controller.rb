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
		@issue = Issue.new(issue_params)
		@issue.user_id = current_user.id
		@issue.save!

		redirect_to root_path
	end

	def destroy
	end

	private 
	
	def issue_params
		params.require(:issue).permit(:problem_link, :solution_link, :description, :upvotes)
	end
end
