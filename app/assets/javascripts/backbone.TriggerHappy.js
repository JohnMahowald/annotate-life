var reTrigger = Backbone.Events.trigger

Backbone.Events.trigger = function(name) {
  // TRIGGER LOGGER
  // logging the className and the name of the trigger event
  var id = this.id || 'n/a'
  console.log(this.typeOfThing + ' (' + id + "): " + name)

  return reTrigger.apply(this, arguments)
}

_.extend(Backbone.Model.prototype, Backbone.Events)
_.extend(Backbone.Collection.prototype, Backbone.Events)
_.extend(Backbone.Router.prototype, Backbone.Events)
_.extend(Backbone.View.prototype, Backbone.Events)

Backbone.Model.prototype.typeOfThing = 'Model'
Backbone.Router.prototype.typeOfThing = 'Router'
Backbone.Collection.prototype.typeOfThing = 'Collection'
Backbone.View.prototype.typeOfThing = 'View'