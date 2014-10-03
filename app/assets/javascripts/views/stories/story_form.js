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
    "click .publish": "publishStory",
    "click .upload": "promptUpload",
    "click .discard": "resetForm"
  },
  
  resetForm: function() {
    this.collection.chapter.collection.trigger('exitStoryEditMode');
    this.clearInputs();
  },
  
  publishStory: function(event) {
    event.preventDefault(event);
    var view = this;
    var title = $(event.delegateTarget).find('#story-title').val();
    var text = $(event.delegateTarget).find('#story-text').val();
    var chapterId = this.collection.chapter.id
    view.model.save({
      title: title,
      text: text,
      "chapter_id": chapterId,
      "img_url": this.model.img_url
    }, {
      success: function(story) {
        view.collection.chapter.collection.trigger('exitStoryEditMode');
        view.collection.add(story);
        view.clearInputs();
        var $story = $('.story-place-card[data-id=' + story.id + ']')
        $('.stories-list').scrollTo($story, 400)
      }
    });
  },
  
  promptUpload: function() {
    var optionsModal = new AnnotateLife.Views.StoryImageOptionsModal({
      model: this.model,
      collection: this.collection
    })
    this.collection.chapter.collection.trigger('modalReady', optionsModal)
  },
  
  clearInputs: function() {
    $("#story-title").val("");
    $("#story-text").val("");
  }
});