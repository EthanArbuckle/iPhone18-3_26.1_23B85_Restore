@interface SDAirDropHandlerVoiceMemos
+ (void)importMemosForItems:(id)items completion:(id)completion;
- (BOOL)canHandleTransfer;
- (BOOL)canHandleTransferRegardlessOfBundleID;
- (SDAirDropHandlerVoiceMemos)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)importMemosWithCompletion:(id)completion;
- (void)performImportWithCompletedURLs:(id)ls completion:(id)completion;
- (void)performViewActionWithImportedURLs:(id)ls completion:(id)completion;
- (void)triggerImport;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerVoiceMemos

- (SDAirDropHandlerVoiceMemos)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerVoiceMemos;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.VoiceMemos"];
}

- (BOOL)canHandleTransferRegardlessOfBundleID
{
  isJustFiles = [(SDAirDropHandler *)self isJustFiles];
  v4 = SFVoiceMemosAppAvailable();
  v5 = 0;
  if (isJustFiles && v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    transfer = [(SDAirDropHandler *)self transfer];
    metaData = [transfer metaData];
    items = [metaData items];

    v9 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(items);
          }

          type = [*(*(&v16 + 1) + 8 * i) type];
          v14 = SFIsVoiceMemo();

          if (!v14)
          {
            v5 = 0;
            goto LABEL_13;
          }
        }

        v10 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  senderBundleID = [metaData senderBundleID];
  v6 = [senderBundleID isEqual:@"com.apple.VoiceMemos"];

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
  senderName = [(SDAirDropHandler *)self senderName];
  totalSharedItemsCount = [(SDAirDropHandler *)self totalSharedItemsCount];
  v13 = @"VOICE_MEMO";
  v5 = [NSNumber numberWithUnsignedInteger:totalSharedItemsCount];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v15 = v6;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v7];

  LODWORD(v6) = [(SDAirDropHandler *)self isModernProgress];
  v9 = SFLocalizedStringForKey();
  if (v6)
  {
    [NSString localizedStringWithFormat:v9, totalSharedItemsCount, v12];
  }

  else
  {
    [NSString localizedStringWithFormat:v9, senderName, totalSharedItemsCount];
  }
  v10 = ;

  return v10;
}

- (void)updatePossibleActions
{
  v20.receiver = self;
  v20.super_class = SDAirDropHandlerVoiceMemos;
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
  v16 = sub_10012209C;
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
  v3[2] = sub_100122198;
  v3[3] = &unk_1008D0F60;
  objc_copyWeak(&v4, &location);
  [(SDAirDropHandlerVoiceMemos *)self importMemosWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)importMemosWithCompletion:(id)completion
{
  completionCopy = completion;
  transfer = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer completedURLs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012232C;
  v8[3] = &unk_1008D0F88;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [SDAirDropHandlerVoiceMemos importMemosForItems:completedURLs completion:v8];
}

+ (void)importMemosForItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_100122704;
  v33[4] = sub_100122714;
  v34 = +[NSMutableArray array];
  v6 = dispatch_group_create();
  for (i = 0; [itemsCopy count] > i; ++i)
  {
    dispatch_group_enter(v6);
    v8 = [itemsCopy objectAtIndexedSubscript:i];
    uRLByDeletingPathExtension = [v8 URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

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
    v29 = lastPathComponent;
    v30 = v11;
    v32 = v33;
    v31 = v6;
    v14 = v11;
    v15 = lastPathComponent;
    v16 = v8;
    dispatch_async(v13, block);
  }

  v17 = sub_1001F0610();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001229D0;
  v22[3] = &unk_1008D1000;
  v23 = v6;
  v24 = itemsCopy;
  v26 = v33;
  v25 = completionCopy;
  v18 = completionCopy;
  v19 = itemsCopy;
  v20 = v6;
  dispatch_async(v17, v22);

  _Block_object_dispose(v33, 8);
}

- (void)performImportWithCompletedURLs:(id)ls completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100122B58;
  v6[3] = &unk_1008D1028;
  completionCopy = completion;
  v5 = completionCopy;
  [(SDAirDropHandlerVoiceMemos *)self importMemosWithCompletion:v6];
}

- (void)performViewActionWithImportedURLs:(id)ls completion:(id)completion
{
  completionCopy = completion;
  openAppURLs = [(SDAirDropHandlerVoiceMemos *)self openAppURLs];
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];
  bundleIdentifier = [bundleProxy bundleIdentifier];
  v8 = [(SDAirDropHandler *)self openURLs:openAppURLs bundleIdentifier:bundleIdentifier];

  completionCopy[2](completionCopy, v8, 0);
}

@end