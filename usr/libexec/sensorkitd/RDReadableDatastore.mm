@interface RDReadableDatastore
- (void)dealloc;
@end

@implementation RDReadableDatastore

- (void)dealloc
{
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RDReadableDatastore;
  [(RDReadableDatastore *)&v3 dealloc];
}

@end