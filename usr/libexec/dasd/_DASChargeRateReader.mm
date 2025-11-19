@interface _DASChargeRateReader
- (_DASChargeRateReader)init;
- (id)currentValue;
@end

@implementation _DASChargeRateReader

- (_DASChargeRateReader)init
{
  v6.receiver = self;
  v6.super_class = _DASChargeRateReader;
  v2 = [(_DASChargeRateReader *)&v6 init];
  if (v2)
  {
    v3 = +[_CDClientContext userContext];
    context = v2->_context;
    v2->_context = v3;
  }

  return v2;
}

- (id)currentValue
{
  context = self->_context;
  v3 = +[_CDContextQueries keyPathForBatteryLevel];
  v4 = [(_CDContext *)context objectForKeyedSubscript:v3];

  return v4;
}

@end