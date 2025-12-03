@interface ANCAlert
- (ANCAlert)initWithCategoryID:(unsigned __int8)d;
- (id)_appIdentifierForTUCallProvider:(id)provider;
@end

@implementation ANCAlert

- (ANCAlert)initWithCategoryID:(unsigned __int8)d
{
  v5.receiver = self;
  v5.super_class = ANCAlert;
  result = [(ANCAlert *)&v5 init];
  if (result)
  {
    result->_categoryID = d;
  }

  return result;
}

- (id)_appIdentifierForTUCallProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isTelephonyProvider])
  {
    bundleIdentifier = @"com.apple.mobilephone";
  }

  else if ([providerCopy isFaceTimeProvider])
  {
    bundleIdentifier = @"com.apple.facetime";
  }

  else
  {
    bundleIdentifier = [providerCopy bundleIdentifier];
  }

  return bundleIdentifier;
}

@end