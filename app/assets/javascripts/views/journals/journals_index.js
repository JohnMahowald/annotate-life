AnnotateLife.Views.JournalsIndex = Backbone.CompositeView.extend({
  initialize: function() {
    this.collection.each(this.addJournal.bind(this));
    this.listenTo(this.collection, "add", this.addJournal)
  },
  
  template: JST['journals/index'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },

  addJournal: function(journal) {
    var placeCardView = new AnnotateLife.Views.JournalPlaceCard({
      model: journal
    });
    
    this.addSubview(".journals-container", placeCardView);
  },
  
  attributes: {
    class: "journal-index"
  }
});