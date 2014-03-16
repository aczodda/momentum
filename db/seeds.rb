# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = User.create(email: 'aalonso@ipcoop.com', first_name: 'Ariel', last_name: 'Alonso', password:'12345678', password_confirmation:'12345678')
b = User.create(email: 'dsilva@ipcoop.com', first_name: 'Daniel', last_name: 'Silva', password:'12345678', password_confirmation:'12345678')
c = User.create(email: 'cgomez@ipcoop.com', first_name: 'Carlos', last_name: 'Gomez', password:'12345678', password_confirmation:'12345678')
d = User.create(email: 'jertel@ipcoop.com', first_name: 'Jason', last_name: 'Ertel', password:'12345678', password_confirmation:'12345678')

Feedback.create(message: 'You are the best!', user:a, author:b)
Feedback.create(message: 'Great job!', user:a, author:c)
Feedback.create(message: "I can't wait until the next retrospective!", user:a, author:d)
