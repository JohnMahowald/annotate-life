/*global AnnotateLife, Backbone, JST, $ */

AnnotateLife.Views.JournalShow = Backbone.CompositeView.extend({
  initialize: function() {
    this.chapters = this.model.chapters();
    this.attachChaptersIndex();
    this.attachStoryEditForm();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.chapters, "storiesReady", this.attachStoriesIndex);
  },
  
  events: {
    "click #move-button": "promptChapterSelect",
    "click #move-back": "promptStorySelect",
    "click #edit-the-story": "storyEditMode"
  },
  
  attributes: { class: 'journal-show-container'},
  
  template: JST["journals/show"],
  
  render: function() {
    var content = this.template({ journal: this.model });
    this.$el.html(content);
    this.setCurrentJournalTitle();
    this.attachSubviews();
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
  
  promptChapterSelect: function() {
    $('.chapters').addClass('col-xs-offset-4');
    $('.stories').addClass('hidden');
    $('.story-edit').addClass('hidden offset-right');
  },
  
  promptStorySelect: function() {
    /* Chapter Transitions */
    $('.chapters').removeClass('col-xs-offset-4 col-xs-4');
    $('.chapters').addClass('col-xs-2');
    
    /* Stories Index Transitions */
    $('.stories').removeClass('col-xs-4 hidden');
    $('.stories').addClass('col-xs-5 col-xs-offset-1 animated fadeIn');
    // setTimeout(this.slideStoriesFromRight, 0)
  },
  
  storyEditMode: function() {
    /* Stories Index Transitions */
    $('.stories').removeClass('col-xs-5 col-xs-offset-1');
    $('.stories').addClass('col-xs-3');
    
    /* Story Edit Transitions */
    $('.story-edit').removeClass('col-xs-4 hidden');
    $('.story-edit').addClass('col-xs-7');
    setTimeout(this.slideEditFromRight, 0)
  },
  
  // slideStoriesFromRight: function() {
  //   $('.stories').addClass('animated fadeIn')
  //   $('.stories').css('right', '0px');
  // },
  
  slideEditFromRight: function() {
    $('.story-edit').addClass('animated fadeIn');
    $('.story-edit').css('right', '0px')
  }
});