AnnotateLife.Views.JournalModalForm = Backbone.View.extend({
  initialize: function() {
    $('.new-journal-header-button').on('click', this.renderModal)
  },
  
  template: JST['journals/form_modal'],
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },
  
  events: {
    "click #new-journal-modal-submit": "createAndRedirect"
  },
  
  createAndRedirect: function(event) {
    event.preventDefault();
    var view = this;
    var $title = $(event.delegateTarget).find("#journal-title");
    var $description = $(event.delegateTarget).find('#journal-description');
    view.collection.create({
      title: $title.val(),
      description: $description.val()
    }, {
      success: function() {
        $('#new-journal-modal-form').modal('hide');
        $title.val("");
        $description.val("");
      }
    });
  },
  
  renderModal: function() {
    $('#new-journal-modal-form').modal('show');
  }
});