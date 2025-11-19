@interface SDAirDropReceiveManager
- (NSString)description;
- (SDAirDropReceiveManager)init;
- (void)alertManager:(id)a3 cancelingTransferWithRecordID:(id)a4 withFailureReason:(unint64_t)a5;
- (void)listener:(id)a3 didReceiveError:(id)a4;
- (void)listener:(id)a3 didReceiveNewRequest:(id)a4;
- (void)networkOperation:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation SDAirDropReceiveManager

- (SDAirDropReceiveManager)init
{
  v8.receiver = self;
  v8.super_class = SDAirDropReceiveManager;
  v2 = [(SDAirDropReceiveManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    listener = v2->_listener;
    v2->_listener = 0;

    v5 = objc_opt_new();
    transferIdentifierToNetworkOperation = v3->_transferIdentifierToNetworkOperation;
    v3->_transferIdentifierToNetworkOperation = v5;
  }

  return v3;
}

- (void)start
{
  if (!self->_listener)
  {
    v3 = objc_alloc_init(SDAirDropListener);
    listener = self->_listener;
    self->_listener = v3;

    [(SDAirDropListener *)self->_listener setDelegate:self];
    [(SDAirDropListener *)self->_listener start];
    v7 = +[SDStatusMonitor sharedMonitor];
    if ([v7 enableDebugMode])
    {
      v5 = IsAppleInternalBuild();

      if (!v5)
      {
        return;
      }

      v6 = +[SDAirDropFakeTransfer sharedFakeTransfer];
      [v6 setTransferManager:self->_alertManager];

      v7 = +[SDAirDropFakeTransfer sharedFakeTransfer];
      [v7 setDebugModeEnabled:1];
    }
  }
}

- (void)stop
{
  listener = self->_listener;
  if (listener)
  {
    [(SDAirDropListener *)listener setDelegate:0];
    [(SDAirDropListener *)self->_listener stop];
    v4 = self->_listener;
    self->_listener = 0;

    v6 = +[SDStatusMonitor sharedMonitor];
    if ([v6 enableDebugMode])
    {
      v5 = IsAppleInternalBuild();

      if (!v5)
      {
        return;
      }

      v6 = +[SDAirDropFakeTransfer sharedFakeTransfer];
      [v6 setDebugModeEnabled:0];
    }
  }
}

- (void)listener:(id)a3 didReceiveNewRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 objectKey];
  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10010E240();
  }

  [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation setObject:v5 forKeyedSubscript:v6];
  [v5 setDelegate:self];
  [v5 resume];
}

- (void)listener:(id)a3 didReceiveError:(id)a4
{
  v4 = a4;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10010E2C0(v4, v5);
  }
}

- (void)networkOperation:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 objectKey];
  if (a4 == 7)
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10010E478(v10, v9, v11);
    }

    [(SDAirDropAlertManagerProtocol *)self->_alertManager progressEventForRecordID:v10 withResults:v9];
    goto LABEL_5;
  }

  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ((a4 - 1) > 0xE)
    {
      v13 = @"?";
    }

    else
    {
      v13 = *(&off_1008D0900 + a4 - 1);
    }

    v19 = 138412546;
    v20 = v13;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SDAirDropReceiveManager: Received event %@ for transfer %@", &v19, 0x16u);
  }

  if (a4 <= 7)
  {
    if (a4 <= 4)
    {
      if (a4 == 2)
      {
        [(SDAirDropAlertManagerProtocol *)self->_alertManager askEventForRecordID:v10 withResults:v9];
        goto LABEL_5;
      }

      if (a4 == 4)
      {
        [(SDAirDropAlertManagerProtocol *)self->_alertManager cancelEventForRecordID:v10 withResults:v9];
        [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation removeObjectForKey:v10];
        [v8 invalidate];
        goto LABEL_5;
      }
    }

    else if ((a4 - 5) < 2)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

  if (a4 > 9)
  {
    if (a4 != 10)
    {
      if (a4 == 13)
      {
        goto LABEL_5;
      }

LABEL_33:
      v18 = airdrop_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10010E3C4(a4, v9, v18);
      }

      goto LABEL_5;
    }

    v14 = [v9 objectForKeyedSubscript:kSFOperationErrorKey];
    v15 = [v14 code];
    v16 = [v14 domain];
    if ((![v16 isEqual:NSPOSIXErrorDomain] || v15 != 89) && (!objc_msgSend(v16, "isEqual:", NSOSStatusErrorDomain) || v15 != -128))
    {
      v17 = airdrop_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10010E338();
      }

      [(SDAirDropAlertManagerProtocol *)self->_alertManager errorEventForRecordID:v10 withResults:v9];
    }

    [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation removeObjectForKey:v10];
    [v8 invalidate];
  }

  else if (a4 != 8)
  {
    [(SDAirDropAlertManagerProtocol *)self->_alertManager finishedEventForRecordID:v10 withResults:v9];
    [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation removeObjectForKey:v10];
  }

LABEL_5:
}

- (void)alertManager:(id)a3 cancelingTransferWithRecordID:(id)a4 withFailureReason:(unint64_t)a5
{
  v7 = a4;
  v6 = [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation objectForKeyedSubscript:?];
  if (v6)
  {
    [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation removeObjectForKey:v7];
    [v6 invalidate];
  }
}

- (NSString)description
{
  listener = self->_listener;
  if (listener)
  {
    v5 = [(SDAirDropListener *)listener description];
    NSAppendPrintF();
    v3 = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end