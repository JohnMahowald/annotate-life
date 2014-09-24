AnnotateLife.Views.ChapterPlaceCard = Backbone.View.extend({
  template: JST['chapters/place_card'],
  
  render: function() {
    var content = this.template({ chapter: this.model });
    this.$el.html(content);
    return this;
  }
});