require "http"
system "clear"

response = HTTP.get("http://localhost:3000/api/second_vintage_guitar_url")
vintage_guitar = response.parse["vintage_guitars"]
puts vintage_guitar