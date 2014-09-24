AnnotateLife.Models.Chapter = Backbone.Model.extend({
  urlRoot: "api/chapters",
  
  stories: function() {
    if (!this._stories) {
      this._stories = new AnnotateLife.Collections.Stories([], { chapter: this })
    }
    
    return this._stories
  },
  
  parse: function(response) {
    if (response.stories) {
      this.stories().set(response.stories, { parse: true })
      delete response.stories
    }
    
    return response
  }
});