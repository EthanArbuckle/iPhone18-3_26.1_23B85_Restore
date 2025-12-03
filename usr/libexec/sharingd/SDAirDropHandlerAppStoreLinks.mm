@interface SDAirDropHandlerAppStoreLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerAppStoreLinks)initWithTransfer:(id)transfer;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerAppStoreLinks

- (SDAirDropHandlerAppStoreLinks)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerAppStoreLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.AppStore"];
}

- (id)candidateIdentifiers
{
  v3 = objc_opt_new();
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];

  if (bundleProxy)
  {
    bundleProxy2 = [(SDAirDropHandler *)self bundleProxy];
    bundleIdentifier = [bundleProxy2 bundleIdentifier];
    [v3 addObject:bundleIdentifier];
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

  candidateIdentifiers = [(SDAirDropHandlerAppStoreLinks *)self candidateIdentifiers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  v6 = [completedURLs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(completedURLs);
        }

        v10 = [(SDAirDropHandler *)self bundleProxyFromCandidateIdentifiers:candidateIdentifiers handlesURL:*(*(&v13 + 1) + 8 * i)];

        if (!v10)
        {
          v11 = 0;
          goto LABEL_13;
        }
      }

      v7 = [completedURLs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  senderName = [(SDAirDropHandler *)self senderName];
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  itemsDescription = [metaData itemsDescription];
  if ([itemsDescription length])
  {
    transfer2 = [(SDAirDropHandler *)self transfer];
    metaData2 = [transfer2 metaData];
    itemsDescription2 = [metaData2 itemsDescription];
  }

  else
  {
    itemsDescription2 = 0;
  }

  if (itemsDescription2)
  {
    v10 = &off_1009101A8;
  }

  else
  {
    v10 = &off_1009101C0;
  }

  v11 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v10];
  isModernProgress = [(SDAirDropHandler *)self isModernProgress];
  v13 = SFLocalizedStringForKey();
  if (isModernProgress)
  {
    [NSString localizedStringWithFormat:v13, itemsDescription2, v16];
  }

  else
  {
    [NSString localizedStringWithFormat:v13, senderName, itemsDescription2];
  }
  v14 = ;

  return v14;
}

@end