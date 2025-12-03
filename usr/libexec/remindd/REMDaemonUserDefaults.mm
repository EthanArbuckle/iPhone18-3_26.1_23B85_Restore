@interface REMDaemonUserDefaults
- (int64_t)schedulingState;
- (void)setSchedulingState:(int64_t)state;
@end

@implementation REMDaemonUserDefaults

- (int64_t)schedulingState
{
  cloudKitSchemaCatchUpSyncSchedulingState = [(REMDaemonUserDefaults *)self cloudKitSchemaCatchUpSyncSchedulingState];
  integerValue = [cloudKitSchemaCatchUpSyncSchedulingState integerValue];

  if (integerValue >= 3)
  {
    return 3;
  }

  else
  {
    return integerValue;
  }
}

- (void)setSchedulingState:(int64_t)state
{
  v4 = [NSNumber numberWithInteger:state];
  [(REMDaemonUserDefaults *)self setCloudKitSchemaCatchUpSyncSchedulingState:v4];
}

@end