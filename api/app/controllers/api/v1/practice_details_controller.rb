class Api::V1::PracticeDetailsController < ApplicationController

  def index
    @practice_details = PracticeDetail.all
    render json: @practice_details
  end
end
