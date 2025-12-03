@interface WiFiNWReliabilitDataStoreSampleType
- (id)init:(int)init withTimestamp:(__CFDate *)timestamp;
@end

@implementation WiFiNWReliabilitDataStoreSampleType

- (id)init:(int)init withTimestamp:(__CFDate *)timestamp
{
  v7.receiver = self;
  v7.super_class = WiFiNWReliabilitDataStoreSampleType;
  result = [(WiFiNWReliabilitDataStoreSampleType *)&v7 init];
  *(result + 2) = init;
  *(result + 2) = timestamp;
  return result;
}

@end