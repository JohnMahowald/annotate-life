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
    $('.chapter-place-card-title').addClass('chapter-font-reduce');
    $('.story-preview-thumbnails').addClass('hide-thumbs');
    $('.story-place-card-title').addClass('story-font-reduce');
  },

  storyShowMode: function() {
    var view = this;
    $('.select-controller').animate({
      marginLeft: '-100%'
    }, 400, function() {
      $('.select-controller').addClass('hidden');
      $('.story-show').hide().removeClass('hidden').fadeIn(200);
    });

    $("body").keydown(function(e) {
      if(e.keyCode == 37) {
        view.leaveStoryShowMode();
      }
    });
  },

  leaveStoryShowMode: function() {
    var $storyShow = $('.story-show')
    var $controller = $('.select-controller')
    
    $storyShow.fadeOut(200, function() {
      $controller.removeClass('hidden');
      $controller.animate({ marginLeft: '0'}, 400);
      $storyShow.empty();
    });
  },

  exitStoryEditMode: function() {
    $('.story-edit').fadeOut('slow', function() {
      $('.story-edit').empty();
      $('.select-controller').removeClass('story-edit-mode');
    })
  }
});