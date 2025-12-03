@interface SDAirDropHandlerPlaygroundItems
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerPlaygroundItems)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerPlaygroundItems

- (SDAirDropHandlerPlaygroundItems)initWithTransfer:(id)transfer
{
  v8.receiver = self;
  v8.super_class = SDAirDropHandlerPlaygroundItems;
  v3 = [(SDAirDropHandlerGenericFiles *)&v8 initWithTransfer:transfer];
  if (v3 && SFPlaygroundsAppAvailable())
  {
    v4 = [LSBundleProxy bundleProxyForIdentifier:@"com.apple.Playgrounds"];
    [(SDAirDropHandler *)v3 setBundleProxy:v4];

    bundleProxy = [(SDAirDropHandler *)v3 bundleProxy];
    v9 = bundleProxy;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    [(SDAirDropHandlerGenericFiles *)v3 setAvailableApplications:v6];
  }

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustFiles])
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  rawFiles = [metaData rawFiles];

  v6 = [rawFiles countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = kSFOperationFileNameKey;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(rawFiles);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:v9];
        pathExtension = [v11 pathExtension];

        LODWORD(v11) = SFIsPlaygroundItem();
        if (!v11)
        {
          v13 = 0;
          goto LABEL_13;
        }
      }

      v7 = [rawFiles countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  return v13;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerPlaygroundItems;
  return [(SDAirDropHandlerGenericFiles *)&v3 transferTypes]| 0x10000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  v12 = @"PLAYGROUND";
  v5 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  v9 = SFLocalizedStringForKey();
  v10 = [NSString localizedStringWithFormat:v9, senderName, totalSharedItemsCount];

  return v10;
}

@end