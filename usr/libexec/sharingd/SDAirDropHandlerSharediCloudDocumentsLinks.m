@interface SDAirDropHandlerSharediCloudDocumentsLinks
- (BOOL)canHandleTransfer;
- (BOOL)urlIsCloudDocument:(id)a3;
- (SDAirDropHandlerSharediCloudDocumentsLinks)initWithTransfer:(id)a3;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerSharediCloudDocumentsLinks

- (SDAirDropHandlerSharediCloudDocumentsLinks)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerSharediCloudDocumentsLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.CloudKit.ShareBear"];
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

  return v3;
}

- (BOOL)urlIsCloudDocument:(id)a3
{
  v21 = 0;
  v4 = [LSAppLink appLinksWithURL:a3 limit:-1 error:&v21];
  v5 = v21;
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    v14 = [(SDAirDropHandlerSharediCloudDocumentsLinks *)self candidateIdentifiers];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) targetApplicationRecord];
          v13 = [v12 bundleIdentifier];

          if (v13 && ([v14 containsObject:v13]& 1) != 0)
          {

            LOBYTE(v9) = 1;
            goto LABEL_20;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  else
  {
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to get app links with error %@", buf, 0xCu);
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 completedURLs];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![(SDAirDropHandlerSharediCloudDocumentsLinks *)self urlIsCloudDocument:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerSharediCloudDocumentsLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x40000000;
}

- (id)suitableContentsDescription
{
  v23 = [(SDAirDropHandler *)self senderName];
  v3 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 completedURLs];
  v6 = [v5 firstObject];

  v7 = SFSharediCloudDocumentsLinkToAppName();
  v8 = [v7 lowercaseString];

  v9 = SFSharediCloudDocumentsLinkToFileName();
  v10 = v9;
  v11 = 0;
  if (v3 == 1 && v8 && v9)
  {
    if ([v8 isEqual:@"keynote"])
    {
      v12 = @"SHARED_KEYNOTE_DOCUMENT_LINK";
      goto LABEL_10;
    }

    if ([v8 isEqual:@"numbers"])
    {
      v12 = @"SHARED_NUMBERS_DOCUMENT_LINK";
      goto LABEL_10;
    }

    if ([v8 isEqual:@"pages"])
    {
      v12 = @"SHARED_PAGES_DOCUMENT_LINK";
LABEL_10:
      v27 = v12;
      v28 = &off_10090B838;
      v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v29 = v13;
      v14 = [NSArray arrayWithObjects:&v29 count:1];
      v11 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v14];

      v15 = SFLocalizedStringForKey();
      v16 = [NSString localizedStringWithFormat:v15, v23, v10];

      v17 = v11;
      if (v16)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v11 = 0;
  }

LABEL_13:
  v24 = @"SHARED_ICLOUD_DOCUMENT_LINK";
  v18 = [NSNumber numberWithUnsignedInteger:v3];
  v25 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v26 = v19;
  v20 = [NSArray arrayWithObjects:&v26 count:1];
  v17 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v20];

  v21 = SFLocalizedStringForKey();
  v16 = [NSString localizedStringWithFormat:v21, v23, v3];

LABEL_14:

  return v16;
}

@end