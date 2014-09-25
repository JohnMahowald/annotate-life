/*global AnnotateLife, Backbone, JST */

AnnotateLife.Views.JournalShow = Backbone.CompositeView.extend({
  initialize: function() {
    this.chapters = this.model.chapters();
    this.attachChaptersIndex();
    this.attachStoryEditForm();
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.chapters, "storiesReady", this.attachStoriesIndex);
  },
  
  attributes: { class: 'journal-show-container'},
  
  template: JST["journals/show"],
  
  render: function() {
    var content = this.template({ journal: this.model });
    this.$el.html(content);
    this.attachSubviews();
    return this;
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
  }
});