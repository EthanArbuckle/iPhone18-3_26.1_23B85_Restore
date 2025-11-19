@interface NEKWrapper
- (NEKWrapper)initWithStoreType:(int64_t)a3 nekChangeType:(int)a4;
@end

@implementation NEKWrapper

- (NEKWrapper)initWithStoreType:(int64_t)a3 nekChangeType:(int)a4
{
  v7.receiver = self;
  v7.super_class = NEKWrapper;
  result = [(NEKWrapper *)&v7 init];
  if (result)
  {
    result->_nekStoreType = a3;
    result->_nekChangeType = a4;
  }

  return result;
}

@end