AnnotateLife.Views.StoriesIndex = Backbone.CompositeView.extend({
  initialize: function() {
    this.stories = this.model.stories();
    this.stories.each(this.addStory.bind(this));
    this.listenTo(this.stories, 'add', this.addStory);
    this.listenTo(this.stories, 'removeStory', this.removeStory);
  },
  
  attributes: { class: 'sub-col' },
  
  template: JST['stories/index'],
  
  render: function() {
    var content = this.template({ collection: this.collection })
    this.$el.html(content);
    this.attachSubviews();
    return this;
  },
  
  events: {
    "sortstop .stories-list": "getStoriesStopOrder",
    "click #new-story": "renderStoryForm"
  },
  
  getStoriesStopOrder: function() {
    var cardEndOrder = [];
    $cards = this.$('.story-place-card');
    $cards.each(function(index, card) {
      cardEndOrder.push($(card).data('id'));
    })
    
    this.saveNewStoriesOrder(cardEndOrder);
  },
  
  saveNewStoriesOrder: function(newOrder) {
    var chapter = this;
    newOrder.forEach(function(id, index) {
      var story = chapter.stories.findWhere({ id: id })
      if (story.get('ord') !== index) {
        story.set('ord', index);
        story.save({});
      }
    })
    
    chapter.stories.sort();
  },
  
  onRender: function() {
    $('.stories-list').sortable({
      placeholder: 'story-place-card-holder'
    });
    $('abbr.timeago').timeago();
  },
  
  addStory: function(story) {
    var storyView = new AnnotateLife.Views.StoryPlaceCard({ 
      model: story
    })
    this.addSubview(".stories-list", storyView);
  },
  
  removeStory: function(storySubview) {
    this.removeSubview(".stories-list", storySubview)
  },
  
  renderStoryForm: function() {
    var storyForm = new AnnotateLife.Views.StoryForm({
      model: new AnnotateLife.Models.Story,
      collection: this.model.stories()
    });
    
    this.model.collection.trigger('storyEditView', storyForm)
  }
});