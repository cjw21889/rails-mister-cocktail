  require 'open-uri'
  require 'json'
class CocktailsController < ApplicationController



  def index
    @ingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
  end

  def show
  end

  def edit
  end

  def _form
  end

  def new
  end
end
