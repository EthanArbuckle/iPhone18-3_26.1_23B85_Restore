@interface NSString
- (SRSensor)sr_sensorForDeletionRecordsFromSensor;
- (id)sr_sensorByDeletingDeletionRecord;
@end

@implementation NSString

- (SRSensor)sr_sensorForDeletionRecordsFromSensor
{
  if ([(NSString *)self hasSuffix:@".tombstones"])
  {
    return 0;
  }

  return [(NSString *)self stringByAppendingString:@".tombstones"];
}

- (id)sr_sensorByDeletingDeletionRecord
{
  if (![(NSString *)self hasSuffix:@".tombstones"])
  {
    return self;
  }

  return [(NSString *)self stringByDeletingPathExtension];
}

@end