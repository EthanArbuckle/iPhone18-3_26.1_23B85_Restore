@interface APMetricPurposeRegistry
+ (id)metricRouteForPurpose:(int64_t)a3;
+ (void)setMetricPurpose:(id)a3;
@end

@implementation APMetricPurposeRegistry

+ (id)metricRouteForPurpose:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = [qword_1004E6E28 objectForKey:v3];
  objc_sync_exit(v4);

  return v5;
}

+ (void)setMetricPurpose:(id)a3
{
  v6 = a3;
  v3 = [v6 purpose];
  if (qword_1004E6E30 != -1)
  {
    sub_1003951AC();
  }

  v4 = [NSNumber numberWithInteger:v3];
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  [qword_1004E6E28 setObject:v6 forKey:v4];
  objc_sync_exit(v5);
}

@end