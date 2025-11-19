@interface NFWalletPresentationEntitlement
- (id)debugDescription;
@end

@implementation NFWalletPresentationEntitlement

- (id)debugDescription
{
  v3 = [NSString alloc];
  if (self)
  {
    applicationIdentifier = self->_applicationIdentifier;
  }

  else
  {
    applicationIdentifier = 0;
  }

  v5 = [v3 initWithFormat:@"{ appId= %@}", applicationIdentifier];

  return v5;
}

@end