json.extract! receipe, :id, :name, :ingredient, :direction, :preparation_time, :cooking_time, :servings, :category, :picture, :created_by, :created_at, :updated_at
json.url receipe_url(receipe, format: :json)
