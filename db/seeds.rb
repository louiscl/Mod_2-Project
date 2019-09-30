# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.create(company: 'Start-up_1', industry: 'tech', description: 'test')

User.create(name: 'Haami', email: 'haami@gmail.com', age: 23, password: 'haami')

Question.create(question_text: 'Why you?', team_id: 1)

Answer.create(answer_input: 'Because', question_id: 1, user_id:1)

Request.create(name: 'Haami', age: 23, skills: 'Art analysis', user_id: 1, team_id:1)
