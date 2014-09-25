AnnotateLife.Views.StoryPlaceCard = Backbone.View.extend({
  template: JST['stories/place_card'],
  
  render: function() {
    var content = this.template({ story: this.model });
    this.$el.html(content);
    return this;
  }
});