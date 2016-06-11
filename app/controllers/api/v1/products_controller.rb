module Api::V1
  class ProductsController < ApiController
    before_action :authenticate_v1_user!
    before_action :set_product, only: [:show, :update, :destroy]
    before_action :set_team, only: [:index, :create]

    # GET /products
    def index
      @products = @team.products

      render json: @products
    end

    # GET /products/1
    def show
      render json: @product
    end

    # POST /products
    def create
      @product = @team.product_types.find(params[:product_type_id]).products.new(product_params)

      if @product.save
        render json: @product, status: :created, location: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /products/1
    def update
      if @product.update(product_params)
        render json: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end

    # DELETE /products/1
    def destroy
      @product.destroy
    end

    private
      def set_team
        @team = current_v1_user.team
      end

      def set_product
        @product = @team.products.find(params[:id])
      end

      def product_params
        params.require(:product).permit(:name, :amount_needed, :amount_in_stock, :product_type_id)
      end
  end
end
