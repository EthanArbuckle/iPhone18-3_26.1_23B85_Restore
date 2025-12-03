@interface NEKWrapper
- (NEKWrapper)initWithStoreType:(int64_t)type nekChangeType:(int)changeType;
@end

@implementation NEKWrapper

- (NEKWrapper)initWithStoreType:(int64_t)type nekChangeType:(int)changeType
{
  v7.receiver = self;
  v7.super_class = NEKWrapper;
  result = [(NEKWrapper *)&v7 init];
  if (result)
  {
    result->_nekStoreType = type;
    result->_nekChangeType = changeType;
  }

  return result;
}

@end