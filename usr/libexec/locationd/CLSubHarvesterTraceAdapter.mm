@interface CLSubHarvesterTraceAdapter
- (CLSubHarvesterTraceAdapter)initWithHarvesterExternal:(void *)a3;
@end

@implementation CLSubHarvesterTraceAdapter

- (CLSubHarvesterTraceAdapter)initWithHarvesterExternal:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLSubHarvesterTraceAdapter;
  result = [(CLSubHarvesterTraceAdapter *)&v5 init];
  if (result)
  {
    result->_harvesterExternal = a3;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

@end