@interface SDAirDropTransferManager
- (SDAirDropAlertManagerDelegate)classroomDelegate;
- (SDAirDropAlertManagerDelegate)delegate;
- (SDAirDropTransferManager)init;
- (id)itemTypesForTransfer:(id)a3;
- (void)activate;
- (void)askEventForRecordID:(id)a3 withResults:(id)a4;
- (void)cancelEventForRecordID:(id)a3 withResults:(id)a4;
- (void)cleanUpTransfer:(id)a3;
- (void)cleanUpURL:(id)a3;
- (void)connectionEstablished:(id)a3;
- (void)connectionInvalidated:(id)a3;
- (void)errorEventForRecordID:(id)a3 withResults:(id)a4;
- (void)failTransfer:(id)a3 withState:(unint64_t)a4 failureReason:(unint64_t)a5;
- (void)finishedEventForRecordID:(id)a3 withResults:(id)a4;
- (void)handlerFailedForTransfer:(id)a3;
- (void)invalidate;
- (void)loadAllPersistedTransfers;
- (void)notifyObserversOfRemovedTransfer:(id)a3;
- (void)notifyObserversOfUpdatedTransfer:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)progressEventForRecordID:(id)a3 withResults:(id)a4;
- (void)removeTransfer:(id)a3 shouldCleanup:(BOOL)a4;
- (void)setHandler:(id)a3 forTransfer:(id)a4;
- (void)setTransferState:(unint64_t)a3 forTransfer:(id)a4 shouldNotify:(BOOL)a5 shouldCleanup:(BOOL)a6;
- (void)transfer:(id)a3 actionTriggeredForAction:(id)a4;
- (void)transferUserResponseUpdated:(id)a3;
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

- (void)notifyObserversOfUpdatedTransfer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000C9E04;
    v6[3] = &unk_1008CF8A0;
    v7 = v4;
    [(SDAirDropTransferManager *)self _enumerateRemoteObjectProxiesUsingBlock:v6];
  }
}

- (void)notifyObserversOfRemovedTransfer:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C9EA8;
  v5[3] = &unk_1008CF8A0;
  v6 = [a3 copy];
  v4 = v6;
  [(SDAirDropTransferManager *)self _enumerateRemoteObjectProxiesUsingBlock:v5];
}

- (void)removeTransfer:(id)a3 shouldCleanup:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 identifier];
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing transfer with id %@", &v14, 0xCu);
  }

  v9 = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  v10 = [v6 identifier];
  [v9 setObject:0 forKeyedSubscript:v10];

  v11 = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v12 = [v6 identifier];
  [v11 setObject:0 forKeyedSubscript:v12];

  v13 = [(SDAirDropTransferManager *)self kvoObservingKeys];
  [v6 removeObserver:self forKeyPaths:v13 context:off_100970518];

  [(SDAirDropTransferManager *)self notifyObserversOfRemovedTransfer:v6];
  if (v4)
  {
    [(SDAirDropTransferManager *)self cleanUpTransfer:v6];
  }
}

- (void)cleanUpTransfer:(id)a3
{
  v4 = a3;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up transfer with id %@", &v8, 0xCu);
  }

  v7 = [SDAirDropHandler transferURLForTransfer:v4];
  [(SDAirDropTransferManager *)self cleanUpURL:v7];
}

- (void)askEventForRecordID:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SFAirDropTransfer alloc] initWithIdentifier:v6 initialInformation:v7];
  [v8 updateWithInformation:v7];
  v9 = [(SDAirDropTransferManager *)self itemTypesForTransfer:v8];
  v10 = [v8 metaData];
  [v10 setItems:v9];

  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 identifier];
    v13 = [v8 metaData];
    v14 = [v13 items];
    v25 = 138543874;
    v26 = v12;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Transfer: %{public}@]: New incoming transfer %@ with items: %@", &v25, 0x20u);
  }

  v15 = [SFAirDropTransferTestingSnapshot writeSnapshotForTransfer:v8 initialInfo:v7 name:@"before_handler" error:0];
  v16 = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  [v16 setObject:v8 forKeyedSubscript:v6];

  v17 = [SDAirDropHandlerFactory handlerForTransfer:v8];
  v18 = [(SDAirDropTransferManager *)self kvoObservingKeys];
  [v8 addObserver:self forKeyPaths:v18 options:0 context:off_100970518];

  if (v17)
  {
    [(SDAirDropTransferManager *)self setHandler:v17 forTransfer:v8];
    v19 = [v8 metaData];
    if ([v19 canAutoAccept])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v21 = [v8 metaData];
        [v21 setDidAutoAccept:1];

        [(SDAirDropTransferManager *)self setTransferState:1 forTransfer:v8 shouldNotify:0];
        v22 = [v8 possibleActions];
        v23 = [v22 firstObject];
        [(SDAirDropTransferManager *)self transfer:v8 actionTriggeredForAction:v23];

LABEL_10:
        v24 = [SFAirDropTransferTestingSnapshot writeSnapshotForTransfer:v8 initialInfo:v7 name:@"after_handler" error:0];
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

- (void)progressEventForRecordID:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    [v9 updateWithInformation:v7];
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

- (void)cancelEventForRecordID:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    [v9 updateWithInformation:v7];
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

- (void)errorEventForRecordID:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = airdrop_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      sub_1000CC458();
    }

    [v9 updateWithInformation:v7];
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

- (void)finishedEventForRecordID:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAirDropTransferManager *)self transferIdentifierToTransfer];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    [v9 updateWithInformation:v7];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (off_100970518 == a6)
  {
    v13 = v11;
    v14 = NSStringFromSelector("userResponse");
    v15 = [v10 isEqual:v14];

    if (v15)
    {
      [(SDAirDropTransferManager *)self transferUserResponseUpdated:v13];
    }

    else
    {
      v16 = NSStringFromSelector("needsAction");
      v17 = [v10 isEqual:v16];

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
    [(SDAirDropTransferManager *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }
}

- (void)transferUserResponseUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 userResponse];
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = SFAirDropTransferUserResponseToString();
    v8 = [v4 identifier];
    *buf = 138412546;
    v32 = v7;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User response: %@ for transfer with id %@", buf, 0x16u);
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_18;
    }

    if (v5 == 1)
    {
      v9 = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
      v10 = [v4 identifier];
      v11 = [v9 objectForKeyedSubscript:v10];

      v12 = [v4 customDestinationURL];
      if (objc_opt_respondsToSelector())
      {
        v13 = [v11 shouldExtractMediaFromPhotosBundles];
      }

      else
      {
        v13 = 0;
      }

      v19 = [(SDAirDropTransferManager *)self delegate];
      v20 = [v4 identifier];
      [v19 alertManager:self acceptingTransferWithRecordID:v20 withDestinationURL:v12 shouldExtractMediaFromPhotosBundlesForRecordID:v13];

      v21 = [(SDAirDropTransferManager *)self classroomDelegate];
      v22 = [v4 identifier];
      [v21 alertManager:self acceptingTransferWithRecordID:v22 withDestinationURL:v12 shouldExtractMediaFromPhotosBundlesForRecordID:v13];

      [(SDAirDropTransferManager *)self notifyObserversOfUpdatedTransfer:v4];
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (v5 == 2)
  {
    v15 = [(SDAirDropTransferManager *)self delegate];
    v16 = [v4 identifier];
    [v15 alertManager:self cancelingTransferWithRecordID:v16 withFailureReason:{objc_msgSend(v4, "failureReason")}];

    v17 = [(SDAirDropTransferManager *)self classroomDelegate];
    v18 = [v4 identifier];
    [v17 alertManager:self cancelingTransferWithRecordID:v18 withFailureReason:{objc_msgSend(v4, "failureReason")}];

    [(SDAirDropTransferManager *)self removeTransfer:v4 shouldCleanup:1];
    goto LABEL_18;
  }

  if (v5 != 3)
  {
LABEL_12:
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC5D4(v14);
    }

    goto LABEL_18;
  }

  if ([v4 transferState] == 7)
  {
    [(SDAirDropTransferManager *)self setTransferState:8 forTransfer:v4 shouldNotify:1 shouldCleanup:1];
  }

LABEL_18:
  v23 = [v4 metaData];
  if (v23)
  {
    v24 = v23;
    v25 = [v4 metaData];
    v26 = [v25 transferTypes];

    if ((v26 & 0x40000) != 0)
    {
      if ([v4 userResponse])
      {
        v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 userResponse]);
        v30 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];

        SFMetricsLog();
      }
    }
  }
}

- (void)transfer:(id)a3 actionTriggeredForAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  v9 = [v6 identifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    [v10 actionSelected:v7];
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

- (void)connectionEstablished:(id)a3
{
  v4 = a3;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sd_description];
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New connection established %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CAEE0;
  v7[3] = &unk_1008CF8C8;
  v7[4] = self;
  [(SDAirDropTransferManager *)self _remoteObjectProxyForConnection:v4 usingBlock:v7];
}

- (void)connectionInvalidated:(id)a3
{
  v3 = a3;
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 sd_description];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection invalidated %@", &v6, 0xCu);
  }
}

- (void)setHandler:(id)a3 forTransfer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 identifier];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Transfer: %{public}@] Setting handler of class %@", buf, 0x16u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CB2D4;
  v22[3] = &unk_1008CF918;
  v22[4] = self;
  v12 = v7;
  v23 = v12;
  [v6 setUpdateTransferStateHandler:v22];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000CB39C;
  v19 = &unk_1008CF990;
  v20 = self;
  v21 = v12;
  v13 = v12;
  [v6 setCompletionHandler:&v16];
  [v6 activate];
  v14 = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  v15 = [v13 identifier];
  [v14 setObject:v6 forKeyedSubscript:v15];
}

- (void)handlerFailedForTransfer:(id)a3
{
  v4 = a3;
  v5 = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC6A8(v7, v4);
  }

  v9 = [[SDAirDropHandleriCloudDrive alloc] initWithTransfer:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ![(SDAirDropHandleriCloudDrive *)v9 canHandleTransfer])
  {
    [(SDAirDropTransferManager *)self failTransfer:v4 withState:9 failureReason:3];
  }

  else
  {
    [(SDAirDropTransferManager *)self setHandler:v9 forTransfer:v4];
    v10 = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
    v11 = [v4 identifier];
    v12 = [v10 objectForKeyedSubscript:v11];
    [v12 transferUpdated];

    [(SDAirDropTransferManager *)self notifyObserversOfUpdatedTransfer:v4];
  }
}

- (void)failTransfer:(id)a3 withState:(unint64_t)a4 failureReason:(unint64_t)a5
{
  v9 = a3;
  if (a4 != 3 && a4 != 9)
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

  [v9 setFailureReason:a5];
  v13 = off_1008C8CF8;
  if (a5 != 2)
  {
    v13 = off_1008C8CF0;
  }

  v14 = [objc_alloc(*v13) initWithTransfer:v9];
  [(SDAirDropTransferManager *)self setHandler:v14 forTransfer:v9];
  [v14 setCompletionHandler:&stru_1008CF9D0];
  [(SDAirDropTransferManager *)self setTransferState:a4 forTransfer:v9 shouldNotify:1];
}

- (void)setTransferState:(unint64_t)a3 forTransfer:(id)a4 shouldNotify:(BOOL)a5 shouldCleanup:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CC7FC();
  }

  [v10 setTransferState:a3];
  v12 = [(SDAirDropTransferManager *)self transferIdentifierToHandler];
  v13 = [v10 identifier];
  v14 = [v12 objectForKeyedSubscript:v13];
  [v14 transferUpdated];

  if (v7)
  {
    [(SDAirDropTransferManager *)self notifyObserversOfUpdatedTransfer:v10];
  }

  if (v6)
  {
    [(SDAirDropTransferManager *)self removeTransfer:v10 shouldCleanup:1];
  }
}

- (void)cleanUpURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 path];
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up URL %@", buf, 0xCu);
    }

    v6 = +[NSFileManager defaultManager];
    v10 = 0;
    v7 = [v6 removeItemAtURL:v3 error:&v10];
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

- (id)itemTypesForTransfer:(id)a3
{
  v3 = a3;
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
  v32 = v3;
  v5 = [v3 metaData];
  v6 = [v5 rawFiles];

  v7 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
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
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:v10];
        v15 = [v13 objectForKeyedSubscript:v11];
        (v4[2])(v4, v14, v15, 1);
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
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

          v25 = [v24 firstObject];
          v26 = [v25 applicationIdentifier];

          if (v26)
          {
            (v4[2])(v4, v26, 0, 0);
          }

          else
          {
            v27 = [v22 scheme];
            (v4[2])(v4, v27, 0, 0);
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v17);
  }

  v28 = [v31 allValues];
  v29 = [NSSet setWithArray:v28];

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