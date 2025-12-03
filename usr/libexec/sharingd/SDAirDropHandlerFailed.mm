@interface SDAirDropHandlerFailed
- (NSString)errorDetailedString;
- (NSString)errorString;
- (void)activate;
@end

@implementation SDAirDropHandlerFailed

- (void)activate
{
  transfer = [(SDAirDropHandler *)self transfer];
  [transfer setCancelAction:0];

  transfer2 = [(SDAirDropHandler *)self transfer];
  [transfer2 setSelectedAction:0];

  transfer3 = [(SDAirDropHandler *)self transfer];
  [transfer3 setPossibleActions:0];

  v6.receiver = self;
  v6.super_class = SDAirDropHandlerFailed;
  [(SDAirDropHandler *)&v6 activate];
}

- (NSString)errorString
{
  transfer = [(SDAirDropHandler *)self transfer];
  [transfer transferState];

  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:0];
  v5 = SFLocalizedStringForKey();

  senderName = [(SDAirDropHandler *)self senderName];
  v7 = [NSString stringWithFormat:v5, senderName];

  return v7;
}

- (NSString)errorDetailedString
{
  transfer = [(SDAirDropHandler *)self transfer];
  transferState = [transfer transferState];

  if (transferState == 9 && (-[SDAirDropHandler transfer](self, "transfer"), v5 = objc_claimAutoreleasedReturnValue(), [v5 error], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "code"), v6, v5, v7 == -2))
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