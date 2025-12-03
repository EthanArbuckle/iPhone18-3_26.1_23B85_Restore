@interface SDAirDropHandlerWalletItems
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerWalletItems)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)importPassesWithCompletion:(id)completion;
- (void)performImportWithCompletedURLs:(id)ls completion:(id)completion;
- (void)triggerImport;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerWalletItems

- (SDAirDropHandlerWalletItems)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerWalletItems;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.Passbook"];
}

- (BOOL)canHandleTransfer
{
  isJustFiles = [(SDAirDropHandler *)self isJustFiles];
  v4 = SFWalletAppAvailable();
  if (![(objc_class *)off_100970FC0() isPassLibraryAvailable])
  {
    return 0;
  }

  v5 = isJustFiles & v4;
  canAddPasses = [(objc_class *)off_100970FC8() canAddPasses];
  v7 = 0;
  if (v5 == 1 && canAddPasses)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    transfer = [(SDAirDropHandler *)self transfer];
    metaData = [transfer metaData];
    rawFiles = [metaData rawFiles];

    v11 = [rawFiles countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      v14 = kSFOperationFileTypeKey;
      v15 = kSFOperationFileNameKey;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(rawFiles);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:v14];
          v19 = [v17 objectForKeyedSubscript:v15];
          pathExtension = [v19 pathExtension];

          LODWORD(v19) = SFIsPass();
          if (!v19)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        v12 = [rawFiles countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_15:
  }

  return v7;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerWalletItems;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x2000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  itemsDescription = [metaData itemsDescription];
  if ([itemsDescription length])
  {
    transfer2 = [(SDAirDropHandler *)self transfer];
    metaData2 = [transfer2 metaData];
    itemsDescription2 = [metaData2 itemsDescription];
  }

  else
  {
    itemsDescription2 = 0;
  }

  v11 = 0;
  if (totalSharedItemsCount != 1 || !itemsDescription2)
  {
    goto LABEL_10;
  }

  v11 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_100910100];
  isModernProgress = [(SDAirDropHandler *)self isModernProgress];
  v13 = SFLocalizedStringForKey();
  if (isModernProgress)
  {
    [NSString localizedStringWithFormat:v13, itemsDescription2, v21];
  }

  else
  {
    [NSString localizedStringWithFormat:v13, senderName, itemsDescription2];
  }
  v14 = ;

  if (!v14)
  {
LABEL_10:
    v22 = @"PASS";
    v15 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v24 = v16;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v18 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v17];

    LODWORD(v15) = [(SDAirDropHandler *)self isModernProgress];
    v19 = SFLocalizedStringForKey();
    if (v15)
    {
      [NSString localizedStringWithFormat:v19, totalSharedItemsCount, v21];
    }

    else
    {
      [NSString localizedStringWithFormat:v19, senderName, totalSharedItemsCount];
    }
    v14 = ;

    v11 = v18;
  }

  return v14;
}

- (void)updatePossibleActions
{
  v20.receiver = self;
  v20.super_class = SDAirDropHandlerWalletItems;
  [(SDAirDropHandler *)&v20 updatePossibleActions];
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];

  if (bundleProxy)
  {
    bundleProxy2 = [(SDAirDropHandler *)self bundleProxy];
    v5 = [(SDAirDropHandler *)self defaultActionForBundleProxy:bundleProxy2];
  }

  else
  {
    v6 = [SFAirDropAction alloc];
    bundleProxy2 = [(SDAirDropHandler *)self transfer];
    identifier = [bundleProxy2 identifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    singleItemActionTitle = [(SDAirDropHandler *)self singleItemActionTitle];
    singleItemActionTitle2 = [(SDAirDropHandler *)self singleItemActionTitle];
    v5 = [v6 initWithTransferIdentifier:identifier actionIdentifier:v9 title:singleItemActionTitle singleItemTitle:singleItemActionTitle2 type:1];
  }

  objc_initWeak(&location, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001330CC;
  v17 = &unk_1008CDB10;
  objc_copyWeak(&v18, &location);
  [v5 setActionHandler:&v14];
  v21 = v5;
  v12 = [NSArray arrayWithObjects:&v21 count:1, v14, v15, v16, v17];
  transfer = [(SDAirDropHandler *)self transfer];
  [transfer setPossibleActions:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)triggerImport
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001331C8;
  v3[3] = &unk_1008D11A0;
  objc_copyWeak(&v4, &location);
  [(SDAirDropHandlerWalletItems *)self importPassesWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)importPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(objc_class *)off_100970FC0() isPassLibraryAvailable]&& [(objc_class *)off_100970FC8() canAddPasses])
  {
    v23 = completionCopy;
    v22 = objc_alloc_init(off_100970FC0());
    v24 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    transfer = [(SDAirDropHandler *)self transfer];
    completedURLs = [transfer completedURLs];

    v8 = [completedURLs countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(completedURLs);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v29 = 0;
          v13 = [NSData dataWithContentsOfURL:v12 options:0 error:&v29];
          v14 = v29;
          if (v14)
          {
            v15 = v14;
            v16 = airdrop_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = v15;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Wallet pass add failed %@", buf, 0xCu);
            }
          }

          else
          {
            v17 = objc_alloc(off_100970FD0());
            v28 = 0;
            v16 = [v17 initWithData:v13 error:&v28];
            v15 = v28;
            if (v15 || !v16)
            {
              v18 = airdrop_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v35 = v15;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "PKPass initWithData failed %@", buf, 0xCu);
              }
            }

            else
            {
              [v24 addObject:v16];
            }
          }
        }

        v9 = [completedURLs countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100133668;
    v25[3] = &unk_1008D11C8;
    v26 = v24;
    completionCopy = v23;
    v27 = v23;
    v19 = v24;
    [v22 addPasses:v19 withCompletionHandler:v25];
  }

  else
  {
    v20 = airdrop_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1001339AC(v20);
    }

    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SDAirDropHandlerWalletItems.m" lineNumber:161 description:{@"%@ not supported on this platform", objc_opt_class()}];

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)performImportWithCompletedURLs:(id)ls completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100133798;
  v6[3] = &unk_1008D11F0;
  completionCopy = completion;
  v5 = completionCopy;
  [(SDAirDropHandlerWalletItems *)self importPassesWithCompletion:v6];
}

@end