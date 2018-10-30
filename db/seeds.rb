Category.create!(name: "new")
Category.create!(name: "used")

CategoryVintageGuitar.create!(vintage_guitar_id: 1, category_id: 1)
CategoryVintageGuitar.create!(vintage_guitar_id: 1, category_id: 2)
CategoryVintageGuitar.create!(vintage_guitar_id: 2, category_id: 1)
CategoryVintageGuitar.create!(vintage_guitar_id: 2, category_id: 2)
CategoryVintageGuitar.create!(vintage_guitar_id: 3, category_id: 1)


