AnnotateLife.Views.StoryForm = Backbone.View.extend({
  template: JST["stories/form"],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});