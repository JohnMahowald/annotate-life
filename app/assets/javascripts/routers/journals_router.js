AnnotateLife.Routers.AppRouter = Backbone.Router.extend({
  initialize: function(options) {
    this.collection = AnnotateLife.journals,
    this.$rootEl = options.$rootEl
  },
  
  routes: {
    "": "index",
    "journals/:id": "show"
  },
  
  index: function() {
    this.collection.fetch();
    
    var indexView = new AnnotateLife.Views.JournalsIndex({
      collection: this.collection
    })
    
    this._swapView(indexView);
  },
  
  show: function(id) {
    var showView = new AnnotateLife.Views.JournalShow({
      model: this.collection.getOrFetch(id)
    })
    
    this._swapView(showView);
  },
  
  _swapView: function(view) {
    this.currentView && this.currentView.remove();
    this.currentView = view
    this.$rootEl.html(view.render().$el)
  }
});
