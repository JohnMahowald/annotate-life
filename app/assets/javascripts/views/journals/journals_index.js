AnnotateLife.Views.JournalsIndex = Backbone.View.extend({
  template: JST['journals/index'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  }

});
