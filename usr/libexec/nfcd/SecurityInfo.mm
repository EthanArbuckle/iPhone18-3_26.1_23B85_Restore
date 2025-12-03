@interface SecurityInfo
- (SecurityInfo)initWithType:(int64_t)type;
@end

@implementation SecurityInfo

- (SecurityInfo)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = SecurityInfo;
  result = [(SecurityInfo *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

@end