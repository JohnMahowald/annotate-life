AnnotateLife.Views.ChapterForm = Backbone.View.extend({
  template: JST["chapters/form"],
  
  events: {
    "submit #new-chapter-form": "createNewChapter"
  },
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  createNewChapter: function(event) {
    event.preventDefault();
    var title = $(event.currentTarget).find('#chapter-title').val();
    this.collection.create({
      title: title,
      journal_id: this.model.id
    });
  }
});