AnnotateLife.Views.StoryImageUrlModal = Backbone.View.extend({
  template: JST['stories/image_url'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click #save-url": 'setUrl'
  },
  
  setUrl: function(event) {
    event.preventDefault();
    this.model.img_url = $(event.delegateTarget).find('#modal-img-url').val();
  }
});