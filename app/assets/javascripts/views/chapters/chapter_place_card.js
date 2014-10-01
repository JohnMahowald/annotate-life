AnnotateLife.Views.ChapterPlaceCard = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, "sync", this.render);
  },
  
  template: JST['chapters/place_card'],
  
  render: function() {
    var content = this.template({ chapter: this.model });
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .delete-chapter": "deleteChapter",
    "click .chapter-show-link": "selectChapter",
    "click .story-preview-thumbnails": "selectChapter"
  },
  
  selectChapter: function(event) {
    event.preventDefault();
    event.stopPropagation();
    var view = this;
    this.model.fetch({
      success: function() {
        view.model.collection.trigger('storiesReady', view.model);
      }
    });
  },
  
  deleteChapter: function(event) {
    event.preventDefault();
    var subview = this;
    var collection = subview.model.collection
    this.model.destroy({
      success: function() {
        collection.trigger("deleteChapter", subview);
      }
    });
  }
});