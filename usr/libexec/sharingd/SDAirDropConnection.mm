@interface SDAirDropConnection
+ (id)disambiguatedModelName;
+ (id)fileInfoExpectedClassForKeyMap;
+ (id)validatedFileInfo:(id)info;
+ (id)validatedFilesArray:(id)array;
+ (id)validatedItemsArray:(id)array;
- (BOOL)accept;
- (BOOL)allowAskRequestFromPerson:(__SFNode *)person;
- (BOOL)oneHundredContinue:(_CFHTTPServerRequest *)continue;
- (BOOL)senderInfoAvailable;
- (BOOL)senderIsBlocked;
- (BOOL)senderIsMe;
- (BOOL)senderIsTrusted:(id)trusted;
- (BOOL)startReceivingBody:(_CFHTTPServerRequest *)body error:(id *)error;
- (BOOL)startReceivingFile:(_CFHTTPServerRequest *)file error:(id *)error;
- (BOOL)thereIsEnoughFreeSpace;
- (BOOL)transferContainsPhotosAssetBundles;
- (BOOL)transferIsOverPrebufferLimit;
- (SDAirDropConnection)initWithConnection:(_CFHTTPServerConnection *)connection;
- (SDAirDropConnectionDelegate)delegate;
- (__SFNode)createPersonForAskRequest;
- (double)getTransferRate;
- (double)getTransferSize;
- (id)compressionType;
- (id)whereFromInfo;
- (int64_t)getStatusCode:(_CFHTTPServerResponse *)code;
- (void)addObservers;
- (void)adjustPropertiesForAutoAcceptSenderIsMe:(BOOL)me;
- (void)adjustPropertiesForPhotosBundles;
- (void)cancelAndDecline;
- (void)convertURLStringsToURLs;
- (void)dealloc;
- (void)didCloseConnection;
- (void)didFailToSendResponse:(_CFHTTPServerResponse *)response;
- (void)didReceiveError:(__CFError *)error;
- (void)didReceiveRequest:(_CFHTTPServerRequest *)request;
- (void)didSendResponse:(_CFHTTPServerResponse *)response forRequest:(_CFHTTPServerRequest *)request;
- (void)enqueueBadResponseForRequest:(_CFHTTPServerRequest *)request;
- (void)enqueueResponse:(_CFHTTPServerRequest *)response code:(int64_t)code body:(__CFData *)body;
- (void)fileZipper:(id)zipper event:(int64_t)event withProperty:(void *)property;
- (void)finishOperation;
- (void)handleAskRequest;
- (void)handleClosedConnection;
- (void)handleDiscoverRequest;
- (void)handleReadStreamEvent:(__CFReadStream *)event event:(unint64_t)a4;
- (void)handleTerminalCallBack;
- (void)logSenderIsBlocked;
- (void)makeDestinationDirectory;
- (void)notifyClient:(int64_t)client withResults:(id)results;
- (void)notifyClientForEvent:(int64_t)event;
- (void)notifyClientOfBytesCopied:(id)copied timeRemaining:(id)remaining;
- (void)parseAskRequest;
- (void)parseDiscoverRequest;
- (void)processRequest;
- (void)releaseIdleSleepAssertion;
- (void)removeObservers;
- (void)schedule;
- (void)sendAskResponse:(int64_t)response;
- (void)sendDiscoverResponse:(int64_t)response forKnownAlias:(id)alias;
- (void)sendUploadResponse:(int64_t)response;
- (void)setCombinedFileURLsAndItems:(id)items;
- (void)setProperty:(void *)property forKey:(__CFString *)key;
- (void)silentlyCancelRequest;
- (void)silentlyCancelRequestOnMainThread;
- (void)start;
- (void)stop;
- (void)storeArrayValue:(__CFDictionary *)value forKey:(__CFString *)key;
- (void)storeBooleanValue:(__CFDictionary *)value forKey:(__CFString *)key;
- (void)storeDataValue:(__CFDictionary *)value forKey:(__CFString *)key;
- (void)storeIconValue:(__CFDictionary *)value forKey:(__CFString *)key;
- (void)storeNumberValue:(__CFDictionary *)value forKey:(__CFString *)key;
- (void)storeRequestValue:(_CFHTTPServerRequest *)value forKey:(__CFString *)key convertToNumber:(BOOL)number;
- (void)storeStringValue:(__CFDictionary *)value forKey:(__CFString *)key;
- (void)systemWillSleep:(id)sleep;
- (void)wirelessPowerChanged:(id)changed;
@end

@implementation SDAirDropConnection

- (SDAirDropConnection)initWithConnection:(_CFHTTPServerConnection *)connection
{
  v21.receiver = self;
  v21.super_class = SDAirDropConnection;
  v4 = [(SDAirDropConnection *)&v21 init];
  v5 = v4;
  if (v4)
  {
    zipper = v4->_zipper;
    v4->_zipper = 0;

    v5->_person = 0;
    v5->_startTime = 0.0;
    progress = v5->_progress;
    v5->_progress = 0;

    *&v5->_contactsOnly = 0;
    v5->_askRequest = 0;
    v5->_readStream = 0;
    *&v5->_discover = 0;
    *&v5->_connectionClosed = 0;
    destination = v5->_destination;
    v5->_destination = 0;

    v5->_clientTrust = 0;
    v5->_requestBuffer = 0;
    v5->_uploadRequest = 0;
    v5->_discoverRequest = 0;
    objc_storeStrong(&v5->_queue, &_dispatch_main_q);
    v9 = objc_opt_new();
    requestData = v5->_requestData;
    v5->_requestData = v9;

    v11 = objc_opt_new();
    properties = v5->_properties;
    v5->_properties = v11;

    v5->_powerAssertionID = 0;
    v13 = +[SDStatusMonitor sharedMonitor];
    monitor = v5->_monitor;
    v5->_monitor = v13;

    v5->_lastEvent = 1;
    v15 = dispatch_semaphore_create(0);
    askSemaphore = v5->_askSemaphore;
    v5->_askSemaphore = v15;

    v5->_connection = CFRetain(connection);
    v17 = +[PFMediaCapabilities capabilitiesForCurrentDevice];
    opaqueRepresentation = [v17 opaqueRepresentation];
    mediaCapabilities = v5->_mediaCapabilities;
    v5->_mediaCapabilities = opaqueRepresentation;

    [(SDAirDropConnection *)v5 addObservers];
  }

  return v5;
}

- (void)dealloc
{
  [(SDAirDropConnection *)self stop];
  [(SDAirDropConnection *)self removeObservers];
  person = self->_person;
  if (person)
  {
    CFRelease(person);
  }

  requestBuffer = self->_requestBuffer;
  if (requestBuffer)
  {
    free(requestBuffer);
  }

  clientTrust = self->_clientTrust;
  if (clientTrust)
  {
    CFRelease(clientTrust);
  }

  v6 = self->_progress;
  [(NSProgress *)v6 setCancellationHandler:0];
  v7 = sub_1001F0530(2.0);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100206270;
  block[3] = &unk_1008CDEA0;
  v12 = v6;
  v9 = v6;
  dispatch_after(v7, queue, block);

  v10.receiver = self;
  v10.super_class = SDAirDropConnection;
  [(SDAirDropConnection *)&v10 dealloc];
}

- (void)didCloseConnection
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002062EC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)systemWillSleep:(id)sleep
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System will sleep, stopping AirDrop connection.", v6, 2u);
  }

  [(SDAirDropConnection *)self stop];
  v5 = sub_100092BE0(-8, 0);
  [(NSMutableDictionary *)self->_properties setObject:v5 forKeyedSubscript:kSFOperationErrorKey];
  [(SDAirDropConnection *)self notifyClientForEvent:10];
}

- (void)wirelessPowerChanged:(id)changed
{
  if (![(SDStatusMonitor *)self->_monitor wirelessEnabled])
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WiFi is disabled, stopping AirDrop connection.", v6, 2u);
    }

    [(SDAirDropConnection *)self stop];
    v5 = sub_100092BE0(-7, 0);
    [(NSMutableDictionary *)self->_properties setObject:v5 forKeyedSubscript:kSFOperationErrorKey];
    [(SDAirDropConnection *)self notifyClientForEvent:10];
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"wirelessPowerChanged:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)handleTerminalCallBack
{
  if (self->_stopDeferred)
  {
    block[5] = v2;
    block[6] = v3;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002065B8;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)notifyClient:(int64_t)client withResults:(id)results
{
  resultsCopy = results;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    self->_lastEvent = client;
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 airDropConnection:self event:client withResults:resultsCopy];
  }
}

- (double)getTransferRate
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationTotalBytesKey];
  v4 = v3;
  if (v3)
  {
    longLongValue = [v3 longLongValue];
    v6 = longLongValue / (CFAbsoluteTimeGetCurrent() - self->_startTime);
  }

  else
  {
    v6 = -1.0;
  }

  return v6;
}

- (double)getTransferSize
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationTotalBytesKey];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)notifyClientForEvent:(int64_t)event
{
  if (event != 7)
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ((event - 1) > 0xE)
      {
        v6 = @"?";
      }

      else
      {
        v6 = *(&off_1008D4340 + event - 1);
      }

      *buf = 138412290;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SDAirDropConnection event: %@", buf, 0xCu);
    }
  }

  lastEvent = self->_lastEvent;
  v8 = lastEvent > 0xA;
  v9 = (1 << lastEvent) & 0x610;
  if (v8 || v9 == 0)
  {
    if (event > 6)
    {
      switch(event)
      {
        case 7:
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100206CDC;
          v32[3] = &unk_1008CF278;
          v32[4] = self;
          [(SDAirDropConnection *)self performBlockForAllProgresses:v32];
          v11 = [(NSMutableDictionary *)self->_properties copy];
          selfCopy4 = self;
          v13 = 7;
          goto LABEL_33;
        case 9:
          if (!self->_discover)
          {
            v24 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderModelNameKey];
            [(SDAirDropConnection *)self getTransferRate];
            v26 = v25;
            [(SDAirDropConnection *)self getTransferSize];
            sub_100085D2C(0, v24, 0, [(SDStatusMonitor *)self->_monitor discoverableLevel], 0, &__NSDictionary0__struct, v26, v27);
          }

          v28 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationItemsKey];
          v11 = v28;
          if (v28)
          {
            sub_10008644C(0, [v28 count]);
          }

          [(SDAirDropConnection *)self performBlockForAllProgresses:&stru_1008D4248];
          v29 = [(NSMutableDictionary *)self->_properties copy];
          [(SDAirDropConnection *)self notifyClient:9 withResults:v29];

          goto LABEL_34;
        case 10:
          v14 = kSFOperationErrorKey;
          v15 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationErrorKey];

          if (!self->_discover)
          {
            v16 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderModelNameKey];
            [(SDAirDropConnection *)self getTransferSize];
            sub_1000860D4(0, v16, 0, v15, [(SDStatusMonitor *)self->_monitor discoverableLevel], 0, &__NSDictionary0__struct, v17);
          }

          v18 = airdrop_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10020CBBC();
          }

          v19 = kCFErrorDomainSFOperation;
          Domain = CFErrorGetDomain(v15);
          if (CFEqual(v19, Domain))
          {
            v21 = [(NSMutableDictionary *)self->_properties copy];
            [(SDAirDropConnection *)self notifyClient:10 withResults:v21];
          }

          else
          {
            v21 = sub_100092BE0(-1, v15);
            v30 = [(NSMutableDictionary *)self->_properties mutableCopy];
            [v30 setObject:v21 forKeyedSubscript:v14];
            [(SDAirDropConnection *)self notifyClient:10 withResults:v30];
          }

          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100206DE4;
          v31[3] = &unk_1008CF278;
          v31[4] = self;
          [(SDAirDropConnection *)self performBlockForAllProgresses:v31];
          return;
      }
    }

    else
    {
      switch(event)
      {
        case 2:
          if (!self->_queueSuspended)
          {
            self->_queueSuspended = 1;
            v22 = sub_10008F9A4();
            dispatch_suspend(v22);

            sub_10008FD38(self->_properties, self);
          }

          v11 = [(NSMutableDictionary *)self->_properties copy];
          selfCopy4 = self;
          v13 = 2;
          goto LABEL_33;
        case 4:
          [(SDAirDropConnection *)self performBlockForAllProgresses:&stru_1008D4268];
          v11 = [(NSMutableDictionary *)self->_properties copy];
          selfCopy4 = self;
          v13 = 4;
          goto LABEL_33;
        case 5:
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_100206C50;
          v33[3] = &unk_1008CF278;
          v33[4] = self;
          [(SDAirDropConnection *)self performBlockForAllProgresses:v33];
          v11 = [(NSMutableDictionary *)self->_properties copy];
          selfCopy4 = self;
          v13 = 5;
LABEL_33:
          [(SDAirDropConnection *)selfCopy4 notifyClient:v13 withResults:v11];
LABEL_34:

          return;
      }
    }

    v23 = [(NSMutableDictionary *)self->_properties copy];
    [(SDAirDropConnection *)self notifyClient:event withResults:v23];
  }
}

- (void)didReceiveError:(__CFError *)error
{
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10020CC2C();
  }

  [(SDAirDropConnection *)self handleTerminalCallBack];
  if ([(SDAirDropConnection *)self senderInfoAvailable])
  {
    [(NSMutableDictionary *)self->_properties setObject:error forKeyedSubscript:kSFOperationErrorKey];
    [(SDAirDropConnection *)self notifyClientForEvent:10];
  }

  else
  {
    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10020CC9C();
    }

    [(SDAirDropConnection *)self silentlyCancelRequest];
  }
}

- (void)setProperty:(void *)property forKey:(__CFString *)key
{
  properties = self->_properties;
  if (property)
  {
    CFDictionarySetValue(properties, key, property);
  }

  else
  {
    CFDictionaryRemoveValue(properties, key);
  }
}

+ (id)fileInfoExpectedClassForKeyMap
{
  if (qword_10098A2A0 != -1)
  {
    sub_10020CCD8();
  }

  v3 = qword_10098A2A8;

  return v3;
}

+ (id)validatedFileInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v4 = +[SDAirDropConnection fileInfoExpectedClassForKeyMap];
  v5 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [v4 allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        [v4 objectForKeyedSubscript:v11];
        v12 = [infoCopy objectForKeyedSubscript:v11];
        if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = airdrop_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_10020CCEC(v12, v11, v16);
          }

          goto LABEL_20;
        }

        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v5 objectForKeyedSubscript:kSFOperationFileBomPathKey];
  allKeys = v13;
  if (v13 && (sub_100092DF4(v13) & 1) == 0)
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10020CD9C();
    }

    goto LABEL_20;
  }

  v14 = [v5 objectForKeyedSubscript:kSFOperationFileNameKey];
  v12 = v14;
  if (v14 && (sub_100092EBC(v14) & 1) == 0)
  {
    v18 = airdrop_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10020CD9C();
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v15 = [NSDictionary dictionaryWithDictionary:v5];
LABEL_21:

LABEL_22:

  return v15;
}

+ (id)validatedFilesArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v21 = objc_opt_class();
    v4 = [NSArray arrayWithObjects:&v21 count:1];
    v5 = [NSSet setWithArray:v4];

    if (NSArrayValidateClasses())
    {
      v6 = +[NSMutableArray array];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = arrayCopy;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [SDAirDropConnection validatedFileInfo:*(*(&v16 + 1) + 8 * i), v16];
            if (!v12)
            {

              goto LABEL_16;
            }

            v13 = v12;
            [v6 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v6 = v6;
      v14 = v6;
    }

    else
    {
      v6 = airdrop_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10020CE10();
      }

LABEL_16:
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)validatedItemsArray:(id)array
{
  if (array)
  {
    arrayCopy = array;
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v9 count:2];
    v5 = [NSSet setWithArray:v4];

    if (NSArrayValidateClasses())
    {
      v6 = arrayCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)storeArrayValue:(__CFDictionary *)value forKey:(__CFString *)key
{
  Value = CFDictionaryGetValue(value, key);
  if (Value)
  {
    v7 = Value;
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(v7))
    {
      v9 = airdrop_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10020CE4C();
      }

      goto LABEL_20;
    }

    v9 = v7;
    if (kSFOperationFilesKey == key || key && kSFOperationFilesKey && CFEqual(key, kSFOperationFilesKey))
    {
      v10 = [SDAirDropConnection validatedFilesArray:v9];
    }

    else
    {
      if (kSFOperationItemsKey != key && (!key || !kSFOperationItemsKey || !CFEqual(key, kSFOperationItemsKey)))
      {
        v11 = airdrop_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10020CEBC();
        }

        goto LABEL_19;
      }

      v10 = [SDAirDropConnection validatedItemsArray:v9];
    }

    v11 = v10;
    [(SDAirDropConnection *)self setProperty:v10 forKey:key];
LABEL_19:

LABEL_20:
    return;
  }

  [(SDAirDropConnection *)self setProperty:0 forKey:key];
}

- (void)storeRequestValue:(_CFHTTPServerRequest *)value forKey:(__CFString *)key convertToNumber:(BOOL)number
{
  numberCopy = number;
  v8 = _CFHTTPServerRequestCopyProperty();
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v11 = CFURLCreateStringByReplacingPercentEscapes(0, v9, &stru_1008EFBD0);
      if (v11)
      {
        v12 = v11;
        if (numberCopy)
        {
          v13 = sub_1001F06B4(0, v9);
          if (v13)
          {
            v14 = v13;
            CFDictionarySetValue(self->_properties, key, v13);
            CFRelease(v14);
          }
        }

        else
        {
          CFDictionarySetValue(self->_properties, key, v11);
        }

        CFRelease(v12);
        goto LABEL_17;
      }

      v16 = airdrop_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10020CF68();
      }
    }

    else
    {
      v16 = airdrop_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10020CF2C();
      }
    }

LABEL_17:
    CFRelease(v9);
    return;
  }

  v15 = airdrop_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10020CFA4();
  }
}

- (void)storeDataValue:(__CFDictionary *)value forKey:(__CFString *)key
{
  Value = CFDictionaryGetValue(value, key);
  if (Value && (TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10020CFE0();
    }
  }

  else
  {

    [(SDAirDropConnection *)self setProperty:Value forKey:key];
  }
}

- (void)storeStringValue:(__CFDictionary *)value forKey:(__CFString *)key
{
  Value = CFDictionaryGetValue(value, key);
  if (Value && (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10020D050();
    }
  }

  else
  {

    [(SDAirDropConnection *)self setProperty:Value forKey:key];
  }
}

- (void)storeNumberValue:(__CFDictionary *)value forKey:(__CFString *)key
{
  Value = CFDictionaryGetValue(value, key);
  if (Value && (TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10020D0C0();
    }
  }

  else
  {

    [(SDAirDropConnection *)self setProperty:Value forKey:key];
  }
}

- (void)storeBooleanValue:(__CFDictionary *)value forKey:(__CFString *)key
{
  Value = CFDictionaryGetValue(value, key);
  if (Value && (TypeID = CFBooleanGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10020D130();
    }
  }

  else
  {

    [(SDAirDropConnection *)self setProperty:Value forKey:key];
  }
}

- (void)storeIconValue:(__CFDictionary *)value forKey:(__CFString *)key
{
  Value = CFDictionaryGetValue(value, key);
  if (!Value)
  {
    return;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFDataGetTypeID())
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10020D1A0();
    }

    goto LABEL_11;
  }

  v9 = sub_100117BCC(v7);
  if (!v9)
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10020D1DC();
    }

LABEL_11:

    return;
  }

  v10 = v9;
  [(NSMutableDictionary *)self->_properties setObject:v9 forKeyedSubscript:key];

  CFRelease(v10);
}

- (void)sendDiscoverResponse:(int64_t)response forKnownAlias:(id)alias
{
  aliasCopy = alias;
  if (self->_discoverRequest)
  {
    ResponseMessage = _CFHTTPServerRequestCreateResponseMessage();
    CFHTTPMessageSetHeaderFieldValue(ResponseMessage, @"Connection", @"close");
    if (response != 200)
    {
      v18 = airdrop_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        responseCopy = response;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Responding to Discover request with code %ld", buf, 0xCu);
      }

      discoverRequest = self->_discoverRequest;
      v20 = _CFHTTPServerResponseCreateWithData();
      goto LABEL_27;
    }

    v8 = objc_opt_new();
    if (aliasCopy)
    {
      disambiguatedModelName = [objc_opt_class() disambiguatedModelName];
      someComputerName = [(SDStatusMonitor *)self->_monitor someComputerName];
      myAppleIDValidationRecord = [(SDStatusMonitor *)self->_monitor myAppleIDValidationRecord];
      v12 = [myAppleIDValidationRecord objectForKeyedSubscript:@"AppleIDAccountValidationRecordData"];
      v13 = +[SDNearbyAgent sharedNearbyAgent];
      idSelfIdentity = [v13 idSelfIdentity];

      [v8 setObject:disambiguatedModelName forKeyedSubscript:kSFOperationReceiverModelNameKey];
      [v8 setObject:v12 forKeyedSubscript:kSFOperationReceiverRecordDataKey];
      [v8 setObject:someComputerName forKeyedSubscript:kSFOperationReceiverComputerNameKey];
      deviceIRKData = [idSelfIdentity deviceIRKData];
      [v8 setObject:deviceIRKData forKeyedSubscript:kSFOperationReceiverDeviceIRKDataKey];

      edPKData = [idSelfIdentity edPKData];
      [v8 setObject:edPKData forKeyedSubscript:kSFOperationReceiverEdPKDataKey];

      idsDeviceID = [idSelfIdentity idsDeviceID];
      [v8 setObject:idsDeviceID forKeyedSubscript:kSFOperationReceiverIDSDeviceIDKey];

      [v8 setObject:aliasCopy forKeyedSubscript:kSFOperationSendersKnownAliasKey];
    }

    else
    {
      if (self->_contactsOnly)
      {
LABEL_11:
        [v8 setObject:self->_mediaCapabilities forKeyedSubscript:kSFOperationReceiverMediaCapabilitiesKey];
        error = 0;
        enableXML = [(SDStatusMonitor *)self->_monitor enableXML];
        if (enableXML)
        {
          v22 = kCFPropertyListXMLFormat_v1_0;
        }

        else
        {
          v22 = kCFPropertyListBinaryFormat_v1_0;
        }

        v23 = off_1008D3E78;
        if (!enableXML)
        {
          v23 = off_1008D3E70;
        }

        CFHTTPMessageSetHeaderFieldValue(ResponseMessage, @"Content-Type", *v23);
        v24 = CFPropertyListCreateData(0, v8, v22, 0, &error);
        if (!v24)
        {
          v25 = airdrop_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10020D218(&error);
          }

          CFRelease(error);
        }

        v26 = airdrop_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = "known";
          if (!aliasCopy)
          {
            v27 = "unknown";
          }

          *buf = 136315138;
          responseCopy = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Responding to Discover request from %s person", buf, 0xCu);
        }

        v28 = self->_discoverRequest;
        v20 = _CFHTTPServerResponseCreateWithData();
        if (v24)
        {
          CFRelease(v24);
        }

LABEL_27:
        _CFHTTPServerResponseEnqueue();
        CFRelease(self->_discoverRequest);
        CFRelease(v20);
        CFRelease(ResponseMessage);
        self->_discoverRequest = 0;
        goto LABEL_28;
      }

      disambiguatedModelName = [(SDStatusMonitor *)self->_monitor someComputerName];
      [v8 setObject:disambiguatedModelName forKeyedSubscript:kSFOperationReceiverComputerNameKey];
    }

    goto LABEL_11;
  }

LABEL_28:
}

- (void)sendAskResponse:(int64_t)response
{
  if (!self->_askRequest)
  {
    return;
  }

  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (response > 402)
    {
      if (response <= 416)
      {
        if (response == 403)
        {
          v6 = @"Forbidden (403)";
          goto LABEL_27;
        }

        if (response == 409)
        {
          v6 = @"Conflict (409)";
          goto LABEL_27;
        }
      }

      else
      {
        switch(response)
        {
          case 0x1A1:
            v6 = @"Expectation Failed (417)";
            goto LABEL_27;
          case 0x1F4:
            v6 = @"Server Fail (500)";
            goto LABEL_27;
          case 0x1FB:
            v6 = @"Insufficient Storage (507)";
            goto LABEL_27;
        }
      }
    }

    else if (response <= 203)
    {
      if (response == 100)
      {
        v6 = @"Continue (100)";
        goto LABEL_27;
      }

      if (response == 200)
      {
        v6 = @"OK (200)";
        goto LABEL_27;
      }
    }

    else
    {
      switch(response)
      {
        case 0xCC:
          v6 = @"No Content (204)";
          goto LABEL_27;
        case 0x190:
          v6 = @"Bad Request (400)";
          goto LABEL_27;
        case 0x191:
          v6 = @"Unauthorized (401)";
LABEL_27:
          *cf = 138412290;
          *&cf[4] = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending Ask response with code %@", cf, 0xCu);
          goto LABEL_28;
      }
    }

    v6 = @"?";
    goto LABEL_27;
  }

LABEL_28:

  askRequest = self->_askRequest;
  ResponseMessage = _CFHTTPServerRequestCreateResponseMessage();
  if (response == 200)
  {
    *cf = 0;
    v9 = objc_opt_new();
    disambiguatedModelName = [objc_opt_class() disambiguatedModelName];
    [v9 setObject:disambiguatedModelName forKeyedSubscript:kSFOperationReceiverModelNameKey];

    someComputerName = [(SDStatusMonitor *)self->_monitor someComputerName];
    [v9 setObject:someComputerName forKeyedSubscript:kSFOperationReceiverComputerNameKey];

    enableXML = [(SDStatusMonitor *)self->_monitor enableXML];
    if (enableXML)
    {
      v13 = kCFPropertyListXMLFormat_v1_0;
    }

    else
    {
      v13 = kCFPropertyListBinaryFormat_v1_0;
    }

    v14 = off_1008D3E78;
    if (!enableXML)
    {
      v14 = off_1008D3E70;
    }

    CFHTTPMessageSetHeaderFieldValue(ResponseMessage, @"Content-Type", *v14);
    Data = CFPropertyListCreateData(0, v9, v13, 0, cf);
    if (Data)
    {
      v16 = Data;
      v17 = self->_askRequest;
      v18 = _CFHTTPServerResponseCreateWithData();
      CFRelease(v16);
    }

    else
    {
      v20 = airdrop_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10020D218(cf);
      }

      CFRelease(*cf);
      v21 = self->_askRequest;
      v18 = _CFHTTPServerResponseCreateWithData();
    }
  }

  else
  {
    v19 = self->_askRequest;
    v18 = _CFHTTPServerResponseCreateWithData();
  }

  _CFHTTPServerResponseEnqueue();
  CFRelease(self->_askRequest);
  CFRelease(v18);
  CFRelease(ResponseMessage);
  self->_askRequest = 0;
}

- (void)releaseIdleSleepAssertion
{
  if (self->_powerAssertionID)
  {
    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      powerAssertionID = self->_powerAssertionID;
      *buf = 67109120;
      v11 = powerAssertionID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Power assertion released (%d)", buf, 8u);
    }

    v5 = self->_powerAssertionID;
    self->_powerAssertionID = 0;
    v6 = sub_1001F0530(3.0);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100208574;
    block[3] = &unk_1008CF1B0;
    v9 = v5;
    dispatch_after(v6, queue, block);
  }
}

- (void)sendUploadResponse:(int64_t)response
{
  if (self->_uploadRequest)
  {
    v5 = airdrop_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:

      v7 = CFDataCreate(0, 0, 0);
      [(SDAirDropConnection *)self enqueueResponse:self->_uploadRequest code:response body:v7];
      [(SDAirDropConnection *)self releaseIdleSleepAssertion];
      CFRelease(self->_uploadRequest);
      CFRelease(v7);
      self->_uploadRequest = 0;
      return;
    }

    if (response > 402)
    {
      if (response <= 416)
      {
        if (response == 403)
        {
          v6 = @"Forbidden (403)";
          goto LABEL_27;
        }

        if (response == 409)
        {
          v6 = @"Conflict (409)";
          goto LABEL_27;
        }
      }

      else
      {
        switch(response)
        {
          case 0x1A1:
            v6 = @"Expectation Failed (417)";
            goto LABEL_27;
          case 0x1F4:
            v6 = @"Server Fail (500)";
            goto LABEL_27;
          case 0x1FB:
            v6 = @"Insufficient Storage (507)";
            goto LABEL_27;
        }
      }
    }

    else if (response <= 203)
    {
      if (response == 100)
      {
        v6 = @"Continue (100)";
        goto LABEL_27;
      }

      if (response == 200)
      {
        v6 = @"OK (200)";
        goto LABEL_27;
      }
    }

    else
    {
      switch(response)
      {
        case 0xCC:
          v6 = @"No Content (204)";
          goto LABEL_27;
        case 0x190:
          v6 = @"Bad Request (400)";
          goto LABEL_27;
        case 0x191:
          v6 = @"Unauthorized (401)";
LABEL_27:
          v8 = 138412290;
          v9 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending Upload response with code %@", &v8, 0xCu);
          goto LABEL_28;
      }
    }

    v6 = @"?";
    goto LABEL_27;
  }
}

- (__SFNode)createPersonForAskRequest
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderIDKey];
  if (sub_100092428(v3))
  {
    v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderComputerNameKey];
    if (![v4 length])
    {
      v11 = airdrop_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10020D3AC();
      }

      v5 = 0;
      goto LABEL_32;
    }

    v5 = SFNodeCreate();
    copyMyAppleIDSecIdentity = [(SDStatusMonitor *)self->_monitor copyMyAppleIDSecIdentity];
    if (copyMyAppleIDSecIdentity)
    {
      v7 = copyMyAppleIDSecIdentity;
      v8 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderModelNameKey];
      v9 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderRecordDataKey];
      if (self->_clientTrust)
      {
        SFNodeSetModel();
        clientTrust = self->_clientTrust;
      }

      else
      {
        clientTrust = 0;
      }

      v12 = sub_10009229C(v9, clientTrust, v5);
      CFRelease(v7);
    }

    v11 = objc_opt_new();
    v13 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderIconHashKey];
    if (!v13)
    {
LABEL_29:
      Boolean = GestaltGetBoolean();
      v21 = 2023;
      if (!Boolean)
      {
        v21 = 999;
      }

      *v24 = v21;
      v22 = CFNumberCreate(0, kCFNumberLongType, v24);
      SFNodeSetFlags();
      SFNodeAddKind();
      SFNodeAddKind();
      SFNodeSetDomain();
      SFNodeSetServiceName();
      SFNodeSetComputerName();
      sub_100090C24(v5, 0, v11, 0);
      CFRelease(v22);

LABEL_32:
      goto LABEL_33;
    }

    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 138412290;
      *&v24[4] = v3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SDAirDropConnection: icon hash is available for %@", v24, 0xCu);
    }

    SFNodeSetIconHash();
    v15 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderIconKey];
    v16 = v15;
    if (!v15)
    {
      v18 = airdrop_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10020D370();
      }

      goto LABEL_28;
    }

    v17 = sub_1001F0E58(v15);
    v18 = v17;
    if (v17)
    {
      if ([v17 isEqual:v13])
      {
        [v11 setObject:v16 forKeyedSubscript:v13];
LABEL_28:

        goto LABEL_29;
      }

      v19 = airdrop_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10020D2F8();
      }
    }

    else
    {
      v19 = airdrop_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10020D334();
      }
    }

    goto LABEL_28;
  }

  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10020D288();
  }

  v5 = 0;
LABEL_33:

  return v5;
}

- (void)logSenderIsBlocked
{
  myAppleID = [(SDStatusMonitor *)self->_monitor myAppleID];
  [(SDAirDropConnection *)self senderIsMe];
  SFMetricsLogUnexpectedEvent();
}

- (BOOL)senderIsBlocked
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderRecordDataKey];
  clientTrust = self->_clientTrust;
  v20 = 0;
  v21 = 0;
  sub_1000916EC(v3, clientTrust, 0, &v21, &v20);
  v5 = v21;
  v6 = v20;
  [(SDStatusMonitor *)self->_monitor contactsForEmailHash:v5 phoneHash:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v12 && [(SDStatusMonitor *)self->_monitor contactIsBlocked:*(*(&v16 + 1) + 8 * i), v16])
        {
          v14 = airdrop_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10020D3E8(v7, v12, v14);
          }

          [(SDAirDropConnection *)self logSenderIsBlocked];
          v13 = 1;
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)senderIsTrusted:(id)trusted
{
  trustedCopy = trusted;
  v5 = sub_100091420(self->_clientTrust);
  if (v5)
  {
    v6 = v5;
    v7 = [(SDStatusMonitor *)self->_monitor verifiedIdentityForAppleID:trustedCopy];
    if (v7)
    {
      v12 = 0;
      v8 = sub_1002685E0(v6, v7, &v12);
      v9 = v12;
      if (v8)
      {
        [(NSMutableDictionary *)self->_properties setObject:trustedCopy forKeyedSubscript:kSFOperationSenderEmailKey];
        [(NSMutableDictionary *)self->_properties setObject:&__kCFBooleanTrue forKeyedSubscript:kSFOperationVerifiableIdentityKey];
      }

      else
      {
        v10 = airdrop_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10020D4C0();
        }
      }
    }

    else
    {
      v9 = airdrop_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10020D530();
      }

      LOBYTE(v8) = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10020D56C();
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)senderIsMe
{
  clientTrust = self->_clientTrust;
  if (clientTrust)
  {
    v4 = sub_100091420(clientTrust);
    if (![(__CFArray *)v4 count])
    {
      v7 = airdrop_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10020D708();
      }

      v6 = 0;
      goto LABEL_19;
    }

    v12 = 0;
    if (!SFAppleIDVerifyCertificateChainSync())
    {
      v5 = airdrop_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10020D5DC(&v12);
      }

      v6 = 0;
      goto LABEL_18;
    }

    [(__CFArray *)v4 objectAtIndexedSubscript:0];

    v8 = SFAppleIDCommonNameForCertificate();
    v5 = 0;
    v12 = v8;
    if (v8)
    {
      myAppleIDCommonName = airdrop_log();
      if (os_log_type_enabled(myAppleIDCommonName, OS_LOG_TYPE_ERROR))
      {
        sub_10020D654(&v12);
      }
    }

    else
    {
      myAppleIDCommonName = [(SDStatusMonitor *)self->_monitor myAppleIDCommonName];
      if ([myAppleIDCommonName length])
      {
        v6 = [v5 isEqualToString:myAppleIDCommonName];
        goto LABEL_17;
      }

      v11 = airdrop_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10020D6CC();
      }
    }

    v6 = 0;
LABEL_17:

LABEL_18:
LABEL_19:

    return v6;
  }

  return 0;
}

- (void)silentlyCancelRequestOnMainThread
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002090E4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)convertURLStringsToURLs
{
  v3 = kSFOperationItemsKey;
  v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationItemsKey];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 cuFilteredArrayUsingBlock:&stru_1008D42C8];
    [(NSMutableDictionary *)self->_properties setObject:v5 forKeyedSubscript:v3];

    v4 = v6;
  }
}

- (void)parseDiscoverRequest
{
  error = 0;
  v3 = CFPropertyListCreateWithData(0, self->_requestData, 0, 0, &error);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    TypeID = CFDictionaryGetTypeID();
    v7 = airdrop_log();
    v8 = v7;
    if (v5 == TypeID)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Parsing Discover request", &v11, 2u);
      }

      [(SDAirDropConnection *)self storeDataValue:v4 forKey:kSFOperationSenderRecordDataKey];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10020D790();
      }
    }

    v10 = v4;
  }

  else
  {
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10020D7CC(&error);
    }

    v10 = error;
  }

  CFRelease(v10);
}

- (void)handleDiscoverRequest
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderRecordDataKey];
  v4 = sub_10009229C(v3, self->_clientTrust, 0);
  if (!v4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_17;
  }

  if ([(SDStatusMonitor *)self->_monitor disableTLS])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(SDAirDropConnection *)self senderIsTrusted:v4];
  }

  senderIsBlocked = [(SDAirDropConnection *)self senderIsBlocked];
  v8 = senderIsBlocked;
  v6 = 0;
  if (!v5 || (senderIsBlocked & 1) != 0)
  {
    goto LABEL_10;
  }

  copyMyAppleIDSecIdentity = [(SDStatusMonitor *)self->_monitor copyMyAppleIDSecIdentity];
  if (copyMyAppleIDSecIdentity)
  {
    CFRelease(copyMyAppleIDSecIdentity);
    v6 = 1;
LABEL_10:
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v6 = 0;
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (![(SDAirDropConnection *)self senderIsMe])
  {
    v11 = v5 & v6;
    v12 = 401;
    goto LABEL_18;
  }

  v10 = airdrop_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sender is me, ignore self block.", v14, 2u);
  }

LABEL_17:
  v11 = v5 & v6;
  v12 = 200;
LABEL_18:
  if (v11)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  [(SDAirDropConnection *)self sendDiscoverResponse:v12 forKnownAlias:v13];
}

- (void)parseAskRequest
{
  error = 0;
  v3 = CFPropertyListCreateWithData(0, self->_requestData, 0, 0, &error);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    TypeID = CFDictionaryGetTypeID();
    v7 = airdrop_log();
    v8 = v7;
    if (v5 == TypeID)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Parsing Ask request", &v11, 2u);
      }

      [(SDAirDropConnection *)self storeArrayValue:v4 forKey:kSFOperationFilesKey];
      [(SDAirDropConnection *)self storeArrayValue:v4 forKey:kSFOperationItemsKey];
      [(SDAirDropConnection *)self storeStringValue:v4 forKey:kSFOperationBundleIDKey];
      [(SDAirDropConnection *)self storeStringValue:v4 forKey:kSFOperationSenderIDKey];
      [(SDAirDropConnection *)self storeDataValue:v4 forKey:kSFOperationSenderRecordDataKey];
      [(SDAirDropConnection *)self storeIconValue:v4 forKey:kSFOperationFileIconKey];
      [(SDAirDropConnection *)self storeIconValue:v4 forKey:kSFOperationSmallFileIconKey];
      [(SDAirDropConnection *)self storeStringValue:v4 forKey:kSFOperationSenderModelNameKey];
      [(SDAirDropConnection *)self storeStringValue:v4 forKey:kSFOperationItemsDescriptionKey];
      [(SDAirDropConnection *)self storeStringValue:v4 forKey:kSFOperationSenderComputerNameKey];
      [(SDAirDropConnection *)self convertURLStringsToURLs];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10020D790();
      }
    }

    v10 = v4;
  }

  else
  {
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10020D7CC(&error);
    }

    v10 = error;
  }

  CFRelease(v10);
}

- (BOOL)allowAskRequestFromPerson:(__SFNode *)person
{
  if (!person)
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10020D878();
    }

    goto LABEL_6;
  }

  v4 = SFNodeCopyAppleID();
  if (![(SDStatusMonitor *)self->_monitor disableTLS])
  {
    if (v4)
    {
      v5 = [(SDAirDropConnection *)self senderIsTrusted:v4];
      goto LABEL_9;
    }

    if (self->_contactsOnly)
    {
      v7 = airdrop_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10020D83C();
      }

LABEL_6:
      v5 = 0;
      goto LABEL_9;
    }
  }

  v5 = 1;
LABEL_9:

  return v5;
}

- (BOOL)transferContainsPhotosAssetBundles
{
  [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFilesKey];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = kSFOperationFileTypeKey;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:{v6, v12}];
        v9 = SFIsPhotosAssetBundle();

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)adjustPropertiesForAutoAcceptSenderIsMe:(BOOL)me
{
  meCopy = me;
  disableAutoAccept = [(SDStatusMonitor *)self->_monitor disableAutoAccept];
  monitor = self->_monitor;
  if (disableAutoAccept)
  {

    [(SDStatusMonitor *)monitor disableAutoAcceptForPhotosAssetBundles];
    return;
  }

  v7 = [(SDStatusMonitor *)monitor alwaysAutoAccept]|| meCopy;
  disableAutoAcceptForPhotosAssetBundles = [(SDStatusMonitor *)self->_monitor disableAutoAcceptForPhotosAssetBundles];
  if (v7 != 1 || disableAutoAcceptForPhotosAssetBundles == 0)
  {
    if (!v7)
    {
      return;
    }
  }

  else if ([(SDAirDropConnection *)self transferContainsPhotosAssetBundles])
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SDAirDropConnection: Prevented auto-accept because transfer contains All Photos Data Photos bundles.", v14, 2u);
    }

    return;
  }

  properties = self->_properties;
  v13 = kSFOperationAutoAcceptKey;

  [(NSMutableDictionary *)properties setObject:&__kCFBooleanTrue forKeyedSubscript:v13];
}

- (void)adjustPropertiesForPhotosBundles
{
  v3 = objc_opt_new();
  selfCopy = self;
  v15 = kSFOperationFilesKey;
  v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:?];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = kSFOperationFileTypeKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:v8];
        if (SFIsPhotosAssetBundle())
        {
          v12 = [v10 mutableCopy];
          v13 = v12;
          v14 = @"com.apple.photos.asset-bundle";
LABEL_8:
          [v12 setObject:v14 forKeyedSubscript:v8];
          [v3 addObject:v13];

          goto LABEL_13;
        }

        if (SFIsLivePhotos() && [v11 isEqualToString:kUTTypeFolder])
        {
          v12 = [v10 mutableCopy];
          v13 = v12;
          v14 = @"com.apple.private.live-photo-bundle";
          goto LABEL_8;
        }

        [v3 addObject:v10];
LABEL_13:
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)selfCopy->_properties setObject:v3 forKeyedSubscript:v15];
}

- (void)handleAskRequest
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderIDKey];
  if (v3)
  {
    v4 = kSFOperationFilesKey;
    v5 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFilesKey];
    v6 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationItemsKey];
    if ([v5 count] || objc_msgSend(v6, "count"))
    {
      createPersonForAskRequest = [(SDAirDropConnection *)self createPersonForAskRequest];
      self->_person = createPersonForAskRequest;
      if ([(SDAirDropConnection *)self allowAskRequestFromPerson:createPersonForAskRequest])
      {
        senderIsMe = [(SDAirDropConnection *)self senderIsMe];
        if ([(SDStatusMonitor *)self->_monitor finderAirDropEnabled])
        {
          self->_personAdded = 1;
          v9 = +[SDConnectedBrowser sharedBrowser];
          [v9 addAirDropPerson:self->_person];
          v10 = 0.3;
        }

        else
        {
          person = self->_person;
          v14 = SFNodeCopyIconData();
          if (!v14)
          {
            v14 = sub_1000906C0(0, 0, 0, 0);
            if (!v14)
            {
              v10 = 0.0;
              goto LABEL_16;
            }
          }

          v9 = v14;
          [(NSMutableDictionary *)self->_properties setObject:v14 forKeyedSubscript:kSFOperationSenderIconKey];
          v10 = 0.0;
        }

LABEL_16:
        v15 = self->_person;
        Name = SFNodeCopyLastName();
        v17 = self->_person;
        v18 = SFNodeCopyFirstName();
        v19 = self->_person;
        v20 = SFNodeCopyDisplayName();
        [(NSMutableDictionary *)self->_properties setObject:Name forKeyedSubscript:kSFOperationSenderLastNameKey];
        [(NSMutableDictionary *)self->_properties setObject:v18 forKeyedSubscript:kSFOperationSenderFirstNameKey];
        [(NSMutableDictionary *)self->_properties setObject:v20 forKeyedSubscript:kSFOperationSenderCompositeNameKey];
        [(NSMutableDictionary *)self->_properties setObject:self->_person forKeyedSubscript:kSFOperationSenderNodeKey];
        [(SDAirDropConnection *)self adjustPropertiesForAutoAcceptSenderIsMe:senderIsMe];
        v21 = [NSNumber numberWithBool:senderIsMe];
        [(NSMutableDictionary *)self->_properties setObject:v21 forKeyedSubscript:kSFOperationSenderIsMeKey];

        [(SDAirDropConnection *)self adjustPropertiesForPhotosBundles];
        v22 = sub_1001F0530(v10);
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100209F64;
        block[3] = &unk_1008CDEA0;
        block[4] = self;
        dispatch_after(v22, queue, block);
        v24 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:v4];
        if (![v24 count])
        {
          [(SDAirDropConnection *)self releaseIdleSleepAssertion];
        }

        goto LABEL_22;
      }

      v12 = airdrop_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10020D8B4();
      }
    }

    else
    {
      v12 = airdrop_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10020D8F0();
      }
    }

    [(SDAirDropConnection *)self silentlyCancelRequestOnMainThread];
LABEL_22:

    goto LABEL_23;
  }

  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10020D92C();
  }

  [(SDAirDropConnection *)self silentlyCancelRequestOnMainThread];
LABEL_23:
}

- (void)cancelAndDecline
{
  v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  if (self->_discoverRequest)
  {
    [(SDAirDropConnection *)self sendDiscoverResponse:500 forKnownAlias:0];
  }

  else
  {
    [(SDAirDropConnection *)self sendAskResponse:500];
    dispatch_semaphore_signal(self->_askSemaphore);
  }
}

- (void)processRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v4 = self->_connection, WeakRetained, v4))
  {
    if (!self->_clientTrust)
    {
      connection = self->_connection;
      self->_clientTrust = _CFHTTPServerConnectionCopyProperty();
    }

    if (self->_discoverRequest)
    {
      [(SDAirDropConnection *)self parseDiscoverRequest];

      [(SDAirDropConnection *)self handleDiscoverRequest];
      return;
    }

    [(SDAirDropConnection *)self parseAskRequest];
    [(SDAirDropConnection *)self handleAskRequest];
  }

  else if (self->_discoverRequest)
  {
    return;
  }

  askSemaphore = self->_askSemaphore;

  dispatch_semaphore_signal(askSemaphore);
}

- (void)handleReadStreamEvent:(__CFReadStream *)event event:(unint64_t)a4
{
  if (a4 != 16)
  {
    if (a4 != 8)
    {
      if (a4 == 2)
      {
        v5 = CFReadStreamRead(event, self->_requestBuffer, 0x8000);
        if (v5 >= 1)
        {
          [(NSMutableData *)self->_requestData appendBytes:self->_requestBuffer length:v5];
          if ([(NSMutableData *)self->_requestData length]<= 0x100000)
          {
            return;
          }

          goto LABEL_6;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
          return;
        }

        v7 = airdrop_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10020D968();
        }
      }

      else
      {
        v7 = airdrop_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10020D9D8();
        }
      }

      [(SDAirDropConnection *)self cancelAndDecline];
      return;
    }

LABEL_6:

    [(SDAirDropConnection *)self cancelAndDecline];
    return;
  }

  if (self->_endEncountered)
  {
    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SDAirDropConnection: kCFStreamEventEndEncountered fired again", v8, 2u);
    }
  }

  else
  {
    self->_endEncountered = 1;

    [(SDAirDropConnection *)self processRequest];
  }
}

- (BOOL)startReceivingBody:(_CFHTTPServerRequest *)body error:(id *)error
{
  v6 = _CFHTTPServerRequestCopyBodyStream();
  self->_readStream = v6;
  if (!v6)
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10020DA88();
    }

    if (!error)
    {
      return 0;
    }

    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v8 = 0;
    goto LABEL_11;
  }

  self->_requestBuffer = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  clientContext.version = 0;
  clientContext.info = self;
  clientContext.retain = &_CFRetain;
  clientContext.release = &_CFRelease;
  clientContext.copyDescription = &CFCopyDescription;
  CFReadStreamSetClient(self->_readStream, 0x1AuLL, sub_10020A400, &clientContext);
  CFReadStreamSetDispatchQueue(self->_readStream, self->_queue);
  v7 = CFReadStreamOpen(self->_readStream);
  v8 = v7 != 0;
  if (!v7)
  {
    v9 = airdrop_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10020DA4C();
    }

    if (error)
    {
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
LABEL_11:
      *error = v10;
    }
  }

  return v8;
}

- (id)compressionType
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"Content-Type"];
  if ([v2 isEqual:@"application/zip"])
  {
    v3 = off_1008D3E38;
LABEL_7:
    v4 = *v3;
    goto LABEL_8;
  }

  if ([v2 isEqual:@"application/x-cpio"])
  {
    v3 = off_1008D3E30;
    goto LABEL_7;
  }

  if ([v2 isEqual:@"application/x-dvzip"])
  {
    v3 = off_1008D3E40;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (BOOL)startReceivingFile:(_CFHTTPServerRequest *)file error:(id *)error
{
  v6 = _CFHTTPServerRequestCopyBodyStream();
  if (v6)
  {
    v7 = v6;
    destination = self->_destination;
    v9 = destination != 0;
    if (destination)
    {
      v10 = objc_alloc_init(SDAirDropFileZipper);
      zipper = self->_zipper;
      self->_zipper = v10;

      whereFromInfo = [(SDAirDropConnection *)self whereFromInfo];
      firstObject = [whereFromInfo firstObject];
      [(SDAirDropFileZipper *)self->_zipper setSenderName:firstObject];

      [(SDAirDropFileZipper *)self->_zipper setShouldExtractMediaFromPhotosBundles:[(SDAirDropConnection *)self shouldExtractMediaFromPhotosBundles]];
      objc_initWeak(&location, self);
      v14 = self->_zipper;
      v15 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFilesKey];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_10020A7A8;
      v25 = &unk_1008D35E0;
      objc_copyWeak(&v26, &location);
      [(SDAirDropFileZipper *)v14 setPlaceholderFiles:v15 withCreationCompletionHandler:&v22];

      v16 = self->_zipper;
      v17 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationTotalBytesKey, v22, v23, v24, v25];
      [(SDAirDropFileZipper *)v16 setTotalBytes:v17];

      compressionType = [(SDAirDropConnection *)self compressionType];
      [(SDAirDropFileZipper *)self->_zipper setUnzipCompressionType:compressionType];

      [(SDAirDropFileZipper *)self->_zipper setDestination:self->_destination];
      [(SDAirDropFileZipper *)self->_zipper setReadStream:v7];
      [(SDAirDropFileZipper *)self->_zipper setDelegate:self];
      [(SDAirDropFileZipper *)self->_zipper unzip];
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    else
    {
      v20 = airdrop_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10020DAC4();
      }

      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }
    }

    CFRelease(v7);
  }

  else
  {
    v19 = airdrop_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10020DA88();
    }

    if (error)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      *error = v9 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

- (BOOL)thereIsEnoughFreeSpace
{
  if ([(SDStatusMonitor *)self->_monitor testDiskFull])
  {
    return 0;
  }

  propertyValueTypeRefPtr = 0;
  error = 0;
  if (!CFURLCopyResourcePropertyForKey(self->_destination, kCFURLVolumeAvailableCapacityKey, &propertyValueTypeRefPtr, &error))
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10020DB00(&error);
    }

    CFRelease(error);
    return 1;
  }

  if (!propertyValueTypeRefPtr)
  {
    return 1;
  }

  valuePtr = 0;
  if (CFNumberGetValue(propertyValueTypeRefPtr, kCFNumberSInt64Type, &valuePtr))
  {
    v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationTotalBytesKey];
    v5 = v4;
    if (v4)
    {
      longLongValue = [v4 longLongValue];
      v3 = valuePtr > longLongValue + 20971520;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  CFRelease(propertyValueTypeRefPtr);
  return v3;
}

- (BOOL)senderInfoAvailable
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderIDKey];
  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderComputerNameKey];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)silentlyCancelRequest
{
  v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:89 userInfo:0];
  v5 = kSFOperationErrorKey;
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [(SDAirDropConnection *)self notifyClient:10 withResults:v4];
}

- (void)enqueueResponse:(_CFHTTPServerRequest *)response code:(int64_t)code body:(__CFData *)body
{
  ResponseMessage = _CFHTTPServerRequestCreateResponseMessage();
  v7 = ResponseMessage;
  if (code != 100)
  {
    CFHTTPMessageSetHeaderFieldValue(ResponseMessage, @"Connection", @"close");
  }

  v8 = _CFHTTPServerResponseCreateWithData();
  _CFHTTPServerResponseEnqueue();
  CFRelease(v8);

  CFRelease(v7);
}

- (BOOL)oneHundredContinue:(_CFHTTPServerRequest *)continue
{
  v3 = _CFHTTPServerRequestCopyProperty();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFEqual(v3, @"100-continue") != 0;
  CFRelease(v4);
  return v5;
}

- (void)makeDestinationDirectory
{
  v3 = sub_1001F17F4();
  v4 = [v3 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];

  v5 = [v4 URLByAppendingPathComponent:self->_sessionID isDirectory:1];

  v6 = [v5 URLByAppendingPathComponent:@"Files" isDirectory:1];

  v14 = NSFileProtectionKey;
  v15 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v8 = +[NSFileManager defaultManager];
  v13 = 0;
  v9 = [v8 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:v7 error:&v13];
  v10 = v13;

  if (v9)
  {
    v11 = v6;
    p_super = &self->_destination->super;
    self->_destination = v11;
  }

  else
  {
    p_super = airdrop_log();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_10020DB70();
    }
  }
}

- (void)enqueueBadResponseForRequest:(_CFHTTPServerRequest *)request
{
  if (!self->_discoverRequest)
  {
    if (self->_uploadRequest)
    {
      v5 = airdrop_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10020DC1C();
      }

      goto LABEL_7;
    }

    v6 = sub_10020AE08();
    if (CFEqual(v6, @"Upload"))
    {
      v7 = airdrop_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10020DC58();
      }
    }

    else
    {
      if (!self->_askRequest)
      {
LABEL_16:
        CFRelease(v6);
        goto LABEL_8;
      }

      v7 = airdrop_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10020DC94();
      }
    }

    goto LABEL_16;
  }

  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10020DBE0();
  }

LABEL_7:

LABEL_8:
  [(SDAirDropConnection *)self enqueueResponse:request code:400 body:0];
}

- (void)didReceiveRequest:(_CFHTTPServerRequest *)request
{
  v5 = _CFHTTPServerRequestCopyProperty();
  if (v5)
  {
    v6 = v5;
    if (CFEqual(v5, @"POST"))
    {
      v7 = sub_10020AE08();
      if (v7)
      {
        v8 = v7;
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = sub_10020B324;
        v28 = sub_10020B334;
        v29 = 0;
        if (CFEqual(v7, @"Discover"))
        {
          self->_discover = 1;
          if (!self->_discoverRequest && !self->_askRequest && !self->_uploadRequest)
          {
            self->_discoverRequest = CFRetain(request);
            v9 = airdrop_log();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received Discover request", buf, 2u);
            }

            v10 = (v25 + 5);
            obj = v25[5];
            v11 = [(SDAirDropConnection *)self startReceivingBody:request error:&obj];
            objc_storeStrong(v10, obj);
            if ((v11 & 1) == 0)
            {
              [(NSMutableDictionary *)self->_properties setObject:v25[5] forKeyedSubscript:kSFOperationErrorKey];
              [(SDAirDropConnection *)self sendDiscoverResponse:500 forKnownAlias:0];
            }

            goto LABEL_32;
          }
        }

        else if (CFEqual(v8, @"Ask"))
        {
          if (!self->_discoverRequest && !self->_askRequest && !self->_uploadRequest)
          {
            self->_transactionStarted = 1;
            [(SDAirDropConnection *)self makeDestinationDirectory];
            [(SDStatusMonitor *)self->_monitor airDropTransactionBegin:0];
            self->_askRequest = CFRetain(request);
            v14 = airdrop_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received Ask request", buf, 2u);
            }

            v15 = (v25 + 5);
            v21 = v25[5];
            v16 = [(SDAirDropConnection *)self startReceivingBody:request error:&v21];
            objc_storeStrong(v15, v21);
            if ((v16 & 1) == 0)
            {
              [(NSMutableDictionary *)self->_properties setObject:v25[5] forKeyedSubscript:kSFOperationErrorKey];
              [(SDAirDropConnection *)self sendAskResponse:500];
              dispatch_semaphore_signal(self->_askSemaphore);
            }

            goto LABEL_32;
          }
        }

        else
        {
          if (!CFEqual(v8, @"Upload"))
          {
            v17 = airdrop_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10020DCD0();
            }

            [(SDAirDropConnection *)self enqueueResponse:request code:400 body:0];
            goto LABEL_32;
          }

          if (!self->_discoverRequest && !self->_uploadRequest && (self->_askRequest || self->_userAccepted))
          {
            self->_uploadRequest = CFRetain(request);
            v18 = airdrop_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received Upload request", buf, 2u);
            }

            v19 = sub_1001F0610();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10020B33C;
            block[3] = &unk_1008D42F0;
            block[4] = self;
            block[5] = &v24;
            block[6] = request;
            dispatch_async(v19, block);

            goto LABEL_32;
          }
        }

        [(SDAirDropConnection *)self enqueueBadResponseForRequest:request];
LABEL_32:
        CFRelease(v8);
        _Block_object_dispose(&v24, 8);

        goto LABEL_33;
      }

      v13 = airdrop_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10020DD0C();
      }
    }

    else
    {
      v13 = airdrop_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10020DD48();
      }
    }

    [(SDAirDropConnection *)self enqueueResponse:request code:400 body:0];
LABEL_33:
    CFRelease(v6);
    return;
  }

  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10020DD84();
  }

  [(SDAirDropConnection *)self enqueueResponse:request code:400 body:0];
}

- (int64_t)getStatusCode:(_CFHTTPServerResponse *)code
{
  v3 = _CFHTTPServerResponseCopyProperty();
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v3);
  CFRelease(v4);
  return ResponseStatusCode;
}

- (void)notifyClientOfBytesCopied:(id)copied timeRemaining:(id)remaining
{
  copiedCopy = copied;
  remainingCopy = remaining;
  usleep(0x186A0u);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020B868;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = copiedCopy;
  v13 = remainingCopy;
  v9 = remainingCopy;
  v10 = copiedCopy;
  dispatch_async(queue, block);
}

- (void)finishOperation
{
  self->_delayedFinish = 1;
  v3 = sub_1001F0610();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020B964;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)didSendResponse:(_CFHTTPServerResponse *)response forRequest:(_CFHTTPServerRequest *)request
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = [(SDAirDropConnection *)self getStatusCode:response];
    if (v7 == 400)
    {

      [(SDAirDropConnection *)self silentlyCancelRequest];
      return;
    }

    v8 = v7;
    v9 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationErrorKey];

    if (v9)
    {

      [(SDAirDropConnection *)self notifyClientForEvent:10];
      return;
    }

    v10 = _CFHTTPServerRequestCopyProperty();
    if (v10)
    {
      v11 = v10;
      if (CFEqual(v10, @"POST"))
      {
        v12 = sub_10020AE08();
        if (v12)
        {
          v13 = v12;
          if (CFEqual(v12, @"Ask"))
          {
            v14 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationFilesKey];
            if ([v14 count])
            {
              self->_startTime = CFAbsoluteTimeGetCurrent();
              [(SDAirDropConnection *)self notifyClientForEvent:5];
              [(NSMutableDictionary *)self->_properties removeObjectForKey:kSFOperationSmallFileIconKey];
              [(NSMutableDictionary *)self->_properties removeObjectForKey:kSFOperationFileIconKey];
            }

            else
            {
              [(SDAirDropConnection *)self finishOperation];
            }
          }

          else if (CFEqual(v13, @"Upload"))
          {
            if (v8 != 100)
            {
              [(SDAirDropConnection *)self notifyClientForEvent:9];
            }
          }

          else
          {
            if (!CFEqual(v13, @"Discover"))
            {
              v17 = airdrop_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                sub_10020DE38();
              }
            }

            [(SDAirDropConnection *)self silentlyCancelRequest];
          }

          CFRelease(v13);
          goto LABEL_34;
        }

        v16 = airdrop_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10020DE74();
        }
      }

      else
      {
        v16 = airdrop_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10020DEB0();
        }
      }

      [(SDAirDropConnection *)self silentlyCancelRequest];
LABEL_34:
      CFRelease(v11);
      return;
    }

    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10020DEEC();
    }

    [(SDAirDropConnection *)self silentlyCancelRequest];
  }

  else if (self->_stopDeferred)
  {

    [(SDAirDropConnection *)self stop];
  }
}

- (void)didFailToSendResponse:(_CFHTTPServerResponse *)response
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    if (response)
    {
      v6 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationErrorKey];

      if (v6)
      {

        [(SDAirDropConnection *)self notifyClientForEvent:10];
      }

      else
      {

        [(SDAirDropConnection *)self silentlyCancelRequest];
      }
    }
  }

  else if (self->_stopDeferred)
  {

    [(SDAirDropConnection *)self stop];
  }
}

- (void)handleClosedConnection
{
  if (self->_delayedFinish)
  {
    v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderIDKey];
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10020DF28();
    }
  }

  else
  {
    [(SDAirDropConnection *)self stop];
    if ([(SDAirDropConnection *)self senderInfoAvailable])
    {
      v5 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationSenderIDKey];
      v6 = airdrop_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection from %@ closed", &v8, 0xCu);
      }

      [(SDAirDropConnection *)self notifyClientForEvent:4];
    }

    else
    {
      v7 = airdrop_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connection closed (cancel suppressed)", &v8, 2u);
      }

      [(SDAirDropConnection *)self silentlyCancelRequest];
    }
  }
}

- (id)whereFromInfo
{
  v3 = objc_opt_new();
  person = self->_person;
  v5 = SFNodeCopyDisplayName();
  v6 = self->_person;
  v7 = SFNodeCopyComputerName();
  if (v5)
  {
    [v3 addObject:v5];
  }

  if (v7 && ([v5 isEqualToString:v7] & 1) == 0)
  {
    [v3 addObject:v7];
  }

  return v3;
}

- (void)setCombinedFileURLsAndItems:(id)items
{
  itemsCopy = items;
  v4 = objc_opt_new();
  v5 = kSFOperationItemsKey;
  v6 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationItemsKey];
  if (v6)
  {
    [v4 addObjectsFromArray:v6];
  }

  [v4 addObjectsFromArray:itemsCopy];
  [(NSMutableDictionary *)self->_properties setObject:v4 forKeyedSubscript:v5];
}

- (BOOL)transferIsOverPrebufferLimit
{
  if (self->_userAccepted)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:kSFOperationBytesCopiedKey];
  v2 = [v3 longLongValue] > 629145600;

  return v2;
}

- (void)fileZipper:(id)zipper event:(int64_t)event withProperty:(void *)property
{
  zipperCopy = zipper;
  if (event == 10)
  {
    v12 = zipperCopy;
    [(NSMutableDictionary *)self->_properties setObject:property forKeyedSubscript:kSFOperationErrorKey];
    selfCopy2 = self;
    v11 = 500;
    goto LABEL_8;
  }

  if (event == 9)
  {
    v12 = zipperCopy;
    [(SDAirDropConnection *)self setSpotlightMetadata:property];
    [(SDAirDropConnection *)self setCombinedFileURLsAndItems:property];
    selfCopy2 = self;
    v11 = 200;
LABEL_8:
    [(SDAirDropConnection *)selfCopy2 sendUploadResponse:v11];
    goto LABEL_9;
  }

  if (event != 7)
  {
    goto LABEL_10;
  }

  v12 = zipperCopy;
  sub_100092450(self->_properties, property);
  [(SDAirDropConnection *)self storeNumberValue:property forKey:kSFOperationBytesCopiedKey];
  [(SDAirDropConnection *)self storeNumberValue:property forKey:kSFOperationTimeRemainingKey];
  if ([(SDAirDropConnection *)self transferIsOverPrebufferLimit])
  {
    v9 = sub_100092BE0(-2, 0);
    [(NSMutableDictionary *)self->_properties setObject:v9 forKeyedSubscript:kSFOperationErrorKey];
    [(SDAirDropConnection *)self notifyClientForEvent:10];

LABEL_9:
    zipperCopy = v12;
    goto LABEL_10;
  }

  zipperCopy = v12;
  if (self->_startTime != 0.0)
  {
    [(SDAirDropConnection *)self notifyClientForEvent:7];
    goto LABEL_9;
  }

LABEL_10:
}

+ (id)disambiguatedModelName
{
  v2 = +[SDStatusMonitor sharedMonitor];
  modelName = [v2 modelName];

  if ([(__CFString *)modelName isEqualToString:@"Mac"])
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    modelCode = [v4 modelCode];

    if (([modelCode isEqualToString:{@"Mac13, 1"}] & 1) != 0 || objc_msgSend(modelCode, "isEqualToString:", @"Mac13,2"))
    {

      modelName = @"Mac mini";
    }

    if ([modelCode isEqualToString:{@"Mac14, 2"}])
    {

      modelName = @"MacBook Air";
    }

    if ([modelCode isEqualToString:{@"Mac14, 7"}])
    {

      modelName = @"MacBook Pro";
    }
  }

  return modelName;
}

- (void)schedule
{
  connection = self->_connection;
  Main = CFRunLoopGetMain();

  __CFHTTPServerConnectionScheduleWithRunLoopAndMode(connection, Main, kCFRunLoopDefaultMode);
}

- (void)start
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  self->_powerAssertionID = sub_1000925A4();
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    powerAssertionID = self->_powerAssertionID;
    *buf = 67109120;
    *&buf[4] = powerAssertionID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Power assertion retained (%d)", buf, 8u);
  }

  *buf = unk_1008D4310;
  v10 = *off_1008D4320;
  v11 = *&off_1008D4330;
  sub_10009000C(self->_connection, self);
  connection = self->_connection;
  _CFHTTPServerConnectionSetClient();
  v8 = self->_connection;
  _CFHTTPServerConnectionSetProperty();
}

- (BOOL)accept
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020C778;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (void)stop
{
  askRequest = self->_askRequest;
  if (!askRequest)
  {
    discoverRequest = self->_discoverRequest;
    if (!discoverRequest)
    {
      goto LABEL_8;
    }

    if (!self->_connectionClosed)
    {
      self->_stopDeferred = 1;
      [(SDAirDropConnection *)self sendDiscoverResponse:401 forKnownAlias:0];
      goto LABEL_27;
    }

LABEL_7:
    CFRelease(discoverRequest);
    self->_discoverRequest = 0;
    goto LABEL_8;
  }

  if (!self->_connectionClosed)
  {
    self->_stopDeferred = 1;
    [(SDAirDropConnection *)self sendAskResponse:401];
    goto LABEL_27;
  }

  CFRelease(askRequest);
  self->_askRequest = 0;
  discoverRequest = self->_discoverRequest;
  if (discoverRequest)
  {
    goto LABEL_7;
  }

LABEL_8:
  uploadRequest = self->_uploadRequest;
  if (uploadRequest)
  {
    CFRelease(uploadRequest);
    self->_uploadRequest = 0;
  }

  zipper = self->_zipper;
  if (zipper)
  {
    [(SDAirDropFileZipper *)zipper setDelegate:0];
    [(SDAirDropFileZipper *)self->_zipper stop];
    v7 = self->_zipper;
    self->_zipper = 0;
  }

  readStream = self->_readStream;
  if (readStream)
  {
    CFReadStreamSetClient(readStream, 0, 0, 0);
    CFReadStreamSetDispatchQueue(self->_readStream, 0);
    CFReadStreamClose(self->_readStream);
    CFRelease(self->_readStream);
    self->_readStream = 0;
  }

  connection = self->_connection;
  if (connection)
  {
    sub_100090100(connection);
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_connection;
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalidated AirDrop connection %p", &v16, 0xCu);
    }

    v12 = self->_connection;
    _CFHTTPServerConnectionInvalidate();
    CFRelease(self->_connection);
    self->_connection = 0;
  }

  if (self->_queueSuspended)
  {
    sub_10008FEB8(self);
    v13 = sub_10008F9A4();
    dispatch_resume(v13);

    self->_queueSuspended = 0;
  }

  if (self->_personAdded)
  {
    v14 = +[SDConnectedBrowser sharedBrowser];
    [v14 removeAirDropPerson:self->_person];

    self->_personAdded = 0;
  }

  if (self->_transactionStarted)
  {
    self->_transactionStarted = 0;
    [(SDStatusMonitor *)self->_monitor airDropTransactionEnd:0];
  }

  [(SDAirDropConnection *)self releaseIdleSleepAssertion];
LABEL_27:
  transaction = self->_transaction;
  self->_transaction = 0;
}

- (SDAirDropConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end