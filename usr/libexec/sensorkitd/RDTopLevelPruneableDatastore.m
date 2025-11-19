@interface RDTopLevelPruneableDatastore
- (void)dealloc;
@end

@implementation RDTopLevelPruneableDatastore

- (void)dealloc
{
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RDTopLevelPruneableDatastore;
  [(RDTopLevelPruneableDatastore *)&v3 dealloc];
}

@end