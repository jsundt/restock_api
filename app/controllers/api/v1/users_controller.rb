module Api::V1
  class UsersController < ApiController
    before_action :authenticate_v1_user!, only: [:index, :show]
    before_action :set_user, only: [:show]

    # GET /v1/users
    def index
      render json: User.all
    end

    def show
      render json: @user
    end

    def create
      @user = User.new(user_params)

      if @user.save
        render json: @user, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end



    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end
end
