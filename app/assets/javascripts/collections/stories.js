AnnotateLife.Collections.Stories = Backbone.Collection.extend({
  initialize: function(model, options) {
    this.chapter = options.chapter
  },
  
  comparator: "ord",
  
  url: "api/stories",
  
  model: AnnotateLife.Models.Story,
  
  getOrFetch: function(id) {
    var story = this.get(id)
    
    if (!story) {
      var stories = this;
      story = new this.model({ id: id })
      story.fetch({
        success: function(story) {
          stories.add(story)
        }
      });
    } else {
      story.fetch();
    }
    
    return story;
  }
});