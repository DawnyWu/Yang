# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
	Project.create(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraph)
	Department.create(name: Faker::Commerce.department, description: Faker::Lorem.paragraph)
	print "."
end

25.times do
  Association.create(project_id:[1,2,3,4,5].sample, department_id: [1,2,3,4,5].sample)
	print "."
end

40.times do
	Member.create(name: Faker::Name.name, email: Faker::Internet.email, age: Faker::Number.number(2),
	               sex: [0,1].sample, department_id: [1,2,3,4,5].sample)
	print "."
end
