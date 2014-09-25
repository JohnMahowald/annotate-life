AnnotateLife.Views.ChapterPlaceCard = Backbone.View.extend({
  template: JST['chapters/place_card'],
  
  render: function() {
    var content = this.template({ chapter: this.model });
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .chapter-place-card": "selectChapter"
  },
  
  selectChapter: function(event) {
    event.preventDefault();
    var view = this;
    this.model.fetch({
      success: function() {
        view.model.collection.trigger('storiesReady', view.model);
      }
    });
  }
});