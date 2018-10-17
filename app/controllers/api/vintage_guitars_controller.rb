class Api::VintageGuitarsController < ApplicationController
  # def vintage_guitar_method
  #   @vintage_guitars = VintageGuitar.all
  #   render "vintage_guitar.json.jbuilder"
  # end

  # def first_vintage_guitar_method
  #   @vintage_guitars = VintageGuitar.first
  #   render "first_vintage_guitar.json.jbuilder"
  # end

  # def last_vintage_guitar_method
  #   @vintage_guitars = VintageGuitar.last
  #   render "last_vintage_guitar.json.jbuilder"
  # end

  # def second_vintage_guitar_method
  #   @vintage_guitars = VintageGuitar.second
  #   render "last_vintage_guitar.json.jbuilder"
  # end

  # def single_vintage_guitar_method
  #   input_id = params["id"]
  #   @vintage_guitars = VintageGuitar.find_by(id: input_id)
  #   render "single_vintage_guitar.json.jbuilder"
  # end

  def index
    @vintage_guitars = VintageGuitar.all 
    render "index.json.jbuilder"
  end

  def create
    @vintage_guitar = VintageGuitar.new(
      name: params["input_name"], 
      price: params["input_price"].to_i, 
      image_url: params["input_image"], 
      description: params["input_description"]
      )
    @vintage_guitar.save
    render "show.json.jbuilder"
  end

  def show
    @vintage_guitar = VintageGuitar.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @vintage_guitar = VintageGuitar.find_by(id: params[:id])
    @vintage_guitar.name = params["input_name"] || @vintage_guitar.name 
    @vintage_guitar.price = params["input_price"].to_i || @vintage_guitar.price
    @vintage_guitar.image_url = params["input_image"] || @vintage_guitar.image_url
    @vintage_guitar.description = params["input_description"] || @vintage_guitar.description
    @vintage_guitar.save
    render "show.json.jbuilder"
  end

  def destroy
    @vintage_guitar = VintageGuitar.find_by(id: params[:id])
    @vintage_guitar.destroy
    render json: {message: "Guitar listing destroyed"}
  end
end
