@interface SDAirDropHandleriCloudDrive
- (BOOL)canHandleTransfer;
- (BOOL)iCloudDriveIsAccessible;
- (SDAirDropHandleriCloudDrive)initWithTransfer:(id)transfer;
- (SFAirDropAction)action;
- (int64_t)transferTypes;
- (void)openCompletedItemsWithFilesApp;
- (void)saveCompletedItemsToiCloudDrive;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandleriCloudDrive

- (SDAirDropHandleriCloudDrive)initWithTransfer:(id)transfer
{
  v9.receiver = self;
  v9.super_class = SDAirDropHandleriCloudDrive;
  v3 = [(SDAirDropHandler *)&v9 initWithTransfer:transfer];
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = off_100970768();
    v6 = [v4 URLForUbiquityContainerIdentifier:v5];
    iCloudDriveURL = v3->_iCloudDriveURL;
    v3->_iCloudDriveURL = v6;

    v3->_useOpenWithText = 1;
  }

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustFiles])
  {
    return 0;
  }

  if (SFFilesAppAvailable())
  {
    return 1;
  }

  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Files App not available", buf, 2u);
  }

  iCloudDriveURL = self->_iCloudDriveURL;
  v9 = 0;
  v3 = [(NSURL *)iCloudDriveURL checkResourceIsReachableAndReturnError:&v9];
  v6 = v9;
  if ((v3 & 1) == 0)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iCloud drive not enabled or accessible. Error: %@", buf, 0xCu);
    }
  }

  return v3;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandleriCloudDrive;
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x1000000;
}

- (void)updatePossibleActions
{
  v6.receiver = self;
  v6.super_class = SDAirDropHandleriCloudDrive;
  [(SDAirDropHandler *)&v6 updatePossibleActions];
  action = [(SDAirDropHandleriCloudDrive *)self action];
  v7 = action;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  transfer = [(SDAirDropHandler *)self transfer];
  [transfer setPossibleActions:v4];
}

- (SFAirDropAction)action
{
  action = self->_action;
  if (!action)
  {
    v4 = SFFilesAppAvailable();
    v5 = v4;
    if (v4)
    {
      self->_useOpenWithText;
    }

    v6 = SFLocalizedStringForKey();
    v7 = [SFAirDropAction alloc];
    transfer = [(SDAirDropHandler *)self transfer];
    identifier = [transfer identifier];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    singleItemActionTitle = [(SDAirDropHandler *)self singleItemActionTitle];
    v13 = [v7 initWithTransferIdentifier:identifier actionIdentifier:v11 title:v6 singleItemTitle:singleItemActionTitle type:1];
    v14 = self->_action;
    self->_action = v13;

    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000D0600;
    v16[3] = &unk_1008CFBB0;
    v18 = v5;
    objc_copyWeak(&v17, &location);
    [(SFAirDropAction *)self->_action setActionHandler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    action = self->_action;
  }

  return action;
}

- (void)openCompletedItemsWithFilesApp
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    transfer = [(SDAirDropHandler *)self transfer];
    *buf = 138412290;
    v39 = transfer;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Opening files with Files App for transfer %@", buf, 0xCu);
  }

  transfer2 = [(SDAirDropHandler *)self transfer];
  completedURLs = [transfer2 completedURLs];
  v7 = [completedURLs count];

  if (v7)
  {
    transfer3 = [(SDAirDropHandler *)self transfer];
    completedURLs2 = [transfer3 completedURLs];
    v10 = [completedURLs2 count];

    if (v10)
    {
      v12 = 0;
      v13 = LSMoveDocumentOnOpenKey;
      *&v11 = 138412290;
      v30 = v11;
      do
      {
        transfer4 = [(SDAirDropHandler *)self transfer];
        completedURLs3 = [transfer4 completedURLs];
        v16 = v12 == [completedURLs3 count] - 1;

        transfer5 = [(SDAirDropHandler *)self transfer];
        completedURLs4 = [transfer5 completedURLs];
        v19 = [completedURLs4 objectAtIndexedSubscript:v12];

        v20 = airdrop_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v30;
          v39 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Trying to open URL %@", buf, 0xCu);
        }

        v36 = v13;
        v37 = &__kCFBooleanTrue;
        v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v22 = +[LSApplicationWorkspace defaultWorkspace];
        v23 = [v22 operationToOpenResource:v19 usingApplication:@"com.apple.DocumentsApp" userInfo:v21];

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000D09E8;
        v31[3] = &unk_1008CFBD8;
        v34 = v16;
        v32 = v19;
        selfCopy = self;
        v35 = 1;
        v24 = v19;
        [v23 setCompletionBlock:v31];
        [v23 start];

        ++v12;
        transfer6 = [(SDAirDropHandler *)self transfer];
        completedURLs5 = [transfer6 completedURLs];
        v27 = [completedURLs5 count];
      }

      while (v12 < v27);
    }
  }

  else
  {
    v28 = airdrop_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0E18(v28);
    }

    completionHandler = [(SDAirDropHandler *)self completionHandler];
    completionHandler[2](completionHandler, 0, 0, 1);
  }
}

- (void)saveCompletedItemsToiCloudDrive
{
  v14 = 0;
  iCloudDriveURL = self->_iCloudDriveURL;
  v4 = airdrop_log();
  v5 = v4;
  if (iCloudDriveURL)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      transfer = [(SDAirDropHandler *)self transfer];
      *buf = 138412290;
      v16 = transfer;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving files to iCloud Drive for transfer %@", buf, 0xCu);
    }

    transfer2 = [(SDAirDropHandler *)self transfer];
    completedURLs = [transfer2 completedURLs];
    v9 = self->_iCloudDriveURL;
    v13 = 0;
    v10 = sub_1001F1DAC(completedURLs, v9, &v14, &v13);
    v5 = v13;

    if ((v14 & 1) == 0)
    {
      v11 = airdrop_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000D0E5C(self, v5, v11);
      }
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000D0F0C(v5);
  }

  completionHandler = [(SDAirDropHandler *)self completionHandler];
  completionHandler[2](completionHandler, v14, 0, 1);
}

- (BOOL)iCloudDriveIsAccessible
{
  iCloudDriveURL = self->_iCloudDriveURL;
  v4 = 0;
  return [(NSURL *)iCloudDriveURL checkResourceIsReachableAndReturnError:&v4];
}

@end