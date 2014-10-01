AnnotateLife.Views.StoryPlaceCard = Backbone.View.extend({
  template: JST['stories/place_card'],
  
  render: function() {
    var content = this.template({ story: this.model });
    this.$el.html(content);
    $('abbr.timeago').timeago();
    return this;
  },
  
  events: {
    "click .delete-story": "deleteStory",
    "click .story-show-body-handler": "showStory",
    "click .show-story": "showStory",
    "click .edit-story": "editStory"
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
  
  editStory: function(event) {
    event.preventDefault();
    var storyForm = new AnnotateLife.Views.StoryForm({ 
      model: this.model,
      collection: this.model.collection
    })
    this.model.collection.chapter.collection.trigger('storyEditView', storyForm);
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