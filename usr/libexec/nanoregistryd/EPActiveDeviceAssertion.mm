@interface EPActiveDeviceAssertion
- (NSUUID)pairingID;
@end

@implementation EPActiveDeviceAssertion

- (NSUUID)pairingID
{
  resourceManager = [(EPResource *)self resourceManager];
  pairingID = [resourceManager pairingID];

  return pairingID;
}

@end