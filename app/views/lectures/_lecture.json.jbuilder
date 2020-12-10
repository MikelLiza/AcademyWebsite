json.extract! lecture, :id, :title, :weekly_hours, :description, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
