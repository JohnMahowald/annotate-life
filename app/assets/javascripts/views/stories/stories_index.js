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
  
  onRender: function() {
    $('.stories-list').sortable();
  },
  
  addStory: function(story) {
    var storyView = new AnnotateLife.Views.StoryPlaceCard({ model: story })
    this.addSubview(".stories-list", storyView);
  }
});