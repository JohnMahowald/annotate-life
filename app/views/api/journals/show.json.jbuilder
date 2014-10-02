json.(@journal, :id, :title, :description, :ord)

json.chapters @journal.chapters.order(:chapter_num) do |chapter|
  json.id chapter.id
  json.title chapter.title
  json.chapter_num chapter.chapter_num
  json.thumbnail_urls chapter.thumbnail_urls
end