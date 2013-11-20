s = Tsize.create(name: 's')
m = Tsize.create(name: 'm')
l = Tsize.create(name: 'l')
xl = Tsize.create(name: 'xl')

tshirt1 = Tshirt.create(
                name: 'Duran Duran - 00A1',
                description: 'muscle shirt, single stich trim, single stich, vintage 80s, 50/50 poly/cotton, white.',
                cost: 80)

tshirt1.tsize << l
tshirt1.picture << Picture.create(image_name: '00A1_a.png', view: 'front')
tshirt1.picture << Picture.create(image_name: '00A1_b.png', view: 'back')


tshirt2 = Tshirt.create(
                name: 'Duran Duran - 00A2',
                description: 'muscle shirt, double stich trim, single stich, vintage 80s, 50/50 poly/cotton, white.',
                cost: 80)

tshirt2.tsize << m << l


tshirt3 = Tshirt.create(
                name: 'Duran Duran - 00B',
                description: 'baseball t, vintage 80s, cotton, blue and white.',
                cost: 100)

tshirt3.tsize << xl << l << s
