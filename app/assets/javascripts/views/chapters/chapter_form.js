AnnotateLife.Views.ChapterForm = Backbone.View.extend({
  template: JST["chapters/form"],
  
  events: {
    "submit #new-chapter-form": "createNewChapter",
    "click .new-chapter-link": "renderNewChapterForm"
  },
  
  render: function() {
    var content = this.template();
    this.$el.html(content);
    return this;
  },

  renderNewChapterForm: function() {
    $('.new-chapter-link').fadeOut(100, function() {
      $('.new-chapter-link').addClass('hidden');
      $('#new-chapter-form').hide().removeClass('hidden').fadeIn(100)
    });
  },
  
  createNewChapter: function(event) {
    event.preventDefault();
    var $input = $(event.currentTarget).find('#chapter-title')
    var title = $input.val();
    var view = this;
    view.collection.create({
      title: title,
      journal_id: this.model.id
    }, { 
      success: function() {
       $input.val('');
       view.revealNewChapterForm();
      }
    });
  },

  revealNewChapterForm: function() {
    $('#new-chapter-form').fadeOut('100', function() {
      $('#new-chapter-form').addClass('hidden');
      $('.new-chapter-link').hide.removeClass('hidden').fadeIn(100);
    })
  }
});