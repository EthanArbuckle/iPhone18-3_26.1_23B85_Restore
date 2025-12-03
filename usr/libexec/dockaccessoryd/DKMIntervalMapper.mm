@interface DKMIntervalMapper
+ (id)unsignedClosedOpenFixedIntervalMapper:(id)mapper;
+ (id)unsignedOpenClosedFixedIntervalMapper:(id)mapper;
@end

@implementation DKMIntervalMapper

+ (id)unsignedOpenClosedFixedIntervalMapper:(id)mapper
{
  mapperCopy = mapper;
  v4 = [[UnsignedFixedIntervalMapper alloc] initWithBins:mapperCopy intervalCreationBlock:&stru_100274728 valueComparisonBlock:&stru_100274768];

  return v4;
}

+ (id)unsignedClosedOpenFixedIntervalMapper:(id)mapper
{
  mapperCopy = mapper;
  v4 = [[UnsignedFixedIntervalMapper alloc] initWithBins:mapperCopy intervalCreationBlock:&stru_100274788 valueComparisonBlock:&stru_1002747A8];

  return v4;
}

@end