AnnotateLife.Models.Journal = Backbone.Model.extend({
  urlRoot: '/api/journals/',
  
  chapters: function() {
    if (!this._chapters) {
      this._chapters = new AnnotateLife.Collections.Chapters([], {journal: this});
    }
    
    return this._chapters
  },
  
  parse: function(response) {
    if (response.chapters) {
      this.chapters().set(response.chapters, { parse: true })
      delete response.chapters;
    };
    
    return response
  }
});
