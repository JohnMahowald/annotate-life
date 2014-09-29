AnnotateLife.Views.StoryShow = Backbone.View.extend({
  template: JST["stories/show"],
  
  render: function() {
    var content = this.template({ story: this.model });
    this.$el.html(content);
    return this;
  },
  
  attributes: { class: 'story-show-view' }
});