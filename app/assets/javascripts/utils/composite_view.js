Backbone.CompositeView = Backbone.View.extend({
  addSubview: function (selector, subview) {
    this.subviews(selector).push(subview)
    this.attachSubview(selector, subview.render());
  },
  
  attachSubview: function (selector, subview) {
    this.$(selector).append(subview.$el);
    subview.delegateEvents();
    
    if (subview.attachSubviews) {
      subview.attachSubviews();
    }
  },
  
  attachSubviews: function () {
    var view = this;
    _(this.subviews()).each(function (subviews, selector) {
      view.$(selector).empty();
      _(subviews).each(function(subview) {
        view.attachSubview(selector, subview);
      });
    });
  },
  
  onRender: function() {
    _(this.subviews()).each(function (subviews, selector) {
      _subviews.each(function(subview) {
        subview.onRender();
      });
    });
  },
  
  remove: function () {
    BackboneView.prototype.remove.call(this);
    
    _(this.subviews()).each(function (subviews) {
      _(subviews).each(function (subview) {
        subview.remove();
      });
    });
  },
  
  removeSubview: function (selector, subview) {
    subview.remove();
    
    var subviews = this.subviews(selector);
    subviews.splice(subviews.indexOf(subview), 1);
  },
  
  subviews: function (selector) {
    this._subviews = this._subviews || {};
    
    if (!selector) {
      return this._subviews;
    } else {
      this._subviews[selector] = this._subviews[selector] || [];
      return this._subviews[selector];
    }
  }
  
  // TODO: write onRender method for the boards index
  // onRender: function () {
  //   this.$('.journals-container').sortable({
  //     // connectWith: ".card-wrapper"
  //   });
})