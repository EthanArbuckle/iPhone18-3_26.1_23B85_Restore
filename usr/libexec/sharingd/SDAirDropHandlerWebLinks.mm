@interface SDAirDropHandlerWebLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerWebLinks)initWithTransfer:(id)a3;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerWebLinks

- (SDAirDropHandlerWebLinks)initWithTransfer:(id)a3
{
  v4 = a3;
  v5 = +[SDAirDropHandlerWebLinks safariBundleID];
  v8.receiver = self;
  v8.super_class = SDAirDropHandlerWebLinks;
  v6 = [(SDAirDropHandler *)&v8 initWithTransfer:v4 bundleIdentifier:v5];

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
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 completedURLs];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 scheme];
        v11 = [v10 lowercaseString];
        if ([v11 isEqual:@"http"])
        {
        }

        else
        {
          v12 = [v9 scheme];
          v13 = [v12 lowercaseString];
          v14 = [v13 isEqual:@"https"];

          if (!v14)
          {
            v15 = 0;
            goto LABEL_15;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v5 = [(SDAirDropHandler *)self transfer];
  v6 = [v5 metaData];
  v7 = [v6 itemsDescription];

  if (qword_100989A70 != -1)
  {
    sub_10008D918();
  }

  if (v4 != 1)
  {
    v16 = 0;
LABEL_10:
    v25 = @"WEBSITE";
    v19 = [NSNumber numberWithUnsignedInteger:v4];
    v26 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v27 = v20;
    v21 = [NSArray arrayWithObjects:&v27 count:1];
    v22 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v21];

    v23 = SFLocalizedStringForKey();
    v18 = [NSString localizedStringWithFormat:v23, v3, v4];

    v16 = v22;
    goto LABEL_11;
  }

  v8 = +[SDAirDropHandlerWebLinks safariBundleID];
  v9 = [v5 metaData];
  v10 = [v9 senderBundleID];
  v11 = [v10 isEqual:v8];

  if (!v11 || !v7)
  {
    v12 = [(SDAirDropHandler *)self transfer];
    v13 = [v12 completedURLs];
    v14 = [v13 firstObject];
    v15 = [v14 _lp_simplifiedDisplayString];

    v7 = v15;
  }

  v16 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_10090FF20];
  v17 = SFLocalizedStringForKey();
  v18 = [NSString localizedStringWithFormat:v17, v3, v7];

  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v18;
}

@end