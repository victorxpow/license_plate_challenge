require 'faker'

(1..20).each do |id|
  LicensePlate.create!(
    id: id, 
    owner: Faker::Name.name,
    model: Faker::Vehicle.manufacture,
    year: Faker::Number.number(digits: 4)
  )
end