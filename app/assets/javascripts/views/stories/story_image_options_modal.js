AnnotateLife.Views.StoryImageOptionsModal = Backbone.View.extend({
  template: JST['stories/image_options'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .filepicker-upload": "renderFilepicker",
    "click. .url-upload": "renderUrlModal"
  },
  
  renderFilepicker: function() {
    var view = this 
    filepicker.pick( function(file) {
      view.model.img_url = file.url
    })
    $('.modal').modal('hide');
  },
  
  renderUrlModal: function() {
    var $modal = $('.modal')
    var view = this;
    $modal.one('hide.bs.modal', function(event) {
      var urlModal = new AnnotateLife.Views.StoryImageUrlModal({
        model: view.model,
        collection: view.collection
      })
      
      view.collection.chapter.collection.trigger('modalReady', urlModal)
    })
    
    $modal.modal('hide');
  }
});