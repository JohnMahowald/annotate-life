AnnotateLife.Views.JournalsIndexMenu = Backbone.View.extend({
  template: JST['journals/index_menu'],
  
  tagName: 'li',
  
  attributes: { 
    id: 'current-journal-menu',
    class: 'dropdown'
  },
  
  render: function() {
    var content = this.template({
      journals: this.collection
    })
    this.$el.html(content);
    return this;
  }
});