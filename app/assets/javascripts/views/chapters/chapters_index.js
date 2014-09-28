AnnotateLife.Views.ChaptersIndex = Backbone.CompositeView.extend({
  initialize: function(options) {
    this.collection.each(this.addChapter.bind(this));
    this.attachNewChapterForm();
    this.listenTo(this.collection, "add", this.addChapter);
    this.listenTo(this.collection, "deleteChapter", this.removeChapter);
  },
  
  attributes: { class: "sub-col" },
  
  template: JST['chapters/index'],
  
  render: function() {
    var content = this.template({ collection: this.collection })
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },
  
  addChapter: function(chapter) {
    var chapterView = new AnnotateLife.Views.ChapterPlaceCard({
      model: chapter
    })
    this.addSubview(".chapters-list", chapterView);
  },
  
  attachNewChapterForm: function() {
    var newChapterForm = new AnnotateLife.Views.ChapterForm({ 
      model: this.model,
      collection: this.collection 
    });
    this.addSubview(".chapter-form", newChapterForm) 
  },
  
  removeChapter: function(subview) {
    debugger
    this.removeSubview(".chapters-list", subview);
  }
});