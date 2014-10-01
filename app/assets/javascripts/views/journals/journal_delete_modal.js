AnnotateLife.Views.JournalDeleteModal = Backbone.View.extend({
  template: JST['journals/delete_modal'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click #delete-journal": "deleteJournal"
  },
  
  deleteJournal: function() {
    var view = this;
    var collection = view.model.collection;
    view.model.destroy();
  },
  
  deleteChapter: function(event) {
    event.preventDefault();
    var subview = this;
    var collection = subview.model.collection
    this.model.destroy({
      success: function() {
        collection.trigger("deleteChapter", subview);
      }
    });
  }
});