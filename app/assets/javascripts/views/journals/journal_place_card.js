AnnotateLife.Views.JournalPlaceCard = Backbone.View.extend({  
  template: JST["journals/place_card"],
    
  render: function() {
    var content = this.template({ journal: this.model })
    this.$el.html(content);
    return this;
  },
  
  attributes: { class: "journal-place-card" },
  
  events: {
    "click .dropdown-delete-journal": "removeJournal",
    "click .journal-show-link": "redirect"
  },
  
  redirect: function(event) {
    event.preventDefault();
    var journalShowUrl = "/journals/" + this.model.id
    Backbone.history.navigate(journalShowUrl, { trigger: true })
  },
  
  removeJournal: function(event) {
    event.preventDefault();
    var subview = this;
    this.model.destroy({
      success: function() {
        subview.collection.trigger('journalDestroy', subview);
      }
    });
  }
});