Backbone.AnimatedView = Backbone.CompositeView.extend({
  chapterSelectMode: function() {
    $('#main').addClass('fade-to-background');
    $('.chapters').addClass('col-xs-offset-4');
    $('.story-edit').addClass('offset-right');
  },
  
  storySelectMode: function() {
    /* Chapter Transitions */
    $('.chapters').removeClass('col-xs-offset-4 col-xs-4');
    $('.chapters').addClass('col-xs-3');
    
    /* Stories Index Transitions */
    $('.stories').removeClass('col-xs-4 hidden');
    $('.stories').addClass('col-xs-5 animated fadeIn');
    
    /* Story Edit Transitions */
    $('.story-edit').removeClass('col-xs-7')
    $('.story-edit').addClass('col-xs-4')
  },
  
  storyEditMode: function(event) {
    $('#main').removeClass('fade-to-background');
    $('#hover-controller').addClass('hover-select-group')
    /* Chapter Transitions */
    $('.chapters').removeClass('col-xs-3')
    $('.chapters').addClass('col-xs-2')
    /* Stories Index Transitions */
    $('.stories').removeClass('col-xs-5 col-xs-offset-1');
    $('.stories').addClass('col-xs-3');
    
    /* Story Edit Transitions */
    $('.story-edit').removeClass('col-xs-4 hidden');
    $('.story-edit').addClass('col-xs-7');
    setTimeout(this.slideEditFromRight, 0)
  },
  
  slideEditFromRight: function() {
    $('.story-edit').addClass('animated fadeIn');
    $('.story-edit').css('right', '0px')
  }
});