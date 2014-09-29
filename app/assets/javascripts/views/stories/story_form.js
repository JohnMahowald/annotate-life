AnnotateLife.Views.StoryForm = Backbone.View.extend({  
  template: JST["stories/form"],
  
  attributes: { class: "story-form" },
  
  render: function() {
    var content;
    content = this.template({ story: this.model })
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click .publish": "publishStory"
  },
  
  publishStory: function(event) {
    event.preventDefault(event);
    var view = this;
    var title = $(event.delegateTarget).find('#story-title').val();
    var text = $(event.delegateTarget).find('#story-text').val();
    var chapterId = this.collection.chapter.id
    var imgUrl = $(event.delegateTarget).find('#img-url').val();
    view.model.save({
      title: title,
      text: text,
      "chapter_id": chapterId,
      'img_url': imgUrl
    }, {
      success: function(story) {
        view.collection.add(story);
        view.clearInputs();
        var $story = $('.story-place-card[data-id=' + story.id + ']')
        $('.stories-list').scrollTo($story, 400)
        view.collection.chapter.collection.trigger('exitStoryEditMode');
      }
    });
  },
  
  clearInputs: function() {
    $("#story-title").val("");
    $("#story-text").val("");
  },
  
  onRender: function() {
    $filepickerInput = $('input[type=filepicker]');
    filepicker.constructWidget($filepickerInput[0]);
  }
});