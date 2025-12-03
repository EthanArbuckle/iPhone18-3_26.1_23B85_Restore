@interface CLStreamedLocationProviderDisablementAssertion
- (void)releaseAssertion;
- (void)takeAssertion;
@end

@implementation CLStreamedLocationProviderDisablementAssertion

- (void)takeAssertion
{
  proxy = [(CLStreamedLocationProviderAssertion *)self proxy];

  [(CLStreamedLocationProviderProtocol *)proxy takeDisablementAssertion];
}

- (void)releaseAssertion
{
  proxy = [(CLStreamedLocationProviderAssertion *)self proxy];

  [(CLStreamedLocationProviderProtocol *)proxy releaseDisablementAssertion];
}

@end