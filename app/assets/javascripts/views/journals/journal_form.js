AnnotateLife.Views.JournalForm = Backbone.View.extend({
  template: JST["journals/form"],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});