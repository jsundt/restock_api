module Api::V1
  class TeamsController < ApiController
    before_action :authenticate_v1_user!, except: [:create]
    before_action :set_team, only: [:show, :update]



    def show
      render json: @team
    end

    def create
      @team = Team.new(team_create_params)

      if @team.save
        render json: @team, status: :created, location: respond_with(:api, :v1, @team)
      else
        render json: @team.errors, status: :unprocessable_entity
      end
    end

    def update
      if @team.update(team_update_params)
        render json: @team
      else
        render json: @team.errors, status: :unprocessable_entity
      end
    end



    private

      def set_team
        @team = current_v1_user.team
      end

      def team_create_params
        params.require(:team).permit(:name, :secret)
      end

      def team_update_params
        params.require(:team).permit(:name)
      end
  end
end
