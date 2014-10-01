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
    "click #new-journal-button": "renderForm",
    "click .close-form": "hideForm",
    "submit #new-journal-form": "createJournal",
  },
  
  renderForm: function(event) {
    event.preventDefault();
    $(event.currentTarget).addClass("hidden");
    var $formWrapper = $(".journal-form-wrapper");
    $formWrapper.removeClass("hidden");
    $formWrapper.addClass("animated fadeIn");
    $('.journal-form-container').addClass('journal-form-container-show')
  },
  
  createJournal: function(event) {
    var view = this;
    event.preventDefault();
    var formData = $(event.currentTarget).serializeJSON();
    this.collection.create(formData['journal'], {
      success: function() { 
        view.hideForm();
      }
    });
  },
  
  hideForm: function() {
    var $form = $(".journal-form-wrapper")
    $form.addClass("hidden");
    $('.journal-form-container').removeClass('journal-form-container-show')    
    $formButton = $("#new-journal-button")
    $formButton.removeClass("hidden");
    $formButton.addClass("animated fadeIn")
    $form.find("#journal-title").val("");
    $form.find("textarea").val("");

  }
});