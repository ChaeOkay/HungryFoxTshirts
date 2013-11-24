s = Tsize.create(name: 's')
m = Tsize.create(name: 'm')
l = Tsize.create(name: 'l')
xl = Tsize.create(name: 'xl')

tshirt1 = Tshirt.create(
                name: 'Duran Duran - 00A1',
                description: 'muscle shirt, single stich trim, single stich, vintage 80s, 50/50 poly/cotton, white.',
                cost: 80)

tshirt1.picture << Picture.create(image_name: '00A1_a.png', view: 'front')
tshirt1.picture << Picture.create(image_name: '00A1_b.png', view: 'back')
Inventory.create(tshirt: tshirt1, tsize: l, qty: 7)

tshirt2 = Tshirt.create(
                name: 'Duran Duran - 00A2',
                description: 'muscle shirt, double stich trim, single stich, vintage 80s, 50/50 poly/cotton, white.',
                cost: 80)

Inventory.create(tshirt: tshirt2, tsize: m, qty: 2)
Inventory.create(tshirt: tshirt2, tsize: l)


tshirt3 = Tshirt.create(
                name: 'Duran Duran - 00B',
                description: 'baseball t, vintage 80s, cotton, blue and white.',
                cost: 100)

Inventory.create(tshirt: tshirt3, tsize: s, qty: 3)
Inventory.create(tshirt: tshirt3, tsize: m)
Inventory.create(tshirt: tshirt3, tsize: l, qty: 8)
