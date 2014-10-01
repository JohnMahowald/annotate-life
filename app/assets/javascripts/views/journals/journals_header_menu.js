AnnotateLife.Views.JournalsHeaderMenu = Backbone.View.extend({
  template: JST['journals/header'],
  
  tagName: 'li',
  
  attributes: { 
    id: 'current-journal-menu',
    class: 'dropdown'
  },
  
  render: function() {
    var content = this.template({ 
      journals: this.model.collection,
      currentJournal: this.model
    })
    this.$el.html(content);
    return this;
  }
})