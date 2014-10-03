AnnotateLife.Views.JournalsIndex = Backbone.CompositeView.extend({
  template: JST['journals/index'],
  attributes: { class: "journal-index" },
  
  initialize: function() {
    this.collection.each(this.addJournal.bind(this));
    this.listenTo(this.collection, 'sync', this.render);  
    this.listenTo(this.collection, "add", this.addJournal);
    this.listenTo(this.collection, "remove", this.removeJournal);
    this.listenTo(this.collection, "journalDestroy", this.removeView);
    this.listenTo(this.collection, "modalReady", this.renderModal)
    this.attachJournalForm();
    this.attachJournalModal();
  },
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    this.setJournalsMenu();
    this.attachSubviews();
    return this;
  },
  
  events: {
    "click .dropdown-delete-journal": "confirmDelete"
  },
  
  removeView: function(subview) {
    this.removeSubview(".journals-container", subview);
  },

  setJournalsMenu: function() {
    var menu = new AnnotateLife.Views.JournalsIndexMenu({
      collection: this.collection
    })
    $('#current-journal-menu-pos').html(menu.render().$el);
  },

  addJournal: function(journal) {
    var placeCardView = new AnnotateLife.Views.JournalPlaceCard({
      model: journal,
      collection: this.collection
    });
    
    this.listenTo(placeCardView, 'remove', this.removeView.bind(this));
    this.addSubview(".journals-container", placeCardView);
  },
  
  attachJournalForm: function () {
    var journalFormView = new AnnotateLife.Views.JournalForm({
      collection: this.collection
    });
    this.addSubview(".journal-form-container", journalFormView);
  },
  
  attachJournalModal: function() {
    var newJournalModal = new AnnotateLife.Views.JournalModalForm({
      collection: this.collection
    })
    
    $("#new-journal-modal").html(newJournalModal.render().$el);
  }
});