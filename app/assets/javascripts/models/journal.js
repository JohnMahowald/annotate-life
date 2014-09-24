AnnotateLife.Models.Journal = Backbone.Model.extend({
  urlRoot: '/api/journals/',
  
  chapters: function() {
    if (!this._chapters) {
      this._chapters = new AnnotateLife.Collections.Chapters();
    }
    
    return this._chapters
  }
});
