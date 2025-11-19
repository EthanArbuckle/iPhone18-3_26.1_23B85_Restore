@interface Metadata
- (Metadata)init;
@end

@implementation Metadata

- (Metadata)init
{
  self->_contextType = 0;
  v3 = +[NSMutableArray array];
  ccidList = self->_ccidList;
  self->_ccidList = v3;

  return self;
}

@end