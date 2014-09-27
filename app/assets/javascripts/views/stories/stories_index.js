AnnotateLife.Views.StoriesIndex = Backbone.CompositeView.extend({
  initialize: function() {
    this.stories = this.model.stories();
    this.stories.each(this.addStory.bind(this));
    this.listenTo(this.stories, 'add', this.addStory);
  },
  
  attributes: { class: 'stories-show' },
  
  template: JST['stories/index'],
  
  render: function() {
    var content = this.template({ collection: this.collection })
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },
  
  events: {
    "sortstop .stories-list": "getStoriesStopOrder"
  },
  
  getStoriesStopOrder: function() {
    var cardEndOrder = [];
    $cards = this.$('.story-place-card');
    $cards.each(function(index, card) {
      cardEndOrder.push($(card).data('id'));
    })
    
    this.saveNewStoriesOrder(cardEndOrder);
  },
  
  saveNewChapterOrder: function(newOrder) {
    var journal = this;
    newOrder.forEach(function(id, index) {
      chapterNum = index + 1
      var chapter = journal.chapters.findWhere({ id: id })
      if (chapter.get('chapter_num') !== chapterNum) {
        chapter.set('chapter_num', chapterNum);
        chapter.save();
      }
    });
    
    journal.chapters.sort();
  },
  
  saveNewStoriesOrder: function(newOrder) {
    var chapter = this;
    newOrder.forEach(function(id, index) {
      var story = chapter.stories.findWhere({ id: id })
      if (story.get('ord') !== index {
        story.set('ord', index);
        story.save();
      })
    })
    
    chapter.stories.save();
  },
  
  onRender: function() {
    $('.stories-list').sortable();
  },
  
  addStory: function(story) {
    var storyView = new AnnotateLife.Views.StoryPlaceCard({ model: story })
    this.addSubview(".stories-list", storyView);
  }
});