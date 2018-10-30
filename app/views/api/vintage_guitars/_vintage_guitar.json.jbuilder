  json.id vintage_guitar.id
  json.name vintage_guitar.name
  json.price vintage_guitar.price
  json.images vintage_guitar.image_url_list
  # json.images vintage_guitar.images_url_list
  json.description vintage_guitar.description
  json.discounted vintage_guitar.is_discounted?
  json.stock_status vintage_guitar.stock_status
  json.tax_total vintage_guitar.tax
  json.price_total vintage_guitar.total
  json.supplier vintage_guitar.supplier
  json.current_user current_user
  json.categories vintage_guitar.categories.map {|category| category.name}
  