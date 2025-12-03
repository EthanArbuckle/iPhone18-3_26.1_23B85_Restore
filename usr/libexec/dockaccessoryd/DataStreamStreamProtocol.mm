@interface DataStreamStreamProtocol
- (BOOL)isActive;
- (DataStreamProtocolDelegate)dataStream;
- (DataStreamStreamProtocol)initWithDataStream:(id)stream;
- (void)_closeAllSocketsWithError:(id)error;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value;
- (void)_reevaluateTrafficClassForDataStream;
- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveResponse:(id)response header:(id)header payload:(id)payload;
- (void)dataStreamInitiatedClose:(id)close;
- (void)registerSocket:(id)socket;
- (void)sendData:(id)data socket:(id)socket completion:(id)completion;
- (void)unregisterSocket:(id)socket;
@end

@implementation DataStreamStreamProtocol

- (DataStreamStreamProtocol)initWithDataStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = DataStreamStreamProtocol;
  v5 = [(DataStreamStreamProtocol *)&v9 init];
  if (v5)
  {
    v6 = +[NSMapTable strongToWeakObjectsMapTable];
    sockets = v5->_sockets;
    v5->_sockets = v6;

    objc_storeWeak(&v5->_dataStream, streamCopy);
  }

  return v5;
}

- (void)registerSocket:(id)socket
{
  socketCopy = socket;
  isActive = [(DataStreamStreamProtocol *)self isActive];
  sockets = [(DataStreamStreamProtocol *)self sockets];
  applicationProtocolName = [socketCopy applicationProtocolName];
  v11 = [sockets objectForKey:applicationProtocolName];

  v8 = [NSError hmfErrorWithCode:12];
  [v11 closeWithError:v8];

  sockets2 = [(DataStreamStreamProtocol *)self sockets];
  applicationProtocolName2 = [socketCopy applicationProtocolName];
  [sockets2 setObject:socketCopy forKey:applicationProtocolName2];

  [(DataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
}

- (void)unregisterSocket:(id)socket
{
  socketCopy = socket;
  isActive = [(DataStreamStreamProtocol *)self isActive];
  sockets = [(DataStreamStreamProtocol *)self sockets];
  applicationProtocolName = [socketCopy applicationProtocolName];
  v7 = [sockets objectForKey:applicationProtocolName];

  if (v7 == socketCopy)
  {
    sockets2 = [(DataStreamStreamProtocol *)self sockets];
    applicationProtocolName2 = [socketCopy applicationProtocolName];
    [sockets2 removeObjectForKey:applicationProtocolName2];

    [(DataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
    [(DataStreamStreamProtocol *)self _reevaluateTrafficClassForDataStream];
  }
}

- (void)_reevaluateTrafficClassForDataStream
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  objectEnumerator = [(NSMapTable *)self->_sockets objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        trafficClass = [v10 trafficClass];
        if (trafficClass > v7)
        {
          v12 = trafficClass;
          applicationProtocolName = [v10 applicationProtocolName];

          v6 = applicationProtocolName;
          v7 = v12;
        }
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v5);

    if (v6)
    {
      selfCopy = self;
      v15 = sub_10007FAA0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = sub_10007FAFC(selfCopy);
        *buf = 138543874;
        v25 = v16;
        v26 = 2048;
        v27 = v7;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (requested by: '%@')", buf, 0x20u);
      }

      goto LABEL_17;
    }
  }

  else
  {

    v7 = 0;
  }

  selfCopy2 = self;
  v15 = sub_10007FAA0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v18 = sub_10007FAFC(selfCopy2);
    *buf = 138543618;
    v25 = v18;
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (reset)", buf, 0x16u);
  }

  v6 = 0;
LABEL_17:

  dataStream = [(DataStreamStreamProtocol *)self dataStream];
  [dataStream setTrafficClass:v7];
}

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value
{
  if ([(DataStreamStreamProtocol *)self isActive]!= value)
  {
    selfCopy = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(selfCopy);
      [(DataStreamStreamProtocol *)selfCopy isActive];
      v7 = HMFBooleanToString();
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Stream protocol changes active to %@", &v9, 0x16u);
    }

    dataStream = [(DataStreamStreamProtocol *)selfCopy dataStream];
    [dataStream protocolDidUpdateActiveStatus:selfCopy];
  }
}

- (void)sendData:(id)data socket:(id)socket completion:(id)completion
{
  completionCopy = completion;
  socketCopy = socket;
  dataCopy = data;
  dataStream = [(DataStreamStreamProtocol *)self dataStream];
  applicationProtocolName = [socketCopy applicationProtocolName];

  v17 = @"data";
  v18 = dataCopy;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000300B0;
  v15[3] = &unk_100273790;
  v16 = completionCopy;
  v14 = completionCopy;
  [dataStream sendEventForProtocol:@"stream" topic:applicationProtocolName payload:v13 completion:v15];
}

- (BOOL)isActive
{
  sockets = [(DataStreamStreamProtocol *)self sockets];
  v3 = [sockets count] != 0;

  return v3;
}

- (void)dataStreamInitiatedClose:(id)close
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(DataStreamStreamProtocol *)self sockets:close];
  objectEnumerator = [v3 objectEnumerator];

  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v8) closeInitiated];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  sockets = [(DataStreamStreamProtocol *)self sockets];
  v11 = [sockets objectForKey:eventCopy];

  if (!v11)
  {
    selfCopy2 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = sub_10007FAFC(selfCopy2);
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = eventCopy;
      v23 = 2112;
      v24 = payloadCopy;
      v16 = "%{public}@No active socket, dropping packet with topic=%@ payload=%@";
      v17 = v14;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, &v19, 0x20u);
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = [payloadCopy objectForKeyedSubscript:@"data"];

  if (!v12)
  {
    selfCopy2 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy2);
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = eventCopy;
      v23 = 2112;
      v24 = payloadCopy;
      v16 = "%{public}@No data field in payload, dropping packet with topic=%@ payload=%@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  selfCopy2 = [payloadCopy objectForKeyedSubscript:@"data"];
  [v11 handleIncomingData:selfCopy2];
LABEL_10:
}

- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload
{
  requestCopy = request;
  headerCopy = header;
  payloadCopy = payload;
  selfCopy = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_10007FAFC(selfCopy);
    v15 = 138544130;
    v16 = v14;
    v17 = 2112;
    v18 = requestCopy;
    v19 = 2112;
    v20 = headerCopy;
    v21 = 2112;
    v22 = payloadCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support request message with topic=%@, header=%@, payload=%@", &v15, 0x2Au);
  }
}

- (void)dataStream:(id)stream didReceiveResponse:(id)response header:(id)header payload:(id)payload
{
  responseCopy = response;
  headerCopy = header;
  payloadCopy = payload;
  selfCopy = self;
  v13 = sub_10007FAA0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_10007FAFC(selfCopy);
    v15 = 138544130;
    v16 = v14;
    v17 = 2112;
    v18 = responseCopy;
    v19 = 2112;
    v20 = headerCopy;
    v21 = 2112;
    v22 = payloadCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support response message with topic=%@, header=%@, payload=%@", &v15, 0x2Au);
  }
}

- (void)_closeAllSocketsWithError:(id)error
{
  errorCopy = error;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sockets = [(DataStreamStreamProtocol *)self sockets];
  objectEnumerator = [sockets objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (v11)
        {
          [v11 closeWithError:errorCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  sockets2 = [(DataStreamStreamProtocol *)self sockets];
  [sockets2 removeAllObjects];
}

- (DataStreamProtocolDelegate)dataStream
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStream);

  return WeakRetained;
}

@end