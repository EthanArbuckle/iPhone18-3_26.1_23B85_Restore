@interface ANCCallAlert
- (id)appIdentifier;
- (id)subtitle;
- (id)title;
@end

@implementation ANCCallAlert

- (id)appIdentifier
{
  v3 = [(ANCCallAlert *)self call];
  v4 = [v3 provider];
  v5 = [(ANCAlert *)self _appIdentifierForTUCallProvider:v4];

  return v5;
}

- (id)title
{
  v2 = [(ANCCallAlert *)self call];
  v3 = [v2 displayName];

  if ([v3 length] >= 3 && objc_msgSend(v3, "characterAtIndex:", 0) == 8234 && objc_msgSend(v3, "characterAtIndex:", objc_msgSend(v3, "length") - 1) == 8236)
  {
    v4 = [v3 substringWithRange:{1, objc_msgSend(v3, "length") - 2}];

    v3 = v4;
  }

  return v3;
}

- (id)subtitle
{
  v2 = [(ANCCallAlert *)self call];
  v3 = [v2 localizedLabel];

  return v3;
}

@end