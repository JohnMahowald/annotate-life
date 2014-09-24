AnnotateLife.Views.JournalShow = Backbone.CompositeView.extend({
  initialize: function() {
    this.listenTo(this.model, "sync", this.render);
  },
  
  template: JST["journals/show"],
  
  render: function() {
    var content = this.template({ 
      journal: this.model 
    });
    
    this.$el.html(content);
    return this;
  }
})