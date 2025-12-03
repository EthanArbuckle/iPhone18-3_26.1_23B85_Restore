@interface APDevicePipelinesHousekeepingAdapter
+ (void)clearAttributionsFrom:(id)from;
+ (void)removeObsoleteAttributionDataFrom:(id)from;
- (APDevicePipelinesHousekeepingAdapter)init;
@end

@implementation APDevicePipelinesHousekeepingAdapter

+ (void)removeObsoleteAttributionDataFrom:(id)from
{
  fromCopy = from;
  static DevicePipelinesHousekeeping.removeObsoleteAttributionData(from:)(fromCopy);
}

+ (void)clearAttributionsFrom:(id)from
{
  fromCopy = from;
  static DevicePipelinesHousekeeping.clearAttributionCache(from:)(fromCopy);
}

- (APDevicePipelinesHousekeepingAdapter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DevicePipelinesHousekeepingAdapter();
  return [(APDevicePipelinesHousekeepingAdapter *)&v3 init];
}

@end