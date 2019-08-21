puts 'Cleaning database...'
# if not in production
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    chef:         'Saunier',
    stars:        5
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    chef:         'Mario',
    stars:        4
  },
  {
    name:         'Carretão',
    address:      'Ipanema',
    description:  'BBQ.',
    chef:         'Caio Andrade',
    stars:        5
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
