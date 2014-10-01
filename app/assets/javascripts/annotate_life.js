window.AnnotateLife = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function(options) {
    var welcome = new Welcome(options.user);    
    updateGreeting(welcome)
    setInterval(function() { updateGreeting(welcome) }, 4000)
    
    new AnnotateLife.Routers.AppRouter({
      $rootEl: $("#main")
    });
    
    Backbone.history.start();
  }
};
