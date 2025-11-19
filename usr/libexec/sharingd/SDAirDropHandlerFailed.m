@interface SDAirDropHandlerFailed
- (NSString)errorDetailedString;
- (NSString)errorString;
- (void)activate;
@end

@implementation SDAirDropHandlerFailed

- (void)activate
{
  v3 = [(SDAirDropHandler *)self transfer];
  [v3 setCancelAction:0];

  v4 = [(SDAirDropHandler *)self transfer];
  [v4 setSelectedAction:0];

  v5 = [(SDAirDropHandler *)self transfer];
  [v5 setPossibleActions:0];

  v6.receiver = self;
  v6.super_class = SDAirDropHandlerFailed;
  [(SDAirDropHandler *)&v6 activate];
}

- (NSString)errorString
{
  v3 = [(SDAirDropHandler *)self transfer];
  [v3 transferState];

  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:0];
  v5 = SFLocalizedStringForKey();

  v6 = [(SDAirDropHandler *)self senderName];
  v7 = [NSString stringWithFormat:v5, v6];

  return v7;
}

- (NSString)errorDetailedString
{
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 transferState];

  if (v4 == 9 && (-[SDAirDropHandler transfer](self, "transfer"), v5 = objc_claimAutoreleasedReturnValue(), [v5 error], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "code"), v6, v5, v7 == -2))
  {
    v8 = SFLocalizedStringForKey();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end