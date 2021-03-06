AnnotateLife.Views.StoryShow = Backbone.View.extend({
  template: JST["stories/show"],
  
  render: function() {
    var content = this.template({ story: this.model });
    this.$el.html(content);
    return this;
  },
  
  attributes: { class: 'story-show-view' },
  
  events: {
    "click #exit-story-mode-link": "exitStoryShowMode",
  },
  
  exitStoryShowMode: function(event) {
    event.preventDefault();
    this.model.collection.chapter.collection.trigger('exitStoryShowMode');
  }
});