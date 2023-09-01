class Api::V1::OptionsController < ApplicationController
  def index
    options = Option.all
    render json: options, status: 200
  end

  def create
    option = Option.new(
      body: opt_params[:body],
      description: opt_params[:description]
    )
    if option.save
      render json: option, status: 200
    else
      render json: {error: "Error creating review."}
    end
  end

  def show
    option = Option.find_by(id: params[:id])
    if option
      render json: option, status: 200
    else
      render json: {error: "Option Not Found."}
    end
  end

  private
    def opt_params
      params.require(:option).permit([
        :body,
        :description
      ])
    end
end
