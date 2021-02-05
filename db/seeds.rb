# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Property.destroy_all
Agent.destroy_all
Client.destroy_all

status = ["Active", "Sold", "Sale Pending"]

30.times do
    Agent.create(name:Faker::Name.name)
end

30.times do
    Client.create(name:Faker::FunnyName.name)
end

25.times do
    Property.create(address:Faker::Address.full_address, image:"https://images.unsplash.com/photo-1602836948295-14b195efa63d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80", status:status.sample, agent_id:Agent.all.sample.id)
end

puts "Semillas Loaded"