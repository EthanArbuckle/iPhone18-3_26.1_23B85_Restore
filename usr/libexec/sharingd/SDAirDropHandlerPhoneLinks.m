@interface SDAirDropHandlerPhoneLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerPhoneLinks)initWithTransfer:(id)a3;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerPhoneLinks

- (SDAirDropHandlerPhoneLinks)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerPhoneLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.InCallService"];
}

- (id)candidateIdentifiers
{
  v3 = objc_opt_new();
  v4 = [(SDAirDropHandler *)self bundleProxy];

  if (v4)
  {
    v5 = [(SDAirDropHandler *)self bundleProxy];
    v6 = [v5 bundleIdentifier];
    [v3 addObject:v6];
  }

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v3 = [(SDAirDropHandlerPhoneLinks *)self candidateIdentifiers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 completedURLs];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(SDAirDropHandler *)self bundleProxyFromCandidateIdentifiers:v3 handlesURL:*(*(&v13 + 1) + 8 * i)];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerPhoneLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x200000000;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_10090FF98];
  v5 = [(SDAirDropHandler *)self transfer];
  v6 = [v5 completedURLs];
  v7 = [v6 firstObject];
  v8 = [v7 formattedPhoneNumber];

  v9 = SFLocalizedStringForKey();
  v10 = [NSString localizedStringWithFormat:v9, v3, v8];

  return v10;
}

@end