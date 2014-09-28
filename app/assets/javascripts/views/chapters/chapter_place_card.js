AnnotateLife.Views.ChapterPlaceCard = Backbone.View.extend({
  template: JST['chapters/place_card'],
  
  render: function() {
    var content = this.template({ chapter: this.model });
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .delete-chapter": "deleteChapter",
    "click .chapter-show-link": "selectChapter"
  },
  
  selectChapter: function(event) {
    event.preventDefault();
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