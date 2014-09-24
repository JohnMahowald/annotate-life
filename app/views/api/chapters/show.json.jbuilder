json.(@chapter, :id, :title, :chapter_num)

json.stories @chapter.stories.each do |story|
  json.id story.id
  json.title story.title
  json.text story.text
end