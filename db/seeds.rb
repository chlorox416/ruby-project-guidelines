#lib/seeds/import.rake
require 'rest-client' # actually let you hit the endpoint 
require 'json' # parse the response body into a form you can use 
require 'pry'
require 'uri'
require 'net/http'
require 'openssl'
require 'csv'


#watch her lecture about seeds
#___.create stuff

#streetwear
Brand.create({brand: "Carhartt", price_point: "$", style: "streetwear"})
Brand.create({brand: "Vans", price_point: "$", style: "streetwear"})
Brand.create({brand: "Nike - Sportswear", price_point: "$$", style: "streetwear"})
Brand.create({brand: "Golf", price_point: "$$", style: "streetwear"})
Brand.create({brand: "Stussy", price_point: "$$", style: "streetwear"})
Brand.create({brand: "Supreme", price_point: "$$", style: "streetwear"})
Brand.create({brand: "Off-White", price_point: "$$$", style: "streetwear"})
Brand.create({brand: "Needles", price_point: "$$$", style: "streetwear"})
Brand.create({brand: "Our Legacy", price_point: "$$$", style: "streetwear"})
#minimal
Brand.create({brand: "Uni-qlo", price_point: "$", style: "minimal"})
Brand.create({brand: "H&M", price_point: "$", style: "minimal"})
Brand.create({brand: "Old Navy", price_point: "$", style: "minimal"})
Brand.create({brand: "Northface", price_point: "$$", style: "minimal"})
Brand.create({brand: "Muji", price_point: "$$", style: "minimal"})
Brand.create({brand: "COS", price_point: "$$", style: "minimal"})
Brand.create({brand: "Barena", price_point: "$$$", style: "minimal"})
Brand.create({brand: "Maison Margiela", price_point: "$$$", style: "minimal"})
Brand.create({brand: "Lemaire", price_point: "$$$", style: "minimal"})
#classic
Brand.create({brand: "U.S. Polo Assn", price_point: "$", style: "classic"})
Brand.create({brand: "Izod", price_point: "$", style: "classic"})
Brand.create({brand: "RL - Polo", price_point: "$$", style: "classic"})
Brand.create({brand: "Vineyard Vines", price_point: "$$", style: "classic"})
Brand.create({brand: "Jack Rogers", price_point: "$$", style: "classic"})
Brand.create({brand: "J-Crew", price_point: "$$", style: "classic"})
Brand.create({brand: "Ralph Lauren - Purple Label", price_point: "$$$", style: "classic"})
Brand.create({brand: "Drake's", price_point: "$$$", style: "classic"})
Brand.create({brand: "Yves Salomon", price_point: "$$$", style: "classic"})