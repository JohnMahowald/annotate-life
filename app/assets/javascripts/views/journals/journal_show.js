/*global AnnotateLife, Backbone, JST, $ */

AnnotateLife.Views.JournalShow = Backbone.AnimatedView.extend({
  template: JST["journals/show"],
  attributes: { class: 'journal-show'},

  initialize: function() {
    this.chapters = this.model.chapters();
    this.attachChaptersIndex();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.collection, "sync", this.render);
    this.listenTo(this.chapters, "storiesReady", this.attachStoriesIndex);
    this.listenTo(this.chapters, "storyEditView", this.attachStoryEditView);
    this.listenTo(this.chapters, "storyShowView", this.attachStoryShowView);
    this.listenTo(this.chapters, "exitStoryShowMode", this.exitStoryShowMode);
    this.listenTo(this.chapters, "exitStoryEditMode", this.exitStoryEditMode);
    this.listenTo(this.chapters, "modalReady", this.renderModal)
  },

  events: {
    "sortstop .chapters-list": "getChaptersStopOrder",
    "mouseover .story-select-toggle": "storySelectToggleOn",
    "mouseleave .story-select-toggle": "storySelectToggleOff"
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
      placeholder: 'chapter-place-card-holder',
      start: function (event, ui) {
        ui.item.addClass('tilt');
      },
      stop: function (event, ui) {
        ui.item.removeClass('tilt');
      }
    });
  },

  setCurrentJournalTitle: function() {
    var currentMenu = new AnnotateLife.Views.JournalsHeaderMenu({
      model: this.model
    })
    $('#current-journal-menu-pos').html(currentMenu.render().$el);
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
    this.storySelectMode();
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