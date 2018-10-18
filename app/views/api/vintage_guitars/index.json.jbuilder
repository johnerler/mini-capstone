json.array! @vintage_guitars.each do |vintage_guitar|
  json.partial! "vintage_guitar.json.jbuilder", vintage_guitar: vintage_guitar
end