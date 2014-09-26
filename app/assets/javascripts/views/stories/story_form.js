AnnotateLife.Views.StoryForm = Backbone.View.extend({
  template: JST["stories/form"],
  
  attributes: { class: "new-story-form" },
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});