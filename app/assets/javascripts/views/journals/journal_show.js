AnnotateLife.Views.JournalShow = Backbone.CompositeView.extend({
  initialize: function() {
    this.chapters = this.model.chapters();
    this.chapters.each(this.addChapter.bind(this));
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.chapters, "add", this.addChapter);
    this.listenTo(this.chapters, "storiesReady", this.showStories);
    this.attachForms();
  },
  
  template: JST["journals/show"],
  
  render: function() {
    var content = this.template({ journal: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },
  
  addChapter: function(chapter) {
    var chapterView = new AnnotateLife.Views.ChapterPlaceCard({
      model: chapter
    })
    
    this.addSubview(".chapters", chapterView);
  },
  
  showStories: function(chapter) {
    chapter.stories().each(this.addStory.bind(this));
  },
  
  addStory: function(story) {
    var storyView = new AnnotateLife.Views.StoryPlaceCard({
      model: story
    })
    
    this.addSubview(".stories", storyView);
  },
  
  attachForms: function() {
    var chapterForm = new AnnotateLife.Views.NewChapterForm({ 
      model: this.model
    });
    
    this.addSubview(".new-journal-container", chapterForm)
    this.attachStoryEdit();
  },
  
  attachStoryEdit: function() {
    var storyEditForm = new AnnotateLife.Views.StoryForm();
    
    this.addSubview(".story-edit", storyEditForm);
  }
})