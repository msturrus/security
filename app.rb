require 'bundler'
Bundler.require

Dotenv.load

#time to be a hero and get sekrits
puts Rainbow(ENV).cyan.blink
puts Rainbow(ENV["API_KEY"]).magenta.underline
puts Rainbow(ENV["VERSION"]).blue.underline
puts Rainbow(ENV["APP_NAME"]).yellow.underline.blink

# def show_secrets
#   p ENV.length.to_s + " is the length of ENV"
#   ENV.each do |secret|
#     puts Rainbow(secret).silver.inverse
#   end
# end
#
#
# show_secrets

def get_movie
  p HTTParty.get('http://www.omdbapi.com/' + ENV["MOVIE"])
end

get_movie
