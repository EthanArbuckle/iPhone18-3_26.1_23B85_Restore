@interface APMetricPurposeRegistry
+ (id)metricRouteForPurpose:(int64_t)purpose;
+ (void)setMetricPurpose:(id)purpose;
@end

@implementation APMetricPurposeRegistry

+ (id)metricRouteForPurpose:(int64_t)purpose
{
  v3 = [NSNumber numberWithInteger:purpose];
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1004E6E28 objectForKey:v3];
  objc_sync_exit(v4);

  return v5;
}

+ (void)setMetricPurpose:(id)purpose
{
  purposeCopy = purpose;
  purpose = [purposeCopy purpose];
  if (qword_1004E6E30 != -1)
  {
    sub_1003951AC();
  }

  v4 = [NSNumber numberWithInteger:purpose];
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  [qword_1004E6E28 setObject:purposeCopy forKey:v4];
  objc_sync_exit(v5);
}

@end