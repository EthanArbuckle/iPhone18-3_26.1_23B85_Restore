@interface W5WiFiNetUsageRecord
- (id)init:(id)init usageData:(id)data;
@end

@implementation W5WiFiNetUsageRecord

- (id)init:(id)init usageData:(id)data
{
  v9.receiver = self;
  v9.super_class = W5WiFiNetUsageRecord;
  dataCopy = data;
  initCopy = init;
  v7 = [(W5WiFiNetUsageRecord *)&v9 init];
  [(W5WiFiNetUsageRecord *)v7 setDate:initCopy, v9.receiver, v9.super_class];

  [(W5WiFiNetUsageRecord *)v7 setUsageData:dataCopy];
  return v7;
}

@end