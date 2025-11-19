@interface CLSubHarvesterTraceAdapterOutdoor
- (CLSubHarvesterTraceAdapterOutdoor)initWithHarvesterExternal:(void *)a3;
- (void)onOutdoorUpdate:(id)a3;
@end

@implementation CLSubHarvesterTraceAdapterOutdoor

- (CLSubHarvesterTraceAdapterOutdoor)initWithHarvesterExternal:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLSubHarvesterTraceAdapterOutdoor;
  result = [(CLSubHarvesterTraceAdapterOutdoor *)&v5 init];
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

- (void)onOutdoorUpdate:(id)a3
{
  harvesterExternal = self->_harvesterExternal;
  (*(a3 + 2))(v4, a3, a2);
  (*(*harvesterExternal[38] + 48))(harvesterExternal[38], v4);
}

@end