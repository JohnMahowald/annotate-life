/*global AnnotateLife, Backbone, JST, $ */

AnnotateLife.Views.JournalShow = Backbone.AnimatedView.extend({
  template: JST["journals/show"],
  attributes: { class: 'journal-show-container'},
  
  initialize: function() {
    this.chapters = this.model.chapters();
    debugger
    this.attachChaptersIndex();
    this.attachStoryEditForm();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.chapters, "storiesReady", this.attachStoriesIndex);
  },
  
  events: {
    "sortstop .chapters-list": "getChaptersStopOrder",
    "click .chapter-place-card": "storySelectMode",
    "click .story-place-card": "storyEditMode",
    "mouseover .hover-select-group": "storySelectMode",
    "mouseleave .hover-select-group": "storyEditMode"
  },
  
  render: function() {
    var content = this.template({ journal: this.model });
    this.$el.html(content);
    this.setCurrentJournalTitle();
    this.attachSubviews();
    this.chapterSelectMode();
    this.makeSortable();
    return this;
  },
  
  makeSortable: function() {
    $('.chapters-list').sortable({
      placeholder: 'chapter-place-card-holder'
    });
  },
  
  setCurrentJournalTitle: function() {
    $('#current-journal-title').html(this.model.escape('title'));
  },
  
  attachChaptersIndex: function() {
    var chaptersIndex = new AnnotateLife.Views.ChaptersIndex({
      collection: this.chapters
    });
    this.addSubview('.chapters', chaptersIndex);
  },
  
  attachStoriesIndex: function(chapter) {
    $('.stories').empty();
    var storiesIndex = new AnnotateLife.Views.StoriesIndex({
      model: chapter
    });
    this.addSubview('.stories', storiesIndex);
    this.onRender();
  },
  
  attachStoryEditForm: function() {
    var storyEditForm = new AnnotateLife.Views.StoryForm();
    this.addSubview(".story-edit", storyEditForm);
  },
  
  getChaptersStopOrder: function(event) {
    var cardEndOrder = [];
    $cards = this.$('.chapter-place-card');
    $cards.each(function(index, card) {
      cardEndOrder.push($(card).data('id'));
    })
    
    this.saveNewChapterOrder(cardEndOrder);
  },
  
  saveNewChapterOrder: function(newOrder) {
    var journal = this;
    newOrder.forEach(function(id, index) {
      chapterNum = index + 1
      var chapter = journal.chapters.findWhere({ id: id })
      if (chapter.get('chapter_num') !== chapterNum) {
        chapter.save({'chapter_num': chapterNum});
      }
    });
    
    // journal.chapters.sort();
  },
});