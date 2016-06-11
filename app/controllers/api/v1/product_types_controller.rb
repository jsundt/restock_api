module Api::V1
  class ProductTypesController < ApiController
    before_action :authenticate_v1_user!
    before_action :set_product_type, only: [:show, :update, :destroy]
    before_action :set_team, only: [:index, :create]

    # GET /product_types
    def index
      @product_types = @team.product_types

      render json: @product_types
    end

    # GET /product_types/1
    def show
      render json: @product_type
    end

    # POST /product_types
    def create
      @product_type = @team.product_types.new(product_type_params)

      if @product_type.save
        render json: @product_type, status: :created, location: @product_type
        # render json: @product_type, status: :created, location: respond_with(:api, :v1, @product_type)
      else
        render json: @product_type.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /product_types/1
    def update
      if @product_type.update(product_type_params)
        render json: @product_type
      else
        render json: @product_type.errors, status: :unprocessable_entity
      end
    end

    # DELETE /product_types/1
    def destroy
      @product_type.destroy
    end

    private
      def set_team
        @team = current_v1_user.team
      end

      def set_product_type
        @product_type = @team.product_types.find(params[:id])
      end

      def product_type_params
        params.require(:product_type).permit(:name)
      end
  end
end
