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

    input_search_name = params[:q]
    if input_search_name
      @vintage_guitars = @vintage_guitars.where("name ILIKE ?", "%#{input_search_name}%")
      # "%" + input_search_name + "%"
    end

    price_sort = params[:sort_by_price]
    if price_sort
      @vintage_guitars = @vintage_guitars.order(:price)
    else
      @vintage_guitars = @vintage_guitars.order(:id)
    end

    search_terms = params[:search]
    if search_terms
      @vintage_guitars = @vintage_guitars.where("name ILIKE ?", "%#{search_terms}%")
    end

    # @vintage_guitars = @vintage_guitars(:id => :asc)

    

    # @vintage_guitars = VintageGuitar.all.order(id: :asc)

    render "index.json.jbuilder"
  end

  def create
    @vintage_guitar = VintageGuitar.new(
      name: params["input_name"], 
      price: params["input_price"], 
      image_url: params["input_image"], 
      description: params["input_description"],
      stock_status: params["stock_status"]
      )
    if @vintage_guitar.save
      render "show.json.jbuilder"
    else
      render json: {errors: @vintage_guitar.errors.full_messages}, status: 422
    end
  end

  def show
    @vintage_guitar = VintageGuitar.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @vintage_guitar = VintageGuitar.find_by(id: params[:id])
    @vintage_guitar.name = params["input_name"] || @vintage_guitar.name 
    @vintage_guitar.price = params["input_price"] || @vintage_guitar.price
    @vintage_guitar.image_url = params["input_image"] || @vintage_guitar.image_url
    @vintage_guitar.description = params["input_description"] || @vintage_guitar.description
    @vintage_guitar.stock_status = params["stock_status"] || @vintage_guitar.stock_status
    if @vintage_guitar.save
      render "show.json.jbuilder"
    else
      render json: {errors: @vintage_guitar.errors.full_messages}, status: 422
    end
  end

  def destroy
    @vintage_guitar = VintageGuitar.find_by(id: params[:id])
    @vintage_guitar.destroy
    render json: {message: "Guitar listing destroyed"}
  end
end
