/*global AnnotateLife, Backbone, JST, $ */

AnnotateLife.Views.JournalShow = Backbone.CompositeView.extend({
  template: JST["journals/show"],
  attributes: { class: 'journal-show-container'},
  
  initialize: function() {
    this.chapters = this.model.chapters();
    this.attachChaptersIndex();
    this.attachStoryEditForm();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.chapters, "storiesReady", this.attachStoriesIndex);
  },
  
  events: {
    "sortstart": "startSort",
    "sortstop": "sortStop",
    // "sortreceive": "sortReceive",
    "click .chapter-place-card": "storySelectMode",
    "click .story-place-card": "storyEditMode",
    "mouseover .hover-select-group": "storySelectMode",
    "mouseleave .hover-select-group": "storyEditMode"
  },
  
  startSort: function(event, ui) {
    console.log('sort started');
    console.log(event);
    console.log(ui);
  },
  
  sortStop: function(event, ui) {
    console.log('sort stopped');
    console.log(event);
    console.log(ui);
  },
  
  sortReceive: function(event) {
    console.log('sort received');
    console.log(event);
  },
  
  render: function() {
    var content = this.template({ journal: this.model });
    this.$el.html(content);
    this.setCurrentJournalTitle();
    this.attachSubviews();
    this.chapterSelectMode();
    $('.chapters-list').sortable({
      placeholder: 'chapter-place-card-holder'
    });
    return this;
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
  },
  
  attachStoryEditForm: function() {
    var storyEditForm = new AnnotateLife.Views.StoryForm();
    this.addSubview(".story-edit", storyEditForm);
  },
  
  chapterSelectMode: function() {
    $('#main').addClass('fade-to-background');
    $('.chapters').addClass('col-xs-offset-4');
    $('.story-edit').addClass('offset-right');
  },
  
  storySelectMode: function() {
    /* Chapter Transitions */
    $('.chapters').removeClass('col-xs-offset-4 col-xs-4');
    $('.chapters').addClass('col-xs-3');
    $('.chapters').css('z-index', '-1');
    
    /* Stories Index Transitions */
    $('.stories').removeClass('col-xs-4 hidden');
    $('.stories').addClass('col-xs-5 animated fadeIn');
    
    /* Story Edit Transitions */
    $('.story-edit').removeClass('col-xs-7')
    $('.story-edit').addClass('col-xs-4')
  },
  
  storyEditMode: function() {
    $('#main').removeClass('fade-to-background');
    $('#hover-controller').addClass('hover-select-group')
    /* Chapter Transitions */
    $('.chapters').removeClass('col-xs-3')
    $('.chapters').addClass('col-xs-2')
    /* Stories Index Transitions */
    $('.stories').removeClass('col-xs-5 col-xs-offset-1');
    $('.stories').addClass('col-xs-3');
    
    /* Story Edit Transitions */
    $('.story-edit').removeClass('col-xs-4 hidden');
    $('.story-edit').addClass('col-xs-7');
    setTimeout(this.slideEditFromRight, 0)
  },
  
  slideEditFromRight: function() {
    $('.story-edit').addClass('animated fadeIn');
    $('.story-edit').css('right', '0px')
  }
});