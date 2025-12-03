@interface SDAirDropHandleriLifeLinks
- (BOOL)canHandleTransfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandleriLifeLinks

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  v5 = [completedURLs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 1;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(completedURLs);
        }

        v10 = [(SDAirDropHandler *)self bundleProxyFromCandidateIdentifiers:&off_10090FF08 handlesURL:*(*(&v15 + 1) + 8 * i)];
        v11 = v10;
        if (v10 == 0 || (v8 & 1) == 0)
        {

          v8 = 0;
          goto LABEL_17;
        }

        bundleProxy = [(SDAirDropHandler *)self bundleProxy];

        if (bundleProxy)
        {
          bundleProxy2 = [(SDAirDropHandler *)self bundleProxy];
          v8 = [bundleProxy2 isEqual:v11];
        }

        else
        {
          [(SDAirDropHandler *)self setBundleProxy:v11];
          v8 = 1;
        }
      }

      v6 = [completedURLs countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandleriLifeLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x2000000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  v14 = @"ILIFE_ITEM";
  v5 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
  v15 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v16 = v6;
  v7 = [NSArray arrayWithObjects:&v16 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  v9 = SFLocalizedStringForKey();
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];
  localizedName = [bundleProxy localizedName];
  v12 = [NSString localizedStringWithFormat:v9, senderName, totalSharedItemsCount, localizedName];

  return v12;
}

@end