module Api::V1
  class ProductsController < ApiController
    before_action :authenticate_v1_user!
    before_action :set_product, only: [:show, :update, :destroy]

    # GET /products
    def index
      @products = current_v1_user.products

      render json: @products
    end

    # GET /products/1
    def show
      render json: @product
    end

    # POST /products
    def create
      @product = current_v1_user.product_types.find(params[:product_type_id]).products.new(product_params)

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
      # Use callbacks to share common setup or constraints between actions.
      def set_product
        @product = current_v1_user.products.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def product_params
        params.require(:product).permit(:name, :amount_needed, :amount_in_stock, :product_type_id)
      end
  end
end
