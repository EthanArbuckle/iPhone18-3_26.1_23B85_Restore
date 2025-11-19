@interface SDAirDropHandlerVoiceMemos
+ (void)importMemosForItems:(id)a3 completion:(id)a4;
- (BOOL)canHandleTransfer;
- (BOOL)canHandleTransferRegardlessOfBundleID;
- (SDAirDropHandlerVoiceMemos)initWithTransfer:(id)a3;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)importMemosWithCompletion:(id)a3;
- (void)performImportWithCompletedURLs:(id)a3 completion:(id)a4;
- (void)performViewActionWithImportedURLs:(id)a3 completion:(id)a4;
- (void)triggerImport;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerVoiceMemos

- (SDAirDropHandlerVoiceMemos)initWithTransfer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerVoiceMemos;
  return [(SDAirDropHandler *)&v4 initWithTransfer:a3 bundleIdentifier:@"com.apple.VoiceMemos"];
}

- (BOOL)canHandleTransferRegardlessOfBundleID
{
  v3 = [(SDAirDropHandler *)self isJustFiles];
  v4 = SFVoiceMemosAppAvailable();
  v5 = 0;
  if (v3 && v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(SDAirDropHandler *)self transfer];
    v7 = [v6 metaData];
    v8 = [v7 items];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) type];
          v14 = SFIsVoiceMemo();

          if (!v14)
          {
            v5 = 0;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5 = 1;
LABEL_13:
  }

  return v5;
}

- (BOOL)canHandleTransfer
{
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 metaData];
  v5 = [v4 senderBundleID];
  v6 = [v5 isEqual:@"com.apple.VoiceMemos"];

  return v6 & [(SDAirDropHandlerVoiceMemos *)self canHandleTransferRegardlessOfBundleID];
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerVoiceMemos;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x1000;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  v13 = @"VOICE_MEMO";
  v5 = [NSNumber numberWithUnsignedInteger:v4];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  LODWORD(v6) = [(SDAirDropHandler *)self isModernProgress];
  v9 = SFLocalizedStringForKey();
  if (v6)
  {
    [NSString localizedStringWithFormat:v9, v4, v12];
  }

  else
  {
    [NSString localizedStringWithFormat:v9, v3, v4];
  }
  v10 = ;

  return v10;
}

- (void)updatePossibleActions
{
  v20.receiver = self;
  v20.super_class = SDAirDropHandlerVoiceMemos;
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
  v16 = sub_10012209C;
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
  v3[2] = sub_100122198;
  v3[3] = &unk_1008D0F60;
  objc_copyWeak(&v4, &location);
  [(SDAirDropHandlerVoiceMemos *)self importMemosWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)importMemosWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SDAirDropHandler *)self transfer];
  v6 = [v5 completedURLs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012232C;
  v8[3] = &unk_1008D0F88;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [SDAirDropHandlerVoiceMemos importMemosForItems:v6 completion:v8];
}

+ (void)importMemosForItems:(id)a3 completion:(id)a4
{
  v5 = a3;
  v21 = a4;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_100122704;
  v33[4] = sub_100122714;
  v34 = +[NSMutableArray array];
  v6 = dispatch_group_create();
  for (i = 0; [v5 count] > i; ++i)
  {
    dispatch_group_enter(v6);
    v8 = [v5 objectAtIndexedSubscript:i];
    v9 = [v8 URLByDeletingPathExtension];
    v10 = [v9 lastPathComponent];

    v11 = objc_opt_new();
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Start importing voice memo for %@", buf, 0xCu);
    }

    v13 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012271C;
    block[3] = &unk_1008D0FD8;
    v28 = v8;
    v29 = v10;
    v30 = v11;
    v32 = v33;
    v31 = v6;
    v14 = v11;
    v15 = v10;
    v16 = v8;
    dispatch_async(v13, block);
  }

  v17 = sub_1001F0610();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001229D0;
  v22[3] = &unk_1008D1000;
  v23 = v6;
  v24 = v5;
  v26 = v33;
  v25 = v21;
  v18 = v21;
  v19 = v5;
  v20 = v6;
  dispatch_async(v17, v22);

  _Block_object_dispose(v33, 8);
}

- (void)performImportWithCompletedURLs:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100122B58;
  v6[3] = &unk_1008D1028;
  v7 = a4;
  v5 = v7;
  [(SDAirDropHandlerVoiceMemos *)self importMemosWithCompletion:v6];
}

- (void)performViewActionWithImportedURLs:(id)a3 completion:(id)a4
{
  v9 = a4;
  v5 = [(SDAirDropHandlerVoiceMemos *)self openAppURLs];
  v6 = [(SDAirDropHandler *)self bundleProxy];
  v7 = [v6 bundleIdentifier];
  v8 = [(SDAirDropHandler *)self openURLs:v5 bundleIdentifier:v7];

  v9[2](v9, v8, 0);
}

@end