class CitiesController < ApplicationController
  def view
    @cities = City.all.to_a
  end

  def new
    @city = City.new
  end

  def update
    @city = City.new
  end

  def update_city
    if City.all.key?(@city[:name])
      City.all[@city[name]].update(@city)
      redirect_to 'view'
    else
      render plaintext "Oh no"
    end
  end

  def create
    @city = City.new(params[:new_city])
    if City.all.key?(@city[:name])
      render plaintext "Could not add, already exists"
    elsif @city.save
      redirect_to 'view'
    else
      render plaintext "Oh no"
    end
  end

end
