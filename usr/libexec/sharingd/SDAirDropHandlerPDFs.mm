@interface SDAirDropHandlerPDFs
- (BOOL)canHandleTransfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerPDFs

- (BOOL)canHandleTransfer
{
  v18.receiver = self;
  v18.super_class = SDAirDropHandlerPDFs;
  if (![(SDAirDropHandlerGenericFiles *)&v18 canHandleTransfer])
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  items = [metaData items];

  v6 = [items countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(items);
        }

        type = [*(*(&v14 + 1) + 8 * i) type];
        v11 = SFIsPDF();

        if (!v11)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v7 = [items countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerPDFs;
  return [(SDAirDropHandlerGenericFiles *)&v3 transferTypes]| 0x4000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  if (totalSharedItemsCount < 2)
  {
    v14.receiver = self;
    v14.super_class = SDAirDropHandlerPDFs;
    suitableContentsDescription = [(SDAirDropHandlerGenericFiles *)&v14 suitableContentsDescription];
  }

  else
  {
    v5 = totalSharedItemsCount;
    v15 = @"PDF";
    v6 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
    v16 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v17 = v7;
    v8 = [NSArray arrayWithObjects:&v17 count:1];
    v9 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v8];

    LODWORD(v7) = [(SDAirDropHandler *)self isModernProgress];
    v10 = SFLocalizedStringForKey();
    if (v7)
    {
      [NSString localizedStringWithFormat:v10, v5, v13];
    }

    else
    {
      [NSString localizedStringWithFormat:v10, senderName, v5];
    }
    suitableContentsDescription = ;
  }

  return suitableContentsDescription;
}

@end