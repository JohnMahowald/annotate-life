AnnotateLife.Views.StoryImageUrlModal = Backbone.View.extend({
  template: JST['stories/image_url'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});