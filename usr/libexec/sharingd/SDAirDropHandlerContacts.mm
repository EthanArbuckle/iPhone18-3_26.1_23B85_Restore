@interface SDAirDropHandlerContacts
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerContacts)initWithTransfer:(id)a3;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerContacts

- (SDAirDropHandlerContacts)initWithTransfer:(id)a3
{
  v9.receiver = self;
  v9.super_class = SDAirDropHandlerContacts;
  v3 = [(SDAirDropHandlerGenericFiles *)&v9 initWithTransfer:a3 bundleIdentifier:@"com.apple.MobileAddressBook"];
  v4 = v3;
  if (v3)
  {
    v5 = [(SDAirDropHandler *)v3 bundleProxy];

    if (v5)
    {
      v6 = [(SDAirDropHandler *)v4 bundleProxy];
      v10 = v6;
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

  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 metaData];
  v5 = [v4 rawFiles];
  v6 = [v5 count];

  if (!v6)
  {
    return 1;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(SDAirDropHandler *)self transfer];
  v8 = [v7 metaData];
  v9 = [v8 rawFiles];

  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:v13];
        v18 = [v16 objectForKeyedSubscript:v14];
        v19 = [v18 pathExtension];

        LODWORD(v18) = SFIsContact();
        if (!v18)
        {
          v20 = 0;
          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v13 = @"CONTACT";
  v5 = [NSNumber numberWithUnsignedInteger:v4];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  LODWORD(v6) = [(SDAirDropHandler *)self isModernProgress];
  v9 = SFLocalizedStringForKey();
  if (v6)
  {
    [NSString localizedStringWithFormat:v9, v4, v12];
  }

  else
  {
    [NSString localizedStringWithFormat:v9, v3, v4];
  }
  v10 = ;

  return v10;
}

@end