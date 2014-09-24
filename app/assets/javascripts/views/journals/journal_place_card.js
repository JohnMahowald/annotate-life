AnnotateLife.Views.JournalPlaceCard = Backbone.View.extend({  
  template: JST["journals/place_card"],
    
  render: function() {
    var content = this.template({ journal: this.model })
    this.$el.html(content);
    return this;
  },
  
  attributes: {
    class: "place-card"
  },
  
  events: {
    "click": "redirect"
  },
  
  redirect: function(event) {
    event.preventDefault();
    var journalShowUrl = "/journals/" + this.model.id
    console.log(journalShowUrl)
    Backbone.history.navigate(journalShowUrl, { trigger: true })
  }
});