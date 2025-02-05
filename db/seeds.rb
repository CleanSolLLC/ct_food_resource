# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts "Beginng CT counties and towns import ..."
require "smarter_csv"

SmarterCSV.process("towns.csv").each do |row|
  county = row[:county]
  town = row[:town]
  ct_county = County.find_or_create_by(name: county)
  ct_town = Town.find_or_create_by(name: town)
  ct_county.towns << ct_town
end
puts "Finished import.."
