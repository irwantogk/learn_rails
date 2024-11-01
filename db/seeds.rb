# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
student = Student.create(
  first_name: 'Zaki',
  last_name: 'Rahmat',
  email: 'zakirahma@example.com'
)

20.times do |i|
  puts "Creating student #{i + 1}"
  Student.create(
    first_name: "Student #{i + 1}",
    last_name: "Lname #{i + 1}",
    email: "student#{i + 1}@example.com"
  )
end

Student.all.each do |student|
  student.blogs.create(title: "Dummy Blog for Student #{student.id}", content: "Custom content pending")
  student.blogs.create(title: "Dummy Blog for Student #{student.id}", content: "Custom content pending")
end

Course.create(name: "Ruby on Rails Bootcamp", description: "Pending")
Course.create(name: "React JS Bootcamp", description: "Pending")
Course.create(name: "Angular Bootcamp", description: "Pending")
Course.create(name: "NodeJS Bootcamp", description: "Pending")
Course.create(name: "JAVA Bootcamp", description: "Pending")
Course.create(name: "Python Bootcamp", description: "Pending")
