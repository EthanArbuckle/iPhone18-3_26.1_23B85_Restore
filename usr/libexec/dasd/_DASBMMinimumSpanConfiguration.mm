@interface _DASBMMinimumSpanConfiguration
+ (id)configurationForAppInFocusWithMinimumDuration:(double)a3;
@end

@implementation _DASBMMinimumSpanConfiguration

+ (id)configurationForAppInFocusWithMinimumDuration:(double)a3
{
  v4 = objc_opt_new();
  [v4 setMinimumSpanDuration:a3];
  [v4 setAggregationKeyBlock:&stru_1001B5BE0];
  [v4 setSpanMarkerBlock:&stru_1001B5C20];

  return v4;
}

@end