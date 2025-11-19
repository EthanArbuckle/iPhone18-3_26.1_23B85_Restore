@interface RDInformingDatastore
- (void)dealloc;
@end

@implementation RDInformingDatastore

- (void)dealloc
{
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RDInformingDatastore;
  [(RDInformingDatastore *)&v3 dealloc];
}

@end