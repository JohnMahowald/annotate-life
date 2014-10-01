/*global AnnotateLife, Backbone, JST, $ */

AnnotateLife.Views.JournalShow = Backbone.AnimatedView.extend({
  template: JST["journals/show"],
  attributes: { class: 'journal-show'},

  initialize: function() {
    this.chapters = this.model.chapters();
    this.attachChaptersIndex();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.chapters, "storiesReady", this.attachStoriesIndex);
    this.listenTo(this.chapters, "storyEditView", this.attachStoryEditView);
    this.listenTo(this.chapters, "storyShowView", this.attachStoryShowView);
    this.listenTo(this.chapters, "leaveStoryShowMode", this.leaveStoryShowMode);
    this.listenTo(this.chapters, "exitStoryEditMode", this.exitStoryEditMode);
  },

  events: {
    "sortstop .chapters-list": "getChaptersStopOrder",
    "click .chapter-show-link": "storySelectMode",
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
      placeholder: 'chapter-place-card',
      start: function(event, ui) {
        ui.item.addClass('tilt')
      },
      stop: function(event, ui) {
        ui.item.removeClass('tilt')
      }
    });
  },

  setCurrentJournalTitle: function() {
    $('#current-journal-title').html(this.model.escape('title'));
  },

  attachChaptersIndex: function() {
    var chaptersIndex = new AnnotateLife.Views.ChaptersIndex({
      model: this.model,
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

  attachStoryEditView: function(storyEditForm) {
    this.addSubview(".story-edit", storyEditForm);
    this.storyEditMode();
    this.onRender();
  },

  attachStoryShowView: function(storyShowView) {
    this.addSubview(".story-show", storyShowView);
    this.storyShowMode();
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
        chapter.set('chapter_num', chapterNum)
        chapter.save();
      }
    });

    journal.chapters.sort();
  }
});