@interface CBWHBCoexUsage
- (CBWHBCoexUsage)init;
@end

@implementation CBWHBCoexUsage

- (CBWHBCoexUsage)init
{
  v3.receiver = self;
  v3.super_class = CBWHBCoexUsage;
  result = [(CBWHBCoexUsage *)&v3 init];
  if (result)
  {
    result->_numLEConnection = 0;
  }

  return result;
}

@end