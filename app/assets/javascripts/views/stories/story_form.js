AnnotateLife.Views.StoryForm = Backbone.View.extend({  
  template: JST["stories/form"],
  
  attributes: { class: "story-form" },
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .publish": "publishStory"
  },
  
  publishStory: function(event) {
    event.preventDefault(event);
    var story = this;
    var title = $(event.delegateTarget).find('#story-title').val();
    var text = $(event.delegateTarget).find('#story-text').val();
    var chapterId = this.model.id
    this.model.stories().create({
      title: title,
      text: text,
      'chapter_id': chapterId
    }, {
      success: function() {
        $('#story-title').val('');
        $('#story-text').val('');
      }
    });
  }
});