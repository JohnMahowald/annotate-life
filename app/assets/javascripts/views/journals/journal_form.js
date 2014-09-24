AnnotateLife.Views.JournalForm = Backbone.View.extend({
  template: JST["journals/form"],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  attributes: {
    class: "new-journal-container"
  },
  
  events: {
    "submit #new-journal-form": "createJournal"
  },
  
  createJournal: function(event) {
    event.preventDefault();
    var formData = $(event.currentTarget).serializeJSON();
    this.collection.create(formData['journal'], {
      success: function() {
        $(event.currentTarget).hide();
        $("#new-journal-button").fadeIn("slow");
        $(event.currentTarget).find("#journal-title").val("");
        $(event.currentTarget).find("textarea").val("");
      }
    });
  }
});