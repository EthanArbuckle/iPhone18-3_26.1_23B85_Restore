@interface SDAirDropHandleriBooksItems
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriBooksItems)initWithTransfer:(id)a3;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandleriBooksItems

- (SDAirDropHandleriBooksItems)initWithTransfer:(id)a3
{
  v9.receiver = self;
  v9.super_class = SDAirDropHandleriBooksItems;
  v3 = [(SDAirDropHandlerGenericFiles *)&v9 initWithTransfer:a3 bundleIdentifier:@"com.apple.iBooks"];
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
  v3 = [(SDAirDropHandler *)self isJustFiles];
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 metaData];
  v6 = [v5 items];
  v7 = [v6 count];

  result = 0;
  if (v3 && v7 >= 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(SDAirDropHandler *)self transfer];
    v10 = [v9 metaData];
    v11 = [v10 items];

    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      v15 = 1;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v17 type];
          v15 &= SFIsePub();

          v19 = [v17 type];
          if (SFIsPDF())
          {
          }

          else
          {
            v20 = [v17 type];
            v21 = SFIsePub();

            if (!v21)
            {
              v22 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v22 = 1;
    }

    else
    {
      v22 = 1;
      LOBYTE(v15) = 1;
    }

LABEL_16:

    return v22 & (v15 ^ 1);
  }

  return result;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandleriBooksItems;
  return [(SDAirDropHandlerGenericFiles *)&v3 transferTypes]| 0x24000;
}

@end