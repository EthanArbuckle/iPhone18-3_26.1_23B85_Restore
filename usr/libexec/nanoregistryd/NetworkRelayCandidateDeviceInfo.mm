@interface NetworkRelayCandidateDeviceInfo
- (NetworkRelayCandidateDeviceInfo)initWithIdentifier:(id)identifier extendedMetadata:(id)metadata;
@end

@implementation NetworkRelayCandidateDeviceInfo

- (NetworkRelayCandidateDeviceInfo)initWithIdentifier:(id)identifier extendedMetadata:(id)metadata
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = NetworkRelayCandidateDeviceInfo;
  v9 = [(NetworkRelayCandidateDeviceInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifierData, identifier);
    objc_storeStrong(&v10->_extendedMetadata, metadata);
  }

  return v10;
}

@end