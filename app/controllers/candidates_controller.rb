class CandidatesController < ApplicationController
  respond_to :json

  def index
    respond_with Candidate.all
  end

  def create
    respond_with Candidate.create(candidate_params)
  end

private

  def candidate_params
    params[:candidate].permit!
  end
end
