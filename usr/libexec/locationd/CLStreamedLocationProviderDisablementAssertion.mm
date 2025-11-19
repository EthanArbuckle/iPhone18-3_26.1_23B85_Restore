@interface CLStreamedLocationProviderDisablementAssertion
- (void)releaseAssertion;
- (void)takeAssertion;
@end

@implementation CLStreamedLocationProviderDisablementAssertion

- (void)takeAssertion
{
  v2 = [(CLStreamedLocationProviderAssertion *)self proxy];

  [(CLStreamedLocationProviderProtocol *)v2 takeDisablementAssertion];
}

- (void)releaseAssertion
{
  v2 = [(CLStreamedLocationProviderAssertion *)self proxy];

  [(CLStreamedLocationProviderProtocol *)v2 releaseDisablementAssertion];
}

@end