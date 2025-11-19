@interface NFWalletPresentationServiceAssertionCounter
- (NFWalletPresentationServiceAssertionCounter)init;
@end

@implementation NFWalletPresentationServiceAssertionCounter

- (NFWalletPresentationServiceAssertionCounter)init
{
  v7.receiver = self;
  v7.super_class = NFWalletPresentationServiceAssertionCounter;
  v2 = [(NFWalletPresentationServiceAssertionCounter *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    requestorList = v2->_requestorList;
    v2->_requestorList = v3;

    v5 = v2;
  }

  return v2;
}

@end