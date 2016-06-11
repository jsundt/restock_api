module Api::V1
  class TeamsController < ApiController
    before_action :authenticate_v1_user!, except: [:create]
    before_action :set_team, only: [:show]

    # GET /v1/users
    # def index
    #   render json: Team.all
    # end

    def show
      render json: @team, products: { product: 'kale'}
    end

    def create
      @team = Team.new(team_params)

      if @team.save
        render json: @team, status: :created, location: respond_with(:api, :v1, @team)
      else
        render json: @team.errors, status: :unprocessable_entity
      end
    end



    private

    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name, :secret)
    end
  end
end
