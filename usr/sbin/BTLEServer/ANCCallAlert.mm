@interface ANCCallAlert
- (id)appIdentifier;
- (id)subtitle;
- (id)title;
@end

@implementation ANCCallAlert

- (id)appIdentifier
{
  call = [(ANCCallAlert *)self call];
  provider = [call provider];
  v5 = [(ANCAlert *)self _appIdentifierForTUCallProvider:provider];

  return v5;
}

- (id)title
{
  call = [(ANCCallAlert *)self call];
  displayName = [call displayName];

  if ([displayName length] >= 3 && objc_msgSend(displayName, "characterAtIndex:", 0) == 8234 && objc_msgSend(displayName, "characterAtIndex:", objc_msgSend(displayName, "length") - 1) == 8236)
  {
    v4 = [displayName substringWithRange:{1, objc_msgSend(displayName, "length") - 2}];

    displayName = v4;
  }

  return displayName;
}

- (id)subtitle
{
  call = [(ANCCallAlert *)self call];
  localizedLabel = [call localizedLabel];

  return localizedLabel;
}

@end