Backbone.AnimatedView = Backbone.CompositeView.extend({
  chapterSelectMode: function() {
    $('.select-controller').addClass('chapter-select');
  },

  storySelectMode: function() {
    $('.chapters').addClass('chapters-mid');
    $('.select-controller').addClass('story-select-mode')
      .removeClass('chapter-select')
      .animate({
        marginLeft: '0'
      }, 200, function() {
        $('.stories').removeClass('hidden');
        $('.stories').addClass('stories-lg animated fadeIn');
      })
  },
  
  storyEditMode: function() {
    $('.select-controller').removeClass('story-select-mode')
      .addClass('story-edit-mode story-select-toggle');
    $('.story-edit').removeClass('hidden').addClass('animated fadeIn');
    $('.chapter-place-card-title').addClass('chapter-font-reduce');
    $('.story-preview-thumbnails').addClass('hide-thumbs');
    $('.story-place-card-title').addClass('story-font-reduce');
  },
  
  storySelectToggleOn: function() {
    $('.story-edit').removeClass('story-edit-resizer')
  },
  
  storySelectToggleOff: function() {
    $('.story-edit').addClass('story-edit-resizer')    
  },

  storyShowMode: function() {
    var $selectController = $('.select-controller')
    var view = this;
    $selectController.animate({
      marginLeft: '-100%'
    }, 400, function() {
      $selectController.addClass('hidden').removeClass('story-select-toggle');
      $('.story-show').hide().removeClass('hidden').fadeIn(200);
    });
    
    $('body').keydown( function(event) {
      if (event.keyCode == 37) { view.exitStoryShowMode() }
    })
  },
  
  remove: function() {
    Backbone.CompositeView.prototype.remove.call(this);
    $('body').off('keypress')
  },

  exitStoryShowMode: function() {
    var $storyShow = $('.story-show')
    var $controller = $('.select-controller')
    $storyShow.fadeOut(200, function() {
      $controller.removeClass('hidden');
      $controller.animate({ marginLeft: '0'}, 400);
      $storyShow.empty();
    });
  },

  exitStoryEditMode: function() {
    var $storyEdit = $('.story-edit')
    $storyEdit.addClass('animated fadeOut')
      .empty()
      .removeClass('animated fadeIn story-edit-resizer')
      .addClass('hidden');
    $('.select-controller').removeClass('story-edit-mode story-select-toggle')
      .addClass('story-select-mode');
    $('.chapter-place-card-title').removeClass('chapter-font-reduce');
    $('.story-preview-thumbnails').removeClass('hide-thumbs');
    $('.story-place-card-title').removeClass('story-font-reduce');
    setTimeout( function () {
      $storyEdit.removeClass('animated fadeOut')
    }, 0);
  }
});