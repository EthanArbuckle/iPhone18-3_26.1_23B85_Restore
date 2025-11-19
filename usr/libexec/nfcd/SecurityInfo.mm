@interface SecurityInfo
- (SecurityInfo)initWithType:(int64_t)a3;
@end

@implementation SecurityInfo

- (SecurityInfo)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SecurityInfo;
  result = [(SecurityInfo *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

@end