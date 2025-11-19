@interface RDTopLevelInformingDatastore
- (void)dealloc;
@end

@implementation RDTopLevelInformingDatastore

- (void)dealloc
{
  self->_context = 0;
  v3.receiver = self;
  v3.super_class = RDTopLevelInformingDatastore;
  [(RDTopLevelInformingDatastore *)&v3 dealloc];
}

@end