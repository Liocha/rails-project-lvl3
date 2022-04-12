json.extract! bulletin, :id, :category_id, :creator_id, :title, :description, :image, :created_at, :updated_at
json.url bulletin_url(bulletin, format: :json)
json.image url_for(bulletin.image)
