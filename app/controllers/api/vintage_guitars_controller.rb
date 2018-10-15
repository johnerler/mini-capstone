class Api::VintageGuitarsController < ApplicationController
  def vintage_guitar_method
    @vintage_guitars = VintageGuitar.all
    render "vintage_guitar.json.jbuilder"
  end

  def first_vintage_guitar_method
    @vintage_guitars = VintageGuitar.first
    render "first_vintage_guitar.json.jbuilder"
  end

  def last_vintage_guitar_method
    @vintage_guitars = VintageGuitar.last
    render "last_vintage_guitar.json.jbuilder"
  end

  def second_vintage_guitar_method
    @vintage_guitars = VintageGuitar.second
    render "last_vintage_guitar.json.jbuilder"
  end

  def single_vintage_guitar_method
    input_id = params["id"]
    @vintage_guitars = VintageGuitar.find_by(id: input_id)
    render "single_vintage_guitar.json.jbuilder"
  end

end
