# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

plans = Plan.create([
  {name: 'Internal Project', price: 30.00, tax: 3.90, stripe_id: 'internal', details: '' },
  {name: 'Friends and Family', price: 72.00, tax: 9.36, stripe_id: 'ff', details: '' },
  {name: 'Bands and Artists', price: 84.00, tax: 10.92, stripe_id: 'artists', details: '' },
  {name: 'Small Startup', price: 90.00, tax: 11.70, stripe_id: 'small_1', details: '' }
])

