class CircuitsController < ApplicationController
  def show
    @circuit = Circuit.find_by_code(params[:code])
  end
end
