json.(@journal, :id, :title, :description)

json.chapters @journal.chapters do |chapter|
  json.id chapter.id
  json.title chapter.title
  json.chapter_num chapter.chapter_num
end