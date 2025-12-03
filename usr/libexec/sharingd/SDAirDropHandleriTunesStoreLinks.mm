@interface SDAirDropHandleriTunesStoreLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriTunesStoreLinks)initWithTransfer:(id)transfer;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandleriTunesStoreLinks

- (SDAirDropHandleriTunesStoreLinks)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandleriTunesStoreLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.MobileStore"];
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

  [v3 addObject:@"com.apple.Music"];

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  candidateIdentifiers = [(SDAirDropHandleriTunesStoreLinks *)self candidateIdentifiers];
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
  v3.super_class = SDAirDropHandleriTunesStoreLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x1000000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  itemsDescriptionAdvanced = [metaData itemsDescriptionAdvanced];

  transfer2 = [(SDAirDropHandler *)self transfer];
  v8 = transfer2;
  if (itemsDescriptionAdvanced)
  {
    metaData2 = [transfer2 metaData];
    itemsDescriptionAdvanced2 = [metaData2 itemsDescriptionAdvanced];
    v11 = [itemsDescriptionAdvanced2 objectForKeyedSubscript:@"SFAirDropActivitySubjectiTunesStoreLinkType"];
    integerValue = [v11 integerValue];
  }

  else
  {
    metaData2 = [transfer2 completedURLs];
    itemsDescriptionAdvanced2 = [metaData2 firstObject];
    integerValue = SFiTunesStoreLinkType();
  }

  if ((integerValue - 1) > 4)
  {
    v13 = &off_1009105E0;
  }

  else
  {
    v13 = off_1008D5348[(integerValue - 1)];
  }

  v14 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v13];
  v15 = SFLocalizedStringForKey();
  v16 = [NSString localizedStringWithFormat:v15, senderName];

  return v16;
}

@end