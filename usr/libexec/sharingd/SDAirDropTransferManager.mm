@interface SDAirDropTransferManager
- (SDAirDropAlertManagerDelegate)classroomDelegate;
- (SDAirDropAlertManagerDelegate)delegate;
- (SDAirDropTransferManager)init;
- (id)itemTypesForTransfer:(id)transfer;
- (void)activate;
- (void)askEventForRecordID:(id)d withResults:(id)results;
- (void)cancelEventForRecordID:(id)d withResults:(id)results;
- (void)cleanUpTransfer:(id)transfer;
- (void)cleanUpURL:(id)l;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)errorEventForRecordID:(id)d withResults:(id)results;
- (void)failTransfer:(id)transfer withState:(unint64_t)state failureReason:(unint64_t)reason;
- (void)finishedEventForRecordID:(id)d withResults:(id)results;
- (void)handlerFailedForTransfer:(id)transfer;
- (void)invalidate;
- (void)loadAllPersistedTransfers;
- (void)notifyObserversOfRemovedTransfer:(id)transfer;
- (void)notifyObserversOfUpdatedTransfer:(id)transfer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)progressEventForRecordID:(id)d withResults:(id)results;
- (void)removeTransfer:(id)transfer shouldCleanup:(BOOL)cleanup;
- (void)setHandler:(id)handler forTransfer:(id)transfer;
- (void)setTransferState:(unint64_t)state forTransfer:(id)transfer shouldNotify:(BOOL)notify shouldCleanup:(BOOL)cleanup;
- (void)transfer:(id)transfer actionTriggeredForAction:(id)action;
- (void)transferUserResponseUpdated:(id)updated;
@end

@implementation SDAirDropTransferManager

- (SDAirDropTransferManager)init
{
  v12.receiver = self;
  v12.super_class = SDAirDropTransferManager;
  v2 = [(SDXPCDaemon *)&v12 init];
  if (v2)
  {
    v3 = NSStringFromSelector("userResponse");
    v13[0] = v3;
    v4 = NSStringFromSelector("needsAction");
    v13[1] = v4;
    v5 = [NSArray arrayWithObjects:v13 count:2];
    kvoObservingKeys = v2->_kvoObservingKeys;
    v2->_kvoObservingKeys = v5;

    v7 = objc_opt_new();
    transferIdentifierToTransfer = v2->_transferIdentifierToTransfer;
    v2->_transferIdentifierToTransfer = v7;

    v9 = objc_opt_new();
    transferIdentifierToHandler = v2->_transferIdentifierToHandler;
    v2->_transferIdentifierToHandler = v9;

    [(SDAirDropTransferManager *)v2 loadAllPersistedTransfers];
  }

  return v2;
}

- (void)activate
{
  v2.receiver = self;
  v2.super_class = SDAirDropTransferManager;
  [(SDXPCDaemon *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SDAirDropTransferManager;
  [(SDXPCDaemon *)&v2 _invalidate];
}

- (void)notifyObserversOfUpdatedTransfer:(id)transfer
{
  transferCopy = transfer;
  v5 = transferCopy;
  if (transferCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C9E04;
    v6[3] = &unk_1008CF8A0;
    v7 = transferCopy;
    [(SDAirDropTransferManager *)self _enumerateRemoteObjectProxiesUsingBlock:v6];
  }
}

- (void)notifyObserversOfRemovedTransfer:(id)transfer
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C9EA8;
  v5[3] = &unk_1008CF8A0;
  v6 = [transfer copy];
  v4 = v6;
  [(SDAirDropTransferManager *)self _enumerateRemoteObjectProxiesUsingBlock:v5];
}

- (void)removeTransfer:(id)transfer shouldCleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  transferCopy = transfer;
  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [transferCopy identifier];
    v14 = 138412290;
    v15 = identifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing transfer with id %@", &v14, 0xCu);
  }

  transferIdentifierToHandler = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  identifier2 = [transferCopy identifier];
  [transferIdentifierToHandler setObject:0 forKeyedSubscript:identifier2];

  transferIdentifierToTransfer = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  identifier3 = [transferCopy identifier];
  [transferIdentifierToTransfer setObject:0 forKeyedSubscript:identifier3];

  kvoObservingKeys = [(SDAirDropTransferManager *)self kvoObservingKeys];
  [transferCopy removeObserver:self forKeyPaths:kvoObservingKeys context:off_100970518];

  [(SDAirDropTransferManager *)self notifyObserversOfRemovedTransfer:transferCopy];
  if (cleanupCopy)
  {
    [(SDAirDropTransferManager *)self cleanUpTransfer:transferCopy];
  }
}

- (void)cleanUpTransfer:(id)transfer
{
  transferCopy = transfer;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [transferCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up transfer with id %@", &v8, 0xCu);
  }

  v7 = [SDAirDropHandler transferURLForTransfer:transferCopy];
  [(SDAirDropTransferManager *)self cleanUpURL:v7];
}

- (void)askEventForRecordID:(id)d withResults:(id)results
{
  dCopy = d;
  resultsCopy = results;
  v8 = [[SFAirDropTransfer alloc] initWithIdentifier:dCopy initialInformation:resultsCopy];
  [v8 updateWithInformation:resultsCopy];
  v9 = [(SDAirDropTransferManager *)self itemTypesForTransfer:v8];
  metaData = [v8 metaData];
  [metaData setItems:v9];

  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [v8 identifier];
    metaData2 = [v8 metaData];
    items = [metaData2 items];
    v25 = 138543874;
    v26 = identifier;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = items;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Transfer: %{public}@]: New incoming transfer %@ with items: %@", &v25, 0x20u);
  }

  v15 = [SFAirDropTransferTestingSnapshot writeSnapshotForTransfer:v8 initialInfo:resultsCopy name:@"before_handler" error:0];
  transferIdentifierToTransfer = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  [transferIdentifierToTransfer setObject:v8 forKeyedSubscript:dCopy];

  v17 = [SDAirDropHandlerFactory handlerForTransfer:v8];
  kvoObservingKeys = [(SDAirDropTransferManager *)self kvoObservingKeys];
  [v8 addObserver:self forKeyPaths:kvoObservingKeys options:0 context:off_100970518];

  if (v17)
  {
    [(SDAirDropTransferManager *)self setHandler:v17 forTransfer:v8];
    metaData3 = [v8 metaData];
    if ([metaData3 canAutoAccept])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        metaData4 = [v8 metaData];
        [metaData4 setDidAutoAccept:1];

        [(SDAirDropTransferManager *)self setTransferState:1 forTransfer:v8 shouldNotify:0];
        possibleActions = [v8 possibleActions];
        firstObject = [possibleActions firstObject];
        [(SDAirDropTransferManager *)self transfer:v8 actionTriggeredForAction:firstObject];

LABEL_10:
        v24 = [SFAirDropTransferTestingSnapshot writeSnapshotForTransfer:v8 initialInfo:resultsCopy name:@"after_handler" error:0];
        goto LABEL_11;
      }
    }

    else
    {
    }

    [(SDAirDropTransferManager *)self setTransferState:1 forTransfer:v8 shouldNotify:1];
    goto LABEL_10;
  }

  [(SDAirDropTransferManager *)self failTransfer:v8 withState:9 failureReason:2];
LABEL_11:
}

- (void)progressEventForRecordID:(id)d withResults:(id)results
{
  dCopy = d;
  resultsCopy = results;
  transferIdentifierToTransfer = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v9 = [transferIdentifierToTransfer objectForKeyedSubscript:dCopy];

  if (v9)
  {
    [v9 updateWithInformation:resultsCopy];
    if ([v9 transferState] == 1)
    {
      [(SDAirDropTransferManager *)self setTransferState:2 forTransfer:v9 shouldNotify:1];
    }
  }

  else
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC388();
    }
  }
}

- (void)cancelEventForRecordID:(id)d withResults:(id)results
{
  dCopy = d;
  resultsCopy = results;
  transferIdentifierToTransfer = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v9 = [transferIdentifierToTransfer objectForKeyedSubscript:dCopy];

  if (v9)
  {
    [v9 updateWithInformation:resultsCopy];
    [(SDAirDropTransferManager *)self failTransfer:v9 withState:3 failureReason:1];
  }

  else
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC3F0();
    }
  }
}

- (void)errorEventForRecordID:(id)d withResults:(id)results
{
  dCopy = d;
  resultsCopy = results;
  transferIdentifierToTransfer = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v9 = [transferIdentifierToTransfer objectForKeyedSubscript:dCopy];

  v10 = airdrop_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      sub_1000CC458();
    }

    [v9 updateWithInformation:resultsCopy];
    [(SDAirDropTransferManager *)self failTransfer:v9 withState:9 failureReason:1];
  }

  else
  {
    if (v11)
    {
      sub_1000CC504();
    }
  }
}

- (void)finishedEventForRecordID:(id)d withResults:(id)results
{
  dCopy = d;
  resultsCopy = results;
  transferIdentifierToTransfer = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v9 = [transferIdentifierToTransfer objectForKeyedSubscript:dCopy];

  if (v9)
  {
    [v9 updateWithInformation:resultsCopy];
    [(SDAirDropTransferManager *)self setTransferState:4 forTransfer:v9 shouldNotify:1];
  }

  else
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC56C();
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  v12 = objectCopy;
  if (off_100970518 == context)
  {
    v13 = objectCopy;
    v14 = NSStringFromSelector("userResponse");
    v15 = [pathCopy isEqual:v14];

    if (v15)
    {
      [(SDAirDropTransferManager *)self transferUserResponseUpdated:v13];
    }

    else
    {
      v16 = NSStringFromSelector("needsAction");
      v17 = [pathCopy isEqual:v16];

      if (v17)
      {
        [(SDAirDropTransferManager *)self notifyObserversOfUpdatedTransfer:v13];
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SDAirDropTransferManager;
    [(SDAirDropTransferManager *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
  }
}

- (void)transferUserResponseUpdated:(id)updated
{
  updatedCopy = updated;
  userResponse = [updatedCopy userResponse];
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = SFAirDropTransferUserResponseToString();
    identifier = [updatedCopy identifier];
    *buf = 138412546;
    v32 = v7;
    v33 = 2112;
    v34 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User response: %@ for transfer with id %@", buf, 0x16u);
  }

  if (userResponse <= 1)
  {
    if (!userResponse)
    {
      goto LABEL_18;
    }

    if (userResponse == 1)
    {
      transferIdentifierToHandler = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
      identifier2 = [updatedCopy identifier];
      v11 = [transferIdentifierToHandler objectForKeyedSubscript:identifier2];

      customDestinationURL = [updatedCopy customDestinationURL];
      if (objc_opt_respondsToSelector())
      {
        shouldExtractMediaFromPhotosBundles = [v11 shouldExtractMediaFromPhotosBundles];
      }

      else
      {
        shouldExtractMediaFromPhotosBundles = 0;
      }

      delegate = [(SDAirDropTransferManager *)self delegate];
      identifier3 = [updatedCopy identifier];
      [delegate alertManager:self acceptingTransferWithRecordID:identifier3 withDestinationURL:customDestinationURL shouldExtractMediaFromPhotosBundlesForRecordID:shouldExtractMediaFromPhotosBundles];

      classroomDelegate = [(SDAirDropTransferManager *)self classroomDelegate];
      identifier4 = [updatedCopy identifier];
      [classroomDelegate alertManager:self acceptingTransferWithRecordID:identifier4 withDestinationURL:customDestinationURL shouldExtractMediaFromPhotosBundlesForRecordID:shouldExtractMediaFromPhotosBundles];

      [(SDAirDropTransferManager *)self notifyObserversOfUpdatedTransfer:updatedCopy];
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (userResponse == 2)
  {
    delegate2 = [(SDAirDropTransferManager *)self delegate];
    identifier5 = [updatedCopy identifier];
    [delegate2 alertManager:self cancelingTransferWithRecordID:identifier5 withFailureReason:{objc_msgSend(updatedCopy, "failureReason")}];

    classroomDelegate2 = [(SDAirDropTransferManager *)self classroomDelegate];
    identifier6 = [updatedCopy identifier];
    [classroomDelegate2 alertManager:self cancelingTransferWithRecordID:identifier6 withFailureReason:{objc_msgSend(updatedCopy, "failureReason")}];

    [(SDAirDropTransferManager *)self removeTransfer:updatedCopy shouldCleanup:1];
    goto LABEL_18;
  }

  if (userResponse != 3)
  {
LABEL_12:
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC5D4(v14);
    }

    goto LABEL_18;
  }

  if ([updatedCopy transferState] == 7)
  {
    [(SDAirDropTransferManager *)self setTransferState:8 forTransfer:updatedCopy shouldNotify:1 shouldCleanup:1];
  }

LABEL_18:
  metaData = [updatedCopy metaData];
  if (metaData)
  {
    v24 = metaData;
    metaData2 = [updatedCopy metaData];
    transferTypes = [metaData2 transferTypes];

    if ((transferTypes & 0x40000) != 0)
    {
      if ([updatedCopy userResponse])
      {
        v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [updatedCopy userResponse]);
        v30 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

        SFMetricsLog();
      }
    }
  }
}

- (void)transfer:(id)transfer actionTriggeredForAction:(id)action
{
  transferCopy = transfer;
  actionCopy = action;
  transferIdentifierToHandler = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  identifier = [transferCopy identifier];
  v10 = [transferIdentifierToHandler objectForKeyedSubscript:identifier];

  if (v10)
  {
    [v10 actionSelected:actionCopy];
  }

  else
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC618();
    }
  }
}

- (void)connectionEstablished:(id)established
{
  establishedCopy = established;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [establishedCopy sd_description];
    *buf = 138412290;
    v9 = sd_description;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New connection established %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CAEE0;
  v7[3] = &unk_1008CF8C8;
  v7[4] = self;
  [(SDAirDropTransferManager *)self _remoteObjectProxyForConnection:establishedCopy usingBlock:v7];
}

- (void)connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [invalidatedCopy sd_description];
    v6 = 138412290;
    v7 = sd_description;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection invalidated %@", &v6, 0xCu);
  }
}

- (void)setHandler:(id)handler forTransfer:(id)transfer
{
  handlerCopy = handler;
  transferCopy = transfer;
  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [transferCopy identifier];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v25 = identifier;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Transfer: %{public}@] Setting handler of class %@", buf, 0x16u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CB2D4;
  v22[3] = &unk_1008CF918;
  v22[4] = self;
  v12 = transferCopy;
  v23 = v12;
  [handlerCopy setUpdateTransferStateHandler:v22];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000CB39C;
  v19 = &unk_1008CF990;
  selfCopy = self;
  v21 = v12;
  v13 = v12;
  [handlerCopy setCompletionHandler:&v16];
  [handlerCopy activate];
  transferIdentifierToHandler = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  identifier2 = [v13 identifier];
  [transferIdentifierToHandler setObject:handlerCopy forKeyedSubscript:identifier2];
}

- (void)handlerFailedForTransfer:(id)transfer
{
  transferCopy = transfer;
  transferIdentifierToHandler = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  identifier = [transferCopy identifier];
  v7 = [transferIdentifierToHandler objectForKeyedSubscript:identifier];

  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC6A8(v7, transferCopy);
  }

  v9 = [[SDAirDropHandleriCloudDrive alloc] initWithTransfer:transferCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ![(SDAirDropHandleriCloudDrive *)v9 canHandleTransfer])
  {
    [(SDAirDropTransferManager *)self failTransfer:transferCopy withState:9 failureReason:3];
  }

  else
  {
    [(SDAirDropTransferManager *)self setHandler:v9 forTransfer:transferCopy];
    transferIdentifierToHandler2 = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
    identifier2 = [transferCopy identifier];
    v12 = [transferIdentifierToHandler2 objectForKeyedSubscript:identifier2];
    [v12 transferUpdated];

    [(SDAirDropTransferManager *)self notifyObserversOfUpdatedTransfer:transferCopy];
  }
}

- (void)failTransfer:(id)transfer withState:(unint64_t)state failureReason:(unint64_t)reason
{
  transferCopy = transfer;
  if (state != 3 && state != 9)
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = SFAirDropTransferStateToString();
    [v10 handleFailureInMethod:a2 object:self file:@"SDAirDropTransferManager.m" lineNumber:364 description:{@"Failing transfer with invalid state: %@", v11}];
  }

  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC74C();
  }

  [transferCopy setFailureReason:reason];
  v13 = off_1008C8CF8;
  if (reason != 2)
  {
    v13 = off_1008C8CF0;
  }

  v14 = [objc_alloc(*v13) initWithTransfer:transferCopy];
  [(SDAirDropTransferManager *)self setHandler:v14 forTransfer:transferCopy];
  [v14 setCompletionHandler:&stru_1008CF9D0];
  [(SDAirDropTransferManager *)self setTransferState:state forTransfer:transferCopy shouldNotify:1];
}

- (void)setTransferState:(unint64_t)state forTransfer:(id)transfer shouldNotify:(BOOL)notify shouldCleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  notifyCopy = notify;
  transferCopy = transfer;
  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CC7FC();
  }

  [transferCopy setTransferState:state];
  transferIdentifierToHandler = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  identifier = [transferCopy identifier];
  v14 = [transferIdentifierToHandler objectForKeyedSubscript:identifier];
  [v14 transferUpdated];

  if (notifyCopy)
  {
    [(SDAirDropTransferManager *)self notifyObserversOfUpdatedTransfer:transferCopy];
  }

  if (cleanupCopy)
  {
    [(SDAirDropTransferManager *)self removeTransfer:transferCopy shouldCleanup:1];
  }
}

- (void)cleanUpURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      path = [lCopy path];
      *buf = 138412290;
      v12 = path;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up URL %@", buf, 0xCu);
    }

    v6 = +[NSFileManager defaultManager];
    v10 = 0;
    v7 = [v6 removeItemAtURL:lCopy error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      v9 = airdrop_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000CC8D8();
      }
    }
  }
}

- (void)loadAllPersistedTransfers
{
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Loading all persisted transfers", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = +[SDAirDropHandler persistedTransfersBaseURL];
  if (v4)
  {
    v28[0] = NSURLIsDirectoryKey;
    v28[1] = NSURLIsReadableKey;
    v5 = [NSArray arrayWithObjects:v28 count:2];
    v16 = v4;
    v17 = v3;
    v6 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:v5 options:7 errorHandler:0];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v20 = 0;
          [v12 getResourceValue:&v20 forKey:NSURLIsDirectoryKey error:0];
          v13 = v20;
          v19 = 0;
          [v12 getResourceValue:&v19 forKey:NSURLIsReadableKey error:0];
          v14 = v19;
          if ([v13 BOOLValue] && objc_msgSend(v14, "BOOLValue"))
          {
            v15 = airdrop_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v26 = v12;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Receive data at %@ is not valid", buf, 0xCu);
            }

            [(SDAirDropTransferManager *)self cleanUpURL:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v9);
    }

    v4 = v16;
    v3 = v17;
  }
}

- (id)itemTypesForTransfer:(id)transfer
{
  transferCopy = transfer;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000CC120;
  v42[3] = &unk_1008CF9F8;
  v31 = objc_opt_new();
  v43 = v31;
  v4 = objc_retainBlock(v42);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = transferCopy;
  metaData = [transferCopy metaData];
  rawFiles = [metaData rawFiles];

  v7 = [rawFiles countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v10 = kSFOperationFileTypeKey;
    v11 = kSFOperationtFileSubTypeKey;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(rawFiles);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:v10];
        v15 = [v13 objectForKeyedSubscript:v11];
        (v4[2])(v4, v14, v15, 1);
      }

      v8 = [rawFiles countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [v32 completedURLs];
  v16 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v34 + 1) + 8 * j);
        if (([v20 isFileURL] & 1) == 0)
        {
          v21 = +[LSApplicationWorkspace defaultWorkspace];
          v22 = [v21 URLOverrideForURL:v20];

          v23 = +[LSApplicationWorkspace defaultWorkspace];
          v24 = [v23 applicationsAvailableForOpeningURL:v20];

          firstObject = [v24 firstObject];
          applicationIdentifier = [firstObject applicationIdentifier];

          if (applicationIdentifier)
          {
            (v4[2])(v4, applicationIdentifier, 0, 0);
          }

          else
          {
            scheme = [v22 scheme];
            (v4[2])(v4, scheme, 0, 0);
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v17);
  }

  allValues = [v31 allValues];
  v29 = [NSSet setWithArray:allValues];

  return v29;
}

- (SDAirDropAlertManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (SDAirDropAlertManagerDelegate)classroomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_classroomDelegate);

  return WeakRetained;
}

@end