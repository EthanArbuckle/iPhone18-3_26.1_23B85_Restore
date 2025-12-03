@interface SDAirDropHandleriTunesULinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriTunesULinks)initWithTransfer:(id)transfer;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandleriTunesULinks

- (SDAirDropHandleriTunesULinks)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandleriTunesULinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.itunesu"];
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

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  candidateIdentifiers = [(SDAirDropHandleriTunesULinks *)self candidateIdentifiers];
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
  v3.super_class = SDAirDropHandleriTunesULinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x800000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_100910178];
  v5 = SFLocalizedStringForKey();
  v6 = [NSString localizedStringWithFormat:v5, senderName];

  return v6;
}

@end