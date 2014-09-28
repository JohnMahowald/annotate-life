Backbone.AnimatedView = Backbone.CompositeView.extend({
  chapterSelectMode: function() {
    $('.select-controller').addClass('chapter-select');
  },
  
  storySelectMode: function() {
    $('.chapters').addClass('chapters-mid');
    $('.select-controller').css("width", '70%')
    $('.select-controller').animate({ 
      marginLeft: '0'
    }, 200, function() {
      $('.stories').removeClass('hidden');
      $('.stories').addClass('stories-lg animated fadeIn');
    });
  },
  
  storyEditMode: function() {
    $('.select-controller').addClass('story-edit-mode')
    $('.story-edit').removeClass('hidden');
    $('.story-edit').addClass('animated fadeIn');
  }
});