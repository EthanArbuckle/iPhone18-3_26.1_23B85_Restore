@interface _NFControllerManager
- (BOOL)isUnifiedAccessForHome:(id)a3 passConfig:(id)a4;
- (NFCControllerDelegate)delegate;
- (_NFControllerManager)initWithQueue:(id)a3 driverWrapper:(id)a4;
- (void)decodeSecureElementTransaction:(id)a3 event:(id)a4;
- (void)driverRSSIStatsWithTotalSamples:(unsigned int)a3 avgRSSI:(unsigned int)a4 maxRSSI:(unsigned int)a5 minRSSI:(unsigned int)a6;
- (void)initSETransactionsStates;
- (void)log:(unsigned __int8)a3 msg:(id)a4;
- (void)notifyTransactionEvent:(id)a3;
@end

@implementation _NFControllerManager

- (void)log:(unsigned __int8)a3 msg:(id)a4
{
  v4 = a4;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(5, "%s:%i %s", "-[_NFControllerManager log:msg:]", 67, [v4 UTF8String]);
  }

  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[_NFControllerManager log:msg:]";
    v9 = 1024;
    v10 = 67;
    v11 = 2080;
    v12 = [v4 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", buf, 0x1Cu);
  }
}

- (void)notifyTransactionEvent:(id)a3
{
  v5 = a3;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFF80;
  block[3] = &unk_100315F80;
  v9 = v5;
  v10 = self;
  v11 = a2;
  v7 = v5;
  dispatch_async(workQueue, block);
}

- (_NFControllerManager)initWithQueue:(id)a3 driverWrapper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _NFControllerManager;
  v9 = [(_NFControllerManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, a3);
    objc_storeStrong(&v10->_driverWrapper, a4);
    [AppletTranslator initLibraryWithDelegate:v10];
  }

  return v10;
}

- (void)initSETransactionsStates
{
  driverWrapper = self->_driverWrapper;
  if (driverWrapper)
  {
    driverWrapper->_seDelegate = self;
  }
}

- (BOOL)isUnifiedAccessForHome:(id)a3 passConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 NF_isPrefixOfHexEncodedEqualToBytes:&unk_100296F1E length:7])
  {
    v7 = 1;
  }

  else if ([v5 NF_isPrefixOfHexEncodedEqualToBytes:&unk_100296F25 length:9])
  {
    v8 = [v6 objectForKeyedSubscript:@"ECP2Info"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v6 objectForKeyedSubscript:@"ECP2Info"];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:@"TCIs"];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          v19 = [NSData alloc];
          v20 = [v19 initWithBytes:&unk_100296F2E length:{3, v22}];
          LOBYTE(v18) = [v18 isEqual:v20];

          if (v18)
          {
            v7 = 1;
            goto LABEL_21;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_21:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)decodeSecureElementTransaction:(id)a3 event:(id)a4
{
  v7 = a3;
  v8 = a4;
  workQueue = self->_workQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D3110;
  v12[3] = &unk_100315FD0;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(workQueue, v12);
}

- (void)driverRSSIStatsWithTotalSamples:(unsigned int)a3 avgRSSI:(unsigned int)a4 maxRSSI:(unsigned int)a5 minRSSI:(unsigned int)a6
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5E68;
  block[3] = &unk_100318330;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  dispatch_async(workQueue, block);
}

- (NFCControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end