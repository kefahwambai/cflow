class VotesController < ApplicationController
    def index
        votes= votes.all
        render json: votes
    end

    def show
        votes = Vote.find(params[:id])
        render json: votes
    end

    def create  votes = Vote.create(votes_params)
        render json: votes 
    end
    private

    def votes_params
        params.permit(:user_id, :solution_id, :vote_type)
    end
end
