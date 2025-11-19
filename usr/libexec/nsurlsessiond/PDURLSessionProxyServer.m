@interface PDURLSessionProxyServer
+ (void)initialize;
- (BOOL)shouldRetainBTLinkAssertion;
- (BOOL)shouldRetainInfraWiFi;
- (PDURLSessionProxyServer)initWithConfiguration:(id)a3 uuidString:(id)a4 options:(unint64_t)a5 delegate:(id)a6;
- (id)baseMessage;
- (id)descriptionForTaskWithIdentifier:(unint64_t)a3;
- (id)getTaskInformation;
- (id)messageLoggableDescriptionForTaskWithIdentifier:(unint64_t)a3;
- (id)taskMessageForIdentifier:(unint64_t)a3;
- (int64_t)messagePriorityForTaskWithIdentifier:(unint64_t)a3 isReply:(BOOL)a4;
- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4;
- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 _isWaitingForConnectionWithReason:(int64_t)a5;
- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_URLSession:(id)a3 connectionEstablishedForStreamTask:(id)a4;
- (void)_URLSession:(id)a3 task:(id)a4 getAuthHeadersForResponse:(id)a5 completionHandler:(id)a6;
- (void)devicesConnected;
- (void)handleCancelTaskMessage:(id)a3 forTaskIdentifier:(unint64_t)a4;
- (void)handleDataTaskWithRequestMessage:(id)a3 forTaskIdentifier:(unint64_t)a4 withReply:(id)a5;
- (void)handleFailedMessageSend:(id)a3 ofType:(unsigned __int16)a4;
- (void)handleInvalidateMessage:(id)a3;
- (void)handleMessage:(id)a3 ofType:(unsigned __int16)a4 withReply:(id)a5;
- (void)handleOpenSocketMessage:(id)a3 withReply:(id)a4;
- (void)handleResumeTaskMessage:(id)a3 forTaskIdentifier:(unint64_t)a4 withReply:(id)a5;
- (void)handleSetDescriptionMessage:(id)a3 forTaskIdentifier:(unint64_t)a4;
- (void)handleSetPriorityMessage:(id)a3 forTaskIdentifier:(unint64_t)a4;
- (void)handleSuspendTaskMessage:(id)a3 forTaskIdentifier:(unint64_t)a4;
- (void)handleUploadBodyDataMessage:(id)a3 forTaskIdentifier:(unint64_t)a4 withReply:(id)a5;
- (void)obliterate;
- (void)performForwardingFromStreamTask:(id)a3 toTCPConnection:(id)a4;
- (void)performForwardingFromTCPConnection:(id)a3 toStreamTask:(id)a4;
- (void)releaseBTLinkAssertionIfNecessary:(unint64_t)a3;
- (void)releaseInfraWiFiForTaskIfNecessary:(unint64_t)a3;
- (void)resendPendingMessage:(id)a3;
- (void)retainBTLinkAssertionWithIdentifier:(unint64_t)a3;
- (void)retainInfraWiFiForTaskWithIdentifier:(unint64_t)a3;
@end

@implementation PDURLSessionProxyServer

- (void)_URLSession:(id)a3 task:(id)a4 getAuthHeadersForResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v13 = [v12 unsignedIntegerValue];

  v14 = qword_1000EB1D8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
    *buf = 138543618;
    v24 = v15;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ getAuthHeadersForResponse %@", buf, 0x16u);
  }

  v16 = objc_opt_new();
  v17 = [[PDURLSessionProxyResponse alloc] _initWithActualResponse:v10];
  [v16 setResponse:v17];
  v18 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v13];
  [v16 setTask:v18];

  v19 = +[PDURLSessionProxyServerService sharedService];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000642DC;
  v21[3] = &unk_1000D5E18;
  v20 = v11;
  v22 = v20;
  [v19 sendProtobufMessage:v16 ofType:1010 withReply:v21];
}

- (void)URLSession:(id)a3 task:(id)a4 _isWaitingForConnectionWithReason:(int64_t)a5
{
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  v10 = qword_1000EB1D8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v9];
    v18 = 138543618;
    v19 = v11;
    v20 = 2048;
    v21 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ is waiting for connection with reason: %lld", &v18, 0x16u);
  }

  v12 = [NSNumber numberWithLongLong:a5];
  taskIdentifiersToWaitingReasons = self->_taskIdentifiersToWaitingReasons;
  v14 = [NSNumber numberWithUnsignedInteger:v9];
  [(NSMutableDictionary *)taskIdentifiersToWaitingReasons setObject:v12 forKeyedSubscript:v14];

  v15 = objc_opt_new();
  [v15 setReason:a5];
  v16 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v9];
  [v15 setTask:v16];

  v17 = +[PDURLSessionProxyServerService sharedService];
  [v17 sendProtobufMessage:v15 ofType:1009 withReply:0];
}

- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  v11 = qword_1000EB1D8;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v10];
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will be retried - error: %@", &v17, 0x16u);
  }

  v13 = objc_opt_new();
  if (v8)
  {
    v14 = [[PDURLSessionProxyError alloc] _initWithActualError:v8];
    [v13 setError:v14];
  }

  v15 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v10];
  [v13 setTask:v15];

  v16 = +[PDURLSessionProxyServerService sharedService];
  [v16 sendProtobufMessage:v13 ofType:1007 withReply:0];

  [(PDURLSessionProxyServer *)self releaseInfraWiFiForTaskIfNecessary:v10];
  [(PDURLSessionProxyServer *)self releaseBTLinkAssertionIfNecessary:v10];
}

- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4
{
  v5 = a4;
  v6 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v5];
  v7 = [v6 unsignedIntegerValue];

  v8 = qword_1000EB1D8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v7];
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will be retried", &v13, 0xCu);
  }

  v10 = objc_opt_new();
  v11 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v7];
  [v10 setTask:v11];

  v12 = +[PDURLSessionProxyServerService sharedService];
  [v12 sendProtobufMessage:v10 ofType:1007 withReply:0];

  [(PDURLSessionProxyServer *)self releaseInfraWiFiForTaskIfNecessary:v7];
  [(PDURLSessionProxyServer *)self releaseBTLinkAssertionIfNecessary:v7];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6
{
  v43 = a3;
  v10 = a4;
  v44 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v10];
  v13 = [v12 unsignedIntegerValue];

  v14 = [v10 _nsurlsessionproxy_error];

  v15 = qword_1000EB1D8;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
      *buf = 138543618;
      v52 = v17;
      v53 = 2048;
      v54 = [v44 length];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring data of length %lu since we've already failed that task", buf, 0x16u);
    }

    v11[2](v11);
  }

  else
  {
    if (v16)
    {
      v18 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
      *buf = 138543618;
      v52 = v18;
      v53 = 2048;
      v54 = [v44 length];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ did receive data with length %lu", buf, 0x16u);
    }

    v42 = objc_opt_new();
    [v42 setReceivedData:v44];
    v19 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v13];
    [v42 setTask:v19];

    v20 = +[PDURLSessionProxyServerService sharedService];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10006505C;
    v45[3] = &unk_1000D5DF0;
    v46 = v10;
    v47 = self;
    v21 = v11;
    v49 = v21;
    v50 = v13;
    v22 = v44;
    v48 = v22;
    [v20 sendProtobufMessage:v42 ofType:1006 withReply:v45];

    if ([(NSURLSessionConfiguration *)self->_sessionConfiguration _requiresSustainedDataDelivery])
    {
      taskIdentifiersToPendingDataBytes = self->_taskIdentifiersToPendingDataBytes;
      v24 = [NSNumber numberWithUnsignedInteger:v13];
      v25 = [(NSMutableDictionary *)taskIdentifiersToPendingDataBytes objectForKeyedSubscript:v24];
      v26 = [v25 unsignedIntegerValue];

      v27 = &v26[[v22 length]];
      v28 = [NSNumber numberWithUnsignedInteger:v27];
      v29 = self->_taskIdentifiersToPendingDataBytes;
      v30 = [NSNumber numberWithUnsignedInteger:v13];
      [(NSMutableDictionary *)v29 setObject:v28 forKeyedSubscript:v30];

      v31 = qword_1000EB1D8;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
        *buf = 138543618;
        v52 = v32;
        v53 = 2048;
        v54 = v27;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ data pending, now has %lu bytes pending acknowledgement", buf, 0x16u);
      }

      v33 = qword_1000EB1D8;
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v27 >> 19)
      {
        if (v34)
        {
          v36 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
          *buf = 138543362;
          v52 = v36;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ will wait to acknowledge data", buf, 0xCu);
        }

        taskIdentifiersToPendingDataCompletion = self->_taskIdentifiersToPendingDataCompletion;
        v38 = [NSNumber numberWithUnsignedInteger:v13];
        [(NSMutableDictionary *)taskIdentifiersToPendingDataCompletion objectForKeyedSubscript:v38];
        if (objc_claimAutoreleasedReturnValue())
        {
          __assert_rtn("[PDURLSessionProxyServer URLSession:dataTask:_didReceiveData:completionHandler:]", "PDURLSessionProxyServer.mm", 891, "!_taskIdentifiersToPendingDataCompletion[@(taskIdentifier)]");
        }

        v39 = objc_retainBlock(v21);
        v40 = self->_taskIdentifiersToPendingDataCompletion;
        v41 = [NSNumber numberWithUnsignedInteger:v13];
        [(NSMutableDictionary *)v40 setObject:v39 forKeyedSubscript:v41];
      }

      else
      {
        if (v34)
        {
          v35 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
          *buf = 138543362;
          v52 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ immediately acknowledging data", buf, 0xCu);
        }

        v21[2](v21);
      }
    }
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v13 = [v12 unsignedIntegerValue];

  v14 = qword_1000EB1D8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
    *buf = 138543618;
    v30 = v15;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ didReceiveResponse: %@", buf, 0x16u);
  }

  v16 = objc_opt_new();
  v17 = [[PDURLSessionProxyResponse alloc] _initWithActualResponse:v10];
  [v16 setResponse:v17];
  v18 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v13];
  [v16 setTask:v18];

  if (self->_implementsDidReceiveResponse && ([v9 _taskGroup], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "_groupConfiguration"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "_ignoreDidReceiveResponseDisposition"), v20, v19, (v21 & 1) == 0))
  {
    v23 = +[PDURLSessionProxyServerService sharedService];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100065774;
    v24[3] = &unk_1000D5DC8;
    v25 = v9;
    v26 = self;
    v28 = v13;
    v27 = v11;
    [v23 sendProtobufMessage:v16 ofType:1003 withReply:v24];
  }

  else
  {
    v22 = +[PDURLSessionProxyServerService sharedService];
    [v22 sendProtobufMessage:v16 ofType:1003 withReply:0];

    (*(v11 + 2))(v11, 1);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v11];
  v16 = [v15 unsignedIntegerValue];

  v17 = qword_1000EB1D8;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v16];
    *buf = 138543874;
    v31 = v18;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ willPerformHTTPRedirection, response: %@, new request: %@", buf, 0x20u);
  }

  if (self->_supportsRedirects && self->_implementsWillPerformRedirection)
  {
    v19 = objc_opt_new();
    v20 = [[PDURLSessionProxyResponse alloc] _initWithActualResponse:v12];
    v21 = [[PDURLSessionProxyRequest alloc] _initWithActualRequest:v13];
    [v19 setResponse:v20];
    [v19 setRequest:v21];
    v22 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v16];
    [v19 setTask:v22];

    v23 = +[PDURLSessionProxyServerService sharedService];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100065C90;
    v24[3] = &unk_1000D5DF0;
    v25 = v11;
    v28 = v14;
    v26 = v13;
    v27 = self;
    v29 = v16;
    [v23 sendProtobufMessage:v19 ofType:1012 withReply:v24];
  }

  else
  {
    (*(v14 + 2))(v14, v13);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [v7 _nsurlsessionproxy_error];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12;

    v14 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
    v15 = [v14 unsignedIntegerValue];

    v16 = qword_1000EB1D8;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v15];
      v45 = 138543874;
      v46 = v17;
      v47 = 2112;
      v48 = v13;
      v49 = 2048;
      v50 = [v13 code];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ completed with error %@ [%ld]", &v45, 0x20u);
    }

    v18 = objc_opt_new();
    if (v13)
    {
      v19 = [[PDURLSessionProxyError alloc] _initWithActualError:v13];
      [v18 setError:v19];
    }

    v20 = [__NSCFURLSessionTaskInfo alloc];
    v21 = [v7 _uniqueIdentifier];
    v22 = [(PDURLSessionProxyServer *)self identifier];
    v23 = [v20 initWithDataTask:v7 uniqueIdentifier:v21 bundleID:0 sessionID:v22];

    [v23 setCountOfBytesSent:{objc_msgSend(v7, "countOfBytesSent")}];
    [v23 setCountOfBytesReceived:{objc_msgSend(v7, "countOfBytesReceived")}];
    [v23 setCountOfBytesExpectedToSend:{objc_msgSend(v7, "countOfBytesExpectedToSend")}];
    [v23 setCountOfBytesExpectedToReceive:{objc_msgSend(v7, "countOfBytesExpectedToReceive")}];
    [v18 _setActualTaskInfo:v23];
    v24 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v15];
    [v18 setTask:v24];

    v25 = +[PDURLSessionProxyServerService sharedService];
    [v25 sendProtobufMessage:v18 ofType:1005 withReply:0];

    v26 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
    v27 = [(NSMutableDictionary *)self->_taskIdentifiersToBodyStreams objectForKeyedSubscript:v26];
    LOBYTE(v22) = v27 == 0;

    if ((v22 & 1) == 0)
    {
      v28 = [(NSMutableDictionary *)self->_taskIdentifiersToBodyStreams objectForKeyedSubscript:v26];
      [v28 close];
      [(NSMutableDictionary *)self->_taskIdentifiersToBodyStreams removeObjectForKey:v26];
      v29 = [(NSMutableDictionary *)self->_taskIdentifiersToInitialBodyInputStreams objectForKeyedSubscript:v26];
      [(NSMutableDictionary *)self->_taskIdentifiersToInitialBodyInputStreams removeObjectForKey:v26];
      if (![v29 streamStatus])
      {
        [v29 open];
      }

      if ([v29 streamStatus] <= 5)
      {
        [v29 close];
      }
    }

    if (v26)
    {
      [(NSMutableDictionary *)self->_tasks removeObjectForKey:v26];
      [(NSMutableDictionary *)self->_tasksToIdentifiers removeObjectForKey:v7];
      [(NSMutableDictionary *)self->_taskIdentifiersToSequenceNumbers removeObjectForKey:v26];
    }

    [(PDURLSessionProxyServer *)self releaseInfraWiFiForTaskIfNecessary:v15];
    [(PDURLSessionProxyServer *)self releaseBTLinkAssertionIfNecessary:v15];
  }

  else
  {
    v30 = [(NSMutableDictionary *)self->_streamTasksToDeviceConnections objectForKeyedSubscript:v7];

    v18 = qword_1000EB1D8;
    v31 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v31)
      {
        v32 = [v7 _loggableDescription];
        v45 = 138544130;
        v46 = v32;
        v47 = 2112;
        v48 = v7;
        v49 = 2112;
        v50 = v8;
        v51 = 2048;
        v52 = [v8 code];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ StreamTask %@ completed with error %@ [%ld]", &v45, 0x2Au);
      }

      v33 = [(NSMutableDictionary *)self->_streamTasksToOpenSocketReplies objectForKeyedSubscript:v7];
      v34 = v33 == 0;

      if (!v34)
      {
        v35 = [(NSMutableDictionary *)self->_streamTasksToOpenSocketReplies objectForKeyedSubscript:v7];
        v36 = objc_opt_new();
        v37 = [v8 userInfo];
        v38 = [v37 objectForKeyedSubscript:_kCFStreamErrorCodeKey];
        [v36 setStreamErrorCode:{objc_msgSend(v38, "intValue")}];

        v39 = [v8 userInfo];
        v40 = [v39 objectForKeyedSubscript:_kCFStreamErrorDomainKey];
        [v36 setStreamErrorDomain:{objc_msgSend(v40, "intValue")}];

        (v35)[2](v35, v36);
        [(NSMutableDictionary *)self->_streamTasksToOpenSocketReplies removeObjectForKey:v7];
      }

      v18 = [(NSMutableDictionary *)self->_streamTasksToIDSTCPConnections objectForKeyedSubscript:v7];
      if (v18)
      {
        tcp_connection_cancel();
        [(NSMutableDictionary *)self->_streamTasksToIDSTCPConnections removeObjectForKey:v7];
      }

      v41 = [(NSMutableDictionary *)self->_streamTasksToDeviceConnections objectForKeyedSubscript:v7];
      [v41 close];

      [(NSMutableDictionary *)self->_streamTasksToDeviceConnections removeObjectForKey:v7];
    }

    else if (v31)
    {
      v42 = [v7 _loggableDescription];
      v43 = [v8 code];
      identifier = self->_identifier;
      v45 = 138544386;
      v46 = v42;
      v47 = 2112;
      v48 = v7;
      v49 = 2112;
      v50 = v8;
      v51 = 2048;
      v52 = v43;
      v53 = 2112;
      v54 = identifier;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring task completion for task %@ with error %@ [%ld] in session %@ since we do not have an associated client taskIdentifier", &v45, 0x34u);
    }

    v13 = v8;
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v14 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:a4];
  v11 = [v14 unsignedIntegerValue];

  v15 = objc_opt_new();
  [v15 setBytesSent:a5];
  [v15 setTotalBytesSent:a6];
  [v15 setTotalBytesExpectedToSend:a7];
  v12 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v11];
  [v15 setTask:v12];

  v13 = +[PDURLSessionProxyServerService sharedService];
  [v13 sendProtobufMessage:v15 ofType:1004 withReply:0];
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v7 = a5;
  v8 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:a4];
  v9 = [v8 unsignedIntegerValue];

  v28 = 0;
  v29 = 0;
  [NSStream getBoundStreamsWithBufferSize:0x20000 inputStream:&v29 outputStream:&v28];
  v10 = v29;
  v11 = v28;
  taskIdentifiersToBodyStreams = self->_taskIdentifiersToBodyStreams;
  v13 = [NSNumber numberWithUnsignedInteger:v9];
  v14 = [(NSMutableDictionary *)taskIdentifiersToBodyStreams objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = self->_taskIdentifiersToBodyStreams;
    v16 = [NSNumber numberWithUnsignedInteger:v9];
    v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
    [v17 close];

    taskIdentifiersToInitialBodyInputStreams = self->_taskIdentifiersToInitialBodyInputStreams;
    v19 = [NSNumber numberWithUnsignedInteger:v9];
    v20 = [(NSMutableDictionary *)taskIdentifiersToInitialBodyInputStreams objectForKeyedSubscript:v19];
    [v20 close];
  }

  v21 = self->_taskIdentifiersToBodyStreams;
  v22 = [NSNumber numberWithUnsignedInteger:v9];
  [(NSMutableDictionary *)v21 setObject:v11 forKeyedSubscript:v22];

  v23 = self->_taskIdentifiersToInitialBodyInputStreams;
  v24 = [NSNumber numberWithUnsignedInteger:v9];
  [(NSMutableDictionary *)v23 setObject:v10 forKeyedSubscript:v24];

  [v11 open];
  v7[2](v7, v10);
  v25 = objc_opt_new();
  v26 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v9];
  [v25 setTask:v26];

  v27 = +[PDURLSessionProxyServerService sharedService];
  [v27 sendProtobufMessage:v25 ofType:1011 withReply:0];
}

- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v13 = [v12 unsignedIntegerValue];

  v14 = qword_1000EB1D8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
    *buf = 138543362;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ _willSendRequestForEstablishedConnection", buf, 0xCu);
  }

  if (self->_implementsWillSendRequest)
  {
    v16 = objc_opt_new();
    v17 = [[PDURLSessionProxyRequest alloc] _initWithActualRequest:v10];
    [v16 setRequest:v17];
    v18 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v13];
    [v16 setTask:v18];

    v19 = +[PDURLSessionProxyServerService sharedService];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100066DD0;
    v27[3] = &unk_1000D5DC8;
    v28 = v9;
    v29 = self;
    v31 = v13;
    v30 = v11;
    [v19 sendProtobufMessage:v16 ofType:1002 withReply:v27];
  }

  else
  {
    v16 = v10;
    taskIdentifiersToInitialBodyInputStreams = self->_taskIdentifiersToInitialBodyInputStreams;
    v21 = [NSNumber numberWithUnsignedInteger:v13];
    v22 = [(NSMutableDictionary *)taskIdentifiersToInitialBodyInputStreams objectForKeyedSubscript:v21];
    LOBYTE(taskIdentifiersToInitialBodyInputStreams) = v22 == 0;

    if ((taskIdentifiersToInitialBodyInputStreams & 1) == 0)
    {
      v23 = [v16 mutableCopy];
      v24 = self->_taskIdentifiersToInitialBodyInputStreams;
      v25 = [NSNumber numberWithUnsignedInteger:v13];
      v26 = [(NSMutableDictionary *)v24 objectForKeyedSubscript:v25];
      [v23 setHTTPBodyStream:v26];

      v16 = v23;
    }

    if (v16)
    {
      if ([(PDURLSessionProxyServer *)self shouldRetainInfraWiFi])
      {
        [(PDURLSessionProxyServer *)self retainInfraWiFiForTaskWithIdentifier:v13];
      }

      if ([(PDURLSessionProxyServer *)self shouldRetainBTLinkAssertion])
      {
        [(PDURLSessionProxyServer *)self retainBTLinkAssertionWithIdentifier:v13];
      }
    }

    (*(v11 + 2))(v11, v16);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v13 = [v12 unsignedIntegerValue];

  v14 = qword_1000EB1D8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v13];
    v16 = [v10 protectionSpace];
    *buf = 138543874;
    v25 = v15;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ didReceiveChallenge: %@, protection space: %@", buf, 0x20u);
  }

  if (self->_implementsSessionAuthChallenge || self->_implementsTaskAuthChallenge)
  {
    v17 = objc_opt_new();
    v18 = [[PDURLSessionProxyAuthChallenge alloc] _initWithActualAuthChallenge:v10];
    [v17 setChallenge:v18];
    v19 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:v13];
    [v17 setTask:v19];

    v20 = +[PDURLSessionProxyServerService sharedService];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000673D8;
    v21[3] = &unk_1000D5DA0;
    v23 = v11;
    v22 = v9;
    [v20 sendProtobufMessage:v17 ofType:1001 withReply:v21];
  }

  else
  {
    (*(v11 + 2))(v11, 1, 0);
  }
}

- (void)_URLSession:(id)a3 connectionEstablishedForStreamTask:(id)a4
{
  v8 = a4;
  v5 = [(NSMutableDictionary *)self->_streamTasksToOpenSocketReplies objectForKeyedSubscript:?];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_streamTasksToOpenSocketReplies objectForKeyedSubscript:v8];
    v7 = objc_opt_new();
    (v6)[2](v6, v7);
    [(NSMutableDictionary *)self->_streamTasksToOpenSocketReplies removeObjectForKey:v8];
  }
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000EB1D8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 configuration];
    v10 = [v9 identifier];
    *buf = 138412802;
    v25 = v10;
    v26 = 2112;
    v27 = v7;
    v28 = 2048;
    v29 = [v7 code];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@ became invalid with error %@ [%ld]", buf, 0x20u);
  }

  if (!self->_skipInvalidateMessage)
  {
    v11 = objc_opt_new();
    v12 = [[PDURLSessionProxyError alloc] _initWithActualError:v7];
    [v11 setError:v12];

    v13 = [(PDURLSessionProxyServer *)self baseMessage];
    [v11 setSession:v13];

    v14 = +[PDURLSessionProxyServerService sharedService];
    [v14 sendProtobufMessage:v11 ofType:1008 withReply:0];
  }

  [(PDURLSessionProxyServerDelegate *)self->_delegate proxyServerBecameInvalid:self];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = self->_deviceConnections;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v16)
  {
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v19 + 1) + 8 * v18) close];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }

  [(NSMutableSet *)self->_deviceConnections removeAllObjects];
}

- (void)performForwardingFromStreamTask:(id)a3 toTCPConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _taskGroup];
  v9 = [v8 _groupConfiguration];
  [v9 timeoutIntervalForRequest];
  v11 = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100067A80;
  v14[3] = &unk_1000D5D78;
  v14[4] = self;
  v12 = v7;
  v15 = v12;
  v13 = v6;
  v16 = v13;
  [v13 readDataOfMinLength:1 maxLength:0x40000 timeout:v14 completionHandler:v11];
}

- (void)performForwardingFromTCPConnection:(id)a3 toStreamTask:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v5;
  v7 = v8;
  tcp_connection_read();
}

- (void)handleOpenSocketMessage:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v18 = a4;
  v7 = [v6 socketUUID];
  v8 = qword_1000EB1D8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 host];
    *buf = 138412802;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 1024;
    LODWORD(v24) = [v6 port];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Open IDS Socket with UUID %@ to host %@ port %d", buf, 0x1Cu);
  }

  v27[0] = IDSOpenSocketOptionPriorityKey;
  v27[1] = IDSOpenSocketOptionStreamNameKey;
  v28[0] = &off_1000D89F8;
  v28[1] = v7;
  v27[2] = IDSOpenSocketOptionTransportKey;
  v28[2] = &off_1000D8A10;
  v10 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = sub_10006856C;
  v25 = sub_10006857C;
  v26 = 0;
  v11 = [IDSDeviceConnection alloc];
  v12 = +[PDURLSessionProxyServerService sharedService];
  v13 = [v12 defaultPairedDevice];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100068584;
  v19[3] = &unk_1000D5CB0;
  v19[4] = self;
  v14 = v6;
  v20 = v14;
  v22 = buf;
  v15 = v18;
  v21 = v15;
  v16 = [v11 initSocketWithDevice:v13 options:v10 completionHandler:v19 queue:self->_queue];
  v17 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v16;

  [(NSMutableSet *)self->_deviceConnections addObject:*(*&buf[8] + 40)];
  _Block_object_dispose(buf, 8);
}

- (void)handleUploadBodyDataMessage:(id)a3 forTaskIdentifier:(unint64_t)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  taskIdentifiersToBodyStreams = self->_taskIdentifiersToBodyStreams;
  v12 = [NSNumber numberWithUnsignedInteger:a4];
  v13 = [(NSMutableDictionary *)taskIdentifiersToBodyStreams objectForKeyedSubscript:v12];

  if (v13)
  {
    tasks = self->_tasks;
    v15 = [NSNumber numberWithUnsignedInteger:a4];
    v16 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v15];

    v17 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100068A5C;
    block[3] = &unk_1000D5C60;
    v20 = v8;
    v21 = v13;
    v22 = self;
    v26 = a4;
    v23 = v16;
    v25 = v9;
    v24 = v10;
    v18 = v16;
    dispatch_async(v17, block);
  }
}

- (void)handleInvalidateMessage:(id)a3
{
  v4 = a3;
  self->_isInvalid = 1;
  v7 = v4;
  v5 = [v4 shouldCancel];
  session = self->_session;
  if (v5)
  {
    [(NSURLSession *)session invalidateAndCancel];
  }

  else
  {
    [(NSURLSession *)session finishTasksAndInvalidate];
  }
}

- (void)handleSetPriorityMessage:(id)a3 forTaskIdentifier:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 priority];
  v8 = qword_1000EB1D8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
    v13 = 138543618;
    v14 = v9;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ receiving set priority message, priority = %lld", &v13, 0x16u);
  }

  tasks = self->_tasks;
  v11 = [NSNumber numberWithUnsignedInteger:a4];
  v12 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v11];

  [v12 set_priority:v7];
}

- (void)handleSetDescriptionMessage:(id)a3 forTaskIdentifier:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 taskDescription];
  v8 = qword_1000EB1D8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ receiving set description message, description = %@", &v13, 0x16u);
  }

  tasks = self->_tasks;
  v11 = [NSNumber numberWithUnsignedInteger:a4];
  v12 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v11];

  [v12 setTaskDescription:v7];
}

- (void)handleResumeTaskMessage:(id)a3 forTaskIdentifier:(unint64_t)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 _actualAdditionalProperties];
  v11 = qword_1000EB1D8;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
    v20 = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ receiving resume task message, props %@", &v20, 0x16u);
  }

  tasks = self->_tasks;
  v14 = [NSNumber numberWithUnsignedInteger:a4];
  v15 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v14];

  v16 = [v10 objectForKeyedSubscript:@"effectiveConfig"];
  LOBYTE(v14) = v16 == 0;

  if ((v14 & 1) == 0)
  {
    v17 = qword_1000EB1D8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v19 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
      v20 = 138543362;
      v21 = v19;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%{public}@ dropping effective configuration", &v20, 0xCu);
    }

    v18 = [v10 mutableCopy];
    [v18 setObject:0 forKeyedSubscript:@"effectiveConfig"];

    v10 = v18;
  }

  sub_100003A38(v15, v10);
  [v15 resume];
  v9[2](v9, v8);
}

- (void)handleSuspendTaskMessage:(id)a3 forTaskIdentifier:(unint64_t)a4
{
  v6 = a3;
  v7 = qword_1000EB1D8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ receiving suspend task message", &v12, 0xCu);
  }

  tasks = self->_tasks;
  v10 = [NSNumber numberWithUnsignedInteger:a4];
  v11 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v10];

  [v11 suspend];
}

- (void)handleCancelTaskMessage:(id)a3 forTaskIdentifier:(unint64_t)a4
{
  v6 = a3;
  v7 = qword_1000EB1D8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ receiving cancel task message", &v12, 0xCu);
  }

  tasks = self->_tasks;
  v10 = [NSNumber numberWithUnsignedInteger:a4];
  v11 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v10];

  [v11 cancel];
}

- (void)handleDataTaskWithRequestMessage:(id)a3 forTaskIdentifier:(unint64_t)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 currentRequest];
  v11 = [v10 _actualRequest];

  v12 = qword_1000EB1D8;
  if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 134218498;
    v63 = a4;
    v64 = 2112;
    v65 = identifier;
    v66 = 2112;
    v67 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "dataTaskWithRequest message forTaskIdentifier %lu in session %@, currentRequest = %@", buf, 0x20u);
  }

  v14 = objc_opt_new();
  tasks = self->_tasks;
  v61 = v14;
  v16 = [NSNumber numberWithUnsignedInteger:a4];
  v17 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v16];
  LOBYTE(tasks) = v17 == 0;

  if (tasks)
  {
    if (self->_isInvalid)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v18 = self->_tasks;
    v19 = [NSNumber numberWithUnsignedInteger:a4];
    v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:v19];

    v21 = [v8 taskSequenceNumber];
    taskIdentifiersToSequenceNumbers = self->_taskIdentifiersToSequenceNumbers;
    v23 = [NSNumber numberWithUnsignedInteger:a4];
    v24 = [(NSMutableDictionary *)taskIdentifiersToSequenceNumbers objectForKeyedSubscript:v23];
    v25 = [v24 unsignedIntegerValue];

    v26 = qword_1000EB1D8;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
      *buf = 138543874;
      v63 = v27;
      v64 = 2048;
      v65 = v21;
      v66 = 2048;
      v67 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ received task creation message and that task already exists. Sequence number: %llu, existing sequence number: %llu", buf, 0x20u);
    }

    v28 = qword_1000EB1D8;
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v21 <= v25)
    {
      if (v29)
      {
        v41 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
        *buf = 138543362;
        v63 = v41;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ received duplicate task creation message. Dropping message", buf, 0xCu);
      }

      if (!self->_isInvalid)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    if (v29)
    {
      v30 = [(PDURLSessionProxyServer *)self taskMessageForIdentifier:a4];
      *buf = 138543362;
      v63 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ canceling exisitng task since we received a new request for that task with a higher sequence number", buf, 0xCu);
    }

    v31 = self->_tasks;
    v32 = [NSNumber numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v31 removeObjectForKey:v32];

    [(NSMutableDictionary *)self->_tasksToIdentifiers removeObjectForKey:v20];
    v33 = self->_taskIdentifiersToSequenceNumbers;
    v34 = [NSNumber numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v33 removeObjectForKey:v34];

    [(PDURLSessionProxyServer *)self releaseInfraWiFiForTaskIfNecessary:a4];
    [(PDURLSessionProxyServer *)self releaseBTLinkAssertionIfNecessary:a4];
    [v20 cancel];

    if (self->_isInvalid)
    {
LABEL_18:
      v42 = qword_1000EB1D8;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
        *buf = 138543362;
        v63 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ received task creation message for invalidated session. Dropping message", buf, 0xCu);
      }

LABEL_33:
      v35 = v61;
      goto LABEL_34;
    }
  }

  v35 = v61;
  if ([(NSString *)v11 _nsurlsessionproxy_isSafeRequest])
  {
    v36 = [NSURLProtocol propertyForKey:@"_kCFNetworkProxySessionNeedsNewBodyStreamSignal" inRequest:v11];
    v37 = [v36 BOOLValue];

    if (v37)
    {
      v38 = [(NSString *)v11 mutableCopy];
      v39 = +[NSData data];
      v40 = [NSInputStream inputStreamWithData:v39];

      [v40 open];
      [v40 close];
      [(NSString *)v38 setHTTPBodyStream:v40];
    }

    else
    {
      v38 = v11;
    }

    v45 = [(NSURLSession *)self->_session dataTaskWithRequest:v38];
    v46 = self->_tasks;
    v47 = [NSNumber numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v46 setObject:v45 forKeyedSubscript:v47];

    v48 = [NSNumber numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)self->_tasksToIdentifiers setObject:v48 forKeyedSubscript:v45];

    if ([v45 taskIdentifier] != a4)
    {
      v49 = qword_1000EB1D8;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
        v51 = [v45 taskIdentifier];
        *buf = 138543618;
        v63 = v50;
        v64 = 2048;
        v65 = v51;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ using local task identifier %lu", buf, 0x16u);
      }
    }

    if ([v8 taskSequenceNumber])
    {
      v52 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 taskSequenceNumber]);
      v53 = self->_taskIdentifiersToSequenceNumbers;
      v54 = [NSNumber numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)v53 setObject:v52 forKeyedSubscript:v54];
    }

    v55 = [__NSCFURLSessionTaskInfo alloc];
    v56 = [v45 _uniqueIdentifier];
    v57 = [(PDURLSessionProxyServer *)self identifier];
    v58 = [v55 initWithDataTask:v45 uniqueIdentifier:v56 bundleID:0 sessionID:v57];

    v59 = qword_1000EB1D8;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:a4];
      *buf = 138543362;
      v63 = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ acknowledging dataTaskWithRequest message", buf, 0xCu);
    }

    [v61 _setActualTaskInfo:v58];
    v11 = v38;
    goto LABEL_33;
  }

  v44 = qword_1000EB1D8;
  if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v63 = v11;
    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Received proxy request %@ with non-http URL. Dropping request.", buf, 0xCu);
  }

LABEL_34:
  v9[2](v9, v35);
}

- (void)handleFailedMessageSend:(id)a3 ofType:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 _nsurlsessionproxy_taskIdentifier])
  {
    v7 = [v6 _nsurlsessionproxy_taskIdentifier];
    if (v4 == 1009)
    {
      taskIdentifiersToWaitingReasons = self->_taskIdentifiersToWaitingReasons;
      v15 = [NSNumber numberWithUnsignedInteger:v7];
      [(NSMutableDictionary *)taskIdentifiersToWaitingReasons removeObjectForKey:v15];
    }

    else if (v4 == 1005)
    {
      v8 = qword_1000EB1D8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v23 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v7];
        *buf = 138543362;
        v30 = v23;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ didCompleteWithError message failed to send, so re-sending when devices are connected", buf, 0xCu);
      }

      v27[0] = @"message";
      v27[1] = @"type";
      v28[0] = v6;
      v9 = [NSNumber numberWithUnsignedShort:1005];
      v28[1] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

      [(NSMutableArray *)self->_messagesToReSend addObject:v10];
      v11 = dispatch_time(0, 10000000000);
      queue = self->_queue;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10006A340;
      v25[3] = &unk_1000D6420;
      v25[4] = self;
      v26 = v10;
      v13 = v10;
      dispatch_after(v11, queue, v25);
    }

    else
    {
      tasks = self->_tasks;
      v17 = [NSNumber numberWithUnsignedInteger:v7];
      v18 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = qword_1000EB1D8;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:v7];
          *buf = 138543362;
          v30 = v24;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ message failed to send, so canceling task", buf, 0xCu);
        }

        v20 = [v18 currentRequest];
        v21 = [v20 URL];
        v22 = [NSError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v21];

        [v18 _nsurlsessionproxy_cancelWithError:v22];
      }
    }
  }
}

- (void)handleMessage:(id)a3 ofType:(unsigned __int16)a4 withReply:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 _nsurlsessionproxy_sessionUUID];
  v11 = [v8 _nsurlsessionproxy_taskIdentifier];
  if (v10 && ([v10 isEqualToString:self->_uuidString] & 1) == 0)
  {
    v12 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      v14 = 138412290;
      v15 = identifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDURLSessionProxyClient Session %@ received message with non-matching session UUID; dropping message", &v14, 0xCu);
    }
  }

  else if (v6 <= 5)
  {
    if (v6 > 3)
    {
      if (v6 == 4)
      {
        [(PDURLSessionProxyServer *)self handleSuspendTaskMessage:v8 forTaskIdentifier:v11];
      }

      else
      {
        [(PDURLSessionProxyServer *)self handleResumeTaskMessage:v8 forTaskIdentifier:v11 withReply:v9];
      }
    }

    else if (v6 == 2)
    {
      [(PDURLSessionProxyServer *)self handleDataTaskWithRequestMessage:v8 forTaskIdentifier:v11 withReply:v9];
    }

    else if (v6 == 3)
    {
      [(PDURLSessionProxyServer *)self handleCancelTaskMessage:v8 forTaskIdentifier:v11];
    }
  }

  else if (v6 <= 7)
  {
    if (v6 == 6)
    {
      [(PDURLSessionProxyServer *)self handleSetDescriptionMessage:v8 forTaskIdentifier:v11];
    }

    else
    {
      [(PDURLSessionProxyServer *)self handleSetPriorityMessage:v8 forTaskIdentifier:v11];
    }
  }

  else
  {
    switch(v6)
    {
      case 8:
        [(PDURLSessionProxyServer *)self handleInvalidateMessage:v8];
        break;
      case 2001:
        [(PDURLSessionProxyServer *)self handleUploadBodyDataMessage:v8 forTaskIdentifier:v11 withReply:v9];
        break;
      case 3001:
        [(PDURLSessionProxyServer *)self handleOpenSocketMessage:v8 withReply:v9];
        break;
    }
  }
}

- (id)descriptionForTaskWithIdentifier:(unint64_t)a3
{
  tasks = self->_tasks;
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 _loggableDescription];
  }

  else
  {
    [NSString stringWithFormat:@"Task <?>.<%lu>", a3];
  }
  v7 = ;

  return v7;
}

- (id)taskMessageForIdentifier:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(PDURLSessionProxyServer *)self baseMessage];
  [v5 setSession:v6];

  [v5 setTaskIdentifier:a3];

  return v5;
}

- (id)baseMessage
{
  v3 = objc_opt_new();
  [v3 setSessionIdentifier:self->_identifier];
  [v3 setUuidString:self->_uuidString];

  return v3;
}

- (void)resendPendingMessage:(id)a3
{
  v7 = a3;
  v3 = [v7 objectForKeyedSubscript:@"message"];
  v4 = [v7 objectForKeyedSubscript:@"type"];
  v5 = [v4 unsignedIntegerValue];

  v6 = +[PDURLSessionProxyServerService sharedService];
  [v6 sendProtobufMessage:v3 ofType:v5 withReply:0];
}

- (void)devicesConnected
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_messagesToReSend;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(PDURLSessionProxyServer *)self resendPendingMessage:*(*(&v7 + 1) + 8 * v6), v7];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)self->_messagesToReSend removeAllObjects];
}

- (void)obliterate
{
  self->_skipInvalidateMessage = 1;
  self->_isInvalid = 1;
  [(NSURLSession *)self->_session invalidateAndCancel];
}

- (void)releaseBTLinkAssertionIfNecessary:(unint64_t)a3
{
  taskIdentifiersRetainingBTLinkAssertion = self->_taskIdentifiersRetainingBTLinkAssertion;
  v7 = [NSNumber numberWithUnsignedInteger:?];
  LODWORD(taskIdentifiersRetainingBTLinkAssertion) = [(NSMutableSet *)taskIdentifiersRetainingBTLinkAssertion containsObject:?];

  if (taskIdentifiersRetainingBTLinkAssertion)
  {
    v6 = self->_taskIdentifiersRetainingBTLinkAssertion;
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableSet *)v6 removeObject:?];

    v9 = +[PDURLSessionProxyServerService sharedService];
    [v9 releaseBTLinkAssertion];
  }
}

- (void)retainBTLinkAssertionWithIdentifier:(unint64_t)a3
{
  taskIdentifiersRetainingBTLinkAssertion = self->_taskIdentifiersRetainingBTLinkAssertion;
  v7 = [NSNumber numberWithUnsignedInteger:?];
  LOBYTE(taskIdentifiersRetainingBTLinkAssertion) = [(NSMutableSet *)taskIdentifiersRetainingBTLinkAssertion containsObject:?];

  if ((taskIdentifiersRetainingBTLinkAssertion & 1) == 0)
  {
    v6 = self->_taskIdentifiersRetainingBTLinkAssertion;
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableSet *)v6 addObject:?];

    v9 = +[PDURLSessionProxyServerService sharedService];
    [v9 retainBTLinkAssertion];
  }
}

- (BOOL)shouldRetainBTLinkAssertion
{
  if (qword_1000EB150 != -1)
  {
    dispatch_once(&qword_1000EB150, &stru_1000D5588);
  }

  if (!byte_1000EB148)
  {
    return 0;
  }

  sessionConfiguration = self->_sessionConfiguration;

  return [(NSURLSessionConfiguration *)sessionConfiguration _requiresSustainedDataDelivery];
}

- (void)releaseInfraWiFiForTaskIfNecessary:(unint64_t)a3
{
  taskIdentifiersRetainingInfraWiFi = self->_taskIdentifiersRetainingInfraWiFi;
  v7 = [NSNumber numberWithUnsignedInteger:?];
  LODWORD(taskIdentifiersRetainingInfraWiFi) = [(NSMutableSet *)taskIdentifiersRetainingInfraWiFi containsObject:?];

  if (taskIdentifiersRetainingInfraWiFi)
  {
    v6 = self->_taskIdentifiersRetainingInfraWiFi;
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableSet *)v6 removeObject:?];

    v9 = +[PDURLSessionProxyServerService sharedService];
    [v9 releaseInfraWiFi];
  }
}

- (void)retainInfraWiFiForTaskWithIdentifier:(unint64_t)a3
{
  taskIdentifiersRetainingInfraWiFi = self->_taskIdentifiersRetainingInfraWiFi;
  v7 = [NSNumber numberWithUnsignedInteger:?];
  LOBYTE(taskIdentifiersRetainingInfraWiFi) = [(NSMutableSet *)taskIdentifiersRetainingInfraWiFi containsObject:?];

  if ((taskIdentifiersRetainingInfraWiFi & 1) == 0)
  {
    v6 = self->_taskIdentifiersRetainingInfraWiFi;
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableSet *)v6 addObject:?];

    v9 = +[PDURLSessionProxyServerService sharedService];
    [v9 retainInfraWiFi];
  }
}

- (BOOL)shouldRetainInfraWiFi
{
  v3 = [(NSURLSessionConfiguration *)self->_sessionConfiguration _prefersInfraWiFi];
  if (v3)
  {
    LOBYTE(v3) = ![(NSURLSessionConfiguration *)self->_sessionConfiguration isDiscretionary];
  }

  return v3;
}

- (id)messageLoggableDescriptionForTaskWithIdentifier:(unint64_t)a3
{
  if (a3)
  {
    [(PDURLSessionProxyServer *)self descriptionForTaskWithIdentifier:?];
  }

  else
  {
    [NSString stringWithFormat:@"Session <%@>", self->_uuidString];
  }
  v3 = ;

  return v3;
}

- (int64_t)messagePriorityForTaskWithIdentifier:(unint64_t)a3 isReply:(BOOL)a4
{
  v7 = [(NSURLSessionConfiguration *)self->_sessionConfiguration _requiresSustainedDataDelivery];
  if (v7)
  {
    v8 = 300;
  }

  else
  {
    v8 = 200;
  }

  if ((v7 & 1) == 0 && !a4)
  {
    tasks = self->_tasks;
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    v11 = [(NSMutableDictionary *)tasks objectForKeyedSubscript:v10];

    sessionConfiguration = self->_sessionConfiguration;
    if (v11)
    {
      if ([(NSURLSessionConfiguration *)sessionConfiguration isDiscretionary])
      {
        v8 = 100;
      }

      else if ([v11 _priority] <= 399)
      {
        v8 = 200;
      }

      else
      {
        v8 = 100;
      }
    }

    else if ([(NSURLSessionConfiguration *)sessionConfiguration isDiscretionary])
    {
      v8 = 100;
    }

    else
    {
      v8 = 200;
    }
  }

  return v8;
}

- (id)getTaskInformation
{
  v3 = [(PDURLSessionProxyServer *)self identifier];
  v4 = +[NSMutableDictionary dictionary];
  tasks = self->_tasks;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006B0D8;
  v11[3] = &unk_1000D5C38;
  v6 = v3;
  v12 = v6;
  v7 = v4;
  v13 = v7;
  [(NSMutableDictionary *)tasks enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v7;

  return v7;
}

- (PDURLSessionProxyServer)initWithConfiguration:(id)a3 uuidString:(id)a4 options:(unint64_t)a5 delegate:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v64.receiver = self;
  v64.super_class = PDURLSessionProxyServer;
  v14 = [(PDURLSessionProxyServer *)&v64 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sessionConfiguration, a3);
    objc_storeStrong(&v15->_uuidString, a4);
    objc_storeStrong(&v15->_delegate, a6);
    v16 = [(NSURLSessionConfiguration *)v15->_sessionConfiguration identifier];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_supportsRedirects = v7 & 1;
    v18 = *&vshl_u16((*&vdup_n_s16(v7) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
    *&v15->_implementsWillSendRequest = vuzp1_s8(v18, v18).u32[0];
    v15->_implementsDidReceiveResponse = (v7 & 0x20) != 0;
    v19 = [(NSString *)v15->_identifier stringByAppendingFormat:@" uuid:%@", v15->_uuidString];
    [v11 setIdentifier:v19];
    if ([v11 _nsurlsessionproxy_requiresBackgroundSession])
    {
      [(NSURLSessionConfiguration *)v15->_sessionConfiguration setDisposition:@"BackgroundDisposition"];
      [(NSURLSessionConfiguration *)v15->_sessionConfiguration set_connectionPoolName:@"com.apple.nsurlsessiond.NSURLSessionProxyPool"];
    }

    v20 = [v11 _companionAppBundleIdentifier];
    v21 = v20 == 0;

    if (!v21)
    {
      v22 = [(NSURLSessionConfiguration *)v15->_sessionConfiguration _companionAppBundleIdentifier];
      [(NSURLSessionConfiguration *)v15->_sessionConfiguration set_sourceApplicationBundleIdentifier:v22];
    }

    [(NSURLSessionConfiguration *)v15->_sessionConfiguration setURLCache:0];
    [(NSURLSessionConfiguration *)v15->_sessionConfiguration setHTTPCookieStorage:0];
    [(NSURLSessionConfiguration *)v15->_sessionConfiguration set_onBehalfOfPairedDevice:1];
    v23 = [(NSURLSessionConfiguration *)v15->_sessionConfiguration _sourceApplicationAuditTokenData];
    v24 = v23 == 0;

    if (!v24)
    {
      v25 = qword_1000EB1D8;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v62 = v15->_identifier;
        v63 = [(NSURLSessionConfiguration *)v15->_sessionConfiguration _sourceApplicationAuditTokenData];
        *buf = 138412546;
        v66 = v62;
        v67 = 2112;
        v68 = v63;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "PDURLSessionProxyServer Session %@ had _sourceApplicationAuditTokenData [%@]- discarding", buf, 0x16u);
      }

      [(NSURLSessionConfiguration *)v15->_sessionConfiguration set_sourceApplicationAuditTokenData:0];
    }

    v26 = +[PDURLSessionProxyServerService sharedService];
    v27 = [v26 queue];
    queue = v15->_queue;
    v15->_queue = v27;

    v29 = objc_opt_new();
    tasks = v15->_tasks;
    v15->_tasks = v29;

    v31 = objc_opt_new();
    tasksToIdentifiers = v15->_tasksToIdentifiers;
    v15->_tasksToIdentifiers = v31;

    v33 = objc_opt_new();
    taskIdentifiersRetainingInfraWiFi = v15->_taskIdentifiersRetainingInfraWiFi;
    v15->_taskIdentifiersRetainingInfraWiFi = v33;

    v35 = objc_opt_new();
    taskIdentifiersRetainingBTLinkAssertion = v15->_taskIdentifiersRetainingBTLinkAssertion;
    v15->_taskIdentifiersRetainingBTLinkAssertion = v35;

    v37 = objc_opt_new();
    taskIdentifiersToSequenceNumbers = v15->_taskIdentifiersToSequenceNumbers;
    v15->_taskIdentifiersToSequenceNumbers = v37;

    v39 = objc_opt_new();
    taskIdentifiersToBodyStreams = v15->_taskIdentifiersToBodyStreams;
    v15->_taskIdentifiersToBodyStreams = v39;

    v41 = objc_opt_new();
    taskIdentifiersToInitialBodyInputStreams = v15->_taskIdentifiersToInitialBodyInputStreams;
    v15->_taskIdentifiersToInitialBodyInputStreams = v41;

    v43 = objc_opt_new();
    taskIdentifiersToWaitingReasons = v15->_taskIdentifiersToWaitingReasons;
    v15->_taskIdentifiersToWaitingReasons = v43;

    v45 = objc_opt_new();
    taskIdentifiersToPendingDataBytes = v15->_taskIdentifiersToPendingDataBytes;
    v15->_taskIdentifiersToPendingDataBytes = v45;

    v47 = objc_opt_new();
    taskIdentifiersToPendingDataCompletion = v15->_taskIdentifiersToPendingDataCompletion;
    v15->_taskIdentifiersToPendingDataCompletion = v47;

    v49 = objc_opt_new();
    streamTasksToOpenSocketReplies = v15->_streamTasksToOpenSocketReplies;
    v15->_streamTasksToOpenSocketReplies = v49;

    v51 = objc_opt_new();
    streamTasksToDeviceConnections = v15->_streamTasksToDeviceConnections;
    v15->_streamTasksToDeviceConnections = v51;

    v53 = objc_opt_new();
    streamTasksToIDSTCPConnections = v15->_streamTasksToIDSTCPConnections;
    v15->_streamTasksToIDSTCPConnections = v53;

    v55 = objc_opt_new();
    messagesToReSend = v15->_messagesToReSend;
    v15->_messagesToReSend = v55;

    v57 = objc_opt_new();
    deviceConnections = v15->_deviceConnections;
    v15->_deviceConnections = v57;

    v59 = [NSURLSession _sessionWithConfiguration:v15->_sessionConfiguration delegate:v15 delegateDispatchQueue:v15->_queue];
    session = v15->_session;
    v15->_session = v59;

    v15->_isInvalid = 0;
  }

  return v15;
}

+ (void)initialize
{
  if (qword_1000EB1D0 != -1)
  {
    dispatch_once(&qword_1000EB1D0, &stru_1000D5C10);
  }
}

@end