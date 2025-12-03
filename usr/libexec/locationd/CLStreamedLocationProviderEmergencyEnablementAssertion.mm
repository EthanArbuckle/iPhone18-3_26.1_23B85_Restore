@interface CLStreamedLocationProviderEmergencyEnablementAssertion
- (void)releaseAssertion;
- (void)takeAssertion;
@end

@implementation CLStreamedLocationProviderEmergencyEnablementAssertion

- (void)takeAssertion
{
  proxy = [(CLStreamedLocationProviderAssertion *)self proxy];

  [(CLStreamedLocationProviderProtocol *)proxy takeEmergencyEnablementAssertion];
}

- (void)releaseAssertion
{
  proxy = [(CLStreamedLocationProviderAssertion *)self proxy];

  [(CLStreamedLocationProviderProtocol *)proxy releaseEmergencyEnablementAssertion];
}

@end