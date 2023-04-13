class SolutionsController < ApplicationController
    def index
        solutions = Solution.all
        render json: solutions
    end
    def show
        solutions = solutions.find(params[:id])
        render json: solutions
    end
    def create  solutions = Solution.create(solutions_params)
        render json: solutions 
    end
    private
    def solutions_params
        params.permit(:problem_id, :user_id, :solution_description, tags, highlighted_by)
    end
end




