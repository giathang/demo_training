class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:name).where("name LIKE ?", "%#{params[:term]}")
    render json: @categories.map(&:name)
  end
end
