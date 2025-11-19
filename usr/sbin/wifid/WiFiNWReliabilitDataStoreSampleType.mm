@interface WiFiNWReliabilitDataStoreSampleType
- (id)init:(int)a3 withTimestamp:(__CFDate *)a4;
@end

@implementation WiFiNWReliabilitDataStoreSampleType

- (id)init:(int)a3 withTimestamp:(__CFDate *)a4
{
  v7.receiver = self;
  v7.super_class = WiFiNWReliabilitDataStoreSampleType;
  result = [(WiFiNWReliabilitDataStoreSampleType *)&v7 init];
  *(result + 2) = a3;
  *(result + 2) = a4;
  return result;
}

@end