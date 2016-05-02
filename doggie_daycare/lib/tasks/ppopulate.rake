namespace :db do
  desc "Clear the db and fill with sample data."
  task :populate => :environment do
      require 'populator'
      require 'faker'

    #clears the db of old data
    [Dog, Owner].each(&:destroy_all)

    #Adds excellent data to db
      Owner.populate 4..10 do |owner|
      owner.name = Faker::Name.name
      owner.phone = Faker::PhoneNumber.phone_number
        Dog.populate 4..10 do |dog|
        dog.name = Faker::Name.first_name
        dog.age = Faker::Number.between(1,18)
      end
    end
  puts "You have populated a database! Hooray!"
  end
end