class ProblemsController < ApplicationController
    def index
        problems = Problem.all
        render json: problems
    end
    def show
        problems = problems.find(params[:id])
        render json: problems
    end
    def create problems = Problem.create(problems_params)
        render json: problems
    end
    private
    def problems_params
        params.permit(:user_id, :problem_description, :tags)
    end
 end
