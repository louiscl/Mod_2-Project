json.extract! request, :id, :team_id, :user_id, :question_id, :name, :age, :skills, :created_at, :updated_at
json.url request_url(request, format: :json)
