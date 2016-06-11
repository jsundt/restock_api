module Api::V1
  class UsersController < ApiController
    before_action :authenticate_v1_user!, only: [:index, :show]
    before_action :set_user, only: [:show, :update]



    def show
      render json: @user
    end

    def create
      @user = User.new

      if @user.save
        render json: @user, status: :created, location: respond_with(:api, :v1, @user)
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    def update
      if @user.update
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end



    private

      def set_user
        # @user = User.find(params[:id])
        @user = current_v1_user
      end
  end
end
