@interface RDPruneableDatastore
- (void)dealloc;
@end

@implementation RDPruneableDatastore

- (void)dealloc
{
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RDPruneableDatastore;
  [(RDPruneableDatastore *)&v3 dealloc];
}

@end