@interface SDAirDropHandleriBooksItems
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriBooksItems)initWithTransfer:(id)transfer;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandleriBooksItems

- (SDAirDropHandleriBooksItems)initWithTransfer:(id)transfer
{
  v9.receiver = self;
  v9.super_class = SDAirDropHandleriBooksItems;
  v3 = [(SDAirDropHandlerGenericFiles *)&v9 initWithTransfer:transfer bundleIdentifier:@"com.apple.iBooks"];
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
  isJustFiles = [(SDAirDropHandler *)self isJustFiles];
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  items = [metaData items];
  v7 = [items count];

  result = 0;
  if (isJustFiles && v7 >= 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    transfer2 = [(SDAirDropHandler *)self transfer];
    metaData2 = [transfer2 metaData];
    items2 = [metaData2 items];

    v12 = [items2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(items2);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          type = [v17 type];
          v15 &= SFIsePub();

          type2 = [v17 type];
          if (SFIsPDF())
          {
          }

          else
          {
            type3 = [v17 type];
            v21 = SFIsePub();

            if (!v21)
            {
              v22 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [items2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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