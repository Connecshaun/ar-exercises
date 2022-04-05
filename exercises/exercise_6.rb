require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

#Add the following code directly inside the Store model (class): has_many :employees
class Store < ActiveRecord::Base
  has_many :employees
end
#Add the following code directly inside the Employee model (class): belongs_to :store
class Employee < ActiveRecord::Base
  belongs_to :store
end
#Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Shaun", last_name: "Robinson", hourly_rate: 75)
#Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the @store# instance variables that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).
@store1.employees.create(first_name: "Terri-Lyn", last_name: "Luker", hourly_rate: 95)
@store2.employees.create(first_name: "Kirk", last_name: "Southcott", hourly_rate: 125)
@store2.employees.create(first_name: "Ozzy", last_name: "Osbourne", hourly_rate: 250000)

