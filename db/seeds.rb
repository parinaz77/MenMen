# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
15.times { 
        User.create(name: Faker::Name.name, user_type: "student", email: Faker::Internet.email, telephone: Faker::PhoneNumber.cell_phone , password: "p", phase: rand(1..3), avatar: Faker::Avatar.image )
  }

  5.times { 
        User.create(name: Faker::Name.name, user_type: "mentor", email: Faker::Internet.email, telephone: Faker::PhoneNumber.cell_phone , password: "p", phase: rand(1..3), avatar: Faker::Avatar.image )
  }

  20.times {
    Appointment.create(mentor_id:rand(16..20) ,student_id:rand(1..15), topic: Faker::Hipster.sentence ,start_time: Faker::Time.between(DateTime.now - 1, DateTime.now) ,end_time: Faker::Time.between(DateTime.now - 1, DateTime.now))
    Appointment.create(mentor_id:rand(16..20) ,topic: Faker::Hipster.sentence ,start_time: Faker::Time.between(DateTime.now - 1, DateTime.now) ,end_time: Faker::Time.between(DateTime.now - 1, DateTime.now))
  }

  20.times do |i|
    
    s = Appointment.find(i+1)

    Feedback.create(body: Faker::Hipster.paragraph, rating: rand(0..5), appointment_id: i, user_id: s.mentor_id) 
    
    Feedback.create(body: Faker::Hipster.paragraph, rating: rand(0..5), appointment_id: i, user_id: s.student_id) 
  
  end