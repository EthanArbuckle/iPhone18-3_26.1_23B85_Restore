@interface SDAirDropHandlerFindMyFriendsLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerFindMyFriendsLinks)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerFindMyFriendsLinks

- (SDAirDropHandlerFindMyFriendsLinks)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerFindMyFriendsLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.findmy"];
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  v5 = [completedURLs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(completedURLs);
        }

        scheme = [*(*(&v14 + 1) + 8 * i) scheme];
        lowercaseString = [scheme lowercaseString];
        MyFriendsLink = SFIsFindMyFriendsLink();

        if (!MyFriendsLink)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v6 = [completedURLs countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerFindMyFriendsLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x8000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_10090FFF8];
  v5 = SFLocalizedStringForKey();
  v6 = [NSString localizedStringWithFormat:v5, senderName];

  return v6;
}

@end