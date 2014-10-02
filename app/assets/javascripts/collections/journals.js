AnnotateLife.Collections.Journals = Backbone.Collection.extend({
  model: AnnotateLife.Models.Journal,
  
  comparator: 'ord',
  
  url: "/api/journals",
  
  getOrFetch: function(id) {
    var journal = this.get(id);
    
    if (!journal) {
      var journals = this;
      journal = new this.model({ id: id })
      journal.collection = this;
      journal.fetch({
        success: function(journal) {
          journals.add(journal)
        }
      });
    } else {
      journal.fetch();
    }
    
    return journal
  }
});

AnnotateLife.journals = new AnnotateLife.Collections.Journals();
