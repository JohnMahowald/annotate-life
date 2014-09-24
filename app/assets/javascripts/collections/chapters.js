AnnotateLife.Collections.Chapters = Backbone.Model.extend({
  url: 'api/chapters',
  
  model: AnnotateLife.Models.Chapter,
  
  getOrFetch: function(id) {
    var chapter = this.get(id)
    
    if (!chapter) {
      var chapters = this;
      chapter = new this.model({ id: id })
      chapter.fetch({
        success: function(chapter) {
          chapters.add(chapter)
        }
      });
    } else {
      chapter.fetch();
    }
    
    return chapter;
  }
});