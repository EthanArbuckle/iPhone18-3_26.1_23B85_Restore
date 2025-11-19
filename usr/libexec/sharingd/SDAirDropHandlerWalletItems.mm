@interface SDAirDropHandlerWalletItems
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerWalletItems)initWithTransfer:(id)a3;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)importPassesWithCompletion:(id)a3;
- (void)performImportWithCompletedURLs:(id)a3 completion:(id)a4;
- (void)triggerImport;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerWalletItems

- (SDAirDropHandlerWalletItems)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerWalletItems;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.Passbook"];
}

- (BOOL)canHandleTransfer
{
  v3 = [(SDAirDropHandler *)self isJustFiles];
  v4 = SFWalletAppAvailable();
  if (![(objc_class *)off_100970FC0() isPassLibraryAvailable])
  {
    return 0;
  }

  v5 = v3 & v4;
  v6 = [(objc_class *)off_100970FC8() canAddPasses];
  v7 = 0;
  if (v5 == 1 && v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [(SDAirDropHandler *)self transfer];
    v9 = [v8 metaData];
    v10 = [v9 rawFiles];

    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:v14];
          v19 = [v17 objectForKeyedSubscript:v15];
          v20 = [v19 pathExtension];

          LODWORD(v19) = SFIsPass();
          if (!v19)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v5 = [(SDAirDropHandler *)self transfer];
  v6 = [v5 metaData];
  v7 = [v6 itemsDescription];
  if ([v7 length])
  {
    v8 = [(SDAirDropHandler *)self transfer];
    v9 = [v8 metaData];
    v10 = [v9 itemsDescription];
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  if (v4 != 1 || !v10)
  {
    goto LABEL_10;
  }

  v11 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_100910100];
  v12 = [(SDAirDropHandler *)self isModernProgress];
  v13 = SFLocalizedStringForKey();
  if (v12)
  {
    [NSString localizedStringWithFormat:v13, v10, v21];
  }

  else
  {
    [NSString localizedStringWithFormat:v13, v3, v10];
  }
  v14 = ;

  if (!v14)
  {
LABEL_10:
    v22 = @"PASS";
    v15 = [NSNumber numberWithUnsignedInteger:v4];
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v24 = v16;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v18 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v17];

    LODWORD(v15) = [(SDAirDropHandler *)self isModernProgress];
    v19 = SFLocalizedStringForKey();
    if (v15)
    {
      [NSString localizedStringWithFormat:v19, v4, v21];
    }

    else
    {
      [NSString localizedStringWithFormat:v19, v3, v4];
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
  v3 = [(SDAirDropHandler *)self bundleProxy];

  if (v3)
  {
    v4 = [(SDAirDropHandler *)self bundleProxy];
    v5 = [(SDAirDropHandler *)self defaultActionForBundleProxy:v4];
  }

  else
  {
    v6 = [SFAirDropAction alloc];
    v4 = [(SDAirDropHandler *)self transfer];
    v7 = [v4 identifier];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(SDAirDropHandler *)self singleItemActionTitle];
    v11 = [(SDAirDropHandler *)self singleItemActionTitle];
    v5 = [v6 initWithTransferIdentifier:v7 actionIdentifier:v9 title:v10 singleItemTitle:v11 type:1];
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
  v13 = [(SDAirDropHandler *)self transfer];
  [v13 setPossibleActions:v12];

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

- (void)importPassesWithCompletion:(id)a3
{
  v5 = a3;
  if ([(objc_class *)off_100970FC0() isPassLibraryAvailable]&& [(objc_class *)off_100970FC8() canAddPasses])
  {
    v23 = v5;
    v22 = objc_alloc_init(off_100970FC0());
    v24 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [(SDAirDropHandler *)self transfer];
    v7 = [v6 completedURLs];

    v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
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
            objc_enumerationMutation(v7);
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

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100133668;
    v25[3] = &unk_1008D11C8;
    v26 = v24;
    v5 = v23;
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

    (*(v5 + 2))(v5, 0);
  }
}

- (void)performImportWithCompletedURLs:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100133798;
  v6[3] = &unk_1008D11F0;
  v7 = a4;
  v5 = v7;
  [(SDAirDropHandlerWalletItems *)self importPassesWithCompletion:v6];
}

@end