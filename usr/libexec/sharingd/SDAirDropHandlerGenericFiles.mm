@interface SDAirDropHandlerGenericFiles
+ (void)launchFilesToDefaultFolderWithURLs:(id)a3 defaultFolder:(id)a4 openURLs:(id)a5 completion:(id)a6;
- (BOOL)canHandleTransfer;
- (BOOL)isBundleiWorkType:(id)a3;
- (BOOL)shouldEndAfterOpen;
- (BOOL)shouldOpenAutomaticallyAfterUserAccepts;
- (SDAirDropHandlerGenericFiles)initWithTransfer:(id)a3 bundleIdentifier:(id)a4;
- (id)actionForBundleProxy:(id)a3;
- (id)actionsForModernReadyForOpen;
- (id)cancelActionTitleToAccompanyActions:(id)a3;
- (id)defaultFolder;
- (id)firstReceivedFilename;
- (id)saveToDefaultFolderWithError:(id *)a3;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)acceptActionTriggered;
- (void)addOpenWithActions;
- (void)handleMoveToAppShareSheetSucceeded;
- (void)launchFilesToDefaultFolder;
- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4;
- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4;
- (void)openResourceOperationDidComplete:(id)a3;
- (void)performActionWithBundleProxy:(id)a3 completionHandler:(id)a4;
- (void)performImportWithCompletedURLs:(id)a3 completion:(id)a4;
- (void)performViewActionWithImportedURLs:(id)a3 completion:(id)a4;
- (void)saveAndUpdateTransfer;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerGenericFiles

- (SDAirDropHandlerGenericFiles)initWithTransfer:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = SDAirDropHandlerGenericFiles;
  v7 = [(SDAirDropHandler *)&v13 initWithTransfer:v6 bundleIdentifier:a4];
  if (v7)
  {
    v8 = [[SDAirDropHandleriCloudDrive alloc] initWithTransfer:v6];
    icloudDriveHandler = v7->_icloudDriveHandler;
    v7->_icloudDriveHandler = v8;

    v10 = objc_alloc_init(NSOperationQueue);
    workOperationsQueue = v7->_workOperationsQueue;
    v7->_workOperationsQueue = v10;

    [(NSOperationQueue *)v7->_workOperationsQueue setMaxConcurrentOperationCount:1];
  }

  return v7;
}

- (BOOL)shouldEndAfterOpen
{
  v3 = [(SDAirDropHandlerGenericFiles *)self defaultOpenActionBundleID];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SDAirDropHandlerGenericFiles *)self shouldOpenAutomaticallyAfterUserAccepts];
  }

  return v4;
}

- (void)performImportWithCompletedURLs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAirDropHandler *)self transfer];
  [v8 setCompletedURLs:v6];

  if (+[SFAirDropUserDefaults_objc moveToAppEnabled]&& ![(SDAirDropHandlerGenericFiles *)self shouldEndAfterOpen])
  {
    v13 = 0;
    v10 = [(SDAirDropHandlerGenericFiles *)self saveToDefaultFolderWithError:&v13];
    v9 = v13;
    if ([(SDAirDropHandlerImportResult *)v10 count])
    {
      v11 = [(SDAirDropHandler *)self transfer];
      [v11 setCompletedURLs:v10];

      v12 = objc_alloc_init(SDAirDropHandlerImportResult);
      [(SDAirDropHandlerImportResult *)v12 setImportedFiles:v10];
      v7[2](v7, v12, 0);

      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc_init(SDAirDropHandlerImportResult);
  [(SDAirDropHandlerImportResult *)v10 setImportedFiles:v6];
  (v7)[2](v7, v10, v9);
LABEL_5:
}

- (void)performViewActionWithImportedURLs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SDAirDropHandlerGenericFiles *)self shouldEndAfterOpen])
  {
    v8 = [(SDAirDropHandlerGenericFiles *)self availableApplications];
    v9 = [v8 firstObject];
    [(SDAirDropHandlerGenericFiles *)self setSelectedApplication:v9];

    v10 = [(SDAirDropHandlerGenericFiles *)self selectedApplication];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100143540;
    v19[3] = &unk_1008CDB38;
    v20 = v7;
    v11 = v7;
    [(SDAirDropHandlerGenericFiles *)self performActionWithBundleProxy:v10 completionHandler:v19];

    v12 = v20;
  }

  else
  {
    v13 = objc_opt_class();
    v14 = [(SDAirDropHandlerGenericFiles *)self defaultFolder];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100143554;
    v18[3] = &unk_1008CE2E8;
    v18[4] = self;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100143560;
    v16[3] = &unk_1008CDB38;
    v17 = v7;
    v15 = v7;
    [v13 launchFilesToDefaultFolderWithURLs:v6 defaultFolder:v14 openURLs:v18 completion:v16];

    v12 = v17;
  }
}

- (BOOL)canHandleTransfer
{
  v2 = self;
  v3 = [(SDAirDropHandler *)self isJustFiles];
  if (v2->_availableApplications)
  {
    return [(NSArray *)v2->_availableApplications count]&& v3;
  }

  v4 = [(SDAirDropHandler *)v2 transfer];
  v5 = [v4 metaData];
  v6 = [v5 items];
  v7 = [v6 count];

  v8 = !v3;
  if (v7 != 1)
  {
    v8 = 1;
  }

  if (v8)
  {
    v3 = 0;
    return [(NSArray *)v2->_availableApplications count]&& v3;
  }

  v32 = v2;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [(SDAirDropHandler *)v2 transfer];
  v10 = [v9 metaData];
  v11 = [v10 rawFiles];

  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_30;
  }

  v13 = v12;
  v14 = 0;
  v35 = *v39;
  v34 = kSFOperationFileNameKey;
  v15 = kSFOperationFileTypeKey;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v39 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v38 + 1) + 8 * i);
      v18 = objc_opt_new();
      v19 = [v17 objectForKeyedSubscript:v34];
      v20 = [v17 objectForKeyedSubscript:v15];
      v21 = [LSDocumentProxy documentProxyForName:v19 type:v20 MIMEType:0];
      if ((SFIsCoreType() & 1) == 0)
      {
        v37 = 0;
        v22 = [v21 applicationsAvailableForOpeningFromAirDropWithError:&v37];
        v23 = v37;
        [v18 addObjectsFromArray:v22];

        if (v23)
        {
          v24 = airdrop_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v23;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to get airdrop available applications for opening %@", buf, 0xCu);
          }
        }
      }

      if ([v18 count])
      {
        if (v14)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v36 = 0;
        v25 = [v21 applicationsAvailableForOpeningWithError:&v36];
        v26 = v36;
        [v18 addObjectsFromArray:v25];

        if (v26)
        {
          v27 = airdrop_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v26;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to get available applications for opening %@", buf, 0xCu);
          }
        }

        if (v14)
        {
LABEL_18:
          [v14 intersectOrderedSet:v18];
          goto LABEL_25;
        }
      }

      v14 = v18;
LABEL_25:
    }

    v13 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v13);
LABEL_30:

  v28 = [v14 array];
  v2 = v32;
  availableApplications = v32->_availableApplications;
  v32->_availableApplications = v28;

  v30 = airdrop_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_100145D9C(&v32->_availableApplications, v30);
  }

  v3 = 1;
  return [(NSArray *)v2->_availableApplications count]&& v3;
}

- (BOOL)isBundleiWorkType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.Keynote"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.Pages"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.Numbers"];
  }

  return v4;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerGenericFiles;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x1000000;
}

- (id)firstReceivedFilename
{
  v2 = [(SDAirDropHandler *)self transfer];
  v3 = [v2 metaData];
  v4 = [v3 rawFiles];
  v5 = [v4 firstObject];
  v6 = [v5 objectForKeyedSubscript:kSFOperationFileNameKey];

  return v6;
}

- (id)suitableContentsDescription
{
  v3 = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self totalSharedItemsCount];
  if (+[SFAirDropUserDefaults_objc moveToAppEnabled])
  {
    v5 = [(SDAirDropHandlerGenericFiles *)self defaultOpenActionBundleID];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(SDAirDropHandler *)self transfer];
  if ([v7 userResponse] == 1)
  {
    v8 = [(SDAirDropHandler *)self transfer];
    v9 = [v8 needsAction] & v6;

    if (v9 == 1)
    {
      v10 = SFLocalizedStringForKey();
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (v4 == 1)
  {
    v11 = [(SDAirDropHandlerGenericFiles *)self firstReceivedFilename];
    v12 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_100910118];
    v13 = [(SDAirDropHandler *)self isModernProgress];
    v14 = SFLocalizedStringForKey();
    if (v13)
    {
      [NSString localizedStringWithFormat:v14, v11, v21];
    }

    else
    {
      [NSString localizedStringWithFormat:v14, v3, v11];
    }
    v19 = ;
  }

  else
  {
    v22 = @"GENERIC_FILE";
    v15 = [NSNumber numberWithInteger:v4];
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v24 = v16;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    v12 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:v17];

    LODWORD(v16) = [(SDAirDropHandler *)self isModernProgress];
    v18 = SFLocalizedStringForKey();
    if (v16)
    {
      [NSString localizedStringWithFormat:v18, v4, v21];
    }

    else
    {
      [NSString localizedStringWithFormat:v18, v3, v4];
    }
    v19 = ;
  }

  v10 = v19;

LABEL_18:

  return v10;
}

- (void)updatePossibleActions
{
  v24.receiver = self;
  v24.super_class = SDAirDropHandlerGenericFiles;
  [(SDAirDropHandler *)&v24 updatePossibleActions];
  v3 = [(SDAirDropHandler *)self transfer];
  if ([v3 userResponse] != 1)
  {
    v4 = [(SDAirDropHandler *)self handlingAppBundleID];
    if (SFRemovableSystemAppAvailable())
    {
    }

    else
    {
      v5 = [(SDAirDropHandler *)self handlingAppBundleID];
      v6 = v5 == 0;

      if (!v6)
      {
        return;
      }
    }

    v7 = objc_opt_class();
    v3 = NSStringFromClass(v7);
    v8 = [SFAirDropAction alloc];
    v9 = [(SDAirDropHandler *)self transfer];
    v10 = [v9 identifier];
    v11 = SFLocalizedStringForKey();
    v12 = [(SDAirDropHandler *)self singleItemActionTitle];
    v13 = [v8 initWithTransferIdentifier:v10 actionIdentifier:v3 title:v11 singleItemTitle:v12 type:1];

    objc_initWeak(&location, self);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100143FE4;
    v21 = &unk_1008CDB10;
    objc_copyWeak(&v22, &location);
    [v13 setActionHandler:&v18];
    if ([SFAirDropUserDefaults_objc moveToAppEnabled:v18])
    {
      v14 = [(SDAirDropHandlerGenericFiles *)self defaultOpenActionBundleID];
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    [v13 setRequiresUnlockedUI:v15];
    v25 = v13;
    v16 = [NSArray arrayWithObjects:&v25 count:1];
    v17 = [(SDAirDropHandler *)self transfer];
    [v17 setPossibleActions:v16];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (id)cancelActionTitleToAccompanyActions:(id)a3
{
  if (self->_willUseOpenWithAlert)
  {
    v3 = SFLocalizedStringForKey();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SDAirDropHandlerGenericFiles;
    v3 = [(SDAirDropHandler *)&v5 cancelActionTitleToAccompanyActions:a3];
  }

  return v3;
}

- (id)actionForBundleProxy:(id)a3
{
  v4 = a3;
  v5 = [(SDAirDropHandler *)self defaultActionForBundleProxy:v4];
  [v5 setMinRequiredTransferState:6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100144168;
  v8[3] = &unk_1008D16B0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [v5 setActionHandler:v8];

  return v5;
}

- (BOOL)shouldOpenAutomaticallyAfterUserAccepts
{
  v3 = [(SDAirDropHandlerGenericFiles *)self availableApplications];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(SDAirDropHandlerGenericFiles *)self availableApplications];
    v6 = [v5 firstObject];
    v7 = [v6 bundleIdentifier];

    LODWORD(v5) = [v7 hasPrefix:@"com.apple."];
    v8 = v5 & ([v7 isEqualToString:@"com.apple.TapToRadar"] ^ 1);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)acceptActionTriggered
{
  if (+[SFAirDropUserDefaults_objc moveToAppEnabled]&& ([(SDAirDropHandlerGenericFiles *)self defaultOpenActionBundleID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {

    [(SDAirDropHandlerGenericFiles *)self saveAndUpdateTransfer];
  }

  else if ([(SDAirDropHandlerGenericFiles *)self shouldOpenAutomaticallyAfterUserAccepts])
  {
    v4 = [(SDAirDropHandlerGenericFiles *)self availableApplications];
    v5 = [v4 firstObject];
    v7 = [(SDAirDropHandlerGenericFiles *)self actionForBundleProxy:v5];

    v6 = [v7 actionHandler];
    v6[2](v6, 0);
  }

  else
  {
    [(SDAirDropHandlerGenericFiles *)self addOpenWithActions];
    self->_willUseOpenWithAlert = 1;
  }
}

- (void)addOpenWithActions
{
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_availableApplications;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(SDAirDropHandlerGenericFiles *)self actionForBundleProxy:v10, v17];
        [v3 addObject:v11];

        v12 = [v10 bundleIdentifier];
        LODWORD(v11) = [v12 isEqualToString:@"com.apple.DocumentsApp"];

        v8 &= v11 ^ 1;
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  if ([(SDAirDropHandleriCloudDrive *)self->_icloudDriveHandler canHandleTransfer])
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    [(SDAirDropHandleriCloudDrive *)self->_icloudDriveHandler setUseOpenWithText:0];
    v14 = [(SDAirDropHandler *)self completionHandler];
    [(SDAirDropHandler *)self->_icloudDriveHandler setCompletionHandler:v14];

    v15 = [(SDAirDropHandleriCloudDrive *)self->_icloudDriveHandler action];
    [v3 addObject:v15];
  }

  v16 = [(SDAirDropHandler *)self transfer];
  [v16 setPossibleActions:v3];
}

- (void)performActionWithBundleProxy:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(SDAirDropHandler *)self applicationProxyForBundleProxy:a3];
  v8 = [v7 bundleIdentifier];
  v9 = [v7 appState];
  if (([v9 isInstalled] & 1) == 0)
  {

    goto LABEL_14;
  }

  v10 = [v7 appState];
  v11 = [v10 isRestricted];

  if (v11)
  {
LABEL_14:
    v24 = +[LSApplicationWorkspace defaultWorkspace];
    v25 = [(SDAirDropHandler *)self transfer];
    v26 = [v25 completedURLs];
    v27 = [v26 firstObject];
    [v24 _LSFailedToOpenURL:v27 withBundle:v8];

    v6[2](v6, 1);
    goto LABEL_15;
  }

  v29 = v7;
  v28 = v6;
  v32 = objc_opt_new();
  v31 = +[LSApplicationWorkspace defaultWorkspace];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = [(SDAirDropHandler *)self transfer];
  v13 = [v12 completedURLs];

  obj = v13;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    v17 = LSMoveDocumentOnOpenKey;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v44 = v17;
        v45 = &__kCFBooleanTrue;
        v20 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v21 = [v31 operationToOpenResource:v19 usingApplication:v8 uniqueDocumentIdentifier:0 userInfo:v20 delegate:self];
        v22 = airdrop_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v41 = v29;
          v42 = 2112;
          v43 = v19;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Enqueuing resource open operation for %@, with URL: %@", buf, 0x16u);
        }

        [v32 addObject:v21];
        [(SDAirDropHandler *)self logReceiverBundleID:v8 forAppProxy:0 andURL:0];
      }

      v15 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v15);
  }

  v23 = [v32 lastObject];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100144A28;
  v33[3] = &unk_1008CE708;
  v7 = v29;
  v34 = v29;
  v6 = v28;
  v35 = v28;
  [v23 setCompletionBlock:v33];

  [(NSOperationQueue *)self->_workOperationsQueue addOperations:v32 waitUntilFinished:0];
LABEL_15:
}

- (void)saveAndUpdateTransfer
{
  v3 = [(SDAirDropHandlerGenericFiles *)self saveToDefaultFolderWithError:0];
  v4 = [(SDAirDropHandler *)self transfer];
  [v4 setCompletedURLs:v3];

  v5 = [(SDAirDropHandler *)self updateTransferStateHandler];
  v5[2](v5, 7);
}

- (id)defaultFolder
{
  if (![(SDAirDropHandleriCloudDrive *)self->_icloudDriveHandler iCloudDriveIsAccessible])
  {
    goto LABEL_4;
  }

  v3 = [(SDAirDropHandleriCloudDrive *)self->_icloudDriveHandler iCloudDriveURL];

  if (!v3 || (-[SDAirDropHandleriCloudDrive iCloudDriveURL](self->_icloudDriveHandler, "iCloudDriveURL"), v4 = objc_claimAutoreleasedReturnValue(), [v4 URLByAppendingPathComponent:@"Downloads" isDirectory:1], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
LABEL_4:
    v5 = sub_1001F17F4();
  }

  return v5;
}

- (id)saveToDefaultFolderWithError:(id *)a3
{
  v5 = [(SDAirDropHandlerGenericFiles *)self defaultFolder];
  v6 = airdrop_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SDAirDropHandler *)self transfer];
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saving files to %@ for transfer %@", &v14, 0x16u);
    }

    LOBYTE(v14) = 1;
    v9 = [(SDAirDropHandler *)self transfer];
    v10 = [v9 completedURLs];
    v11 = sub_1001F1DAC(v10, v5, &v14, a3);

    if ((v14 & 1) == 0)
    {
      v12 = airdrop_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100145E38(v5, self);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100145EE4(self);
    }

    v11 = &__NSArray0__struct;
  }

  return v11;
}

+ (void)launchFilesToDefaultFolderWithURLs:(id)a3 defaultFolder:(id)a4 openURLs:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = airdrop_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Opening files with Files App for transfer", &v27, 2u);
  }

  if ([v9 count] == 1)
  {
    v14 = [v9 objectAtIndexedSubscript:0];
    v15 = [v14 absoluteString];
    v16 = [v15 stringByReplacingOccurrencesOfString:@"file://" withString:@"shareddocuments://"];

    v17 = [NSURL URLWithString:v16];
    v18 = v17;
    if (v17)
    {
      v29 = v17;
      v19 = [NSArray arrayWithObjects:&v29 count:1];
      v11[2](v11, v19);
    }

    else
    {
      v19 = airdrop_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100145F74();
      }
    }

    v12[2](v12, v18 != 0);
  }

  else if ([v9 count])
  {
    if (v10)
    {
      v20 = [v10 absoluteString];
      v21 = [v20 stringByReplacingOccurrencesOfString:@"file://" withString:@"shareddocuments://"];

      v22 = [NSURL URLWithString:v21];
      v23 = v22;
      v24 = v22 != 0;
      if (v22)
      {
        v28 = v22;
        v25 = [NSArray arrayWithObjects:&v28 count:1];
        v11[2](v11, v25);
      }

      else
      {
        v25 = airdrop_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100145F74();
        }
      }
    }

    else
    {
      v21 = airdrop_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100145FA8();
      }

      v24 = 0;
    }

    v12[2](v12, v24);
  }

  else
  {
    v26 = airdrop_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100145FDC();
    }

    v12[2](v12, 0);
  }
}

- (void)launchFilesToDefaultFolder
{
  v3 = objc_opt_class();
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 completedURLs];
  v6 = [(SDAirDropHandlerGenericFiles *)self defaultFolder];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100145218;
  v8[3] = &unk_1008CE2E8;
  v8[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100145224;
  v7[3] = &unk_1008CDAA8;
  v7[4] = self;
  [v3 launchFilesToDefaultFolderWithURLs:v5 defaultFolder:v6 openURLs:v8 completion:v7];
}

- (void)handleMoveToAppShareSheetSucceeded
{
  v2 = [(SDAirDropHandler *)self transfer];
  v3 = [v2 completedURLs];

  if ([v3 count])
  {
    v4 = +[NSFileManager defaultManager];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v15 = v3;
      v8 = 0;
      v9 = *v18;
      do
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v17 + 1) + 8 * v10);
          v16 = v11;
          v13 = [v4 removeItemAtURL:v12 error:&v16];
          v8 = v16;

          if ((v13 & 1) == 0)
          {
            v14 = airdrop_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v22 = v12;
              v23 = 2112;
              v24 = v8;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not remove file %@ : %@", buf, 0x16u);
            }
          }

          v10 = v10 + 1;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v7);

      v3 = v15;
    }
  }
}

- (id)actionsForModernReadyForOpen
{
  v3 = [(SDAirDropHandlerGenericFiles *)self defaultOpenActionBundleID];

  if (v3)
  {
    v4 = +[NSMutableArray array];
    objc_initWeak(location, self);
    v5 = [(SDAirDropHandlerGenericFiles *)self defaultOpenActionBundleID];
    v6 = SFRemovableSystemAppAvailable();
    v40 = 0;
    v7 = [LSBundleRecord bundleRecordWithBundleIdentifier:v5 allowPlaceholder:1 error:&v40];
    v33 = v40;
    if (v7)
    {
      v32 = v6;
      SFLocalizedStringForKey();
      if (v6)
        v8 = {;
        v9 = [v7 localizedName];
        v10 = [NSString stringWithFormat:v8, v9];

        v11 = [SFAirDropAction alloc];
        v12 = [(SDAirDropHandler *)self transfer];
        v13 = [v12 identifier];
        v14 = [v7 bundleIdentifier];
        v15 = [(SDAirDropHandler *)self singleItemActionTitle];
        v16 = [v11 initWithTransferIdentifier:v13 actionIdentifier:v14 title:v10 singleItemTitle:v15 type:3];

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100145980;
        v38[3] = &unk_1008CDB10;
        v17 = &v39;
        objc_copyWeak(&v39, location);
        [v16 setActionHandler:v38];
      }

      else
        v18 = {;
        v19 = [v7 localizedName];
        v10 = [NSString stringWithFormat:v18, v19];

        v20 = [SFAirDropAction alloc];
        v21 = [(SDAirDropHandler *)self transfer];
        v22 = [v21 identifier];
        v23 = [v7 bundleIdentifier];
        v24 = [(SDAirDropHandler *)self singleItemActionTitle];
        v16 = [v20 initWithTransferIdentifier:v22 actionIdentifier:v23 title:v10 singleItemTitle:v24 type:3];

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1001459C0;
        v36[3] = &unk_1008CDB10;
        v17 = &v37;
        objc_copyWeak(&v37, location);
        [v16 setActionHandler:v36];
      }

      objc_destroyWeak(v17);

      [v16 setMaxTransferState:8];
      v6 = v32;
      [v4 addObject:v16];
    }

    else
    {
      v16 = airdrop_ui_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100146010(v5, v33, v16);
      }
    }

    if (v6)
    {
      v25 = SFLocalizedStringForKey();
      v26 = [SFAirDropAction alloc];
      v27 = [(SDAirDropHandler *)self transfer];
      v28 = [v27 identifier];
      v29 = [(SDAirDropHandler *)self singleItemActionTitle];
      v30 = [v26 initWithTransferIdentifier:v28 actionIdentifier:@"SDMoveToAppActionIdentifier" title:v25 singleItemTitle:v29 type:3];

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100145A30;
      v34[3] = &unk_1008CDB10;
      objc_copyWeak(&v35, location);
      [v30 setActionHandler:v34];
      [v30 setMaxTransferState:8];
      [v4 addObject:v30];
      objc_destroyWeak(&v35);
    }

    objc_destroyWeak(location);
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)openResourceOperation:(id)a3 didFinishCopyingResource:(id)a4
{
  v5 = a4;
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SDAirDropHandlerGenericFiles *)self selectedApplication];
    v8 = 136315650;
    v9 = "[SDAirDropHandlerGenericFiles openResourceOperation:didFinishCopyingResource:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@ to %@", &v8, 0x20u);
  }
}

- (void)openResourceOperationDidComplete:(id)a3
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SDAirDropHandlerGenericFiles *)self selectedApplication];
    v6 = 136315394;
    v7 = "[SDAirDropHandlerGenericFiles openResourceOperationDidComplete:]";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }
}

- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100146098(self);
  }
}

@end