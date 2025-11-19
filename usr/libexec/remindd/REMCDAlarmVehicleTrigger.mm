@interface REMCDAlarmVehicleTrigger
- (id)modelObject;
@end

@implementation REMCDAlarmVehicleTrigger

- (id)modelObject
{
  v2 = [[REMAlarmVehicleTrigger alloc] initWithEvent:{-[REMCDAlarmVehicleTrigger event](self, "event")}];

  return v2;
}

@end