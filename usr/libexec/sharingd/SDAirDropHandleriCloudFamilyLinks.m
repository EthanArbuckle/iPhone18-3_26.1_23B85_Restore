@interface SDAirDropHandleriCloudFamilyLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriCloudFamilyLinks)initWithTransfer:(id)a3;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandleriCloudFamilyLinks

- (SDAirDropHandleriCloudFamilyLinks)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandleriCloudFamilyLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.family"];
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 completedURLs];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (!SFIsiCloudFamilyLink())
        {
          v10 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_13:

  return v10;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandleriCloudFamilyLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x20000000000;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_1009101D8];
  v5 = SFLocalizedStringForKey();
  v6 = [NSString localizedStringWithFormat:v5, v3];

  return v6;
}

@end