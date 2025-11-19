@interface APDevicePipelinesHousekeepingAdapter
+ (void)clearAttributionsFrom:(id)a3;
+ (void)removeObsoleteAttributionDataFrom:(id)a3;
- (APDevicePipelinesHousekeepingAdapter)init;
@end

@implementation APDevicePipelinesHousekeepingAdapter

+ (void)removeObsoleteAttributionDataFrom:(id)a3
{
  v3 = a3;
  static DevicePipelinesHousekeeping.removeObsoleteAttributionData(from:)(v3);
}

+ (void)clearAttributionsFrom:(id)a3
{
  v3 = a3;
  static DevicePipelinesHousekeeping.clearAttributionCache(from:)(v3);
}

- (APDevicePipelinesHousekeepingAdapter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DevicePipelinesHousekeepingAdapter();
  return [(APDevicePipelinesHousekeepingAdapter *)&v3 init];
}

@end