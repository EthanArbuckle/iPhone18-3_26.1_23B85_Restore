@interface DataStreamBulkSendProtocol
- (BOOL)isActive;
- (DataStreamBulkSendProtocol)initWithQueue:(id)queue accessory:(id)accessory logIdentifier:(id)identifier bulkSendSessionContextFactory:(id)factory;
- (DataStreamProtocolDelegate)dataStream;
- (id)_createSessionCandidateWithRequestHeader:(id)header metadata:(id)metadata;
- (id)_createSessionFromCandidate:(id)candidate queue:(id)queue;
- (id)_createSessionIdentifier;
- (id)_getBulkSendSessionForSessionIdentifier:(id)identifier;
- (id)accessory;
- (void)_closeAllSessionsWithError:(id)error;
- (void)_handleCloseMessage:(id)message;
- (void)_handleDataMessage:(id)message;
- (void)_handleOpenWithRequestHeader:(id)header payload:(id)payload;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value;
- (void)_openSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback;
- (void)_pumpMessage:(id)message session:(id)session;
- (void)_pumpReceiveFailure:(id)failure session:(id)session;
- (void)_removeBulkSendSessionForSessionIdentifier:(id)identifier;
- (void)_sendAckMessageWithIdentifier:(id)identifier completion:(id)completion;
- (void)_sendOpenResponseWithRequestHeader:(id)header streamIdentifier:(id)identifier;
- (void)_startSessionCandidate:(id)candidate queue:(id)queue callback:(id)callback;
- (void)addListener:(id)listener fileType:(id)type;
- (void)asyncBulkSendSessionCandidate:(id)candidate didAcceptOnQueue:(id)queue callback:(id)callback;
- (void)asyncBulkSendSessionCandidate:(id)candidate didRejectWithStatus:(unsigned __int16)status;
- (void)asyncBulkSendSessionDidCancelSessionWithIdentifier:(id)identifier reason:(unsigned __int16)reason hadReceivedEof:(BOOL)eof completion:(id)completion;
- (void)dataStream:(id)stream didFailWithError:(id)error;
- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload;
- (void)dataStreamDidClose:(id)close;
- (void)dataStreamDidOpen:(id)open;
- (void)dataStreamInitiatedClose:(id)close;
- (void)openSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback;
- (void)removeListener:(id)listener;
- (void)timerDidFire:(id)fire;
@end

@implementation DataStreamBulkSendProtocol

- (DataStreamBulkSendProtocol)initWithQueue:(id)queue accessory:(id)accessory logIdentifier:(id)identifier bulkSendSessionContextFactory:(id)factory
{
  queueCopy = queue;
  accessoryCopy = accessory;
  identifierCopy = identifier;
  factoryCopy = factory;
  v28.receiver = self;
  v28.super_class = DataStreamBulkSendProtocol;
  v15 = [(DataStreamBulkSendProtocol *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeWeak(&v16->_accessory, accessoryCopy);
    v17 = +[NSMapTable strongToWeakObjectsMapTable];
    listeners = v16->_listeners;
    v16->_listeners = v17;

    v19 = +[NSMapTable strongToWeakObjectsMapTable];
    activeBulkSendSessions = v16->_activeBulkSendSessions;
    v16->_activeBulkSendSessions = v19;

    v16->_isConnected = 0;
    v16->_nextSessionIdentifier = 1;
    v21 = objc_retainBlock(factoryCopy);
    bulkSendSessionContextFactory = v16->_bulkSendSessionContextFactory;
    v16->_bulkSendSessionContextFactory = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    pendingBulkSendSessionContextBySessionIdentifier = v16->_pendingBulkSendSessionContextBySessionIdentifier;
    v16->_pendingBulkSendSessionContextBySessionIdentifier = v23;

    v25 = [identifierCopy copy];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v25;
  }

  return v16;
}

- (void)addListener:(id)listener fileType:(id)type
{
  listenerCopy = listener;
  typeCopy = type;
  isActive = [(DataStreamBulkSendProtocol *)self isActive];
  listeners = [(DataStreamBulkSendProtocol *)self listeners];
  v10 = [listeners objectForKey:typeCopy];

  accessory = [(DataStreamBulkSendProtocol *)self accessory];
  if (v10)
  {
    selfCopy = self;
    v13 = sub_10007FAA0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = sub_10007FAFC(selfCopy);
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = typeCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Rejecting BulkSend registration for file type %@; handler already exists", &v16, 0x16u);
    }

    [listenerCopy accessoryDidCloseDataStream:accessory];
  }

  else
  {
    listeners2 = [(DataStreamBulkSendProtocol *)self listeners];
    [listeners2 setObject:listenerCopy forKey:typeCopy];

    if ([(DataStreamBulkSendProtocol *)self isConnected])
    {
      [listenerCopy accessoryDidStartListening:accessory];
    }

    [(DataStreamBulkSendProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  isActive = [(DataStreamBulkSendProtocol *)self isActive];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  listeners = [(DataStreamBulkSendProtocol *)self listeners];
  keyEnumerator = [listeners keyEnumerator];

  v8 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        listeners2 = [(DataStreamBulkSendProtocol *)self listeners];
        v14 = [listeners2 objectForKey:v12];

        if (v14 == listenerCopy)
        {
          listeners3 = [(DataStreamBulkSendProtocol *)self listeners];
          [listeners3 removeObjectForKey:v12];

          goto LABEL_11;
        }
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  accessory = [(DataStreamBulkSendProtocol *)self accessory];
  [listenerCopy accessoryDidCloseDataStream:accessory];

  [(DataStreamBulkSendProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
}

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value
{
  if ([(DataStreamBulkSendProtocol *)self isActive]!= value)
  {
    selfCopy = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(selfCopy);
      [(DataStreamBulkSendProtocol *)selfCopy isActive];
      v7 = HMFBooleanToString();
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@BulkSend protocol changes active to %@", &v9, 0x16u);
    }

    dataStream = [(DataStreamBulkSendProtocol *)selfCopy dataStream];
    [dataStream protocolDidUpdateActiveStatus:selfCopy];
  }
}

- (void)_closeAllSessionsWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_10007FAFC(selfCopy);
    listeners = [(DataStreamBulkSendProtocol *)selfCopy listeners];
    v9 = [listeners count];
    activeBulkSendSessions = [(DataStreamBulkSendProtocol *)selfCopy activeBulkSendSessions];
    *buf = 138543874;
    v43 = v7;
    v44 = 2048;
    v45 = v9;
    v46 = 2048;
    v47 = [activeBulkSendSessions count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Session closed; removing %lu listeners and closing %lu sessions", buf, 0x20u);
  }

  [(DataStreamBulkSendProtocol *)selfCopy setIsConnected:0];
  if (errorCopy)
  {
    v40 = NSUnderlyingErrorKey;
    v41 = errorCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [NSError errorWithDomain:NSURLErrorDomain code:-1005 userInfo:v11];
  accessory = [(DataStreamBulkSendProtocol *)selfCopy accessory];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  activeBulkSendSessions2 = [(DataStreamBulkSendProtocol *)selfCopy activeBulkSendSessions];
  objectEnumerator = [activeBulkSendSessions2 objectEnumerator];

  v16 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      v19 = 0;
      do
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v20 = *(*(&v34 + 1) + 8 * v19);
        if (v20)
        {
          [v20 asyncHandleRemoteCloseWithError:v12];
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [objectEnumerator countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  listeners2 = [(DataStreamBulkSendProtocol *)selfCopy listeners];
  objectEnumerator2 = [listeners2 objectEnumerator];

  v23 = [objectEnumerator2 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        v27 = *(*(&v30 + 1) + 8 * v26);
        if (v27)
        {
          [v27 accessoryDidCloseDataStream:accessory];
        }

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [objectEnumerator2 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v24);
  }

  listeners3 = [(DataStreamBulkSendProtocol *)selfCopy listeners];
  [listeners3 removeAllObjects];

  activeBulkSendSessions3 = [(DataStreamBulkSendProtocol *)selfCopy activeBulkSendSessions];
  [activeBulkSendSessions3 removeAllObjects];
}

- (BOOL)isActive
{
  listeners = [(DataStreamBulkSendProtocol *)self listeners];
  v3 = [listeners count] != 0;

  return v3;
}

- (void)dataStream:(id)stream didFailWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_10007FAFC(selfCopy);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream failed with error; cleaning up. (%@)", &v9, 0x16u);
  }

  [(DataStreamBulkSendProtocol *)selfCopy _closeAllSessionsWithError:errorCopy];
}

- (void)dataStreamInitiatedClose:(id)close
{
  selfCopy = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = sub_10007FAFC(selfCopy);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@DataStream initiated closing...", &v6, 0xCu);
  }
}

- (void)dataStreamDidClose:(id)close
{
  selfCopy = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = sub_10007FAFC(selfCopy);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@DataStream closed; cleaning up", &v6, 0xCu);
  }

  [(DataStreamBulkSendProtocol *)selfCopy _closeAllSessionsWithError:0];
}

- (void)dataStreamDidOpen:(id)open
{
  selfCopy = self;
  v4 = sub_10007FAA0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@DataStream did open; connected.", buf, 0xCu);
  }

  [(DataStreamBulkSendProtocol *)selfCopy setIsConnected:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  listeners = [(DataStreamBulkSendProtocol *)selfCopy listeners];
  objectEnumerator = [listeners objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (v12)
        {
          accessory = [(DataStreamBulkSendProtocol *)selfCopy accessory];
          [v12 accessoryDidStartListening:accessory];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  if (![(DataStreamBulkSendProtocol *)self isConnected])
  {
    selfCopy2 = self;
    v11 = sub_10007FAA0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = sub_10007FAFC(selfCopy2);
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = eventCopy;
    v13 = "%{public}@BulkSend dropping message because it is not running (topic=%@).";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEBUG;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v14, v15, v13, &v16, 0x16u);

    goto LABEL_7;
  }

  if (![eventCopy isEqualToString:@"data"])
  {
    if ([eventCopy isEqualToString:@"close"])
    {
      [(DataStreamBulkSendProtocol *)self _handleCloseMessage:payloadCopy];
      goto LABEL_8;
    }

    selfCopy2 = self;
    v11 = sub_10007FAA0();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v12 = sub_10007FAFC(selfCopy2);
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = eventCopy;
    v13 = "%{public}@DataSend received unexpected event '%@'";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  [(DataStreamBulkSendProtocol *)self _handleDataMessage:payloadCopy];
LABEL_8:
}

- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload
{
  requestCopy = request;
  headerCopy = header;
  payloadCopy = payload;
  if ([(DataStreamBulkSendProtocol *)self isConnected])
  {
    if ([requestCopy isEqualToString:@"open"])
    {
      [(DataStreamBulkSendProtocol *)self _handleOpenWithRequestHeader:headerCopy payload:payloadCopy];
    }

    else
    {
      selfCopy = self;
      v13 = sub_10007FAA0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = sub_10007FAFC(selfCopy);
        v15 = 138543618;
        v16 = v14;
        v17 = 2112;
        v18 = requestCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@DataSend received unexpected request '%@'", &v15, 0x16u);
      }
    }
  }
}

- (void)asyncBulkSendSessionCandidate:(id)candidate didAcceptOnQueue:(id)queue callback:(id)callback
{
  candidateCopy = candidate;
  queueCopy = queue;
  callbackCopy = callback;
  queue = [(DataStreamBulkSendProtocol *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100046614;
  v15[3] = &unk_100273AA8;
  v15[4] = self;
  v16 = candidateCopy;
  v17 = queueCopy;
  v18 = callbackCopy;
  v12 = callbackCopy;
  v13 = queueCopy;
  v14 = candidateCopy;
  dispatch_async(queue, v15);
}

- (void)asyncBulkSendSessionCandidate:(id)candidate didRejectWithStatus:(unsigned __int16)status
{
  candidateCopy = candidate;
  queue = [(DataStreamBulkSendProtocol *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000466E0;
  block[3] = &unk_100273AD0;
  block[4] = self;
  v10 = candidateCopy;
  statusCopy = status;
  v8 = candidateCopy;
  dispatch_async(queue, block);
}

- (void)asyncBulkSendSessionDidCancelSessionWithIdentifier:(id)identifier reason:(unsigned __int16)reason hadReceivedEof:(BOOL)eof completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(DataStreamBulkSendProtocol *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000467E0;
  v15[3] = &unk_100273AF8;
  v15[4] = self;
  v16 = identifierCopy;
  reasonCopy = reason;
  eofCopy = eof;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

- (id)_createSessionCandidateWithRequestHeader:(id)header metadata:(id)metadata
{
  headerCopy = header;
  selfCopy = self;
  metadataCopy = metadata;
  v9 = sub_10007FAA0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_10007FAFC(selfCopy);
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = headerCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Creating new receive candidate session (header %@)", &v13, 0x16u);
  }

  v11 = [[DataStreamBulkSendSessionCandidate alloc] initWithProtocol:selfCopy requestHeader:headerCopy metadata:metadataCopy];

  return v11;
}

- (id)_createSessionFromCandidate:(id)candidate queue:(id)queue
{
  queueCopy = queue;
  candidateCopy = candidate;
  _createSessionIdentifier = [(DataStreamBulkSendProtocol *)self _createSessionIdentifier];
  v9 = [DataStreamBulkSendSession alloc];
  logIdentifier = [(DataStreamBulkSendProtocol *)self logIdentifier];
  v11 = [(DataStreamBulkSendSession *)v9 initWithProtocol:self sessionIdentifier:_createSessionIdentifier queue:queueCopy logIdentifier:logIdentifier];

  selfCopy = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = sub_10007FAFC(selfCopy);
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = _createSessionIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}@Creating new receive session with streamIdentifier=%@", &v18, 0x16u);
  }

  activeBulkSendSessions = [(DataStreamBulkSendProtocol *)selfCopy activeBulkSendSessions];
  [activeBulkSendSessions setObject:v11 forKey:_createSessionIdentifier];

  requestHeader = [candidateCopy requestHeader];

  [(DataStreamBulkSendProtocol *)selfCopy _sendOpenResponseWithRequestHeader:requestHeader streamIdentifier:_createSessionIdentifier];

  return v11;
}

- (void)_sendOpenResponseWithRequestHeader:(id)header streamIdentifier:(id)identifier
{
  v9 = @"streamId";
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  headerCopy = header;
  v8 = [NSDictionary dictionaryWithObjects:&identifierCopy forKeys:&v9 count:1];

  [(DataStreamBulkSendProtocol *)self _sendOpenResponseWithRequestHeader:headerCopy payload:v8 status:0];
}

- (id)_createSessionIdentifier
{
  nextSessionIdentifier = [(DataStreamBulkSendProtocol *)self nextSessionIdentifier];
  [(DataStreamBulkSendProtocol *)self setNextSessionIdentifier:(nextSessionIdentifier + 1)];

  return [NSNumber numberWithUnsignedInt:nextSessionIdentifier];
}

- (void)_startSessionCandidate:(id)candidate queue:(id)queue callback:(id)callback
{
  candidateCopy = candidate;
  queueCopy = queue;
  callbackCopy = callback;
  v11 = [(DataStreamBulkSendProtocol *)self _createSessionFromCandidate:candidateCopy queue:queueCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  pendingReads = [candidateCopy pendingReads];
  v13 = [pendingReads countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(pendingReads);
        }

        [(DataStreamBulkSendProtocol *)self _pumpMessage:*(*(&v24 + 1) + 8 * v16) session:v11];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [pendingReads countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  receivedFailure = [candidateCopy receivedFailure];

  if (receivedFailure)
  {
    receivedFailure2 = [candidateCopy receivedFailure];
    [(DataStreamBulkSendProtocol *)self _pumpReceiveFailure:receivedFailure2 session:v11];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000471C0;
  v21[3] = &unk_100273720;
  v22 = v11;
  v23 = callbackCopy;
  v19 = v11;
  v20 = callbackCopy;
  dispatch_async(queueCopy, v21);
}

- (id)_getBulkSendSessionForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeBulkSendSessions = [(DataStreamBulkSendProtocol *)self activeBulkSendSessions];
  v6 = [activeBulkSendSessions objectForKey:identifierCopy];

  return v6;
}

- (void)_removeBulkSendSessionForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeBulkSendSessions = [(DataStreamBulkSendProtocol *)self activeBulkSendSessions];
  [activeBulkSendSessions removeObjectForKey:identifierCopy];
}

- (void)_handleOpenWithRequestHeader:(id)header payload:(id)payload
{
  headerCopy = header;
  payloadCopy = payload;
  v8 = [payloadCopy objectForKeyedSubscript:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [payloadCopy objectForKeyedSubscript:@"target"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [payloadCopy objectForKeyedSubscript:@"metadata"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v10)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    selfCopy = self;
    v19 = sub_10007FAA0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = sub_10007FAFC(selfCopy);
      v30 = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@Dropping 'open' because it is missing required keys (type=%@, target=%@)", &v30, 0x20u);
    }

    [(DataStreamBulkSendProtocol *)selfCopy _sendOpenResponseWithRequestHeader:headerCopy status:4];
  }

  else
  {
    listeners = [(DataStreamBulkSendProtocol *)self listeners];
    v22 = [listeners objectForKey:v10];

    selfCopy2 = self;
    v24 = sub_10007FAA0();
    v25 = v24;
    if (v22)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v26 = sub_10007FAFC(selfCopy2);
        v30 = 138543618;
        v31 = v26;
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}@Received 'open' with type=%@; passing to listener", &v30, 0x16u);
      }

      v27 = [(DataStreamBulkSendProtocol *)selfCopy2 _createSessionCandidateWithRequestHeader:headerCopy metadata:v16];
      accessory = [(DataStreamBulkSendProtocol *)selfCopy2 accessory];
      [v22 accessory:accessory didReceiveBulkSessionCandidate:v27];
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v29 = sub_10007FAFC(selfCopy2);
        v30 = 138543618;
        v31 = v29;
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%{public}@Received 'open' for type=%@ but no active listener accepted it", &v30, 0x16u);
      }

      [(DataStreamBulkSendProtocol *)selfCopy2 _maybeSubmitMetricForDroppedOpenRequestOfType:v10];
      [(DataStreamBulkSendProtocol *)selfCopy2 _sendOpenResponseWithRequestHeader:headerCopy bulkSendStatus:1];
    }
  }
}

- (void)_handleCloseMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"streamId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [messageCopy objectForKeyedSubscript:@"reason"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v7)
  {
    selfCopy = self;
    v13 = sub_10007FAA0();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    selfCopy2 = sub_10007FAFC(selfCopy);
    v19 = 138543362;
    v20 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Close dropped because streamIdentifier was not included", &v19, 0xCu);
LABEL_20:

    goto LABEL_21;
  }

  if (v10)
  {
    v10 = v8;
  }

  else
  {
    v10 = &off_100282380;
  }

  v23 = @"reason";
  v24 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  selfCopy = [NSError errorWithDomain:@"DKErrorDomain" code:28 userInfo:v11];

  v13 = [(DataStreamBulkSendProtocol *)self _getBulkSendSessionForSessionIdentifier:v7];
  selfCopy2 = self;
  v15 = sub_10007FAA0();
  v16 = v15;
  if (!v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = sub_10007FAFC(selfCopy2);
      v19 = 138543618;
      v20 = v18;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%{public}@Close packet for streamIdentifier=%@ dropped because no session is active", &v19, 0x16u);
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_10007FAFC(selfCopy2);
    v19 = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Received close packet for stream identifier: %@", &v19, 0x16u);
  }

  [(DataStreamBulkSendProtocol *)selfCopy2 _pumpReceiveFailure:selfCopy session:v13];
LABEL_21:
}

- (void)_handleDataMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"streamId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    selfCopy = self;
    selfCopy2 = sub_10007FAA0();
    if (!os_log_type_enabled(&selfCopy2->super, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_13;
    }

    v10 = sub_10007FAFC(selfCopy);
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, &selfCopy2->super, OS_LOG_TYPE_ERROR, "%{public}@Data packet dropped because no session identifier was present", &v12, 0xCu);
LABEL_11:

    goto LABEL_12;
  }

  selfCopy = [(DataStreamBulkSendProtocol *)self _getBulkSendSessionForSessionIdentifier:v7];
  if (!selfCopy)
  {
    selfCopy2 = self;
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = sub_10007FAFC(selfCopy2);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@Data packet for streamIdentifier=%@ dropped because no session is active", &v12, 0x16u);
    }

    goto LABEL_11;
  }

  [(DataStreamBulkSendProtocol *)self _pumpMessage:messageCopy session:selfCopy];
LABEL_13:
}

- (void)_pumpMessage:(id)message session:(id)session
{
  sessionCopy = session;
  messageCopy = message;
  v8 = [messageCopy objectForKeyedSubscript:@"packets"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [messageCopy objectForKeyedSubscript:@"endOfStream"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    v15 = 0;
    goto LABEL_13;
  }

  bOOLValue = [v13 BOOLValue];
  v15 = bOOLValue;
  if (v10)
  {
LABEL_13:
    v16 = [v10 count];
    if ((v15 & 1) != 0 || v16)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (bOOLValue)
  {
    v15 = 1;
LABEL_18:
    [sessionCopy asyncHandleIncomingPackets:v10 isEof:v15];
    goto LABEL_19;
  }

LABEL_15:
  selfCopy = self;
  v18 = sub_10007FAA0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = sub_10007FAFC(selfCopy);
    v20 = 138543362;
    v21 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@Received message with no packets", &v20, 0xCu);
  }

LABEL_19:
}

- (void)_pumpReceiveFailure:(id)failure session:(id)session
{
  sessionCopy = session;
  [sessionCopy asyncHandleRemoteCloseWithError:failure];
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [(DataStreamBulkSendProtocol *)self _removeBulkSendSessionForSessionIdentifier:sessionIdentifier];
}

- (void)_sendAckMessageWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dataStream = [(DataStreamBulkSendProtocol *)self dataStream];
  if (dataStream)
  {
    v20[0] = @"streamId";
    v20[1] = @"endOfStream";
    v21[0] = identifierCopy;
    v21[1] = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    selfCopy = self;
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = sub_10007FAFC(selfCopy);
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@Sending 'ack' for sid=%@", &v16, 0x16u);
    }

    [dataStream sendEventForProtocol:@"dataSend" topic:@"ack" payload:v9 completion:completionCopy];
  }

  else
  {
    selfCopy2 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy2);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@No data stream found", &v16, 0xCu);
    }

    v9 = [NSError errorWithDomain:@"DKErrorDomain" code:1 userInfo:0];
    completionCopy[2](completionCopy, v9);
  }
}

- (void)openSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback
{
  typeCopy = type;
  reasonCopy = reason;
  metadataCopy = metadata;
  queueCopy = queue;
  callbackCopy = callback;
  queue = [(DataStreamBulkSendProtocol *)self queue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100048438;
  v23[3] = &unk_100273B20;
  v23[4] = self;
  v24 = typeCopy;
  v25 = reasonCopy;
  v26 = metadataCopy;
  v27 = queueCopy;
  v28 = callbackCopy;
  v18 = callbackCopy;
  v19 = queueCopy;
  v20 = metadataCopy;
  v21 = reasonCopy;
  v22 = typeCopy;
  dispatch_async(queue, v23);
}

- (void)_openSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback
{
  typeCopy = type;
  reasonCopy = reason;
  metadataCopy = metadata;
  queueCopy = queue;
  callbackCopy = callback;
  queue = [(DataStreamBulkSendProtocol *)self queue];
  dispatch_assert_queue_V2(queue);

  _createSessionIdentifier = [(DataStreamBulkSendProtocol *)self _createSessionIdentifier];
  v50[0] = @"type";
  v50[1] = @"streamId";
  v50[2] = @"target";
  v50[3] = @"reason";
  v39 = typeCopy;
  v51[0] = typeCopy;
  v51[1] = _createSessionIdentifier;
  v51[2] = @"controller";
  v51[3] = reasonCopy;
  v19 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:4];
  v20 = [v19 mutableCopy];

  if (metadataCopy && [metadataCopy count])
  {
    [v20 setObject:metadataCopy forKeyedSubscript:@"metadata"];
  }

  bulkSendSessionContextFactory = [(DataStreamBulkSendProtocol *)self bulkSendSessionContextFactory];
  v22 = (bulkSendSessionContextFactory)[2](bulkSendSessionContextFactory, callbackCopy);

  pendingBulkSendSessionContextBySessionIdentifier = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
  [pendingBulkSendSessionContextBySessionIdentifier setObject:v22 forKeyedSubscript:_createSessionIdentifier];

  handleOpenRequestResponseTimer = [v22 handleOpenRequestResponseTimer];
  [handleOpenRequestResponseTimer setDelegate:self];

  queue2 = [(DataStreamBulkSendProtocol *)self queue];
  handleOpenRequestResponseTimer2 = [v22 handleOpenRequestResponseTimer];
  [handleOpenRequestResponseTimer2 setDelegateQueue:queue2];

  handleOpenRequestResponseTimer3 = [v22 handleOpenRequestResponseTimer];
  [handleOpenRequestResponseTimer3 resume];

  sendCloseEventTimer = [v22 sendCloseEventTimer];
  [sendCloseEventTimer setDelegate:self];

  queue3 = [(DataStreamBulkSendProtocol *)self queue];
  sendCloseEventTimer2 = [v22 sendCloseEventTimer];
  [sendCloseEventTimer2 setDelegateQueue:queue3];

  sendCloseEventTimer3 = [v22 sendCloseEventTimer];
  [sendCloseEventTimer3 resume];

  selfCopy = self;
  v33 = sub_10007FAA0();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = sub_10007FAFC(selfCopy);
    *buf = 138543874;
    v45 = v34;
    v46 = 2112;
    v47 = _createSessionIdentifier;
    v48 = 2112;
    v49 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%{public}@Starting bulk session with identifier: %@ and metadata: %@", buf, 0x20u);
  }

  dataStream = [(DataStreamBulkSendProtocol *)selfCopy dataStream];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100048844;
  v40[3] = &unk_100273B88;
  v40[4] = selfCopy;
  v41 = _createSessionIdentifier;
  v42 = queueCopy;
  v43 = callbackCopy;
  v36 = queueCopy;
  v37 = callbackCopy;
  v38 = _createSessionIdentifier;
  [dataStream sendRequestForProtocol:@"dataSend" topic:@"open" payload:v20 completion:v40];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  queue = [(DataStreamBulkSendProtocol *)self queue];
  dispatch_assert_queue_V2(queue);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  pendingBulkSendSessionContextBySessionIdentifier = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
  v7 = [pendingBulkSendSessionContextBySessionIdentifier countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *v30;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(pendingBulkSendSessionContextBySessionIdentifier);
      }

      selfCopy4 = *(*(&v29 + 1) + 8 * i);
      pendingBulkSendSessionContextBySessionIdentifier2 = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
      v13 = [pendingBulkSendSessionContextBySessionIdentifier2 objectForKey:selfCopy4];

      handleOpenRequestResponseTimer = [v13 handleOpenRequestResponseTimer];

      if (handleOpenRequestResponseTimer == fireCopy)
      {
        [v13 setHandleOpenRequestResponseTimer:0];
        v16 = selfCopy4;
        selfCopy = self;
        v18 = sub_10007FAA0();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        v19 = sub_10007FAFC(selfCopy);
        *buf = 138543618;
        v34 = v19;
        v35 = 2112;
        v36 = v16;
        v20 = "%{public}@Session with identifier: %@ open request response timer has expired";
        goto LABEL_15;
      }

      sendCloseEventTimer = [v13 sendCloseEventTimer];

      if (sendCloseEventTimer == fireCopy)
      {
        [v13 setSendCloseEventTimer:0];
        v21 = selfCopy4;
        selfCopy2 = self;
        v18 = sub_10007FAA0();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        v19 = sub_10007FAFC(selfCopy2);
        *buf = 138543618;
        v34 = v19;
        v35 = 2112;
        v36 = v21;
        v20 = "%{public}@Session with identifier: %@ send event close timer has expired";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v20, buf, 0x16u);

LABEL_16:
        if (!selfCopy4)
        {
          goto LABEL_20;
        }

        pendingBulkSendSessionContextBySessionIdentifier3 = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
        v24 = [pendingBulkSendSessionContextBySessionIdentifier3 objectForKeyedSubscript:selfCopy4];

        if ([v24 shouldCloseSessionWithTimeoutReason])
        {
          selfCopy3 = self;
          v26 = sub_10007FAA0();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
LABEL_24:

            goto LABEL_25;
          }

          pendingBulkSendSessionContextBySessionIdentifier4 = sub_10007FAFC(selfCopy3);
          *buf = 138543362;
          v34 = pendingBulkSendSessionContextBySessionIdentifier4;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%{public}@Skipping invoking the session start callback since handle response timer hasn't expired", buf, 0xCu);
        }

        else
        {
          selfCopy3 = [v24 sessionStartCallback];
          v26 = [NSError errorWithDomain:@"DKErrorDomain" code:12 userInfo:0];
          (selfCopy3->_dataStream)(selfCopy3, 0, v26);
          pendingBulkSendSessionContextBySessionIdentifier4 = [(DataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
          [pendingBulkSendSessionContextBySessionIdentifier4 setObject:0 forKeyedSubscript:selfCopy4];
        }

        goto LABEL_24;
      }
    }

    v8 = [pendingBulkSendSessionContextBySessionIdentifier countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_10:

LABEL_20:
  selfCopy4 = self;
  v24 = sub_10007FAA0();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v28 = sub_10007FAFC(selfCopy4);
    *buf = 138543618;
    v34 = v28;
    v35 = 2112;
    v36 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@Could not find expired timer for session with identifier: %@", buf, 0x16u);
  }

LABEL_25:
}

- (DataStreamProtocolDelegate)dataStream
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStream);

  return WeakRetained;
}

- (id)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end