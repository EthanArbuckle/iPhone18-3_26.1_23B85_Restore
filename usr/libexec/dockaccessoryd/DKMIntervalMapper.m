@interface DKMIntervalMapper
+ (id)unsignedClosedOpenFixedIntervalMapper:(id)a3;
+ (id)unsignedOpenClosedFixedIntervalMapper:(id)a3;
@end

@implementation DKMIntervalMapper

+ (id)unsignedOpenClosedFixedIntervalMapper:(id)a3
{
  v3 = a3;
  v4 = [[UnsignedFixedIntervalMapper alloc] initWithBins:v3 intervalCreationBlock:&stru_100274728 valueComparisonBlock:&stru_100274768];

  return v4;
}

+ (id)unsignedClosedOpenFixedIntervalMapper:(id)a3
{
  v3 = a3;
  v4 = [[UnsignedFixedIntervalMapper alloc] initWithBins:v3 intervalCreationBlock:&stru_100274788 valueComparisonBlock:&stru_1002747A8];

  return v4;
}

@end