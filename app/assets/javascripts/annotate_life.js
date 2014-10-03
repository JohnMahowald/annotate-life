window.AnnotateLife = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function(options) {
    var welcome = new Welcome(options.user);    
    updateGreeting(welcome)
    setInterval(function() { updateGreeting(welcome) }, 4000)
    
    var newJournalModal = new AnnotateLife.Views.JournalModalForm({
      collection: this.collection
    })
    
    $("#new-journal-modal").html(newJournalModal.render().$el);
    
    new AnnotateLife.Routers.AppRouter({
      $rootEl: $("#main")
    });
    
    Backbone.history.start();
  }
};
