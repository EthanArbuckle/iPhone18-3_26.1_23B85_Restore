@interface SDAirDropHandlerPlaygroundItems
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerPlaygroundItems)initWithTransfer:(id)a3;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerPlaygroundItems

- (SDAirDropHandlerPlaygroundItems)initWithTransfer:(id)a3
{
  v8.receiver = self;
  v8.super_class = SDAirDropHandlerPlaygroundItems;
  v3 = [(SDAirDropHandlerGenericFiles *)&v8 initWithTransfer:a3];
  if (v3 && SFPlaygroundsAppAvailable())
  {
    v4 = [LSBundleProxy bundleProxyForIdentifier:@"com.apple.Playgrounds"];
    [(SDAirDropHandler *)v3 setBundleProxy:v4];

    v5 = [(SDAirDropHandler *)v3 bundleProxy];
    v9 = v5;
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
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 metaData];
  v5 = [v4 rawFiles];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:v9];
        v12 = [v11 pathExtension];

        LODWORD(v11) = SFIsPlaygroundItem();
        if (!v11)
        {
          v13 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v12 = @"PLAYGROUND";
  v5 = [NSNumber numberWithUnsignedInteger:v4];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  v9 = SFLocalizedStringForKey();
  v10 = [NSString localizedStringWithFormat:v9, v3, v4];

  return v10;
}

@end