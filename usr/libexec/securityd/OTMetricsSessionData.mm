@interface OTMetricsSessionData
- (OTMetricsSessionData)initWithFlowID:(id)d deviceSessionID:(id)iD;
@end

@implementation OTMetricsSessionData

- (OTMetricsSessionData)initWithFlowID:(id)d deviceSessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = OTMetricsSessionData;
  v9 = [(OTMetricsSessionData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flowID, d);
    objc_storeStrong(&v10->_deviceSessionID, iD);
  }

  return v10;
}

@end