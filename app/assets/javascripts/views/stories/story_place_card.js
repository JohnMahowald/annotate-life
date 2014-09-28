AnnotateLife.Views.StoryPlaceCard = Backbone.View.extend({
  template: JST['stories/place_card'],
  
  render: function() {
    var content = this.template({ story: this.model });
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .delete-story": "deleteStory"
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
  }
});