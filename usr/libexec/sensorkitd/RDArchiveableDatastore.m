@interface RDArchiveableDatastore
- (void)dealloc;
@end

@implementation RDArchiveableDatastore

- (void)dealloc
{
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RDArchiveableDatastore;
  [(RDArchiveableDatastore *)&v3 dealloc];
}

@end