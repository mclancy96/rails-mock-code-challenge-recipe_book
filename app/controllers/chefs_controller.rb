class ChefsController < ApplicationController
  before_action :set_chef, only: [:show, :edit, :update, :destroy]

  def index
    @chefs = Chef.all
  end

  def show
  end

  private

  def set_chef
      @chef = Chef.find(params[:id])
  end
end
