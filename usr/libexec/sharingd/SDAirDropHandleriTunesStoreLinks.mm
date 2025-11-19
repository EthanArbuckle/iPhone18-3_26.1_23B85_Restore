@interface SDAirDropHandleriTunesStoreLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriTunesStoreLinks)initWithTransfer:(id)a3;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandleriTunesStoreLinks

- (SDAirDropHandleriTunesStoreLinks)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandleriTunesStoreLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.MobileStore"];
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

  [v3 addObject:@"com.apple.Music"];

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v3 = [(SDAirDropHandleriTunesStoreLinks *)self candidateIdentifiers];
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
  v3.super_class = SDAirDropHandleriTunesStoreLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x1000000000;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 metaData];
  v6 = [v5 itemsDescriptionAdvanced];

  v7 = [(SDAirDropHandler *)self transfer];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 metaData];
    v10 = [v9 itemsDescriptionAdvanced];
    v11 = [v10 objectForKeyedSubscript:@"SFAirDropActivitySubjectiTunesStoreLinkType"];
    v12 = [v11 integerValue];
  }

  else
  {
    v9 = [v7 completedURLs];
    v10 = [v9 firstObject];
    v12 = SFiTunesStoreLinkType();
  }

  if ((v12 - 1) > 4)
  {
    v13 = &off_1009105E0;
  }

  else
  {
    v13 = off_1008D5348[(v12 - 1)];
  }

  v14 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v13];
  v15 = SFLocalizedStringForKey();
  v16 = [NSString localizedStringWithFormat:v15, v3];

  return v16;
}

@end