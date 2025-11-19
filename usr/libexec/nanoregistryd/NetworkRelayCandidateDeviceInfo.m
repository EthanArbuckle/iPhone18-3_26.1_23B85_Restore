@interface NetworkRelayCandidateDeviceInfo
- (NetworkRelayCandidateDeviceInfo)initWithIdentifier:(id)a3 extendedMetadata:(id)a4;
@end

@implementation NetworkRelayCandidateDeviceInfo

- (NetworkRelayCandidateDeviceInfo)initWithIdentifier:(id)a3 extendedMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NetworkRelayCandidateDeviceInfo;
  v9 = [(NetworkRelayCandidateDeviceInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifierData, a3);
    objc_storeStrong(&v10->_extendedMetadata, a4);
  }

  return v10;
}

@end