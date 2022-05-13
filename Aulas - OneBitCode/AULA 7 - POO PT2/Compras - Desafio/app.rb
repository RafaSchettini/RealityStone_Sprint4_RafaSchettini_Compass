require_relative 'product'
require_relative 'market'

product = Product.new
product.name = "Computador"
product.price = 1500

market = Market.new(product)
market.buy