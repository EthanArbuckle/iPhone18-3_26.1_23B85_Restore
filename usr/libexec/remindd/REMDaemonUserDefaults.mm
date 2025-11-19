@interface REMDaemonUserDefaults
- (int64_t)schedulingState;
- (void)setSchedulingState:(int64_t)a3;
@end

@implementation REMDaemonUserDefaults

- (int64_t)schedulingState
{
  v2 = [(REMDaemonUserDefaults *)self cloudKitSchemaCatchUpSyncSchedulingState];
  v3 = [v2 integerValue];

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (void)setSchedulingState:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(REMDaemonUserDefaults *)self setCloudKitSchemaCatchUpSyncSchedulingState:v4];
}

@end