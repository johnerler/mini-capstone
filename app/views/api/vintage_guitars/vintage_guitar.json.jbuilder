# json.buy_guitar @vintage_guitars
json.array! @vintage_guitars.each do |vintage_guitar|
  json.id vintage_guitar.id
  json.name vintage_guitar.name
  # json.price @vintage_guitars.price
  # json.image_url vintage_guitar.image_url
  # json.description vintage_guitar.description
end
