@interface REMCDAlarmTimeIntervalTrigger
- (double)generateNonce;
- (id)modelObject;
@end

@implementation REMCDAlarmTimeIntervalTrigger

- (id)modelObject
{
  v3 = [REMAlarmTimeIntervalTrigger alloc];
  [(REMCDAlarmTimeIntervalTrigger *)self timeInterval];
  v4 = [v3 initWithTimeInterval:?];

  return v4;
}

- (double)generateNonce
{
  v2 = self;
  v3 = REMCDAlarmTimeIntervalTrigger.generateNonce()();

  return v3;
}

@end