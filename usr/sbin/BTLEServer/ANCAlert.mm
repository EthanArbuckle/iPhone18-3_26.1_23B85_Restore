@interface ANCAlert
- (ANCAlert)initWithCategoryID:(unsigned __int8)a3;
- (id)_appIdentifierForTUCallProvider:(id)a3;
@end

@implementation ANCAlert

- (ANCAlert)initWithCategoryID:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = ANCAlert;
  result = [(ANCAlert *)&v5 init];
  if (result)
  {
    result->_categoryID = a3;
  }

  return result;
}

- (id)_appIdentifierForTUCallProvider:(id)a3
{
  v3 = a3;
  if ([v3 isTelephonyProvider])
  {
    v4 = @"com.apple.mobilephone";
  }

  else if ([v3 isFaceTimeProvider])
  {
    v4 = @"com.apple.facetime";
  }

  else
  {
    v4 = [v3 bundleIdentifier];
  }

  return v4;
}

@end