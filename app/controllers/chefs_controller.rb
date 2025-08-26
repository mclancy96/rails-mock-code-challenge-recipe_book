class ChefsController < ApplicationController
  before_action :set_chef, only: [:show, :edit, :update, :destroy]

  def index
    @chefs = Chef.all
  end

  def show
    @new_chef_recipe_comment = @chef.chef_recipes.build
  end

  def update
    if @chef.update(vendor_params)
      redirect_to @chef
    else
      @new_chef_recipe_comment = @chef.chef_recipes.build
      render :show
    end
  end

  private

  def set_chef
      @chef = Chef.find(params[:id])
  end

  def vendor_params
    params.require(:chef).permit(chef_recipes_attributes: [:recipe_id, :chef_id, :comment])
  end
end
