AnnotateLife.Views.JournalsIndex = Backbone.CompositeView.extend({
  initialize: function() {
    this.collection.each(this.addJournal.bind(this));
    this.listenTo(this.collection, "add", this.addJournal);
    this.listenTo(this.collection, "journalDestroy", this.removeView);
    this.attachJournalForm();
  },
  
  attributes: { class: "journal-index" },
  
  removeView: function(subview) {
    this.removeSubview(".journals-container", subview);
  },
  
  template: JST['journals/index'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    this.setCurrentJournalTitle();
    this.attachSubviews();
    // $('#main').removeClass('fade-to-background');
    return this;
  },  
  
  setCurrentJournalTitle: function() {
    $('#current-journal-title').html('Journals');
  },

  addJournal: function(journal) {
    var placeCardView = new AnnotateLife.Views.JournalPlaceCard({
      model: journal,
      collection: this.collection
    });
    
    this.addSubview(".journals-container", placeCardView);
  },
  
  attachJournalForm: function () {
    var journalFormView = new AnnotateLife.Views.JournalForm({
      collection: this.collection
    });
    this.addSubview(".journal-form-container", journalFormView);
  }
});