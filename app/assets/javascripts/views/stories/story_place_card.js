AnnotateLife.Views.StoryPlaceCard = Backbone.View.extend({
  template: JST['stories/place_card'],
  
  render: function() {
    var content = this.template({ story: this.model });
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .delete-story": "deleteStory",
    "click .show-story": "showStory",
    "click .story-link": "showStory"
  },
  
  deleteStory: function(event) {
    event.preventDefault();
    var storyCard = this;
    var collection = storyCard.model.collection
    this.model.destroy({
      success: function() {
        collection.trigger('removeStory', storyCard);
      }
    });
  },
  
  showStory: function(event) {
    event.preventDefault();
    this.model.collection.trigger('storyShowView', this.model);
    var storyShow = new AnnotateLife.Views.StoryShow({
      model: this.model
    })
    this.model.collection.chapter.collection.trigger('storyShowView', storyShow);
  }
});