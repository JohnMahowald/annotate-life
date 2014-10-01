AnnotateLife.Views.JournalsHeaderMenu = Backbone.View.extend({
  template: JST['journals/header'],
  
  tagName: 'a',
  
  attributes: { id: 'current-journal-menu'},
  
  render: function() {
    var content = this.template({ 
      journals: this.model.collection,
      currentJournal: this.model
    })
    this.$el.html(content);
    return this;
  }
})