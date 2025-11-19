@interface EPPeripheralConnector
- (void)peripheralWasInvalidated;
- (void)setPeripheralConnectorShouldForceDisconnect;
@end

@implementation EPPeripheralConnector

- (void)setPeripheralConnectorShouldForceDisconnect
{
  v2 = [(EPResource *)self resourceManager];
  [v2 setPeripheralConnectorShouldForceDisconnect];
}

- (void)peripheralWasInvalidated
{
  v2 = [(EPResource *)self resourceManager];
  [v2 peripheralWasInvalidated];
}

@end