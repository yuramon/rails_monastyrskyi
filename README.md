# README

 Product.average(:price)
 
 Product.maximum(:price)

 Product.sum(:price)

 Product.minimum(:price)
 
 Product.where("name = 'Navitech'")
 
 Product.where("price < 100")
 
 Product.joins(:cart).where("cart_id = 1") // output all account1 products 

 Product.joins(:cart).where("cart_id = 1").sum(:price) // outputs account1 sum price

 
 
 yura = Account.find(1)
 
 yura.friend_accounts << Account.find(2)

Heroku:

https://quiet-forest-60045.herokuapp.com/
