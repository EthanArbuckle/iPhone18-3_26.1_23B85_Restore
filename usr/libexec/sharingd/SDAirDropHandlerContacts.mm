@interface SDAirDropHandlerContacts
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerContacts)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerContacts

- (SDAirDropHandlerContacts)initWithTransfer:(id)transfer
{
  v9.receiver = self;
  v9.super_class = SDAirDropHandlerContacts;
  v3 = [(SDAirDropHandlerGenericFiles *)&v9 initWithTransfer:transfer bundleIdentifier:@"com.apple.MobileAddressBook"];
  v4 = v3;
  if (v3)
  {
    bundleProxy = [(SDAirDropHandler *)v3 bundleProxy];

    if (bundleProxy)
    {
      bundleProxy2 = [(SDAirDropHandler *)v4 bundleProxy];
      v10 = bundleProxy2;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      [(SDAirDropHandlerGenericFiles *)v4 setAvailableApplications:v7];
    }
  }

  return v4;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustFiles])
  {
    return 0;
  }

  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  rawFiles = [metaData rawFiles];
  v6 = [rawFiles count];

  if (!v6)
  {
    return 1;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  transfer2 = [(SDAirDropHandler *)self transfer];
  metaData2 = [transfer2 metaData];
  rawFiles2 = [metaData2 rawFiles];

  v10 = [rawFiles2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    v13 = kSFOperationFileTypeKey;
    v14 = kSFOperationFileNameKey;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(rawFiles2);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:v13];
        v18 = [v16 objectForKeyedSubscript:v14];
        pathExtension = [v18 pathExtension];

        LODWORD(v18) = SFIsContact();
        if (!v18)
        {
          v20 = 0;
          goto LABEL_14;
        }
      }

      v11 = [rawFiles2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_14:

  return v20;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerContacts;
  return [(SDAirDropHandlerGenericFiles *)&v3 transferTypes]| 0x80;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  v13 = @"CONTACT";
  v5 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  LODWORD(v6) = [(SDAirDropHandler *)self isModernProgress];
  v9 = SFLocalizedStringForKey();
  if (v6)
  {
    [NSString localizedStringWithFormat:v9, totalSharedItemsCount, v12];
  }

  else
  {
    [NSString localizedStringWithFormat:v9, senderName, totalSharedItemsCount];
  }
  v10 = ;

  return v10;
}

@end