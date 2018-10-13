require "http"
system "clear"

response = HTTP.get("http://localhost:3000/api/vintage_guitar_url")
vintage_guitar = response.parse
puts vintage_guitar