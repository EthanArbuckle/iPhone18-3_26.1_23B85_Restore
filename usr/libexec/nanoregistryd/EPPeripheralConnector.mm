@interface EPPeripheralConnector
- (void)peripheralWasInvalidated;
- (void)setPeripheralConnectorShouldForceDisconnect;
@end

@implementation EPPeripheralConnector

- (void)setPeripheralConnectorShouldForceDisconnect
{
  resourceManager = [(EPResource *)self resourceManager];
  [resourceManager setPeripheralConnectorShouldForceDisconnect];
}

- (void)peripheralWasInvalidated
{
  resourceManager = [(EPResource *)self resourceManager];
  [resourceManager peripheralWasInvalidated];
}

@end