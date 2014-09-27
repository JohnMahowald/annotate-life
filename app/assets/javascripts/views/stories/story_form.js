AnnotateLife.Views.StoryForm = Backbone.View.extend({  
  template: JST["stories/form"],
  
  attributes: { class: "new-story-form" },
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .publish": "publishStory"
  },
  
  publishStory: function(event) {
    event.preventDefault(event);
    var story = this;
    var title = $(event.delgateTarget).find('#story-title').val();
    var text = $(event.delegateTarget).find('#story-text').val();
    console.log(story.collection);
    debugger
  }
});