Backbone.AnimatedView = Backbone.CompositeView.extend({
  chapterSelectMode: function() {
    $('.select-controller').addClass('chapter-select');
    // $('#main').addClass('fade-to-background');
    // $('.chapters').addClass('col-xs-offset-4');
    // $('.story-edit').addClass('offset-right');
  },
  //
  storySelectMode: function() {
    $('.chapters').addClass('chapters-mid');
    $('.select-controller').css("width", '70%')
    
    /* Slide select controller left and fade in stories list */
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
    // $('.stories').css('float', 'left');
  }
  
  //
  // storyEditMode: function(event) {
  //   $('#main').removeClass('fade-to-background');
  //   $('#hover-controller').addClass('hover-select-group')
  //   /* Chapter Transitions */
  //   $('.chapters').removeClass('col-xs-3')
  //   $('.chapters').addClass('col-xs-2')
  //   /* Stories Index Transitions */
  //   $('.stories').removeClass('col-xs-5 col-xs-offset-1');
  //   $('.stories').addClass('col-xs-3');
  //
  //   /* Story Edit Transitions */
  //   $('.story-edit').removeClass('col-xs-4 hidden');
  //   $('.story-edit').addClass('col-xs-7');
  //   setTimeout(this.slideEditFromRight, 0)
  // },
  //
  // slideEditFromRight: function() {
  //   $('.story-edit').addClass('animated fadeIn');
  //   $('.story-edit').css('right', '0px')
  // }
});