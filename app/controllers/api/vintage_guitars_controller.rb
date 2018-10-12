class Api::VintageGuitarsController < ApplicationController
  def vintage_guitar_method
    @vintage_guitars = VintageGuitar.all
    render "vintage_guitar.json.jbuilder"
  end

  def vintage_guitar_gibson_method
    @vintage_guitars = VintageGuitar.all
    render "vintage_guitar.json.jbuilder"
  end
end
