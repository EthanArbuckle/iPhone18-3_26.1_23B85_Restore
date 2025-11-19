@interface DataStream
+ (id)logCategory;
- (BOOL)handleFirstMessageReceivedOnDataStream:(id)a3 payload:(id)a4;
- (DataStream)initWithTransport:(id)a3 sessionEncryption:(id)a4 workQueue:(id)a5 logIdentifier:(id)a6;
- (DataStream)initWithTransport:(id)a3 sessionEncryption:(id)a4 workQueue:(id)a5 logIdentifier:(id)a6 connectionTimer:(id)a7 helloMessageResponseTimer:(id)a8;
- (DataStreamDelegate)delegate;
- (id)createRequestIdentifier;
- (id)protocolWithName:(id)a3;
- (void)_evaluateActiveStatusChange;
- (void)_failPendingMessagesWithError:(id)a3;
- (void)_handlePendingEvents;
- (void)_handlePendingRequests;
- (void)_sendMessageWithHeader:(id)a3 payload:(id)a4 completion:(id)a5;
- (void)addProtocol:(id)a3 name:(id)a4;
- (void)close;
- (void)connect;
- (void)fulfillPendingRequestWithResponseHeader:(id)a3 payload:(id)a4;
- (void)invalidate;
- (void)sendEventForProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6;
- (void)sendRequestForProtocol:(id)a3 topic:(id)a4 identifier:(unint64_t)a5 payload:(id)a6 completion:(id)a7;
- (void)sendRequestForProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6;
- (void)setActive:(BOOL)a3;
- (void)setTrafficClass:(unint64_t)a3;
- (void)startConnectionTimer;
- (void)startHelloMessageResponseTimer;
- (void)timerDidFire:(id)a3;
- (void)transport:(id)a3 didFailWithError:(id)a4;
- (void)transport:(id)a3 didReceiveRawFrame:(id)a4;
- (void)transportDidClose:(id)a3;
- (void)transportDidOpen:(id)a3;
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

- (DataStream)initWithTransport:(id)a3 sessionEncryption:(id)a4 workQueue:(id)a5 logIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[HMFTimer alloc] initWithTimeInterval:0 options:10.0];
  v15 = [[HMFTimer alloc] initWithTimeInterval:0 options:10.0];
  v16 = [(DataStream *)self initWithTransport:v13 sessionEncryption:v12 workQueue:v11 logIdentifier:v10 connectionTimer:v14 helloMessageResponseTimer:v15];

  return v16;
}

- (DataStream)initWithTransport:(id)a3 sessionEncryption:(id)a4 workQueue:(id)a5 logIdentifier:(id)a6 connectionTimer:(id)a7 helloMessageResponseTimer:(id)a8
{
  v33 = a3;
  v32 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v34.receiver = self;
  v34.super_class = DataStream;
  v19 = [(DataStream *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_transport, a3);
    objc_storeStrong(&v20->_sessionEncryption, a4);
    objc_storeStrong(&v20->_workQueue, a5);
    v21 = [v16 copy];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v21;

    objc_storeStrong(&v20->_connectionTimer, a7);
    objc_storeStrong(&v20->_helloMessageResponseTimer, a8);
    v23 = +[NSMapTable strongToStrongObjectsMapTable];
    protocols = v20->_protocols;
    v20->_protocols = v23;

    v25 = [[DataStreamControlProtocol alloc] initWithLogIdentifier:v16];
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

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(DataStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_active != v3)
  {
    self->_active = v3;
    v6 = self;
    v7 = sub_10007FAA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = sub_10007FAFC(v6);
      active = self->_active;
      v10 = HMFBooleanToString();
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream changes active to %@", &v12, 0x16u);
    }

    v11 = [(DataStream *)v6 delegate];
    [v11 dataStreamDidUpdateActiveStatus:v6];
  }
}

- (void)connect
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@DataStream connecting", &v6, 0xCu);
  }

  [(DataStream *)v2 startConnectionTimer];
  v5 = [(DataStream *)v2 transport];
  [v5 connect];
}

- (void)invalidate
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@DataStream invalidated", buf, 0xCu);
  }

  v5 = [(DataStream *)v2 transport];
  [v5 invalidate];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(DataStream *)v2 protocols];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) dataStreamInitiatedClose:v2];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)close
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@DataStream closing", buf, 0xCu);
  }

  v5 = [(DataStream *)v2 transport];
  [v5 close];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(DataStream *)v2 protocols];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) dataStreamInitiatedClose:v2];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addProtocol:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DataStream *)self protocols];
  [v8 setObject:v7 forKey:v6];

  [(DataStream *)self _evaluateActiveStatusChange];
}

- (id)protocolWithName:(id)a3
{
  v4 = a3;
  v5 = [(DataStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(DataStream *)self protocols];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (id)createRequestIdentifier
{
  v3 = [(DataStream *)self nextRequestIdentifier];
  [(DataStream *)self setNextRequestIdentifier:[(DataStream *)self nextRequestIdentifier]+ 1];

  return [NSNumber numberWithUnsignedLongLong:v3];
}

- (void)_sendMessageWithHeader:(id)a3 payload:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DataStream *)self sessionEncryption];

  if (v11)
  {
    v12 = [(DataStream *)self sessionEncryption];
    v23 = 0;
    v13 = [DataStreamMessageCoder encryptEncryptedOPACKHeader:v8 payload:v9 sessionEncryption:v12 error:&v23];
    v14 = v23;
  }

  else
  {
    v22 = 0;
    v13 = [DataStreamMessageCoder buildUnencryptedOPACKHeader:v8 payload:v9 error:&v22];
    v14 = v22;
  }

  v15 = self;
  v16 = sub_10007FAA0();
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(v15);
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@DataStream encoding message failed (%@)", buf, 0x16u);
    }

    v10[2](v10, v14);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = sub_10007FAFC(v15);
      v20 = [(DataStream *)v15 pendingRequests];
      *buf = 138543874;
      v25 = v19;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}@DataStream Sending Message: %@ --> %@", buf, 0x20u);
    }

    v21 = [(DataStream *)v15 transport];
    [v21 sendRawFrame:v13 completion:v10];
  }
}

- (void)sendEventForProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(DataStream *)self firstMessageReceived])
  {
    v13 = [(DataStream *)self controlProtocol];
    v14 = [v13 helloMessageResponseReceived];

    if (v14)
    {
      v15 = [DataStreamMessageCoder eventHeaderForProtocol:v17 topic:v10];
      [(DataStream *)self _sendMessageWithHeader:v15 payload:v11 completion:v12];
    }

    else
    {
      v15 = [NSError errorWithDomain:@"DKErrorDomain" code:22 userInfo:0];
      v12[2](v12, v15);
    }
  }

  else
  {
    v15 = [[DataStreamPendingEvent alloc] initWithProtocol:v17 topic:v10 payload:v11 completion:v12];
    v16 = [(DataStream *)self pendingEvents];
    [v16 addObject:v15];
  }
}

- (void)sendRequestForProtocol:(id)a3 topic:(id)a4 identifier:(unint64_t)a5 payload:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [NSNumber numberWithUnsignedInteger:a5];
  v17 = [DataStreamMessageCoder requestHeaderForProtocol:v15 topic:v14 identifier:v16];

  [(DataStream *)self _sendMessageWithHeader:v17 payload:v13 completion:v12];
}

- (void)sendRequestForProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(DataStream *)self createRequestIdentifier];
  if ([(DataStream *)self firstMessageReceived])
  {
    v15 = [(DataStream *)self controlProtocol];
    v16 = [v15 helloMessageResponseReceived];

    if ((v16 & 1) == 0)
    {
      v19 = [NSError errorWithDomain:@"DKErrorDomain" code:22 userInfo:0];
      (*(v13 + 2))(v13, v19, 0, 0);

      goto LABEL_7;
    }

    v17 = [DataStreamMessageCoder requestHeaderForProtocol:v10 topic:v11 identifier:v14];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100012390;
    v20[3] = &unk_1002733E8;
    v26 = v13;
    v21 = v14;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = self;
    [(DataStream *)self _sendMessageWithHeader:v17 payload:v24 completion:v20];
  }

  else
  {
    v17 = [[DataStreamPendingRequest alloc] initWithIdentifier:v14 protocol:v10 topic:v11 payload:v12 callback:v13];
    v18 = [(DataStream *)self pendingRequests];
    [v18 addObject:v17];
  }

LABEL_7:
}

- (void)_evaluateActiveStatusChange
{
  v3 = [(DataStream *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(DataStream *)self protocols];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(DataStream *)self protocols];
        v10 = [v9 objectForKey:v8];
        v11 = [v10 isActive];

        if (v11)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)setTrafficClass:(unint64_t)a3
{
  v4 = self;
  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = sub_10007FAFC(v4);
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Setting traffic class %lu on transport", &v8, 0x16u);
  }

  v7 = [(DataStream *)v4 transport];
  [v7 setTrafficClass:a3];
}

- (void)_failPendingMessagesWithError:(id)a3
{
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(DataStream *)self pendingRequests];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * v9) callback];
        (v10)[2](v10, v4, 0, 0);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = [(DataStream *)self pendingRequests];
  [v11 removeAllObjects];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(DataStream *)self pendingEvents];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) completion];
        (v17)[2](v17, v4);

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = [(DataStream *)self pendingEvents];
  [v18 removeAllObjects];
}

- (void)transport:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(DataStream *)self delegate];
  v7 = self;
  v8 = sub_10007FAA0();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(v7);
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Data stream failure (%@)", buf, 0x16u);
    }

    [v6 dataStream:v7 didFailWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v7);
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Data stream failure (%@); but no delegate", buf, 0x16u);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(DataStream *)v7 protocols];
  v13 = [v12 objectEnumerator];

  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        if (v18)
        {
          [v18 dataStream:v7 didFailWithError:v5];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(DataStream *)v7 _failPendingMessagesWithError:v5];
}

- (void)transportDidClose:(id)a3
{
  v4 = [(DataStream *)self delegate];
  v5 = self;
  v6 = sub_10007FAA0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v7)
    {
      v8 = sub_10007FAFC(v5);
      *buf = 138543362;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Data stream closed", buf, 0xCu);
    }

    [v4 dataStreamDidClose:v5];
  }

  else
  {
    if (v7)
    {
      v9 = sub_10007FAFC(v5);
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Data stream closed (but no delegate!)", buf, 0xCu);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(DataStream *)v5 protocols];
  v11 = [v10 objectEnumerator];

  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15) dataStreamDidClose:v5];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = [NSError errorWithDomain:@"DKErrorDomain" code:39 userInfo:0];
  [(DataStream *)v5 _failPendingMessagesWithError:v16];
}

- (void)transportDidOpen:(id)a3
{
  [(DataStream *)self setConnectionTimer:0];
  v4 = [(DataStream *)self delegate];
  v5 = self;
  v6 = sub_10007FAA0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v7)
    {
      v8 = sub_10007FAFC(v5);
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN!", buf, 0xCu);
    }

    [v4 dataStreamDidOpen:v5];
  }

  else
  {
    if (v7)
    {
      v9 = sub_10007FAFC(v5);
      *buf = 138543362;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN (but no delegate!)", buf, 0xCu);
    }
  }

  v10 = [(DataStream *)v5 controlProtocol];
  [v10 dataStreamDidOpen:v5];

  [(DataStream *)v5 startHelloMessageResponseTimer];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(DataStream *)v5 protocols];
  v12 = [v11 objectEnumerator];

  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        if (v17)
        {
          [v17 dataStreamDidOpen:v5];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

- (BOOL)handleFirstMessageReceivedOnDataStream:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"protocol"];
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
    v11 = self;
    v13 = sub_10007FAA0();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v16 = 0;
      goto LABEL_17;
    }

    v17 = sub_10007FAFC(v11);
    v21 = 138543874;
    v22 = v17;
    v23 = 2112;
    v24 = @"control";
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Expected protocol name: %@ received: %@", &v21, 0x20u);
LABEL_15:

    goto LABEL_16;
  }

  v11 = [v6 objectForKeyedSubscript:@"response"];
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
    v17 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      v21 = 138543874;
      v22 = v19;
      v23 = 2112;
      v24 = @"response";
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected %@ key value: %@", &v21, 0x20u);
    }

    goto LABEL_15;
  }

  v14 = [(DataStream *)self controlProtocol];
  [v14 dataStream:self didReceiveResponse:v11 header:v6 payload:v7];

  v15 = [(DataStream *)self controlProtocol];
  v16 = [v15 helloMessageResponseReceived];

LABEL_17:
  return v16;
}

- (void)_handlePendingRequests
{
  v3 = [(DataStream *)self pendingRequests];
  v4 = [v3 copy];

  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v5);
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending requests [%@]", buf, 0x16u);
  }

  v9 = [(DataStream *)v5 pendingRequests];
  [v9 removeAllObjects];

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
        v16 = [v15 protocol];
        v17 = [v15 topic];
        v18 = [v15 payload];
        v19 = [v15 callback];
        [(DataStream *)v5 sendRequestForProtocol:v16 topic:v17 payload:v18 completion:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_handlePendingEvents
{
  v3 = [(DataStream *)self pendingEvents];
  v4 = [v3 copy];

  v5 = self;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v5);
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending events [%@]", buf, 0x16u);
  }

  v9 = [(DataStream *)v5 pendingEvents];
  [v9 removeAllObjects];

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
        v16 = [v15 protocol];
        v17 = [v15 topic];
        v18 = [v15 payload];
        v19 = [v15 completion];
        [(DataStream *)v5 sendEventForProtocol:v16 topic:v17 payload:v18 completion:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)transport:(id)a3 didReceiveRawFrame:(id)a4
{
  v5 = a4;
  v6 = [(DataStream *)self delegate];
  v7 = self;
  v8 = sub_10007FAA0();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = sub_10007FAFC(v7);
      *buf = 138543362;
      v63 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@Data stream received frame", buf, 0xCu);
    }

    [v6 dataStreamDidReceiveRawFrame:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_10007FAFC(v7);
      *buf = 138543362;
      v63 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Data stream received frame; but no delegate", buf, 0xCu);
    }
  }

  if (![v5 length])
  {
    v12 = v7;
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
  v13 = *[v5 bytes];
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      v17 = 0;
      v18 = 0;
      if (v13 == 3)
      {
        v20 = [(DataStream *)v7 sessionEncryption];

        if (v20)
        {
          v21 = v7;
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
        v16 = [DataStreamMessageCoder unpackUnencryptedOPACKFrame:v5 receivedHeader:&v58 receivedPayload:&v57 error:&v56];
        v12 = v58;
        v17 = v57;
        v18 = v56;
        if (!v18)
        {
          goto LABEL_33;
        }
      }

LABEL_28:
      v29 = v7;
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
    v25 = v7;
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

  v14 = [(DataStream *)v7 sessionEncryption];

  if (!v14)
  {
    v28 = v7;
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

  v15 = [(DataStream *)v7 sessionEncryption];
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v16 = [DataStreamMessageCoder decryptEncryptedOPACKFrame:v5 sessionEncryption:v15 receivedHeader:&v61 receivedPayload:&v60 error:&v59];
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

  if ([(DataStream *)v7 firstMessageReceived])
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
      [(DataStream *)v7 fulfillPendingRequestWithResponseHeader:v12 payload:v17];
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
          v44 = [(DataStream *)v7 controlProtocol];
          v45 = v44;
LABEL_64:
          [(DataStream *)v44 dataStream:v7 didReceiveEvent:v43 header:v12 payload:v17];
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
          v53 = [(DataStream *)v7 controlProtocol];
          v45 = v53;
LABEL_81:
          [(DataStream *)v53 dataStream:v7 didReceiveRequest:v52 header:v12 payload:v17];
          goto LABEL_74;
        }
      }

      else
      {
        v49 = [(DataStream *)v7 protocols];
        v45 = [v49 objectForKey:v41];

        if (!v45)
        {
          v46 = v7;
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
          v44 = v45;
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
          v53 = v45;
          goto LABEL_81;
        }
      }

      v45 = v7;
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
      v45 = v7;
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

  if (![(DataStream *)v7 handleFirstMessageReceivedOnDataStream:v12 payload:v17])
  {
    v35 = v7;
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

  [(DataStream *)v7 setFirstMessageReceived:1];
  v38 = [(DataStream *)v7 helloMessageResponseTimer];
  [v38 suspend];

  [(DataStream *)v7 setHelloMessageResponseTimer:0];
  [(DataStream *)v7 _handlePendingRequests];
  [(DataStream *)v7 _handlePendingEvents];
LABEL_31:
}

- (void)fulfillPendingRequestWithResponseHeader:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(DataStream *)self pendingRequests];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      if ([v13 matchesResponseHeader:v6])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v13;

    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = [(DataStream *)v14 callback];
    (v15)[2](v15, 0, v6, v7);

    v16 = [(DataStream *)self pendingRequests];
    [v16 removeObject:v14];
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = self;
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = sub_10007FAFC(v14);
      v18 = [(DataStream *)v14 pendingRequests];
      *buf = 138543874;
      v24 = v17;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@No pending request found for response with header: %@. Pending %@", buf, 0x20u);
    }
  }
}

- (void)startConnectionTimer
{
  v3 = [(DataStream *)self connectionTimer];
  [v3 setDelegate:self];

  v4 = [(DataStream *)self workQueue];
  v5 = [(DataStream *)self connectionTimer];
  [v5 setDelegateQueue:v4];

  v6 = [(DataStream *)self connectionTimer];
  [v6 resume];
}

- (void)startHelloMessageResponseTimer
{
  v3 = [(DataStream *)self helloMessageResponseTimer];
  [v3 setDelegate:self];

  v4 = [(DataStream *)self workQueue];
  v5 = [(DataStream *)self helloMessageResponseTimer];
  [v5 setDelegateQueue:v4];

  v6 = [(DataStream *)self helloMessageResponseTimer];
  [v6 resume];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(DataStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(DataStream *)self connectionTimer];

  if (v6 == v4)
  {
    v12 = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(v12);
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Data stream failed to connect in time; closing!";
      goto LABEL_7;
    }

LABEL_8:

    [(DataStream *)self close];
    goto LABEL_9;
  }

  v7 = [(DataStream *)self helloMessageResponseTimer];

  if (v7 == v4)
  {
    v8 = self;
    v9 = sub_10007FAA0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(v8);
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