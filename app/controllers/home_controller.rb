class HomeController < ApplicationController
  def index
    @recipes = Recipe.order(created_at: "DESC").limit(12)
  end
end
