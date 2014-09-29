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
  },
  
  enterStoryShowMode: function() {
    var view = this;
    $('.select-controller').animate({
      marginLeft: '-100%'
    }, 400, function() {
      view.prepareShowMode();
    });

    $("body").keydown(function(e) {
      if(e.keyCode == 37) {
        view.leaveStoryShowMode();
      }
    });
  },
  
  prepareShowMode: function() {
    
  },
  
  leaveStoryShowMode: function() {
    $('.story-show').fadeOut(1000, function() {
      $('.select-controller').removeClass('hidden');
      $('.select-controller').animate({ marginLeft: '0'}, 400);
      $('.story-show').addClass('hidden'); 
      $('.story-show').removeClass('animated fadeIn');
    });
  }
});