json.(@chapter, :id, :title, :chapter_num)

json.stories @chapter.stories.order(:ord).each do |story|
  json.id story.id
  json.title story.title
  json.text story.text
  json.img_url story.img_url
  json.created_at story.created_at
  json.ord story.ord
end