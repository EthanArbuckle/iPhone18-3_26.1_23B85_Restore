@interface CLStreamedLocationProviderEmergencyEnablementAssertion
- (void)releaseAssertion;
- (void)takeAssertion;
@end

@implementation CLStreamedLocationProviderEmergencyEnablementAssertion

- (void)takeAssertion
{
  v2 = [(CLStreamedLocationProviderAssertion *)self proxy];

  [(CLStreamedLocationProviderProtocol *)v2 takeEmergencyEnablementAssertion];
}

- (void)releaseAssertion
{
  v2 = [(CLStreamedLocationProviderAssertion *)self proxy];

  [(CLStreamedLocationProviderProtocol *)v2 releaseEmergencyEnablementAssertion];
}

@end