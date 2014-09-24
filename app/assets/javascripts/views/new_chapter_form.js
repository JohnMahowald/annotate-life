AnnotateLife.Views.NewChapterForm = Backbone.View.extend({
  template: JST["chapters/form"],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});