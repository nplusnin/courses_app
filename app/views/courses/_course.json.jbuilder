json.extract! course, :id, :title, :body, :created_at, :updated_at
json.url course_url(course, format: :json)
