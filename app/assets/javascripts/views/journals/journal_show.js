AnnotateLife.Views.JournalShow = Backbone.CompositeView.extend({
  initialize: function() {
    this.chapters = this.model.chapters()
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.chapters, "add", this.addChapter);
  },
  
  template: JST["journals/show"],
  
  render: function() {
    var content = this.template({ journal: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },
  
  addChapter: function(chapter) {
    var journalView = new AnnotateLife.Views.ChapterPlaceCard({
      model: chapter
    })
    
    this.addSubview(".chapters", journalView);
  },
})