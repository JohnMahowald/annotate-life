AnnotateLife.Views.JournalPlaceCard = Backbone.View.extend({  
  initialize: function() {
    this.listenTo(this.model, "destroy", this.trigger.bind(this, 'remove', this));
  },
  
  template: JST["journals/place_card"],
    
  render: function() {
    var content = this.template({ journal: this.model })
    this.$el.html(content);
    return this;
  },
  
  attributes: { class: "journal-place-card" },
  
  events: {
    "click .dropdown-delete-journal": "confirmDelete",
    "click .journal-show-link": "redirect"
  },
  
  confirmDelete: function(event) {
    event.preventDefault();
    var confirmView = new AnnotateLife.Views.JournalDeleteModal({
      model: this.model
    })

    this.model.collection.trigger('modalReady', confirmView);
  },
  
  removeJournal: function(event) {
    event.preventDefault();
    var subview = this;
    this.model.destroy({
      success: function() {
        subview.collection.trigger('journalDestroy', subview);
      }
    });
  },
  
  redirect: function(event) {
    event.preventDefault();
    var journalShowUrl = "/journals/" + this.model.id
    Backbone.history.navigate(journalShowUrl, { trigger: true })
  }
});