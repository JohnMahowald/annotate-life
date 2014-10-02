AnnotateLife.Views.StoryImageOptionsModal = Backbone.View.extend({
  template: JST['stories/image_options'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .filepicker-upload": "renderFilepicker"
    "click ."
  },
  
  renderFilepicker: function() {
    
  }
});