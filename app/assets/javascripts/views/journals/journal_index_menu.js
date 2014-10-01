AnnotateLife.Views.JournalsIndexMenu = Backbone.View.extend({
  template: JST['journals/index_menu'],
  
  tagName: 'a',
  
  attributes: { id: 'current-journal-menu'},
  
  render: function() {
    var content = this.template({
      journals: this.collection
    })
    this.$el.html(content);
    return this;
  }
});