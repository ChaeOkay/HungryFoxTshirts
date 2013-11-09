User Stories
- a user can read about the website
- a user can see the tshirt on the root page

a user can select a tshirt
- a user can select a shirt size
- a user can select a qty
- a user can add the shirt size and qty to a basket
- a user can remove a shirt fom the basket
- a user can change the qty

a user can checkout
- a user can confirm the order
- a user can input their shipping address
  - a user can see estimated tax
- a user can select a shipping method
  - a user can see estimated cost of shipping
- a user can select gift wrap
  - a user can see cost of gift wrap

- a user can pay through paypal
- a user confirm cost of total purchase

- a user sees a confirmation page when order is compelete
- a user is sent a confirmation email when order is complete

__________________________________

todo:
1) set up temp root page
  research - sass
  research - cucumber

research - mongodb
reserach - do tshirts have tax?
research forms of payment - is paypal preferred?
research - calculating sales tax

_____________________________________

Shirt
t.string name
t.decimal cost
t.references size (has many sizes)
(belongs to a receipt)

Size
t.string name
(belongs to a shirt)

Receipt
t.references order (has one)
t.references shirt (belongs to shirt)
t.integer qty
t.references tax (has_one) => default to 1? => receipt.tax.shipping?

Order
t.string number
t.references status (has one)

Status
t.string description

Tax
t.string name
t.decimal sales
t.decimal shipping

________________________________

tshirt#show
  /tshirt/:id
  @shirt = Shirt.find_by_id(params[:id])
    @shirt.sizes.each do |size|

  select qty
  add to basket button => render ajax #basket - POST

#basket - POST
1st time - > session[:order number]
  find or create by order number
  receipt = receipt.new
  receipt.order = session[;order number]
  receipt.shirt = params[shirt id]
  receipt.tax = params[sales]
  receipt.qty = params[qty]
  reciept.save
  -> calculate sales tax => receipt.tax.sales * receipt.shirt.cost

  checkout => page checkout

#checkout
  /checkout
  @receipt = Receipt.find_by_order(session[:order nubmer])


