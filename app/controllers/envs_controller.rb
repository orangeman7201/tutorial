class EnvsController < ApplicationController
  def envstate
    render json: params
  end
end
