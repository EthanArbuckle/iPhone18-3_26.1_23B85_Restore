@interface CLSubHarvesterTraceAdapterOutdoor
- (CLSubHarvesterTraceAdapterOutdoor)initWithHarvesterExternal:(void *)external;
- (void)onOutdoorUpdate:(id)update;
@end

@implementation CLSubHarvesterTraceAdapterOutdoor

- (CLSubHarvesterTraceAdapterOutdoor)initWithHarvesterExternal:(void *)external
{
  v5.receiver = self;
  v5.super_class = CLSubHarvesterTraceAdapterOutdoor;
  result = [(CLSubHarvesterTraceAdapterOutdoor *)&v5 init];
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

- (void)onOutdoorUpdate:(id)update
{
  harvesterExternal = self->_harvesterExternal;
  (*(update + 2))(v4, update, a2);
  (*(*harvesterExternal[38] + 48))(harvesterExternal[38], v4);
}

@end