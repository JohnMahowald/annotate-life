AnnotateLife.Views.JournalShow = Backbone.CompositeView.extend({
  template: JST["journals/show"],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
})