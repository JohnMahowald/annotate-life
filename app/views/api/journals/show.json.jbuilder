json.(@journal, :title, :description)

json.chapters @journal.chapters do |chapter|
  json.title chapter.title
  json.chapter_num chapter.chapter_num
end