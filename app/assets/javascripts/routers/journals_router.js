AnnotateLife.Routers.Journals = Backbone.Router.extend({
  initialize: function(options) {
    this.collection = AnnotateLife.journals,
    this.$rootEl = options.$rootEl
  },
  
  routes: {
    "": "index"
  },
  
  index: function() {
    var indexView = new AnnotateLife.Views.JournalIndex({
      collection: this.collection
    })
    
    this._swapView(indexView);
  },
  
  _swapView: function(view) {
    this.currentView && this.currentView.remove();
    this.currentView = view
    this.$rootEl.html(view.render().$el)
  }
});
