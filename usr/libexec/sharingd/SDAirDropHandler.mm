@interface SDAirDropHandler
+ (id)alertMessageLocalizedKeyForTypeDicts:(id)dicts senderIsMe:(BOOL)me isVerifiableIdentity:(BOOL)identity isModernProgress:(BOOL)progress transferState:(unint64_t)state;
+ (id)persistedTransfersBaseURL;
+ (id)transferURLForTransfer:(id)transfer;
+ (void)logReceiverBundleID:(id)d forURL:(id)l;
- (BOOL)openURLs:(id)ls bundleIdentifier:(id)identifier;
- (NSString)senderName;
- (SDAirDropHandler)init;
- (SDAirDropHandler)initWithTransfer:(id)transfer bundleIdentifier:(id)identifier;
- (id)alertMessageLocalizedKeyForTypeDicts:(id)dicts;
- (id)applicationProxyForBundleProxy:(id)proxy;
- (id)bundleProxyFromCandidateIdentifiers:(id)identifiers handlesURL:(id)l;
- (id)cancelActionTitleToAccompanyActions:(id)actions;
- (id)defaultActionForBundleProxy:(id)proxy;
- (id)defaultFolder;
- (id)description;
- (int64_t)transferTypes;
- (unint64_t)totalSharedItemsCount;
- (void)actionSelected:(id)selected;
- (void)activate;
- (void)addStatusMonitorObservers;
- (void)dealloc;
- (void)launchMoveToAppShareSheetForFiles:(id)files;
- (void)logReceiverBundleID:(id)d forAppProxy:(id)proxy andURL:(id)l;
- (void)performImportWithCompletedURLs:(id)ls completion:(id)completion;
- (void)performOpenSharesheetActionWithImportedURLs:(id)ls completion:(id)completion;
- (void)performViewActionWithImportedURLs:(id)ls completion:(id)completion;
- (void)performViewActionWithURLs:(id)ls;
- (void)prepareOrPerformOpenAction;
- (void)removeItemAtURLToFreeUpSpace:(id)space;
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

- (SDAirDropHandler)initWithTransfer:(id)transfer bundleIdentifier:(id)identifier
{
  transferCopy = transfer;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = SDAirDropHandler;
  v8 = [(SDAirDropHandler *)&v24 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_20;
  }

  [(SDAirDropHandler *)v8 setTransfer:transferCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  metaData = [transferCopy metaData];
  items = [metaData items];

  v12 = [items countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(items);
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

      v13 = [items countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  if (identifierCopy && (SFRemovableSystemAppAvailable() & 1) == 0)
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
  objc_storeStrong(&v9->_handlingAppBundleID, identifier);
  if (identifierCopy && v9->_handlingAppInstalled)
  {
    v18 = [LSBundleProxy bundleProxyForIdentifier:identifierCopy];
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
  transferTypes = [(SDAirDropHandler *)self transferTypes];
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  [metaData setTransferTypes:transferTypes];

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
    bundleIdentifier = [(LSBundleProxy *)bundleProxy bundleIdentifier];
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
  transfer = [(SDAirDropHandler *)self transfer];
  selectedAction = [transfer selectedAction];

  if (selectedAction)
  {
    [(SDAirDropHandler *)self triggerSelectedActionIfAppropriate];
LABEL_8:
    v5 = transfer;
    goto LABEL_9;
  }

  selectedAction2 = [transfer selectedAction];
  if (selectedAction2)
  {

    v5 = transfer;
  }

  else
  {
    possibleActions = [transfer possibleActions];
    v14 = [possibleActions count];

    v5 = transfer;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  transferState = [v5 transferState];
  v5 = transfer;
  if (transferState > 9)
  {
    goto LABEL_9;
  }

  if (((1 << transferState) & 0x25E) != 0)
  {
    [(SDAirDropHandler *)self updatePossibleActions];
    goto LABEL_8;
  }

  if (transferState == 7)
  {
    [(SDAirDropHandler *)self prepareOrPerformOpenAction];
    goto LABEL_8;
  }

LABEL_9:
  possibleActions2 = [v5 possibleActions];
  v8 = [(SDAirDropHandler *)self cancelActionTitleToAccompanyActions:possibleActions2];

  cancelAction = [transfer cancelAction];
  [cancelAction setLocalizedTitle:v8];

  cancelAction2 = [transfer cancelAction];
  [cancelAction2 setSingleItemLocalizedTitle:v8];

  suitableContentsTitle = [(SDAirDropHandler *)self suitableContentsTitle];
  [transfer setContentsTitle:suitableContentsTitle];

  suitableContentsDescription = [(SDAirDropHandler *)self suitableContentsDescription];
  [transfer setContentsDescription:suitableContentsDescription];
}

- (void)actionSelected:(id)selected
{
  selectedCopy = selected;
  transfer = [(SDAirDropHandler *)self transfer];
  cancelAction = [transfer cancelAction];
  v8 = [cancelAction isEqual:selectedCopy];

  if (!v8)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    transfer2 = [(SDAirDropHandler *)self transfer];
    possibleActions = [transfer2 possibleActions];

    v15 = [possibleActions countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(possibleActions);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          if ([v20 isEqual:selectedCopy])
          {
            v21 = v20;

            v17 = v21;
          }
        }

        v16 = [possibleActions countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v16);

      if (v17)
      {
        transfer3 = [(SDAirDropHandler *)self transfer];
        [transfer3 setSelectedAction:v17];

        transfer4 = [(SDAirDropHandler *)self transfer];
        [transfer4 setPossibleActions:0];

        if ([v17 shouldUpdateUserResponse])
        {
          transfer5 = [(SDAirDropHandler *)self transfer];
          userResponse = [transfer5 userResponse];

          if (!userResponse)
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
    [v17 handleFailureInMethod:a2 object:self file:@"SDAirDropHandler.m" lineNumber:221 description:{@"Failed to find localAction for %@", selectedCopy}];
LABEL_19:

    goto LABEL_20;
  }

  transfer6 = [(SDAirDropHandler *)self transfer];
  cancelAction2 = [transfer6 cancelAction];
  transfer7 = [(SDAirDropHandler *)self transfer];
  [transfer7 setSelectedAction:cancelAction2];

  transfer8 = [(SDAirDropHandler *)self transfer];
  [transfer8 setUserResponse:2];

LABEL_20:
}

- (void)triggerSelectedActionIfAppropriate
{
  transfer = [(SDAirDropHandler *)self transfer];
  selectedAction = [transfer selectedAction];

  if (selectedAction)
  {
    transfer2 = [(SDAirDropHandler *)self transfer];
    transferState = [transfer2 transferState];
    minRequiredTransferState = [selectedAction minRequiredTransferState];

    if (transferState >= minRequiredTransferState)
    {
      transfer3 = [(SDAirDropHandler *)self transfer];
      transferState2 = [transfer3 transferState];
      maxTransferState = [selectedAction maxTransferState];

      if (transferState2 > maxTransferState)
      {
        v13 = airdrop_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = selectedAction;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot trigger action %@ as it is past requirement", &v21, 0xCu);
        }

        transfer4 = [(SDAirDropHandler *)self transfer];
        [transfer4 setSelectedAction:0];
        goto LABEL_17;
      }

      if (![selectedAction requiresUnlockedUI] || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "deviceUIUnlocked"), v14, (v15 & 1) != 0))
      {
        transfer5 = [(SDAirDropHandler *)self transfer];
        transferState3 = [transfer5 transferState];

        if (transferState3 == 4)
        {
          transfer6 = [(SDAirDropHandler *)self transfer];
          [transfer6 setTransferState:6];
        }

        v19 = airdrop_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = selectedAction;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Triggering action %@", &v21, 0xCu);
        }

        transfer7 = [(SDAirDropHandler *)self transfer];
        [transfer7 setSelectedAction:0];

        transfer4 = [selectedAction actionHandler];
        (*(transfer4 + 16))(transfer4, selectedAction);
        goto LABEL_17;
      }

      transfer4 = airdrop_log();
      if (os_log_type_enabled(transfer4, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = selectedAction;
        v9 = "Delaying trigger of action %@ till UI unlock";
        goto LABEL_5;
      }
    }

    else
    {
      transfer4 = airdrop_log();
      if (os_log_type_enabled(transfer4, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = selectedAction;
        v9 = "Delaying trigger of action %@ till transferState reaches requirement";
LABEL_5:
        _os_log_impl(&_mh_execute_header, transfer4, OS_LOG_TYPE_DEFAULT, v9, &v21, 0xCu);
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

- (id)cancelActionTitleToAccompanyActions:(id)actions
{
  transfer = [(SDAirDropHandler *)self transfer];
  transferState = [transfer transferState];

  if ((transferState - 1) <= 6)
  {
    v5 = off_1008CDBF0[(transferState - 1)];
  }

  v6 = SFLocalizedStringForKey();

  return v6;
}

- (void)updatePossibleActions
{
  objc_initWeak(&location, self);
  transfer = [(SDAirDropHandler *)self transfer];
  cancelAction = [transfer cancelAction];
  v5 = cancelAction == 0;

  if (v5)
  {
    v6 = SFLocalizedStringForKey();
    v7 = [SFAirDropAction alloc];
    transfer2 = [(SDAirDropHandler *)self transfer];
    identifier = [transfer2 identifier];
    v10 = [v7 initWithTransferIdentifier:identifier actionIdentifier:@"SDCancelActionIdentifier" title:v6 singleItemTitle:v6 type:2];

    [v10 setMinRequiredTransferState:1];
    [v10 setMaxTransferState:4];
    [v10 setActionHandler:&stru_1008CDAE8];
    transfer3 = [(SDAirDropHandler *)self transfer];
    [transfer3 setCancelAction:v10];
  }

  transfer4 = [(SDAirDropHandler *)self transfer];
  if ([transfer4 transferState] == 3)
  {
    v13 = 1;
  }

  else
  {
    transfer5 = [(SDAirDropHandler *)self transfer];
    v13 = [transfer5 transferState] == 9;
  }

  handlingAppBundleID = self->_handlingAppBundleID;
  if ((SFRemovableSystemAppAvailable() & 1) == 0 && self->_handlingAppBundleID != 0 && !v13)
  {
    v16 = [SFAirDropAction alloc];
    transfer6 = [(SDAirDropHandler *)self transfer];
    identifier2 = [transfer6 identifier];
    v19 = [LSApplicationProxy applicationProxyForSystemPlaceholder:self->_handlingAppBundleID];
    localizedName = [v19 localizedName];
    singleItemActionTitle = [(SDAirDropHandler *)self singleItemActionTitle];
    v22 = [v16 initWithTransferIdentifier:identifier2 actionIdentifier:@"SDUninstalledAppActionIdentifier" title:localizedName singleItemTitle:singleItemActionTitle type:1];

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100052E84;
    v28 = &unk_1008CDB10;
    objc_copyWeak(&v29, &location);
    [v22 setActionHandler:&v25];
    v31 = v22;
    v23 = [NSArray arrayWithObjects:&v31 count:1, v25, v26, v27, v28];
    transfer7 = [(SDAirDropHandler *)self transfer];
    [transfer7 setPossibleActions:v23];

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
    actionsForModernReadyForOpen = [(SDAirDropHandler *)self actionsForModernReadyForOpen];
    transfer = [(SDAirDropHandler *)self transfer];
    [transfer setPossibleActions:actionsForModernReadyForOpen];
  }

  else
  {
    v6 = SFLocalizedStringForKey();
    v7 = [SFAirDropAction alloc];
    transfer2 = [(SDAirDropHandler *)self transfer];
    identifier = [transfer2 identifier];
    v10 = [v7 initWithTransferIdentifier:identifier actionIdentifier:@"SDOpenActionIdentifier" title:v6 singleItemTitle:v6 type:3];

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
    transfer3 = [(SDAirDropHandler *)self transfer];
    [transfer3 setPossibleActions:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (id)defaultFolder
{
  v2 = +[NSFileManager defaultManager];
  temporaryDirectory = [v2 temporaryDirectory];

  return temporaryDirectory;
}

+ (id)persistedTransfersBaseURL
{
  v2 = sub_1001F17F4();
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];

  return v3;
}

+ (id)transferURLForTransfer:(id)transfer
{
  transferCopy = transfer;
  customDestinationURL = [transferCopy customDestinationURL];

  if (customDestinationURL)
  {
    customDestinationURL2 = [transferCopy customDestinationURL];
  }

  else
  {
    v6 = +[SDAirDropHandler persistedTransfersBaseURL];
    identifier = [transferCopy identifier];
    customDestinationURL2 = [v6 URLByAppendingPathComponent:identifier isDirectory:1];
  }

  return customDestinationURL2;
}

- (void)performImportWithCompletedURLs:(id)ls completion:(id)completion
{
  completionCopy = completion;
  lsCopy = ls;
  v7 = objc_alloc_init(SDAirDropHandlerImportResult);
  [(SDAirDropHandlerImportResult *)v7 setImportedFiles:lsCopy];

  completionCopy[2](completionCopy, v7, 0);
}

- (void)performViewActionWithImportedURLs:(id)ls completion:(id)completion
{
  completionCopy = completion;
  completionCopy[2](completionCopy, [(SDAirDropHandler *)self openURLs:ls], 0);
}

- (void)performOpenSharesheetActionWithImportedURLs:(id)ls completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000535D8;
  v8[3] = &unk_1008CDB38;
  completionCopy = completion;
  v6 = completionCopy;
  lsCopy = ls;
  [(SDAirDropHandler *)self setMoveToShareSheetCompletion:v8];
  [(SDAirDropHandler *)self launchMoveToAppShareSheetForFiles:lsCopy];
}

- (void)performViewActionWithURLs:(id)ls
{
  lsCopy = ls;
  lsCopy2 = ls;
  v5 = [NSArray arrayWithObjects:&lsCopy count:1];

  [(SDAirDropHandler *)self openURLs:v5, lsCopy];
}

- (void)launchMoveToAppShareSheetForFiles:(id)files
{
  filesCopy = files;
  firstObject = [filesCopy firstObject];
  isFileURL = [firstObject isFileURL];

  if ((isFileURL & 1) == 0)
  {
    transfer = [(SDAirDropHandler *)self transfer];
    completedURLs = [transfer completedURLs];

    filesCopy = completedURLs;
  }

  if ([filesCopy count])
  {
    objc_initWeak(&location, self);
    v9 = objc_alloc_init(_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005389C;
    v15[3] = &unk_1008CDB88;
    objc_copyWeak(&v16, &location);
    [(SDAirDropMoveToAppShareSheet *)v9 showShareSheetWith:filesCopy completion:v15];
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

    moveToShareSheetCompletion = [(SDAirDropHandler *)self moveToShareSheetCompletion];

    if (moveToShareSheetCompletion)
    {
      moveToShareSheetCompletion2 = [(SDAirDropHandler *)self moveToShareSheetCompletion];
      moveToShareSheetCompletion2[2](moveToShareSheetCompletion2, 0);

      [(SDAirDropHandler *)self setMoveToShareSheetCompletion:0];
    }

    completionHandler = [(SDAirDropHandler *)self completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(SDAirDropHandler *)self completionHandler];
      completionHandler2[2](completionHandler2, 0, 0, 1);
    }
  }
}

- (id)defaultActionForBundleProxy:(id)proxy
{
  proxyCopy = proxy;
  if (!proxyCopy)
  {
    sub_100054E98(a2, self);
  }

  v6 = [SFAirDropAction alloc];
  transfer = [(SDAirDropHandler *)self transfer];
  identifier = [transfer identifier];
  bundleIdentifier = [proxyCopy bundleIdentifier];
  localizedName = [proxyCopy localizedName];
  singleItemActionTitle = [(SDAirDropHandler *)self singleItemActionTitle];
  v12 = [v6 initWithTransferIdentifier:identifier actionIdentifier:bundleIdentifier title:localizedName singleItemTitle:singleItemActionTitle type:1];

  return v12;
}

- (id)applicationProxyForBundleProxy:(id)proxy
{
  bundleIdentifier = [proxy bundleIdentifier];
  v4 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];

  return v4;
}

- (unint64_t)totalSharedItemsCount
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  items = [metaData items];

  v5 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(items);
        }

        v7 += [*(*(&v11 + 1) + 8 * i) count];
      }

      v6 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)alertMessageLocalizedKeyForTypeDicts:(id)dicts
{
  dictsCopy = dicts;
  v5 = objc_opt_class();
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  senderIsMe = [metaData senderIsMe];
  transfer2 = [(SDAirDropHandler *)self transfer];
  metaData2 = [transfer2 metaData];
  isVerifiableIdentity = [metaData2 isVerifiableIdentity];
  isModernProgress = [(SDAirDropHandler *)self isModernProgress];
  transfer3 = [(SDAirDropHandler *)self transfer];
  v14 = [v5 alertMessageLocalizedKeyForTypeDicts:dictsCopy senderIsMe:senderIsMe isVerifiableIdentity:isVerifiableIdentity isModernProgress:isModernProgress transferState:{objc_msgSend(transfer3, "transferState")}];

  return v14;
}

+ (id)alertMessageLocalizedKeyForTypeDicts:(id)dicts senderIsMe:(BOOL)me isVerifiableIdentity:(BOOL)identity isModernProgress:(BOOL)progress transferState:(unint64_t)state
{
  progressCopy = progress;
  identityCopy = identity;
  meCopy = me;
  dictsCopy = dicts;
  if (progressCopy)
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
    if (progressCopy)
    {
      v14 = @"YES";
    }

    *buf = 138412290;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "isModernProgress: %@", buf, 0xCu);
  }

  v30 = progressCopy;
  if (!progressCopy)
  {
    if ((identityCopy & ~meCopy) != 0)
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
  obj = dictsCopy;
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
        allKeys = [v20 allKeys];
        firstObject = [allKeys firstObject];

        [v12 appendFormat:@"_%@", firstObject];
        allValues = [v20 allValues];
        firstObject2 = [allValues firstObject];
        integerValue = [firstObject2 integerValue];

        if (integerValue <= 1)
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
    if (state - 2 > 7)
    {
      goto LABEL_27;
    }

    v27 = @"_CAPITALIZED";
    goto LABEL_26;
  }

  if (state <= 3)
  {
    switch(state)
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
    if (state <= 6)
    {
      if (state == 4 || state == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_43;
    }

    if (state == 8)
    {
      goto LABEL_27;
    }

    if (state == 7)
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

- (id)bundleProxyFromCandidateIdentifiers:(id)identifiers handlesURL:(id)l
{
  identifiersCopy = identifiers;
  lCopy = l;
  v8 = +[LSApplicationWorkspace defaultWorkspace];
  v9 = [v8 URLOverrideForURL:lCopy];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100054348;
  v20 = &unk_1008CDBB0;
  v21 = identifiersCopy;
  selfCopy = self;
  v10 = identifiersCopy;
  v11 = objc_retainBlock(&v17);
  v12 = [LSApplicationWorkspace defaultWorkspace:v17];
  v13 = [v12 applicationsAvailableForOpeningURL:v9];

  firstObject = [v13 firstObject];
  v15 = (v11[2])(v11, firstObject);

  return v15;
}

- (NSString)senderName
{
  transfer = [(SDAirDropHandler *)self transfer];
  metaData = [transfer metaData];
  senderCompositeName = [metaData senderCompositeName];

  v5 = SFTruncateAirDropSenderNameForUI();

  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"\t" withString:@" "];

  v9 = [v8 stringByReplacingOccurrencesOfString:&stru_1008EFF30 withString:&stru_1008EFBD0];

  return v9;
}

- (void)logReceiverBundleID:(id)d forAppProxy:(id)proxy andURL:(id)l
{
  lCopy = l;
  if (proxy)
  {
    bundleIdentifier = [proxy bundleIdentifier];
    [SDAirDropHandler logReceiverBundleID:bundleIdentifier forURL:lCopy];

    v8 = bundleIdentifier;
  }

  else
  {
    [SDAirDropHandler logReceiverBundleID:d forURL:lCopy];
    v8 = lCopy;
  }
}

+ (void)logReceiverBundleID:(id)d forURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v7 = lCopy;
  if (dCopy)
  {
    applicationIdentifier = dCopy;
LABEL_3:
    if (([applicationIdentifier hasPrefix:@"com.apple."]& 1) == 0)
    {

      applicationIdentifier = @"3rd-party";
    }

    v9 = [NSString stringWithFormat:@"%@%@", @"com.apple.airdrop.transfer.receiver.id.", applicationIdentifier];
    off_10096F738(v9, 1);

    goto LABEL_10;
  }

  if (lCopy)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = [v10 applicationsAvailableForOpeningURL:v7];

    firstObject = [v11 firstObject];
    applicationIdentifier = [firstObject applicationIdentifier];

    if (applicationIdentifier)
    {
      goto LABEL_3;
    }
  }

  applicationIdentifier = airdrop_log();
  if (os_log_type_enabled(applicationIdentifier, OS_LOG_TYPE_ERROR))
  {
    sub_100054F0C();
  }

LABEL_10:
}

- (void)removeItemAtURLToFreeUpSpace:(id)space
{
  spaceCopy = space;
  v4 = +[NSFileManager defaultManager];
  v8 = 0;
  v5 = [v4 removeItemAtURL:spaceCopy error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100054F40(spaceCopy, v7);
    }
  }
}

- (BOOL)openURLs:(id)ls bundleIdentifier:(id)identifier
{
  lsCopy = ls;
  identifierCopy = identifier;
  if (![lsCopy count])
  {
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100054FD8();
    }

    v15 = 0;
    goto LABEL_38;
  }

  selfCopy = self;
  v8 = airdrop_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (identifierCopy)
  {
    if (v9)
    {
      v10 = SFCompactStringFromCollection();
      *buf = 138412546;
      v53 = v10;
      v54 = 2112;
      v55 = identifierCopy;
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

  v40 = identifierCopy;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = lsCopy;
  v16 = [v14 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v39 = lsCopy;
    v45 = v14;
    v46 = *v48;
    v18 = selfCopy;
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
        scheme = [v20 scheme];
        lowercaseString = [scheme lowercaseString];
        if ([lowercaseString isEqualToString:@"voicememos"])
        {
          goto LABEL_25;
        }

        scheme2 = [v20 scheme];
        lowercaseString2 = [scheme2 lowercaseString];
        if ([lowercaseString2 isEqualToString:@"photos"])
        {
          goto LABEL_24;
        }

        scheme3 = [v20 scheme];
        lowercaseString3 = [scheme3 lowercaseString];
        if ([lowercaseString3 isEqualToString:@"x-apple-calevent"])
        {
          goto LABEL_23;
        }

        scheme4 = [v20 scheme];
        lowercaseString4 = [scheme4 lowercaseString];
        if ([lowercaseString4 isEqualToString:@"shoebox"])
        {
          goto LABEL_22;
        }

        v42 = scheme4;
        scheme5 = [v20 scheme];
        lowercaseString5 = [scheme5 lowercaseString];
        if ([lowercaseString5 isEqualToString:@"stocks"])
        {

          scheme4 = v42;
LABEL_22:

          v17 = v43;
          v18 = selfCopy;
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

        scheme6 = [v20 scheme];
        lowercaseString6 = [scheme6 lowercaseString];
        v38 = [lowercaseString6 isEqualToString:@"mobilephone"];

        v18 = selfCopy;
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
        lsCopy = v39;
        goto LABEL_37;
      }
    }
  }

  v15 = 0;
LABEL_37:
  identifierCopy = v40;
LABEL_38:

  return v15;
}

@end