# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create seeds for companies
company = Company.create([{ name: "OrionTek" }])

# Create seeds for clients
clients = Client.create([
  {
    first_name: "Denis",
    last_name: "Lafontant",
    email: "denis@denis.me",
    phone: "809-809-1111",
    company_id: 1
  },
  {
    first_name: "Atef",
    last_name: "Mohammed",
    email: "atef@atef.me",
    phone: "809-809-1112",
    company_id: 1
  },
  {
    first_name: "Victor",
    last_name: "Pacheco",
    email: "vic@vic.me",
    phone: "809-809-1113",
    company_id: 1
  }
])

# Create seed for addresses
addresses = Address.create([
  {
    street: "106 N Park",
    city: "BET",
    state: "Hip-Hop",
    zip: "2222222",
    client_id: 1
  },
  {
    street: "107 N Park",
    city: "BET",
    state: "Hip-Hop",
    zip: "3333333",
    client_id: 2
  },
  {
    street: "108 N Park",
    city: "BET",
    state: "Hip-Hop",
    zip: "678999212",
    client_id: 2
  }
])