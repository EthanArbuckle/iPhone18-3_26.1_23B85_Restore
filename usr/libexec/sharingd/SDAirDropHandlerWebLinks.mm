@interface SDAirDropHandlerWebLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerWebLinks)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerWebLinks

- (SDAirDropHandlerWebLinks)initWithTransfer:(id)transfer
{
  transferCopy = transfer;
  v5 = +[SDAirDropHandlerWebLinks safariBundleID];
  v8.receiver = self;
  v8.super_class = SDAirDropHandlerWebLinks;
  v6 = [(SDAirDropHandler *)&v8 initWithTransfer:transferCopy bundleIdentifier:v5];

  return v6;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  v5 = [completedURLs countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(completedURLs);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        scheme = [v9 scheme];
        lowercaseString = [scheme lowercaseString];
        if ([lowercaseString isEqual:@"http"])
        {
        }

        else
        {
          scheme2 = [v9 scheme];
          lowercaseString2 = [scheme2 lowercaseString];
          v14 = [lowercaseString2 isEqual:@"https"];

          if (!v14)
          {
            v15 = 0;
            goto LABEL_15;
          }
        }
      }

      v6 = [completedURLs countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_15:

  return v15;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerWebLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x8000000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  itemsDescription = [metaData itemsDescription];

  if (qword_100989A70 != -1)
  {
    sub_10008D918();
  }

  if (totalSharedItemsCount != 1)
  {
    v16 = 0;
LABEL_10:
    v25 = @"WEBSITE";
    v19 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
    v26 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v27 = v20;
    v21 = [NSArray arrayWithObjects:&v27 count:1];
    v22 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v21];

    v23 = SFLocalizedStringForKey();
    v18 = [NSString localizedStringWithFormat:v23, senderName, totalSharedItemsCount];

    v16 = v22;
    goto LABEL_11;
  }

  v8 = +[SDAirDropHandlerWebLinks safariBundleID];
  metaData2 = [transfer metaData];
  senderBundleID = [metaData2 senderBundleID];
  v11 = [senderBundleID isEqual:v8];

  if (!v11 || !itemsDescription)
  {
    transfer2 = [(SDAirDropHandler *)self transfer];
    completedURLs = [transfer2 completedURLs];
    firstObject = [completedURLs firstObject];
    _lp_simplifiedDisplayString = [firstObject _lp_simplifiedDisplayString];

    itemsDescription = _lp_simplifiedDisplayString;
  }

  v16 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_10090FF20];
  v17 = SFLocalizedStringForKey();
  v18 = [NSString localizedStringWithFormat:v17, senderName, itemsDescription];

  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v18;
}

@end