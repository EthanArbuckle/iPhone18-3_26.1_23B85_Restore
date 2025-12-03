@interface SDAirDropHandlerMixedTypes
- (SDAirDropHandlerMixedTypes)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)openLinks;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerMixedTypes

- (SDAirDropHandlerMixedTypes)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerMixedTypes;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer];
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerMixedTypes;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x5000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  v12 = @"GENERIC_ITEM";
  v5 = [NSNumber numberWithInteger:totalSharedItemsCount];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  v9 = SFLocalizedStringForKey();
  v10 = [NSString localizedStringWithFormat:v9, senderName, totalSharedItemsCount];

  return v10;
}

- (void)updatePossibleActions
{
  v19.receiver = self;
  v19.super_class = SDAirDropHandlerMixedTypes;
  [(SDAirDropHandler *)&v19 updatePossibleActions];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [SFAirDropAction alloc];
  transfer = [(SDAirDropHandler *)self transfer];
  identifier = [transfer identifier];
  v8 = SFLocalizedStringForKey();
  singleItemActionTitle = [(SDAirDropHandler *)self singleItemActionTitle];
  v10 = [v5 initWithTransferIdentifier:identifier actionIdentifier:v4 title:v8 singleItemTitle:singleItemActionTitle type:1];

  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10023BB50;
  v16 = &unk_1008CDB10;
  objc_copyWeak(&v17, &location);
  [v10 setActionHandler:&v13];
  v20 = v10;
  v11 = [NSArray arrayWithObjects:&v20 count:1, v13, v14, v15, v16];
  transfer2 = [(SDAirDropHandler *)self transfer];
  [transfer2 setPossibleActions:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)openLinks
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];

  v6 = [completedURLs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(completedURLs);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v10 isFileURL] & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [completedURLs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SDAirDropHandler *)self openURLs:v3];
}

@end