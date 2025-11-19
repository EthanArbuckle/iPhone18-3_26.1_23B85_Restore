@interface W5WiFiNetUsageRecord
- (id)init:(id)a3 usageData:(id)a4;
@end

@implementation W5WiFiNetUsageRecord

- (id)init:(id)a3 usageData:(id)a4
{
  v9.receiver = self;
  v9.super_class = W5WiFiNetUsageRecord;
  v5 = a4;
  v6 = a3;
  v7 = [(W5WiFiNetUsageRecord *)&v9 init];
  [(W5WiFiNetUsageRecord *)v7 setDate:v6, v9.receiver, v9.super_class];

  [(W5WiFiNetUsageRecord *)v7 setUsageData:v5];
  return v7;
}

@end