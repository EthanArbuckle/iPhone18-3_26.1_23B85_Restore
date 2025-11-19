@interface SDAirDropHandler
+ (id)alertMessageLocalizedKeyForTypeDicts:(id)a3 senderIsMe:(BOOL)a4 isVerifiableIdentity:(BOOL)a5 isModernProgress:(BOOL)a6 transferState:(unint64_t)a7;
+ (id)persistedTransfersBaseURL;
+ (id)transferURLForTransfer:(id)a3;
+ (void)logReceiverBundleID:(id)a3 forURL:(id)a4;
- (BOOL)openURLs:(id)a3 bundleIdentifier:(id)a4;
- (NSString)senderName;
- (SDAirDropHandler)init;
- (SDAirDropHandler)initWithTransfer:(id)a3 bundleIdentifier:(id)a4;
- (id)alertMessageLocalizedKeyForTypeDicts:(id)a3;
- (id)applicationProxyForBundleProxy:(id)a3;
- (id)bundleProxyFromCandidateIdentifiers:(id)a3 handlesURL:(id)a4;
- (id)cancelActionTitleToAccompanyActions:(id)a3;
- (id)defaultActionForBundleProxy:(id)a3;
- (id)defaultFolder;
- (id)description;
- (int64_t)transferTypes;
- (unint64_t)totalSharedItemsCount;
- (void)actionSelected:(id)a3;
- (void)activate;
- (void)addStatusMonitorObservers;
- (void)dealloc;
- (void)launchMoveToAppShareSheetForFiles:(id)a3;
- (void)logReceiverBundleID:(id)a3 forAppProxy:(id)a4 andURL:(id)a5;
- (void)performImportWithCompletedURLs:(id)a3 completion:(id)a4;
- (void)performOpenSharesheetActionWithImportedURLs:(id)a3 completion:(id)a4;
- (void)performViewActionWithImportedURLs:(id)a3 completion:(id)a4;
- (void)performViewActionWithURLs:(id)a3;
- (void)prepareOrPerformOpenAction;
- (void)removeItemAtURLToFreeUpSpace:(id)a3;
- (void)removeNotificationObservers;
- (void)transferUpdated;
- (void)triggerSelectedActionIfAppropriate;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandler

- (SDAirDropHandler)init
{
  v3 = NSStringFromSelector(a2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [NSException raise:NSGenericException format:@"%@ is not a valid initializer for %@", v3, v5];

  return [(SDAirDropHandler *)self initWithTransfer:0];
}

- (SDAirDropHandler)initWithTransfer:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = SDAirDropHandler;
  v8 = [(SDAirDropHandler *)&v24 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_20;
  }

  [(SDAirDropHandler *)v8 setTransfer:v6];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v6 metaData];
  v11 = [v10 items];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if (!v9->_hasFiles)
        {
          v9->_hasFiles = [*(*(&v20 + 1) + 8 * i) isFile];
        }

        if (!v9->_hasLinks)
        {
          v9->_hasLinks = [v16 isFile] ^ 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  if (v7 && (SFRemovableSystemAppAvailable() & 1) == 0)
  {
    if (SFRemovableSystemAppAvailable())
    {
      goto LABEL_17;
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v9->_handlingAppInstalled = v17;
LABEL_17:
  objc_storeStrong(&v9->_handlingAppBundleID, a4);
  if (v7 && v9->_handlingAppInstalled)
  {
    v18 = [LSBundleProxy bundleProxyForIdentifier:v7];
    [(SDAirDropHandler *)v9 setBundleProxy:v18];
  }

LABEL_20:

  return v9;
}

- (void)dealloc
{
  if ([(SDAirDropHandler *)self isActivated])
  {
    [(SDAirDropHandler *)self removeNotificationObservers];
  }

  v3.receiver = self;
  v3.super_class = SDAirDropHandler;
  [(SDAirDropHandler *)&v3 dealloc];
}

- (void)activate
{
  v3 = [(SDAirDropHandler *)self transferTypes];
  v4 = [(SDAirDropHandler *)self transfer];
  v5 = [v4 metaData];
  [v5 setTransferTypes:v3];

  [(SDAirDropHandler *)self addStatusMonitorObservers];

  [(SDAirDropHandler *)self setIsActivated:1];
}

- (id)description
{
  v8 = objc_opt_class();
  NSAppendPrintF();
  v11 = 0;
  v9 = [(SFAirDropTransfer *)self->_transfer identifier:v8];
  NSAppendPrintF();
  v3 = v11;

  bundleProxy = self->_bundleProxy;
  if (bundleProxy)
  {
    v10 = [(LSBundleProxy *)bundleProxy bundleIdentifier];
    NSAppendPrintF();
    v5 = v3;

    v3 = v5;
  }

  NSAppendPrintF();
  v6 = v3;

  return v3;
}

- (void)transferUpdated
{
  v15 = [(SDAirDropHandler *)self transfer];
  v3 = [v15 selectedAction];

  if (v3)
  {
    [(SDAirDropHandler *)self triggerSelectedActionIfAppropriate];
LABEL_8:
    v5 = v15;
    goto LABEL_9;
  }

  v4 = [v15 selectedAction];
  if (v4)
  {

    v5 = v15;
  }

  else
  {
    v13 = [v15 possibleActions];
    v14 = [v13 count];

    v5 = v15;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  v6 = [v5 transferState];
  v5 = v15;
  if (v6 > 9)
  {
    goto LABEL_9;
  }

  if (((1 << v6) & 0x25E) != 0)
  {
    [(SDAirDropHandler *)self updatePossibleActions];
    goto LABEL_8;
  }

  if (v6 == 7)
  {
    [(SDAirDropHandler *)self prepareOrPerformOpenAction];
    goto LABEL_8;
  }

LABEL_9:
  v7 = [v5 possibleActions];
  v8 = [(SDAirDropHandler *)self cancelActionTitleToAccompanyActions:v7];

  v9 = [v15 cancelAction];
  [v9 setLocalizedTitle:v8];

  v10 = [v15 cancelAction];
  [v10 setSingleItemLocalizedTitle:v8];

  v11 = [(SDAirDropHandler *)self suitableContentsTitle];
  [v15 setContentsTitle:v11];

  v12 = [(SDAirDropHandler *)self suitableContentsDescription];
  [v15 setContentsDescription:v12];
}

- (void)actionSelected:(id)a3
{
  v5 = a3;
  v6 = [(SDAirDropHandler *)self transfer];
  v7 = [v6 cancelAction];
  v8 = [v7 isEqual:v5];

  if (!v8)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [(SDAirDropHandler *)self transfer];
    v14 = [v13 possibleActions];

    v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v28;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          if ([v20 isEqual:v5])
          {
            v21 = v20;

            v17 = v21;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v16);

      if (v17)
      {
        v22 = [(SDAirDropHandler *)self transfer];
        [v22 setSelectedAction:v17];

        v23 = [(SDAirDropHandler *)self transfer];
        [v23 setPossibleActions:0];

        if ([v17 shouldUpdateUserResponse])
        {
          v24 = [(SDAirDropHandler *)self transfer];
          v25 = [v24 userResponse];

          if (!v25)
          {
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_100052608;
            v26[3] = &unk_1008CDAA8;
            v26[4] = self;
            [(SDAirDropHandler *)self prepareForAcceptWithCompletion:v26];
          }
        }

        [(SDAirDropHandler *)self triggerSelectedActionIfAppropriate];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SDAirDropHandler.m" lineNumber:221 description:{@"Failed to find localAction for %@", v5}];
LABEL_19:

    goto LABEL_20;
  }

  v9 = [(SDAirDropHandler *)self transfer];
  v10 = [v9 cancelAction];
  v11 = [(SDAirDropHandler *)self transfer];
  [v11 setSelectedAction:v10];

  v12 = [(SDAirDropHandler *)self transfer];
  [v12 setUserResponse:2];

LABEL_20:
}

- (void)triggerSelectedActionIfAppropriate
{
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 selectedAction];

  if (v4)
  {
    v5 = [(SDAirDropHandler *)self transfer];
    v6 = [v5 transferState];
    v7 = [v4 minRequiredTransferState];

    if (v6 >= v7)
    {
      v10 = [(SDAirDropHandler *)self transfer];
      v11 = [v10 transferState];
      v12 = [v4 maxTransferState];

      if (v11 > v12)
      {
        v13 = airdrop_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = v4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot trigger action %@ as it is past requirement", &v21, 0xCu);
        }

        v8 = [(SDAirDropHandler *)self transfer];
        [v8 setSelectedAction:0];
        goto LABEL_17;
      }

      if (![v4 requiresUnlockedUI] || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "deviceUIUnlocked"), v14, (v15 & 1) != 0))
      {
        v16 = [(SDAirDropHandler *)self transfer];
        v17 = [v16 transferState];

        if (v17 == 4)
        {
          v18 = [(SDAirDropHandler *)self transfer];
          [v18 setTransferState:6];
        }

        v19 = airdrop_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = v4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Triggering action %@", &v21, 0xCu);
        }

        v20 = [(SDAirDropHandler *)self transfer];
        [v20 setSelectedAction:0];

        v8 = [v4 actionHandler];
        (*(v8 + 16))(v8, v4);
        goto LABEL_17;
      }

      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v4;
        v9 = "Delaying trigger of action %@ till UI unlock";
        goto LABEL_5;
      }
    }

    else
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v4;
        v9 = "Delaying trigger of action %@ till transferState reaches requirement";
LABEL_5:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v21, 0xCu);
      }
    }

LABEL_17:
  }
}

- (void)addStatusMonitorObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"lockStatusChanged:" name:@"com.apple.sharingd.UILockStatusChanged" object:0];
}

- (void)removeNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (int64_t)transferTypes
{
  v2 = 32;
  if (!self->_hasFiles)
  {
    v2 = 0;
  }

  if (self->_hasLinks)
  {
    return v2 | 0x2000000;
  }

  else
  {
    return v2;
  }
}

- (id)cancelActionTitleToAccompanyActions:(id)a3
{
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 transferState];

  if ((v4 - 1) <= 6)
  {
    v5 = off_1008CDBF0[(v4 - 1)];
  }

  v6 = SFLocalizedStringForKey();

  return v6;
}

- (void)updatePossibleActions
{
  objc_initWeak(&location, self);
  v3 = [(SDAirDropHandler *)self transfer];
  v4 = [v3 cancelAction];
  v5 = v4 == 0;

  if (v5)
  {
    v6 = SFLocalizedStringForKey();
    v7 = [SFAirDropAction alloc];
    v8 = [(SDAirDropHandler *)self transfer];
    v9 = [v8 identifier];
    v10 = [v7 initWithTransferIdentifier:v9 actionIdentifier:@"SDCancelActionIdentifier" title:v6 singleItemTitle:v6 type:2];

    [v10 setMinRequiredTransferState:1];
    [v10 setMaxTransferState:4];
    [v10 setActionHandler:&stru_1008CDAE8];
    v11 = [(SDAirDropHandler *)self transfer];
    [v11 setCancelAction:v10];
  }

  v12 = [(SDAirDropHandler *)self transfer];
  if ([v12 transferState] == 3)
  {
    v13 = 1;
  }

  else
  {
    v14 = [(SDAirDropHandler *)self transfer];
    v13 = [v14 transferState] == 9;
  }

  handlingAppBundleID = self->_handlingAppBundleID;
  if ((SFRemovableSystemAppAvailable() & 1) == 0 && self->_handlingAppBundleID != 0 && !v13)
  {
    v16 = [SFAirDropAction alloc];
    v17 = [(SDAirDropHandler *)self transfer];
    v18 = [v17 identifier];
    v19 = [LSApplicationProxy applicationProxyForSystemPlaceholder:self->_handlingAppBundleID];
    v20 = [v19 localizedName];
    v21 = [(SDAirDropHandler *)self singleItemActionTitle];
    v22 = [v16 initWithTransferIdentifier:v18 actionIdentifier:@"SDUninstalledAppActionIdentifier" title:v20 singleItemTitle:v21 type:1];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100052E84;
    v28 = &unk_1008CDB10;
    objc_copyWeak(&v29, &location);
    [v22 setActionHandler:&v25];
    v31 = v22;
    v23 = [NSArray arrayWithObjects:&v31 count:1, v25, v26, v27, v28];
    v24 = [(SDAirDropHandler *)self transfer];
    [v24 setPossibleActions:v23];

    objc_destroyWeak(&v29);
  }

  objc_destroyWeak(&location);
}

- (void)prepareOrPerformOpenAction
{
  v3 = +[SDStatusMonitor sharedMonitor];
  [v3 dockHasDownloadsFolder];

  if (+[SFAirDropUserDefaults_objc moveToAppEnabled]&& ([(SDAirDropHandler *)self defaultOpenActionBundleID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v13 = [(SDAirDropHandler *)self actionsForModernReadyForOpen];
    v5 = [(SDAirDropHandler *)self transfer];
    [v5 setPossibleActions:v13];
  }

  else
  {
    v6 = SFLocalizedStringForKey();
    v7 = [SFAirDropAction alloc];
    v8 = [(SDAirDropHandler *)self transfer];
    v9 = [v8 identifier];
    v10 = [v7 initWithTransferIdentifier:v9 actionIdentifier:@"SDOpenActionIdentifier" title:v6 singleItemTitle:v6 type:3];

    [v10 setMinRequiredTransferState:7];
    [v10 setMaxTransferState:7];
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100053218;
    v14[3] = &unk_1008CDB10;
    objc_copyWeak(&v15, &location);
    [v10 setActionHandler:v14];
    v17 = v10;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v12 = [(SDAirDropHandler *)self transfer];
    [v12 setPossibleActions:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (id)defaultFolder
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 temporaryDirectory];

  return v3;
}

+ (id)persistedTransfersBaseURL
{
  v2 = sub_1001F17F4();
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];

  return v3;
}

+ (id)transferURLForTransfer:(id)a3
{
  v3 = a3;
  v4 = [v3 customDestinationURL];

  if (v4)
  {
    v5 = [v3 customDestinationURL];
  }

  else
  {
    v6 = +[SDAirDropHandler persistedTransfersBaseURL];
    v7 = [v3 identifier];
    v5 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];
  }

  return v5;
}

- (void)performImportWithCompletedURLs:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SDAirDropHandlerImportResult);
  [(SDAirDropHandlerImportResult *)v7 setImportedFiles:v6];

  v5[2](v5, v7, 0);
}

- (void)performViewActionWithImportedURLs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v6[2](v6, [(SDAirDropHandler *)self openURLs:a3], 0);
}

- (void)performOpenSharesheetActionWithImportedURLs:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000535D8;
  v8[3] = &unk_1008CDB38;
  v9 = a4;
  v6 = v9;
  v7 = a3;
  [(SDAirDropHandler *)self setMoveToShareSheetCompletion:v8];
  [(SDAirDropHandler *)self launchMoveToAppShareSheetForFiles:v7];
}

- (void)performViewActionWithURLs:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];

  [(SDAirDropHandler *)self openURLs:v5, v6];
}

- (void)launchMoveToAppShareSheetForFiles:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 isFileURL];

  if ((v6 & 1) == 0)
  {
    v7 = [(SDAirDropHandler *)self transfer];
    v8 = [v7 completedURLs];

    v4 = v8;
  }

  if ([v4 count])
  {
    objc_initWeak(&location, self);
    v9 = objc_alloc_init(_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005389C;
    v15[3] = &unk_1008CDB88;
    objc_copyWeak(&v16, &location);
    [(SDAirDropMoveToAppShareSheet *)v9 showShareSheetWith:v4 completion:v15];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  else
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100054DB8();
    }

    v11 = [(SDAirDropHandler *)self moveToShareSheetCompletion];

    if (v11)
    {
      v12 = [(SDAirDropHandler *)self moveToShareSheetCompletion];
      v12[2](v12, 0);

      [(SDAirDropHandler *)self setMoveToShareSheetCompletion:0];
    }

    v13 = [(SDAirDropHandler *)self completionHandler];

    if (v13)
    {
      v14 = [(SDAirDropHandler *)self completionHandler];
      v14[2](v14, 0, 0, 1);
    }
  }
}

- (id)defaultActionForBundleProxy:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_100054E98(a2, self);
  }

  v6 = [SFAirDropAction alloc];
  v7 = [(SDAirDropHandler *)self transfer];
  v8 = [v7 identifier];
  v9 = [v5 bundleIdentifier];
  v10 = [v5 localizedName];
  v11 = [(SDAirDropHandler *)self singleItemActionTitle];
  v12 = [v6 initWithTransferIdentifier:v8 actionIdentifier:v9 title:v10 singleItemTitle:v11 type:1];

  return v12;
}

- (id)applicationProxyForBundleProxy:(id)a3
{
  v3 = [a3 bundleIdentifier];
  v4 = [LSApplicationProxy applicationProxyForIdentifier:v3];

  return v4;
}

- (unint64_t)totalSharedItemsCount
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SDAirDropHandler *)self transfer];
  v3 = [v2 metaData];
  v4 = [v3 items];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v11 + 1) + 8 * i) count];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)alertMessageLocalizedKeyForTypeDicts:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(SDAirDropHandler *)self transfer];
  v7 = [v6 metaData];
  v8 = [v7 senderIsMe];
  v9 = [(SDAirDropHandler *)self transfer];
  v10 = [v9 metaData];
  v11 = [v10 isVerifiableIdentity];
  v12 = [(SDAirDropHandler *)self isModernProgress];
  v13 = [(SDAirDropHandler *)self transfer];
  v14 = [v5 alertMessageLocalizedKeyForTypeDicts:v4 senderIsMe:v8 isVerifiableIdentity:v11 isModernProgress:v12 transferState:{objc_msgSend(v13, "transferState")}];

  return v14;
}

+ (id)alertMessageLocalizedKeyForTypeDicts:(id)a3 senderIsMe:(BOOL)a4 isVerifiableIdentity:(BOOL)a5 isModernProgress:(BOOL)a6 transferState:(unint64_t)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (v7)
  {
    v11 = @"MODERN_TRANSFER";
  }

  else
  {
    v11 = @"TRANSFER_FROM";
  }

  v12 = [NSMutableString stringWithString:v11];
  v13 = airdrop_ui_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (v7)
    {
      v14 = @"YES";
    }

    *buf = 138412290;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "isModernProgress: %@", buf, 0xCu);
  }

  v30 = v7;
  if (!v7)
  {
    if ((v8 & ~v9) != 0)
    {
      v15 = @"_PERSON";
    }

    else
    {
      v15 = @"_DEVICE";
    }

    [v12 appendString:v15];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v10;
  v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        v21 = [v20 allKeys];
        v22 = [v21 firstObject];

        [v12 appendFormat:@"_%@", v22];
        v23 = [v20 allValues];
        v24 = [v23 firstObject];
        v25 = [v24 integerValue];

        if (v25 <= 1)
        {
          v26 = &stru_1008EFBD0;
        }

        else
        {
          v26 = @"_PLURAL";
        }

        [v12 appendString:v26];
      }

      v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v17);
  }

  if (v30)
  {
    if (a7 - 2 > 7)
    {
      goto LABEL_27;
    }

    v27 = @"_CAPITALIZED";
    goto LABEL_26;
  }

  if (a7 <= 3)
  {
    switch(a7)
    {
      case 1uLL:
        goto LABEL_38;
      case 2uLL:
        v27 = @"_IN_PROGRESS";
        goto LABEL_26;
      case 3uLL:
LABEL_38:
        if (obj)
        {
          goto LABEL_27;
        }

        v27 = @"_CANCELED";
LABEL_26:
        [v12 appendString:v27];
        goto LABEL_27;
    }
  }

  else
  {
    if (a7 <= 6)
    {
      if (a7 == 4 || a7 == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_43;
    }

    if (a7 == 8)
    {
      goto LABEL_27;
    }

    if (a7 == 7)
    {
      v27 = @"_COMPLETED";
      goto LABEL_26;
    }
  }

LABEL_43:
  if (!obj)
  {
    v27 = @"_FAILED";
    goto LABEL_26;
  }

LABEL_27:
  [v12 appendString:@"_TEXT"];
  v28 = [v12 copy];

  return v28;
}

- (id)bundleProxyFromCandidateIdentifiers:(id)a3 handlesURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[LSApplicationWorkspace defaultWorkspace];
  v9 = [v8 URLOverrideForURL:v7];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100054348;
  v20 = &unk_1008CDBB0;
  v21 = v6;
  v22 = self;
  v10 = v6;
  v11 = objc_retainBlock(&v17);
  v12 = [LSApplicationWorkspace defaultWorkspace:v17];
  v13 = [v12 applicationsAvailableForOpeningURL:v9];

  v14 = [v13 firstObject];
  v15 = (v11[2])(v11, v14);

  return v15;
}

- (NSString)senderName
{
  v2 = [(SDAirDropHandler *)self transfer];
  v3 = [v2 metaData];
  v4 = [v3 senderCompositeName];

  v5 = SFTruncateAirDropSenderNameForUI();

  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"\t" withString:@" "];

  v9 = [v8 stringByReplacingOccurrencesOfString:&stru_1008EFF30 withString:&stru_1008EFBD0];

  return v9;
}

- (void)logReceiverBundleID:(id)a3 forAppProxy:(id)a4 andURL:(id)a5
{
  v9 = a5;
  if (a4)
  {
    v7 = [a4 bundleIdentifier];
    [SDAirDropHandler logReceiverBundleID:v7 forURL:v9];

    v8 = v7;
  }

  else
  {
    [SDAirDropHandler logReceiverBundleID:a3 forURL:v9];
    v8 = v9;
  }
}

+ (void)logReceiverBundleID:(id)a3 forURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
LABEL_3:
    if (([v8 hasPrefix:@"com.apple."]& 1) == 0)
    {

      v8 = @"3rd-party";
    }

    v9 = [NSString stringWithFormat:@"%@%@", @"com.apple.airdrop.transfer.receiver.id.", v8];
    off_10096F738(v9, 1);

    goto LABEL_10;
  }

  if (v6)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = [v10 applicationsAvailableForOpeningURL:v7];

    v12 = [v11 firstObject];
    v8 = [v12 applicationIdentifier];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100054F0C();
  }

LABEL_10:
}

- (void)removeItemAtURLToFreeUpSpace:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v8 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100054F40(v3, v7);
    }
  }
}

- (BOOL)openURLs:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100054FD8();
    }

    v15 = 0;
    goto LABEL_38;
  }

  v44 = self;
  v8 = airdrop_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = SFCompactStringFromCollection();
      *buf = 138412546;
      v53 = v10;
      v54 = 2112;
      v55 = v7;
      v11 = "Opening URLs: %@ in %@";
      v12 = v8;
      v13 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

  else if (v9)
  {
    v10 = SFCompactStringFromCollection();
    *buf = 138412290;
    v53 = v10;
    v11 = "Opening URLs: %@";
    v12 = v8;
    v13 = 12;
    goto LABEL_10;
  }

  v40 = v7;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = v6;
  v16 = [v14 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v39 = v6;
    v45 = v14;
    v46 = *v48;
    v18 = v44;
    while (1)
    {
      v19 = 0;
      v43 = v17;
      do
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v47 + 1) + 8 * v19);
        v21 = [v20 scheme];
        v22 = [v21 lowercaseString];
        if ([v22 isEqualToString:@"voicememos"])
        {
          goto LABEL_25;
        }

        v23 = [v20 scheme];
        v24 = [v23 lowercaseString];
        if ([v24 isEqualToString:@"photos"])
        {
          goto LABEL_24;
        }

        v25 = [v20 scheme];
        v26 = [v25 lowercaseString];
        if ([v26 isEqualToString:@"x-apple-calevent"])
        {
          goto LABEL_23;
        }

        v27 = [v20 scheme];
        v28 = [v27 lowercaseString];
        if ([v28 isEqualToString:@"shoebox"])
        {
          goto LABEL_22;
        }

        v42 = v27;
        v41 = [v20 scheme];
        v29 = [v41 lowercaseString];
        if ([v29 isEqualToString:@"stocks"])
        {

          v27 = v42;
LABEL_22:

          v17 = v43;
          v18 = v44;
LABEL_23:

          v14 = v45;
LABEL_24:

LABEL_25:
LABEL_26:
          v30 = +[LSApplicationWorkspace defaultWorkspace];
          v31 = [v30 openSensitiveURL:v20 withOptions:0];

          if ((v31 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        }

        v37 = [v20 scheme];
        v36 = [v37 lowercaseString];
        v38 = [v36 isEqualToString:@"mobilephone"];

        v18 = v44;
        v14 = v45;
        v17 = v43;
        if (v38)
        {
          goto LABEL_26;
        }

        v32 = +[LSApplicationWorkspace defaultWorkspace];
        v33 = [v32 openURL:v20 withOptions:0];

        if (!v33)
        {
LABEL_34:
          v15 = 0;
          goto LABEL_35;
        }

LABEL_27:
        [(SDAirDropHandler *)v18 logReceiverBundleID:0 forAppProxy:0 andURL:v20];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v34 = [v14 countByEnumeratingWithState:&v47 objects:v51 count:16];
      v17 = v34;
      v15 = 1;
      if (!v34)
      {
LABEL_35:
        v6 = v39;
        goto LABEL_37;
      }
    }
  }

  v15 = 0;
LABEL_37:
  v7 = v40;
LABEL_38:

  return v15;
}

@end