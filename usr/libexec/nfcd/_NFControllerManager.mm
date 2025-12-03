@interface _NFControllerManager
- (BOOL)isUnifiedAccessForHome:(id)home passConfig:(id)config;
- (NFCControllerDelegate)delegate;
- (_NFControllerManager)initWithQueue:(id)queue driverWrapper:(id)wrapper;
- (void)decodeSecureElementTransaction:(id)transaction event:(id)event;
- (void)driverRSSIStatsWithTotalSamples:(unsigned int)samples avgRSSI:(unsigned int)i maxRSSI:(unsigned int)sI minRSSI:(unsigned int)sSI;
- (void)initSETransactionsStates;
- (void)log:(unsigned __int8)log msg:(id)msg;
- (void)notifyTransactionEvent:(id)event;
@end

@implementation _NFControllerManager

- (void)log:(unsigned __int8)log msg:(id)msg
{
  msgCopy = msg;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(5, "%s:%i %s", "-[_NFControllerManager log:msg:]", 67, [msgCopy UTF8String]);
  }

  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "[_NFControllerManager log:msg:]";
    v9 = 1024;
    v10 = 67;
    v11 = 2080;
    uTF8String = [msgCopy UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", buf, 0x1Cu);
  }
}

- (void)notifyTransactionEvent:(id)event
{
  eventCopy = event;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFF80;
  block[3] = &unk_100315F80;
  v9 = eventCopy;
  selfCopy = self;
  v11 = a2;
  v7 = eventCopy;
  dispatch_async(workQueue, block);
}

- (_NFControllerManager)initWithQueue:(id)queue driverWrapper:(id)wrapper
{
  queueCopy = queue;
  wrapperCopy = wrapper;
  v12.receiver = self;
  v12.super_class = _NFControllerManager;
  v9 = [(_NFControllerManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeStrong(&v10->_driverWrapper, wrapper);
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

- (BOOL)isUnifiedAccessForHome:(id)home passConfig:(id)config
{
  homeCopy = home;
  configCopy = config;
  if ([homeCopy NF_isPrefixOfHexEncodedEqualToBytes:&unk_100296F1E length:7])
  {
    v7 = 1;
  }

  else if ([homeCopy NF_isPrefixOfHexEncodedEqualToBytes:&unk_100296F25 length:9])
  {
    v8 = [configCopy objectForKeyedSubscript:@"ECP2Info"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [configCopy objectForKeyedSubscript:@"ECP2Info"];
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

- (void)decodeSecureElementTransaction:(id)transaction event:(id)event
{
  transactionCopy = transaction;
  eventCopy = event;
  workQueue = self->_workQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D3110;
  v12[3] = &unk_100315FD0;
  v12[4] = self;
  v13 = transactionCopy;
  v14 = eventCopy;
  v15 = a2;
  v10 = eventCopy;
  v11 = transactionCopy;
  dispatch_async(workQueue, v12);
}

- (void)driverRSSIStatsWithTotalSamples:(unsigned int)samples avgRSSI:(unsigned int)i maxRSSI:(unsigned int)sI minRSSI:(unsigned int)sSI
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5E68;
  block[3] = &unk_100318330;
  block[4] = self;
  samplesCopy = samples;
  iCopy = i;
  sICopy = sI;
  sSICopy = sSI;
  dispatch_async(workQueue, block);
}

- (NFCControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end