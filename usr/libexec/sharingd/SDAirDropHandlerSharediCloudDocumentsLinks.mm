@interface SDAirDropHandlerSharediCloudDocumentsLinks
- (BOOL)canHandleTransfer;
- (BOOL)urlIsCloudDocument:(id)document;
- (SDAirDropHandlerSharediCloudDocumentsLinks)initWithTransfer:(id)transfer;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerSharediCloudDocumentsLinks

- (SDAirDropHandlerSharediCloudDocumentsLinks)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerSharediCloudDocumentsLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.CloudKit.ShareBear"];
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

- (BOOL)urlIsCloudDocument:(id)document
{
  v21 = 0;
  v4 = [LSAppLink appLinksWithURL:document limit:-1 error:&v21];
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
    candidateIdentifiers = [(SDAirDropHandlerSharediCloudDocumentsLinks *)self candidateIdentifiers];
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

          targetApplicationRecord = [*(*(&v17 + 1) + 8 * i) targetApplicationRecord];
          bundleIdentifier = [targetApplicationRecord bundleIdentifier];

          if (bundleIdentifier && ([candidateIdentifiers containsObject:bundleIdentifier]& 1) != 0)
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
    candidateIdentifiers = airdrop_log();
    if (os_log_type_enabled(candidateIdentifiers, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, candidateIdentifiers, OS_LOG_TYPE_DEFAULT, "Failed to get app links with error %@", buf, 0xCu);
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
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  v5 = [completedURLs countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(completedURLs);
        }

        if (![(SDAirDropHandlerSharediCloudDocumentsLinks *)self urlIsCloudDocument:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v6 = [completedURLs countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];
  firstObject = [completedURLs firstObject];

  v7 = SFSharediCloudDocumentsLinkToAppName();
  lowercaseString = [v7 lowercaseString];

  v9 = SFSharediCloudDocumentsLinkToFileName();
  v10 = v9;
  v11 = 0;
  if (totalSharedItemsCount == 1 && lowercaseString && v9)
  {
    if ([lowercaseString isEqual:@"keynote"])
    {
      v12 = @"SHARED_KEYNOTE_DOCUMENT_LINK";
      goto LABEL_10;
    }

    if ([lowercaseString isEqual:@"numbers"])
    {
      v12 = @"SHARED_NUMBERS_DOCUMENT_LINK";
      goto LABEL_10;
    }

    if ([lowercaseString isEqual:@"pages"])
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
      v16 = [NSString localizedStringWithFormat:v15, senderName, v10];

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
  v18 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
  v25 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v26 = v19;
  v20 = [NSArray arrayWithObjects:&v26 count:1];
  v17 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v20];

  v21 = SFLocalizedStringForKey();
  v16 = [NSString localizedStringWithFormat:v21, senderName, totalSharedItemsCount];

LABEL_14:

  return v16;
}

@end