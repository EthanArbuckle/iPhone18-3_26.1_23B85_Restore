@interface SDAirDropHandlerAppStoreLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerAppStoreLinks)initWithTransfer:(id)a3;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerAppStoreLinks

- (SDAirDropHandlerAppStoreLinks)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerAppStoreLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.AppStore"];
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

  [v3 addObject:@"com.apple.TVAppStore"];

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v3 = [(SDAirDropHandlerAppStoreLinks *)self candidateIdentifiers];
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
  v3.super_class = SDAirDropHandlerAppStoreLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| &_mh_execute_header;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 metaData];
  v6 = [v5 itemsDescription];
  if ([v6 length])
  {
    v7 = [(SDAirDropHandler *)self transfer];
    v8 = [v7 metaData];
    v9 = [v8 itemsDescription];
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = &off_1009101A8;
  }

  else
  {
    v10 = &off_1009101C0;
  }

  v11 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v10];
  v12 = [(SDAirDropHandler *)self isModernProgress];
  v13 = SFLocalizedStringForKey();
  if (v12)
  {
    [NSString localizedStringWithFormat:v13, v9, v16];
  }

  else
  {
    [NSString localizedStringWithFormat:v13, v3, v9];
  }
  v14 = ;

  return v14;
}

@end