module Api::V1
  class UsersController < ApiController
    before_action :authenticate_v1_user!, only: [:index]
    # before_action set_user, only: [:show]

    # GET /v1/users
    def index
      render json: User.all
    end

    def show
      render json: User.find(params[:id])
    end


    private


  end
end
