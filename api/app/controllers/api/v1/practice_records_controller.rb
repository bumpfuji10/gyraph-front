class Api::V1::PracticeRecordsController < ApplicationController

  def index
    @practice_records = PracticeRecord.all
    render json: @practice_records
  end
end
