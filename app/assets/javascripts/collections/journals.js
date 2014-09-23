AnnotateLife.Collections.Journals = Backbone.Collection.extend({
  model: AnnotateLife.Models.Journal,
  
  url: "/api/journals",
  
  getOrFetch: function(id) {
    var journal = this.get(id);
    
    if (!journal) {
      journal = new this.model({ id: id })
      journal.fetch({
        success: function(journal) {
          this.collection.add(journal)
        }
      });
    } else {
      journal.fetch();
    }
    
    return this.journal
  }
});

AnnotateLife.journals = new AnnotateLife.Collections.Journals();
