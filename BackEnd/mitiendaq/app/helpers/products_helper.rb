module ProductsHelper
    def product_params
        params.require(:product).permit(:name, :description, :image)
    end
end
