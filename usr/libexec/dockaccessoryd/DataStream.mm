@interface DataStream
+ (id)logCategory;
- (BOOL)handleFirstMessageReceivedOnDataStream:(id)stream payload:(id)payload;
- (DataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier;
- (DataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier connectionTimer:(id)timer helloMessageResponseTimer:(id)responseTimer;
- (DataStreamDelegate)delegate;
- (id)createRequestIdentifier;
- (id)protocolWithName:(id)name;
- (void)_evaluateActiveStatusChange;
- (void)_failPendingMessagesWithError:(id)error;
- (void)_handlePendingEvents;
- (void)_handlePendingRequests;
- (void)_sendMessageWithHeader:(id)header payload:(id)payload completion:(id)completion;
- (void)addProtocol:(id)protocol name:(id)name;
- (void)close;
- (void)connect;
- (void)fulfillPendingRequestWithResponseHeader:(id)header payload:(id)payload;
- (void)invalidate;
- (void)sendEventForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion;
- (void)sendRequestForProtocol:(id)protocol topic:(id)topic identifier:(unint64_t)identifier payload:(id)payload completion:(id)completion;
- (void)sendRequestForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion;
- (void)setActive:(BOOL)active;
- (void)setTrafficClass:(unint64_t)class;
- (void)startConnectionTimer;
- (void)startHelloMessageResponseTimer;
- (void)timerDidFire:(id)fire;
- (void)transport:(id)transport didFailWithError:(id)error;
- (void)transport:(id)transport didReceiveRawFrame:(id)frame;
- (void)transportDidClose:(id)close;
- (void)transportDidOpen:(id)open;
@end

@implementation DataStream

+ (id)logCategory
{
  if (qword_1002ACB98 != -1)
  {
    sub_1001F7A98();
  }

  v1 = qword_1002ACBA0;

  return v1;
}

- (DataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queueCopy = queue;
  encryptionCopy = encryption;
  transportCopy = transport;
  v14 = [[HMFTimer alloc] initWithTimeInterval:0 options:10.0];
  v15 = [[HMFTimer alloc] initWithTimeInterval:0 options:10.0];
  v16 = [(DataStream *)self initWithTransport:transportCopy sessionEncryption:encryptionCopy workQueue:queueCopy logIdentifier:identifierCopy connectionTimer:v14 helloMessageResponseTimer:v15];

  return v16;
}

- (DataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier connectionTimer:(id)timer helloMessageResponseTimer:(id)responseTimer
{
  transportCopy = transport;
  encryptionCopy = encryption;
  queueCopy = queue;
  identifierCopy = identifier;
  timerCopy = timer;
  responseTimerCopy = responseTimer;
  v34.receiver = self;
  v34.super_class = DataStream;
  v19 = [(DataStream *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_transport, transport);
    objc_storeStrong(&v20->_sessionEncryption, encryption);
    objc_storeStrong(&v20->_workQueue, queue);
    v21 = [identifierCopy copy];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v21;

    objc_storeStrong(&v20->_connectionTimer, timer);
    objc_storeStrong(&v20->_helloMessageResponseTimer, responseTimer);
    v23 = +[NSMapTable strongToStrongObjectsMapTable];
    protocols = v20->_protocols;
    v20->_protocols = v23;

    v25 = [[DataStreamControlProtocol alloc] initWithLogIdentifier:identifierCopy];
    controlProtocol = v20->_controlProtocol;
    v20->_controlProtocol = v25;

    v27 = objc_alloc_init(NSMutableSet);
    pendingRequests = v20->_pendingRequests;
    v20->_pendingRequests = v27;

    v29 = objc_alloc_init(NSMutableArray);
    pendingEvents = v20->_pendingEvents;
    v20->_pendingEvents = v29;
  }

  return v20;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  workQueue = [(DataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_active != activeCopy)
  {
    self->_active = activeCopy;
    selfCopy = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10007FAFC(selfCopy);
      active = self->_active;
      v10 = HMFBooleanToString();
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream changes active to %@", &v12, 0x16u);
    }

    delegate = [(DataStream *)selfCopy delegate];
    [delegate dataStreamDidUpdateActiveStatus:selfCopy];
  }
}

- (void)connect
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@DataStream connecting", &v6, 0xCu);
  }

  [(DataStream *)selfCopy startConnectionTimer];
  transport = [(DataStream *)selfCopy transport];
  [transport connect];
}

- (void)invalidate
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@DataStream invalidated", buf, 0xCu);
  }

  transport = [(DataStream *)selfCopy transport];
  [transport invalidate];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  protocols = [(DataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v12 + 1) + 8 * v11) dataStreamInitiatedClose:selfCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)close
{
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@DataStream closing", buf, 0xCu);
  }

  transport = [(DataStream *)selfCopy transport];
  [transport close];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  protocols = [(DataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v12 + 1) + 8 * v11) dataStreamInitiatedClose:selfCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addProtocol:(id)protocol name:(id)name
{
  nameCopy = name;
  protocolCopy = protocol;
  protocols = [(DataStream *)self protocols];
  [protocols setObject:protocolCopy forKey:nameCopy];

  [(DataStream *)self _evaluateActiveStatusChange];
}

- (id)protocolWithName:(id)name
{
  nameCopy = name;
  workQueue = [(DataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  protocols = [(DataStream *)self protocols];
  v7 = [protocols objectForKey:nameCopy];

  return v7;
}

- (id)createRequestIdentifier
{
  nextRequestIdentifier = [(DataStream *)self nextRequestIdentifier];
  [(DataStream *)self setNextRequestIdentifier:[(DataStream *)self nextRequestIdentifier]+ 1];

  return [NSNumber numberWithUnsignedLongLong:nextRequestIdentifier];
}

- (void)_sendMessageWithHeader:(id)header payload:(id)payload completion:(id)completion
{
  headerCopy = header;
  payloadCopy = payload;
  completionCopy = completion;
  sessionEncryption = [(DataStream *)self sessionEncryption];

  if (sessionEncryption)
  {
    sessionEncryption2 = [(DataStream *)self sessionEncryption];
    v23 = 0;
    v13 = [DataStreamMessageCoder encryptEncryptedOPACKHeader:headerCopy payload:payloadCopy sessionEncryption:sessionEncryption2 error:&v23];
    v14 = v23;
  }

  else
  {
    v22 = 0;
    v13 = [DataStreamMessageCoder buildUnencryptedOPACKHeader:headerCopy payload:payloadCopy error:&v22];
    v14 = v22;
  }

  selfCopy = self;
  v16 = sub_10007FAA0();
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@DataStream encoding message failed (%@)", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v14);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = sub_10007FAFC(selfCopy);
      pendingRequests = [(DataStream *)selfCopy pendingRequests];
      *buf = 138543874;
      v25 = v19;
      v26 = 2112;
      v27 = headerCopy;
      v28 = 2112;
      v29 = pendingRequests;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}@DataStream Sending Message: %@ --> %@", buf, 0x20u);
    }

    transport = [(DataStream *)selfCopy transport];
    [transport sendRawFrame:v13 completion:completionCopy];
  }
}

- (void)sendEventForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion
{
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  completionCopy = completion;
  if ([(DataStream *)self firstMessageReceived])
  {
    controlProtocol = [(DataStream *)self controlProtocol];
    helloMessageResponseReceived = [controlProtocol helloMessageResponseReceived];

    if (helloMessageResponseReceived)
    {
      v15 = [DataStreamMessageCoder eventHeaderForProtocol:protocolCopy topic:topicCopy];
      [(DataStream *)self _sendMessageWithHeader:v15 payload:payloadCopy completion:completionCopy];
    }

    else
    {
      v15 = [NSError errorWithDomain:@"DKErrorDomain" code:22 userInfo:0];
      completionCopy[2](completionCopy, v15);
    }
  }

  else
  {
    v15 = [[DataStreamPendingEvent alloc] initWithProtocol:protocolCopy topic:topicCopy payload:payloadCopy completion:completionCopy];
    pendingEvents = [(DataStream *)self pendingEvents];
    [pendingEvents addObject:v15];
  }
}

- (void)sendRequestForProtocol:(id)protocol topic:(id)topic identifier:(unint64_t)identifier payload:(id)payload completion:(id)completion
{
  completionCopy = completion;
  payloadCopy = payload;
  topicCopy = topic;
  protocolCopy = protocol;
  v16 = [NSNumber numberWithUnsignedInteger:identifier];
  v17 = [DataStreamMessageCoder requestHeaderForProtocol:protocolCopy topic:topicCopy identifier:v16];

  [(DataStream *)self _sendMessageWithHeader:v17 payload:payloadCopy completion:completionCopy];
}

- (void)sendRequestForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion
{
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  completionCopy = completion;
  createRequestIdentifier = [(DataStream *)self createRequestIdentifier];
  if ([(DataStream *)self firstMessageReceived])
  {
    controlProtocol = [(DataStream *)self controlProtocol];
    helloMessageResponseReceived = [controlProtocol helloMessageResponseReceived];

    if ((helloMessageResponseReceived & 1) == 0)
    {
      v19 = [NSError errorWithDomain:@"DKErrorDomain" code:22 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v19, 0, 0);

      goto LABEL_7;
    }

    v17 = [DataStreamMessageCoder requestHeaderForProtocol:protocolCopy topic:topicCopy identifier:createRequestIdentifier];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100012390;
    v20[3] = &unk_1002733E8;
    v26 = completionCopy;
    v21 = createRequestIdentifier;
    v22 = protocolCopy;
    v23 = topicCopy;
    v24 = payloadCopy;
    selfCopy = self;
    [(DataStream *)self _sendMessageWithHeader:v17 payload:v24 completion:v20];
  }

  else
  {
    v17 = [[DataStreamPendingRequest alloc] initWithIdentifier:createRequestIdentifier protocol:protocolCopy topic:topicCopy payload:payloadCopy callback:completionCopy];
    pendingRequests = [(DataStream *)self pendingRequests];
    [pendingRequests addObject:v17];
  }

LABEL_7:
}

- (void)_evaluateActiveStatusChange
{
  workQueue = [(DataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  protocols = [(DataStream *)self protocols];
  v5 = [protocols countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(protocols);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        protocols2 = [(DataStream *)self protocols];
        v10 = [protocols2 objectForKey:v8];
        isActive = [v10 isActive];

        if (isActive)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [protocols countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(DataStream *)self setActive:v5];
}

- (void)setTrafficClass:(unint64_t)class
{
  selfCopy = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(selfCopy);
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    classCopy = class;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Setting traffic class %lu on transport", &v8, 0x16u);
  }

  transport = [(DataStream *)selfCopy transport];
  [transport setTrafficClass:class];
}

- (void)_failPendingMessagesWithError:(id)error
{
  errorCopy = error;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  pendingRequests = [(DataStream *)self pendingRequests];
  v6 = [pendingRequests countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(pendingRequests);
        }

        callback = [*(*(&v23 + 1) + 8 * v9) callback];
        (callback)[2](callback, errorCopy, 0, 0);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [pendingRequests countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  pendingRequests2 = [(DataStream *)self pendingRequests];
  [pendingRequests2 removeAllObjects];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  pendingEvents = [(DataStream *)self pendingEvents];
  v13 = [pendingEvents countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(pendingEvents);
        }

        completion = [*(*(&v19 + 1) + 8 * v16) completion];
        (completion)[2](completion, errorCopy);

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [pendingEvents countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  pendingEvents2 = [(DataStream *)self pendingEvents];
  [pendingEvents2 removeAllObjects];
}

- (void)transport:(id)transport didFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(DataStream *)self delegate];
  selfCopy = self;
  v8 = sub_10007FAA0();
  v9 = v8;
  if (delegate)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Data stream failure (%@)", buf, 0x16u);
    }

    [delegate dataStream:selfCopy didFailWithError:errorCopy];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(selfCopy);
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Data stream failure (%@); but no delegate", buf, 0x16u);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  protocols = [(DataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v14 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        if (v18)
        {
          [v18 dataStream:selfCopy didFailWithError:errorCopy];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(DataStream *)selfCopy _failPendingMessagesWithError:errorCopy];
}

- (void)transportDidClose:(id)close
{
  delegate = [(DataStream *)self delegate];
  selfCopy = self;
  v6 = sub_10007FAA0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (delegate)
  {
    if (v7)
    {
      v8 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Data stream closed", buf, 0xCu);
    }

    [delegate dataStreamDidClose:selfCopy];
  }

  else
  {
    if (v7)
    {
      v9 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Data stream closed (but no delegate!)", buf, 0xCu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  protocols = [(DataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v12 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v17 + 1) + 8 * v15) dataStreamDidClose:selfCopy];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
  [(DataStream *)selfCopy _failPendingMessagesWithError:v16];
}

- (void)transportDidOpen:(id)open
{
  [(DataStream *)self setConnectionTimer:0];
  delegate = [(DataStream *)self delegate];
  selfCopy = self;
  v6 = sub_10007FAA0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (delegate)
  {
    if (v7)
    {
      v8 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN!", buf, 0xCu);
    }

    [delegate dataStreamDidOpen:selfCopy];
  }

  else
  {
    if (v7)
    {
      v9 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN (but no delegate!)", buf, 0xCu);
    }
  }

  controlProtocol = [(DataStream *)selfCopy controlProtocol];
  [controlProtocol dataStreamDidOpen:selfCopy];

  [(DataStream *)selfCopy startHelloMessageResponseTimer];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  protocols = [(DataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v13 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (v17)
        {
          [v17 dataStreamDidOpen:selfCopy];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (BOOL)handleFirstMessageReceivedOnDataStream:(id)stream payload:(id)payload
{
  streamCopy = stream;
  payloadCopy = payload;
  v8 = [streamCopy objectForKeyedSubscript:@"protocol"];
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
  if (([(DataStream *)v10 isEqualToString:@"control"]& 1) == 0)
  {
    selfCopy = self;
    v13 = sub_10007FAA0();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      helloMessageResponseReceived = 0;
      goto LABEL_17;
    }

    selfCopy2 = sub_10007FAFC(selfCopy);
    v21 = 138543874;
    v22 = selfCopy2;
    v23 = 2112;
    v24 = @"control";
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Expected protocol name: %@ received: %@", &v21, 0x20u);
LABEL_15:

    goto LABEL_16;
  }

  selfCopy = [streamCopy objectForKeyedSubscript:@"response"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = selfCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (!v13)
  {
    selfCopy2 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(selfCopy2);
      v21 = 138543874;
      v22 = v19;
      v23 = 2112;
      v24 = @"response";
      v25 = 2112;
      v26 = selfCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected %@ key value: %@", &v21, 0x20u);
    }

    goto LABEL_15;
  }

  controlProtocol = [(DataStream *)self controlProtocol];
  [controlProtocol dataStream:self didReceiveResponse:selfCopy header:streamCopy payload:payloadCopy];

  controlProtocol2 = [(DataStream *)self controlProtocol];
  helloMessageResponseReceived = [controlProtocol2 helloMessageResponseReceived];

LABEL_17:
  return helloMessageResponseReceived;
}

- (void)_handlePendingRequests
{
  pendingRequests = [(DataStream *)self pendingRequests];
  v4 = [pendingRequests copy];

  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(selfCopy);
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending requests [%@]", buf, 0x16u);
  }

  pendingRequests2 = [(DataStream *)selfCopy pendingRequests];
  [pendingRequests2 removeAllObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        protocol = [v15 protocol];
        topic = [v15 topic];
        payload = [v15 payload];
        callback = [v15 callback];
        [(DataStream *)selfCopy sendRequestForProtocol:protocol topic:topic payload:payload completion:callback];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_handlePendingEvents
{
  pendingEvents = [(DataStream *)self pendingEvents];
  v4 = [pendingEvents copy];

  selfCopy = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(selfCopy);
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending events [%@]", buf, 0x16u);
  }

  pendingEvents2 = [(DataStream *)selfCopy pendingEvents];
  [pendingEvents2 removeAllObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        protocol = [v15 protocol];
        topic = [v15 topic];
        payload = [v15 payload];
        completion = [v15 completion];
        [(DataStream *)selfCopy sendEventForProtocol:protocol topic:topic payload:payload completion:completion];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)transport:(id)transport didReceiveRawFrame:(id)frame
{
  frameCopy = frame;
  delegate = [(DataStream *)self delegate];
  selfCopy = self;
  v8 = sub_10007FAA0();
  v9 = v8;
  if (delegate)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v63 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Data stream received frame", buf, 0xCu);
    }

    [delegate dataStreamDidReceiveRawFrame:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(selfCopy);
      *buf = 138543362;
      v63 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Data stream received frame; but no delegate", buf, 0xCu);
    }
  }

  if (![frameCopy length])
  {
    v12 = selfCopy;
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v12);
      *buf = 138543362;
      v63 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@DataStream dropping truncated frame of zero-length", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v12 = 0;
  v13 = *[frameCopy bytes];
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      v17 = 0;
      v18 = 0;
      if (v13 == 3)
      {
        sessionEncryption = [(DataStream *)selfCopy sessionEncryption];

        if (sessionEncryption)
        {
          v21 = selfCopy;
          v22 = sub_10007FAA0();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = sub_10007FAFC(v21);
            *buf = 138543362;
            v63 = v23;
            v24 = "%{public}@Data stream failed due to receiving encrypted frame";
LABEL_25:
            v26 = v22;
            v27 = 12;
            goto LABEL_26;
          }

LABEL_27:

          v12 = 0;
          v17 = 0;
          v18 = 0;
          goto LABEL_28;
        }

        v57 = 0;
        v58 = 0;
        v56 = 0;
        v16 = [DataStreamMessageCoder unpackUnencryptedOPACKFrame:frameCopy receivedHeader:&v58 receivedPayload:&v57 error:&v56];
        v12 = v58;
        v17 = v57;
        v18 = v56;
        if (!v18)
        {
          goto LABEL_33;
        }
      }

LABEL_28:
      v29 = selfCopy;
      v30 = sub_10007FAA0();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = sub_10007FAFC(v29);
        *buf = 138543618;
        v63 = v31;
        v64 = 2112;
        v65 = v18;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (%@)", buf, 0x16u);
      }

      goto LABEL_31;
    }

LABEL_21:
    v25 = selfCopy;
    v22 = sub_10007FAA0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = sub_10007FAFC(v25);
      *buf = 138543618;
      v63 = v23;
      v64 = 1024;
      LODWORD(v65) = v13;
      v24 = "%{public}@Data stream failed due to unrecognized frame type 0x%02x";
      v26 = v22;
      v27 = 18;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v24, buf, v27);

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  sessionEncryption2 = [(DataStream *)selfCopy sessionEncryption];

  if (!sessionEncryption2)
  {
    v28 = selfCopy;
    v22 = sub_10007FAA0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = sub_10007FAFC(v28);
      *buf = 138543362;
      v63 = v23;
      v24 = "%{public}@Data stream failed due to receiving unencrypted frame";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  sessionEncryption3 = [(DataStream *)selfCopy sessionEncryption];
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v16 = [DataStreamMessageCoder decryptEncryptedOPACKFrame:frameCopy sessionEncryption:sessionEncryption3 receivedHeader:&v61 receivedPayload:&v60 error:&v59];
  v12 = v61;
  v17 = v60;
  v18 = v59;

  if (v18)
  {
    goto LABEL_28;
  }

LABEL_33:
  if ((v16 & 1) == 0)
  {
    goto LABEL_28;
  }

  if ([(DataStream *)selfCopy firstMessageReceived])
  {
    v32 = [(DataStream *)v12 objectForKeyedSubscript:@"response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    if (v34)
    {
      [(DataStream *)selfCopy fulfillPendingRequestWithResponseHeader:v12 payload:v17];
LABEL_75:

      goto LABEL_31;
    }

    v39 = [(DataStream *)v12 objectForKeyedSubscript:@"protocol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    if (v41)
    {
      if ([v41 isEqual:@"control"])
      {
        v32 = [(DataStream *)v12 objectForKeyedSubscript:@"event"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v42 = v32;
        }

        else
        {
          v42 = 0;
        }

        v43 = v42;

        if (v43)
        {
          controlProtocol = [(DataStream *)selfCopy controlProtocol];
          v45 = controlProtocol;
LABEL_64:
          [(DataStream *)controlProtocol dataStream:selfCopy didReceiveEvent:v43 header:v12 payload:v17];
LABEL_74:

          goto LABEL_75;
        }

        v32 = [(DataStream *)v12 objectForKeyedSubscript:@"request"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v51 = v32;
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;

        if (v52)
        {
          controlProtocol2 = [(DataStream *)selfCopy controlProtocol];
          v45 = controlProtocol2;
LABEL_81:
          [(DataStream *)controlProtocol2 dataStream:selfCopy didReceiveRequest:v52 header:v12 payload:v17];
          goto LABEL_74;
        }
      }

      else
      {
        protocols = [(DataStream *)selfCopy protocols];
        v45 = [protocols objectForKey:v41];

        if (!v45)
        {
          v46 = selfCopy;
          v47 = sub_10007FAA0();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v54 = sub_10007FAFC(v46);
            *buf = 138543618;
            v63 = v54;
            v64 = 2112;
            v65 = v41;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (no protocol named %@)", buf, 0x16u);
          }

          goto LABEL_72;
        }

        v32 = [(DataStream *)v12 objectForKeyedSubscript:@"event"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = v32;
        }

        else
        {
          v50 = 0;
        }

        v43 = v50;

        if (v43)
        {
          controlProtocol = v45;
          goto LABEL_64;
        }

        v32 = [(DataStream *)v12 objectForKeyedSubscript:@"request"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = v32;
        }

        else
        {
          v55 = 0;
        }

        v52 = v55;

        if (v52)
        {
          controlProtocol2 = v45;
          goto LABEL_81;
        }
      }

      v45 = selfCopy;
      v46 = sub_10007FAA0();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        goto LABEL_73;
      }

      v47 = sub_10007FAFC(v45);
      *buf = 138543362;
      v63 = v47;
      v48 = "%{public}@Message received but no protocol accepted it; dropped!";
    }

    else
    {
      v45 = selfCopy;
      v46 = sub_10007FAA0();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
LABEL_73:

        v32 = 0;
        goto LABEL_74;
      }

      v47 = sub_10007FAFC(v45);
      *buf = 138543362;
      v63 = v47;
      v48 = "%{public}@DataStream dropping incoming message (header missing protocol)";
    }

    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, v48, buf, 0xCu);
LABEL_72:

    goto LABEL_73;
  }

  if (![(DataStream *)selfCopy handleFirstMessageReceivedOnDataStream:v12 payload:v17])
  {
    v35 = selfCopy;
    v36 = sub_10007FAA0();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = sub_10007FAFC(v35);
      *buf = 138543362;
      v63 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected first message on the data stream", buf, 0xCu);
    }

    [(DataStream *)v35 close];
  }

  [(DataStream *)selfCopy setFirstMessageReceived:1];
  helloMessageResponseTimer = [(DataStream *)selfCopy helloMessageResponseTimer];
  [helloMessageResponseTimer suspend];

  [(DataStream *)selfCopy setHelloMessageResponseTimer:0];
  [(DataStream *)selfCopy _handlePendingRequests];
  [(DataStream *)selfCopy _handlePendingEvents];
LABEL_31:
}

- (void)fulfillPendingRequestWithResponseHeader:(id)header payload:(id)payload
{
  headerCopy = header;
  payloadCopy = payload;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  pendingRequests = [(DataStream *)self pendingRequests];
  v9 = [pendingRequests countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(pendingRequests);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      if ([v13 matchesResponseHeader:headerCopy])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [pendingRequests countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    selfCopy = v13;

    if (!selfCopy)
    {
      goto LABEL_12;
    }

    callback = [(DataStream *)selfCopy callback];
    (callback)[2](callback, 0, headerCopy, payloadCopy);

    pendingRequests2 = [(DataStream *)self pendingRequests];
    [pendingRequests2 removeObject:selfCopy];
  }

  else
  {
LABEL_9:

LABEL_12:
    selfCopy = self;
    pendingRequests2 = sub_10007FAA0();
    if (os_log_type_enabled(pendingRequests2, OS_LOG_TYPE_INFO))
    {
      v17 = sub_10007FAFC(selfCopy);
      pendingRequests3 = [(DataStream *)selfCopy pendingRequests];
      *buf = 138543874;
      v24 = v17;
      v25 = 2112;
      v26 = headerCopy;
      v27 = 2112;
      v28 = pendingRequests3;
      _os_log_impl(&_mh_execute_header, pendingRequests2, OS_LOG_TYPE_INFO, "%{public}@No pending request found for response with header: %@. Pending %@", buf, 0x20u);
    }
  }
}

- (void)startConnectionTimer
{
  connectionTimer = [(DataStream *)self connectionTimer];
  [connectionTimer setDelegate:self];

  workQueue = [(DataStream *)self workQueue];
  connectionTimer2 = [(DataStream *)self connectionTimer];
  [connectionTimer2 setDelegateQueue:workQueue];

  connectionTimer3 = [(DataStream *)self connectionTimer];
  [connectionTimer3 resume];
}

- (void)startHelloMessageResponseTimer
{
  helloMessageResponseTimer = [(DataStream *)self helloMessageResponseTimer];
  [helloMessageResponseTimer setDelegate:self];

  workQueue = [(DataStream *)self workQueue];
  helloMessageResponseTimer2 = [(DataStream *)self helloMessageResponseTimer];
  [helloMessageResponseTimer2 setDelegateQueue:workQueue];

  helloMessageResponseTimer3 = [(DataStream *)self helloMessageResponseTimer];
  [helloMessageResponseTimer3 resume];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(DataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  connectionTimer = [(DataStream *)self connectionTimer];

  if (connectionTimer == fireCopy)
  {
    selfCopy = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(selfCopy);
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Data stream failed to connect in time; closing!";
      goto LABEL_7;
    }

LABEL_8:

    [(DataStream *)self close];
    goto LABEL_9;
  }

  helloMessageResponseTimer = [(DataStream *)self helloMessageResponseTimer];

  if (helloMessageResponseTimer == fireCopy)
  {
    selfCopy2 = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(selfCopy2);
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Data stream failed to receive first message in time; closing!";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, &v13, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (DataStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end