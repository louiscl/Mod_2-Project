# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(name: 'Louis', email: 'louis@gmail.com')

Team.create(company: 'Start-up Factory', industry: 'tech', description: 'test', admin_id: 1)
Team.create(company: 'The Company', industry: 'tech', description: 'test', admin_id: 1)

Question.create(question_text: 'Why you?', team_id: 1)
Question.create(question_text: 'Tell us something about The Company', team_id: 2)

Request.create(name: 'Haami', age: 23, skills: 'Art analysis', user_id: 1, team_id:1)

Answer.create(answer_input: 'Because I am great', question_id: 1, user_id:1)
Answer.create(answer_input: 'The Company is the greates company', question_id: 2, user_id:1)