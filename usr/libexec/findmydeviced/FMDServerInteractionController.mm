@interface FMDServerInteractionController
- (BOOL)enqueueRequest:(id)request;
- (FMDServerInteractionController)initWithChannels:(id)channels delegate:(id)delegate;
- (NSString)udid;
- (id)account;
- (id)redirectedRequestURLForType:(id)type udid:(id)udid;
- (id)redirectedURL:(id)l;
- (id)requestUrlForType:(id)type udid:(id)udid;
- (void)_beginXPCTransactionForRequest:(id)request;
- (void)_disablePowerAssertionForRequest:(id)request;
- (void)_enablePowerAssertionForRequest:(id)request;
- (void)_endXPCTransactionForRequest:(id)request;
- (void)_evaluateRetriesForRequest:(id)request;
- (void)_handleResponseForRequest:(id)request withStatus:(int64_t)status headers:(id)headers body:(id)body location:(id)location error:(id)error;
- (void)_markRequestCancelled:(id)cancelled;
- (void)_sendRequest:(id)request;
- (void)cancelAllRequests;
- (void)cancelRequest:(id)request;
@end

@implementation FMDServerInteractionController

- (FMDServerInteractionController)initWithChannels:(id)channels delegate:(id)delegate
{
  channelsCopy = channels;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = FMDServerInteractionController;
  v9 = [(FMDServerInteractionController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_channels, channels);
    v11 = +[NSMutableArray array];
    requests = v10->_requests;
    v10->_requests = v11;

    v13 = objc_opt_new();
    requestModifierLock = v10->_requestModifierLock;
    v10->_requestModifierLock = v13;

    objc_storeStrong(&v10->_delegate, delegate);
  }

  return v10;
}

- (BOOL)enqueueRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy type])
  {
    authId = [requestCopy authId];
    if (authId && ([requestCopy authToken], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      if (authId)
      {
      }

      if (v7 != v8)
      {
        v9 = sub_100002880();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v44 = objc_opt_class();
          v45 = 2048;
          v46 = requestCopy;
          v10 = v44;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) No credentials found. Not sending the request", buf, 0x16u);
        }

        goto LABEL_14;
      }
    }
  }

  if ([requestCopy cancelled])
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = objc_opt_class();
      v45 = 2048;
      v46 = requestCopy;
      v11 = v44;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Enqueueing request already cancelled", buf, 0x16u);
    }

LABEL_14:

    v12 = 0;
    goto LABEL_36;
  }

  requestModifierLock = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock lock];

  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = objc_opt_class();
    v45 = 2048;
    v46 = requestCopy;
    v15 = v44;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Enqueueing request", buf, 0x16u);
  }

  v16 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  requests = [(FMDServerInteractionController *)self requests];
  v18 = [requests countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v18)
  {
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(requests);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        if ([requestCopy canReplace:v21])
        {
          [v16 addObject:v21];
        }
      }

      v18 = [requests countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v18);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v16;
  v22 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v22)
  {
    v23 = *v36;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        v26 = sub_100002880();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = objc_opt_class();
          v28 = objc_opt_class();
          *buf = 138413058;
          v44 = v27;
          v45 = 2048;
          v46 = v25;
          v47 = 2112;
          v48 = v28;
          v49 = 2048;
          v50 = requestCopy;
          selfCopy = self;
          v30 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) is being replaced with %@ (0x%lX)", buf, 0x2Au);

          self = selfCopy;
        }

        [(FMDServerInteractionController *)self cancelRequest:v25];
      }

      v22 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v22);
  }

  requests2 = [(FMDServerInteractionController *)self requests];
  [requests2 addObject:requestCopy];

  requestModifierLock2 = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock2 unlock];

  [(FMDServerInteractionController *)self _sendRequest:requestCopy];
  v12 = 1;
LABEL_36:

  return v12;
}

- (void)cancelAllRequests
{
  requestModifierLock = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDServerInteractionController *)self requests];
  v5 = [requests copy];

  v6 = +[NSMutableArray array];
  [(FMDServerInteractionController *)self setRequests:v6];

  requestModifierLock2 = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock2 unlock];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  channels = [(FMDServerInteractionController *)self channels];
  v9 = [channels countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(channels);
        }

        [*(*(&v20 + 1) + 8 * i) cancelAllRequests];
      }

      v9 = [channels countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(FMDServerInteractionController *)self _markRequestCancelled:*(*(&v16 + 1) + 8 * j), v16];
      }

      v13 = [v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)_sendRequest:(id)request
{
  requestCopy = request;
  if (([requestCopy inProgress] & 1) == 0 && (objc_msgSend(requestCopy, "cancelled") & 1) == 0 && (objc_msgSend(requestCopy, "completed") & 1) == 0 && objc_msgSend(requestCopy, "willRetry"))
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    channels = [(FMDServerInteractionController *)self channels];
    v6 = [channels countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v53;
LABEL_7:
      v9 = 0;
      while (1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(channels);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        if ([v10 isActive])
        {
          if ([v10 supportsRequestType:{objc_msgSend(requestCopy, "type")}])
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [channels countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v7)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }

      v11 = v10;

      if (!v11)
      {
        goto LABEL_46;
      }

      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = v13;
        fm_logID = [v11 fm_logID];
        *buf = 138412802;
        v57 = v13;
        v58 = 2048;
        v59 = requestCopy;
        v60 = 2112;
        v61 = fm_logID;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending to channel %@", buf, 0x20u);
      }

      [requestCopy setInProgress:1];
      [requestCopy setAlertFromServerResponse:0];
      willSendHandler = [requestCopy willSendHandler];

      if (willSendHandler)
      {
        willSendHandler2 = [requestCopy willSendHandler];
        (willSendHandler2)[2](willSendHandler2, requestCopy);
      }

      requestUrl = [requestCopy requestUrl];
      v19 = [(FMDServerInteractionController *)self redirectedURL:requestUrl];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        urlTemplateType = [requestCopy urlTemplateType];
        udid = [(FMDServerInteractionController *)self udid];
        v21 = [(FMDServerInteractionController *)self redirectedRequestURLForType:urlTemplateType udid:udid];
      }

      requestBody = [requestCopy requestBody];
      requestBodyData = [requestCopy requestBodyData];
      if (requestBodyData)
      {
        goto LABEL_24;
      }

      if (!requestBody)
      {
LABEL_44:

        goto LABEL_45;
      }

      v51 = 0;
      requestHeaders = [NSJSONSerialization dataWithJSONObject:requestBody options:0 error:&v51];
      v41 = v51;
      requestBodyData = v41;
      if (requestHeaders)
      {
        if (!v41)
        {
          requestBodyData = requestHeaders;
LABEL_24:
          v26 = v21;
          requestHeaders = [requestCopy requestHeaders];
          v28 = [requestHeaders mutableCopy];
          v29 = [v28 objectForKeyedSubscript:@"Authorization"];

          if (v29)
          {
            [v28 setObject:@"REDACTED" forKeyedSubscript:@"Authorization"];
          }

          v30 = [NSJSONSerialization JSONObjectWithData:requestBodyData options:0 error:0];
          v31 = sub_10000C688();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = objc_opt_class();
            *buf = 138412802;
            v57 = v32;
            v58 = 2048;
            v59 = requestCopy;
            v60 = 2112;
            v61 = v26;
            v33 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending to url %@ ", buf, 0x20u);
          }

          v34 = sub_10000C688();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = objc_opt_class();
            *buf = 138412802;
            v57 = v35;
            v58 = 2048;
            v59 = requestCopy;
            v60 = 2112;
            v61 = v28;
            v36 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending headers: \n%@ ", buf, 0x20u);
          }

          v37 = sub_10000C688();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = objc_opt_class();
            *buf = 138412802;
            v57 = v38;
            v58 = 2048;
            v59 = requestCopy;
            v60 = 2112;
            v61 = v30;
            v39 = v38;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending with body dict : \n%@ ", buf, 0x20u);
          }

          if ([requestCopy cancelled])
          {
            v40 = sub_100002880();
            v21 = v26;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              sub_100225ABC();
            }
          }

          else
          {
            [(FMDServerInteractionController *)self _enablePowerAssertionForRequest:requestCopy];
            retryHelper = [requestCopy retryHelper];
            totalRetryCount = [retryHelper totalRetryCount];

            v21 = v26;
            if (!totalRetryCount)
            {
              [(FMDServerInteractionController *)self _beginXPCTransactionForRequest:requestCopy];
            }

            requestId = [requestCopy requestId];
            v48[0] = _NSConcreteStackBlock;
            v48[1] = 3221225472;
            v48[2] = sub_10012DB58;
            v48[3] = &unk_1002CD360;
            v49 = requestCopy;
            selfCopy = self;
            [v11 sendRequestWithId:requestId toURL:v26 withHeaders:requestHeaders body:requestBodyData completion:v48];

            v40 = v49;
          }

          requestBody = v47;
LABEL_43:

          goto LABEL_44;
        }
      }

      else
      {
        v45 = sub_100002880();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_100225B48();
        }

        if (!requestBodyData)
        {
          goto LABEL_44;
        }
      }

      v46 = sub_100002880();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100225BDC();
      }

      v40 = sub_10000C688();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_100225C70();
      }

      goto LABEL_43;
    }

LABEL_14:
    v11 = channels;
LABEL_45:
  }

LABEL_46:
}

- (void)_handleResponseForRequest:(id)request withStatus:(int64_t)status headers:(id)headers body:(id)body location:(id)location error:(id)error
{
  requestCopy = request;
  headersCopy = headers;
  bodyCopy = body;
  locationCopy = location;
  errorCopy = error;
  v16 = sub_10000C688();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = v17;
    domain = [errorCopy domain];
    *buf = 138413314;
    v87 = v17;
    v88 = 2048;
    v89 = requestCopy;
    v90 = 2048;
    statusCopy = status;
    v92 = 2112;
    v93 = domain;
    v94 = 2048;
    code = [errorCopy code];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) received response with status %ld, error %@:%ld", buf, 0x34u);
  }

  v20 = sub_10000C688();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = v21;
    v23 = [headersCopy objectForKeyedSubscript:@"X-Apple-Request-UUID"];
    v24 = [headersCopy objectForKeyedSubscript:@"X-Request-UUID"];
    v25 = [headersCopy objectForKeyedSubscript:@"X-Responding-Instance"];
    *buf = 138413314;
    v87 = v21;
    v88 = 2048;
    v89 = requestCopy;
    v90 = 2114;
    statusCopy = v23;
    v92 = 2114;
    v93 = v24;
    v94 = 2114;
    code = v25;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) X-Apple-Request-UUID: %{public}@, X-Request-UUID: %{public}@, X-Apple-Responding-Instance : %{public}@", buf, 0x34u);
  }

  v26 = sub_10000C688();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = v27;
    v29 = [headersCopy description];
    *buf = 138412802;
    v87 = v27;
    v88 = 2048;
    v89 = requestCopy;
    v90 = 2112;
    statusCopy = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) received headers: \n%@", buf, 0x20u);
  }

  if (bodyCopy)
  {
    v30 = [[NSString alloc] initWithData:bodyCopy encoding:4];
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_10000C688();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    *buf = 138412802;
    v87 = v32;
    v88 = 2048;
    v89 = requestCopy;
    v90 = 2112;
    statusCopy = v30;
    v33 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) raw response body : %@", buf, 0x20u);
  }

  [requestCopy setHttpResponseStatus:status];
  [requestCopy setHttpResponseHeaders:headersCopy];
  [requestCopy setHttpResponseError:errorCopy];
  if ([bodyCopy length])
  {
    v85 = 0;
    v34 = [NSJSONSerialization JSONObjectWithData:bodyCopy options:0 error:&v85];
    v35 = v85;
    v36 = v35;
    if (v34 || !v35)
    {
      [requestCopy setHttpResponseBody:v34];
      if (!v34)
      {
LABEL_21:

        goto LABEL_22;
      }

      v37 = sub_10000C688();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v39 = v38;
        v40 = [v34 description];
        *buf = 138412802;
        v87 = v38;
        v88 = 2048;
        v89 = requestCopy;
        v90 = 2112;
        statusCopy = v40;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) response body dict : \n%@", buf, 0x20u);
      }
    }

    else
    {
      v37 = sub_100002880();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100225D04();
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  httpResponseBody = [requestCopy httpResponseBody];
  v42 = httpResponseBody == 0;

  if (!v42)
  {
    httpResponseBody2 = [requestCopy httpResponseBody];
    v44 = [httpResponseBody2 objectForKeyedSubscript:@"alert"];
    fm_nullToNil = [v44 fm_nullToNil];
    [requestCopy setAlertFromServerResponse:fm_nullToNil];
  }

  [requestCopy setCompleted:{objc_msgSend(requestCopy, "responseErrorType") == 0}];
  if ([requestCopy responseErrorType] == 1025)
  {
    httpResponseHeaders = [requestCopy httpResponseHeaders];
    v47 = [httpResponseHeaders stringForCaseInsensitiveStringKey:@"X-Apple-MMe-Host"];

    if (v47)
    {
      urlTemplateType = [requestCopy urlTemplateType];
      udid = [(FMDServerInteractionController *)self udid];
      v50 = [(FMDServerInteractionController *)self redirectedRequestURLForType:urlTemplateType udid:udid];
      host = [v50 host];

      account = [(FMDServerInteractionController *)self account];
      authId = [account authId];
      [FMDRealmSupport setRedirectedHost:v47 forHost:host withContext:authId];

      v54 = sub_100002880();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = objc_opt_class();
        v56 = v55;
        account2 = [(FMDServerInteractionController *)self account];
        authId2 = [account2 authId];
        *buf = 138413314;
        v87 = v55;
        v88 = 2048;
        v89 = requestCopy;
        v90 = 2112;
        statusCopy = host;
        v92 = 2112;
        v93 = v47;
        v94 = 2112;
        code = authId2;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Realm redirection from %@ to %@ for %@", buf, 0x34u);
      }
    }
  }

  [(FMDServerInteractionController *)self _evaluateRetriesForRequest:requestCopy];
  [requestCopy setInProgress:0];
  completionHandler = [requestCopy completionHandler];

  if (completionHandler)
  {
    v60 = sub_10000C688();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      sub_100225D9C();
    }

    completionHandler2 = [requestCopy completionHandler];
    (completionHandler2)[2](completionHandler2, requestCopy);
  }

  alertFromServerResponse = [requestCopy alertFromServerResponse];

  if (alertFromServerResponse)
  {
    delegate = [(FMDServerInteractionController *)self delegate];
    [delegate didReceiveServerAlertForRequest:requestCopy];
  }

  httpResponseHeaders2 = [requestCopy httpResponseHeaders];
  v65 = [httpResponseHeaders2 stringForCaseInsensitiveStringKey:@"X-Apple-Force-Register"];
  if ([v65 isEqualToString:@"true"])
  {
  }

  else
  {
    httpResponseHeaders3 = [requestCopy httpResponseHeaders];
    v67 = [httpResponseHeaders3 BOOLForCaseInsensitiveStringKey:@"X-Apple-Force-Register"];

    if (!v67)
    {
      goto LABEL_40;
    }
  }

  v68 = +[FMDServiceProvider activeServiceProvider];
  [v68 registerDeviceWithCause:@"ForcedServerRegister" force:1];

LABEL_40:
  httpResponseHeaders4 = [requestCopy httpResponseHeaders];
  v70 = [httpResponseHeaders4 objectForKey:@"X-Apple-Ctx"];

  if (v70)
  {
    v71 = +[FMDProtectedContextManager sharedManager];
    [v71 cleanupAllContextsForKey:@"serverContextHeaderContext"];

    v72 = +[FMDProtectedContextManager sharedManager];
    v73 = [v72 saveContext:v70 forContextKey:@"serverContextHeaderContext" dataProtectionClass:4];
  }

  if (([requestCopy willRetry] & 1) == 0)
  {
    v74 = sub_100002880();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = objc_opt_class();
      *buf = 138412546;
      v87 = v75;
      v88 = 2048;
      v89 = requestCopy;
      v76 = v75;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Removing from the queue as it was completed or it exhausted its retries", buf, 0x16u);
    }

    [requestCopy deinitializeRequest];
    requestModifierLock = [(FMDServerInteractionController *)self requestModifierLock];
    [requestModifierLock lock];

    requests = [(FMDServerInteractionController *)self requests];
    [requests removeObject:requestCopy];

    requestModifierLock2 = [(FMDServerInteractionController *)self requestModifierLock];
    [requestModifierLock2 unlock];

    [(FMDServerInteractionController *)self _endXPCTransactionForRequest:requestCopy];
  }

  if ([requestCopy responseErrorType] == 257)
  {
    delegate2 = [(FMDServerInteractionController *)self delegate];
    [delegate2 didReceiveAuthFailureForRequest:requestCopy];
  }

  [(FMDServerInteractionController *)self _disablePowerAssertionForRequest:requestCopy];
}

- (void)cancelRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = objc_opt_class();
    v23 = 2048;
    v24 = requestCopy;
    v6 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancelling request %@ (0x%lX)", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  channels = [(FMDServerInteractionController *)self channels];
  v8 = [channels countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(channels);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        requestId = [requestCopy requestId];
        [v11 cancelRequestWithId:requestId];
      }

      v8 = [channels countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(FMDServerInteractionController *)self _markRequestCancelled:requestCopy];
  requestModifierLock = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDServerInteractionController *)self requests];
  [requests removeObject:requestCopy];

  requestModifierLock2 = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)_markRequestCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138412546;
    *&v9[4] = objc_opt_class();
    *&v9[12] = 2048;
    *&v9[14] = cancelledCopy;
    v6 = *&v9[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Marking request cancelled %@ (0x%lX)", v9, 0x16u);
  }

  [cancelledCopy setCancelled:1];
  [cancelledCopy setInProgress:0];
  [(FMDServerInteractionController *)self _evaluateRetriesForRequest:cancelledCopy];
  completionHandler = [cancelledCopy completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [cancelledCopy completionHandler];
    (completionHandler2)[2](completionHandler2, cancelledCopy);
  }

  [cancelledCopy deinitializeRequest];
  [(FMDServerInteractionController *)self _endXPCTransactionForRequest:cancelledCopy];
  [(FMDServerInteractionController *)self _disablePowerAssertionForRequest:cancelledCopy];
}

- (void)_evaluateRetriesForRequest:(id)request
{
  requestCopy = request;
  retryHelper = [requestCopy retryHelper];

  if (!retryHelper)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, requestCopy);
    v6 = [FMDRequestRetryHelper alloc];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10012EB70;
    v12 = &unk_1002CD388;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    v7 = [(FMDRequestRetryHelper *)v6 initWithRequest:requestCopy retryAction:&v9];
    [requestCopy setRetryHelper:{v7, v9, v10, v11, v12}];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  retryHelper2 = [requestCopy retryHelper];
  [retryHelper2 checkAndScheduleRetries];
}

- (void)_beginXPCTransactionForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestCopy = [NSString stringWithFormat:@"%@-0x%p", v5, requestCopy];

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 beginTransaction:requestCopy];
}

- (void)_endXPCTransactionForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestCopy = [NSString stringWithFormat:@"%@-0x%p", v5, requestCopy];

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 endTransaction:requestCopy];
}

- (void)_enablePowerAssertionForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestCopy = [NSString stringWithFormat:@"%@-0x%p", v5, requestCopy];

  v6 = +[FMDPowerMgr sharedInstance];
  [v6 powerAssertionEnableWithReason:requestCopy];
}

- (void)_disablePowerAssertionForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestCopy = [NSString stringWithFormat:@"%@-0x%p", v5, requestCopy];

  v6 = +[FMDPowerMgr sharedInstance];
  [v6 powerAssertionDisableWithReason:requestCopy];
}

- (id)requestUrlForType:(id)type udid:(id)udid
{
  udidCopy = udid;
  typeCopy = type;
  v8 = +[FMDServerConfig sharedInstance];
  v9 = [v8 urlTemplateForRequestType:typeCopy];

  v10 = objc_alloc_init(RequestTemplateURL);
  account = [(FMDServerInteractionController *)self account];
  v12 = [(RequestTemplateURL *)v10 urlFromTemplate:v9 account:account udid:udidCopy];

  return v12;
}

- (id)redirectedRequestURLForType:(id)type udid:(id)udid
{
  v5 = [(FMDServerInteractionController *)self requestUrlForType:type udid:udid];
  v6 = [(FMDServerInteractionController *)self redirectedURL:v5];

  return v6;
}

- (id)redirectedURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    host = [lCopy host];
    account = [(FMDServerInteractionController *)self account];
    authId = [account authId];
    v9 = [FMDRealmSupport redirectedHostForHost:host withContext:authId];

    v10 = v5;
    if (v9)
    {
      v10 = v5;
      if (([host isEqualToString:v9] & 1) == 0)
      {
        v10 = [v5 URLByReplacingHost:v9];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)account
{
  requestAccount = [(FMDServerInteractionController *)self requestAccount];

  if (requestAccount)
  {
    requestAccount2 = [(FMDServerInteractionController *)self requestAccount];
  }

  else
  {
    delegate = [(FMDServerInteractionController *)self delegate];
    requestAccount2 = [delegate accountForServerInteractionController:self];
  }

  return requestAccount2;
}

- (NSString)udid
{
  v3 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v3 deviceUDID];

  if (self->_udid)
  {
    udid = self->_udid;
  }

  else
  {
    udid = deviceUDID;
  }

  v6 = udid;

  return udid;
}

@end