@interface CLSubHarvesterTraceAdapter
- (CLSubHarvesterTraceAdapter)initWithHarvesterExternal:(void *)external;
@end

@implementation CLSubHarvesterTraceAdapter

- (CLSubHarvesterTraceAdapter)initWithHarvesterExternal:(void *)external
{
  v5.receiver = self;
  v5.super_class = CLSubHarvesterTraceAdapter;
  result = [(CLSubHarvesterTraceAdapter *)&v5 init];
  if (result)
  {
    result->_harvesterExternal = external;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

@end