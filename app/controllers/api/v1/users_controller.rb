module Api::V1
  class UsersController < ApiController

    # GET /v1/users
    def index
      render json: User.all
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def user_params
        params.require(:user).permit(:name, :email)
      end
  end
end
