@interface FMDServerInteractionController
- (BOOL)enqueueRequest:(id)a3;
- (FMDServerInteractionController)initWithChannels:(id)a3 delegate:(id)a4;
- (NSString)udid;
- (id)account;
- (id)redirectedRequestURLForType:(id)a3 udid:(id)a4;
- (id)redirectedURL:(id)a3;
- (id)requestUrlForType:(id)a3 udid:(id)a4;
- (void)_beginXPCTransactionForRequest:(id)a3;
- (void)_disablePowerAssertionForRequest:(id)a3;
- (void)_enablePowerAssertionForRequest:(id)a3;
- (void)_endXPCTransactionForRequest:(id)a3;
- (void)_evaluateRetriesForRequest:(id)a3;
- (void)_handleResponseForRequest:(id)a3 withStatus:(int64_t)a4 headers:(id)a5 body:(id)a6 location:(id)a7 error:(id)a8;
- (void)_markRequestCancelled:(id)a3;
- (void)_sendRequest:(id)a3;
- (void)cancelAllRequests;
- (void)cancelRequest:(id)a3;
@end

@implementation FMDServerInteractionController

- (FMDServerInteractionController)initWithChannels:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = FMDServerInteractionController;
  v9 = [(FMDServerInteractionController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_channels, a3);
    v11 = +[NSMutableArray array];
    requests = v10->_requests;
    v10->_requests = v11;

    v13 = objc_opt_new();
    requestModifierLock = v10->_requestModifierLock;
    v10->_requestModifierLock = v13;

    objc_storeStrong(&v10->_delegate, a4);
  }

  return v10;
}

- (BOOL)enqueueRequest:(id)a3
{
  v4 = a3;
  if ([v4 type])
  {
    v5 = [v4 authId];
    if (v5 && ([v4 authToken], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      if (v5)
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
          v46 = v4;
          v10 = v44;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) No credentials found. Not sending the request", buf, 0x16u);
        }

        goto LABEL_14;
      }
    }
  }

  if ([v4 cancelled])
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = objc_opt_class();
      v45 = 2048;
      v46 = v4;
      v11 = v44;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Enqueueing request already cancelled", buf, 0x16u);
    }

LABEL_14:

    v12 = 0;
    goto LABEL_36;
  }

  v13 = [(FMDServerInteractionController *)self requestModifierLock];
  [v13 lock];

  v14 = sub_100002880();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = objc_opt_class();
    v45 = 2048;
    v46 = v4;
    v15 = v44;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Enqueueing request", buf, 0x16u);
  }

  v16 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = [(FMDServerInteractionController *)self requests];
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v18)
  {
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        if ([v4 canReplace:v21])
        {
          [v16 addObject:v21];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v39 objects:v52 count:16];
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
          v50 = v4;
          v29 = self;
          v30 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) is being replaced with %@ (0x%lX)", buf, 0x2Au);

          self = v29;
        }

        [(FMDServerInteractionController *)self cancelRequest:v25];
      }

      v22 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v22);
  }

  v31 = [(FMDServerInteractionController *)self requests];
  [v31 addObject:v4];

  v32 = [(FMDServerInteractionController *)self requestModifierLock];
  [v32 unlock];

  [(FMDServerInteractionController *)self _sendRequest:v4];
  v12 = 1;
LABEL_36:

  return v12;
}

- (void)cancelAllRequests
{
  v3 = [(FMDServerInteractionController *)self requestModifierLock];
  [v3 lock];

  v4 = [(FMDServerInteractionController *)self requests];
  v5 = [v4 copy];

  v6 = +[NSMutableArray array];
  [(FMDServerInteractionController *)self setRequests:v6];

  v7 = [(FMDServerInteractionController *)self requestModifierLock];
  [v7 unlock];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(FMDServerInteractionController *)self channels];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v20 + 1) + 8 * i) cancelAllRequests];
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

- (void)_sendRequest:(id)a3
{
  v4 = a3;
  if (([v4 inProgress] & 1) == 0 && (objc_msgSend(v4, "cancelled") & 1) == 0 && (objc_msgSend(v4, "completed") & 1) == 0 && objc_msgSend(v4, "willRetry"))
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = [(FMDServerInteractionController *)self channels];
    v6 = [v5 countByEnumeratingWithState:&v52 objects:v62 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        if ([v10 isActive])
        {
          if ([v10 supportsRequestType:{objc_msgSend(v4, "type")}])
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v52 objects:v62 count:16];
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
        v15 = [v11 fm_logID];
        *buf = 138412802;
        v57 = v13;
        v58 = 2048;
        v59 = v4;
        v60 = 2112;
        v61 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending to channel %@", buf, 0x20u);
      }

      [v4 setInProgress:1];
      [v4 setAlertFromServerResponse:0];
      v16 = [v4 willSendHandler];

      if (v16)
      {
        v17 = [v4 willSendHandler];
        (v17)[2](v17, v4);
      }

      v18 = [v4 requestUrl];
      v19 = [(FMDServerInteractionController *)self redirectedURL:v18];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v22 = [v4 urlTemplateType];
        v23 = [(FMDServerInteractionController *)self udid];
        v21 = [(FMDServerInteractionController *)self redirectedRequestURLForType:v22 udid:v23];
      }

      v24 = [v4 requestBody];
      v25 = [v4 requestBodyData];
      if (v25)
      {
        goto LABEL_24;
      }

      if (!v24)
      {
LABEL_44:

        goto LABEL_45;
      }

      v51 = 0;
      v27 = [NSJSONSerialization dataWithJSONObject:v24 options:0 error:&v51];
      v41 = v51;
      v25 = v41;
      if (v27)
      {
        if (!v41)
        {
          v25 = v27;
LABEL_24:
          v26 = v21;
          v27 = [v4 requestHeaders];
          v28 = [v27 mutableCopy];
          v29 = [v28 objectForKeyedSubscript:@"Authorization"];

          if (v29)
          {
            [v28 setObject:@"REDACTED" forKeyedSubscript:@"Authorization"];
          }

          v30 = [NSJSONSerialization JSONObjectWithData:v25 options:0 error:0];
          v31 = sub_10000C688();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = objc_opt_class();
            *buf = 138412802;
            v57 = v32;
            v58 = 2048;
            v59 = v4;
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
            v59 = v4;
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
            v59 = v4;
            v60 = 2112;
            v61 = v30;
            v39 = v38;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending with body dict : \n%@ ", buf, 0x20u);
          }

          if ([v4 cancelled])
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
            [(FMDServerInteractionController *)self _enablePowerAssertionForRequest:v4];
            v42 = [v4 retryHelper];
            v43 = [v42 totalRetryCount];

            v21 = v26;
            if (!v43)
            {
              [(FMDServerInteractionController *)self _beginXPCTransactionForRequest:v4];
            }

            v44 = [v4 requestId];
            v48[0] = _NSConcreteStackBlock;
            v48[1] = 3221225472;
            v48[2] = sub_10012DB58;
            v48[3] = &unk_1002CD360;
            v49 = v4;
            v50 = self;
            [v11 sendRequestWithId:v44 toURL:v26 withHeaders:v27 body:v25 completion:v48];

            v40 = v49;
          }

          v24 = v47;
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

        if (!v25)
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
    v11 = v5;
LABEL_45:
  }

LABEL_46:
}

- (void)_handleResponseForRequest:(id)a3 withStatus:(int64_t)a4 headers:(id)a5 body:(id)a6 location:(id)a7 error:(id)a8
{
  v14 = a3;
  v84 = a5;
  v15 = a6;
  v81 = a7;
  v83 = a8;
  v16 = sub_10000C688();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = v17;
    v19 = [v83 domain];
    *buf = 138413314;
    v87 = v17;
    v88 = 2048;
    v89 = v14;
    v90 = 2048;
    v91 = a4;
    v92 = 2112;
    v93 = v19;
    v94 = 2048;
    v95 = [v83 code];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) received response with status %ld, error %@:%ld", buf, 0x34u);
  }

  v20 = sub_10000C688();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = v21;
    v23 = [v84 objectForKeyedSubscript:@"X-Apple-Request-UUID"];
    v24 = [v84 objectForKeyedSubscript:@"X-Request-UUID"];
    v25 = [v84 objectForKeyedSubscript:@"X-Responding-Instance"];
    *buf = 138413314;
    v87 = v21;
    v88 = 2048;
    v89 = v14;
    v90 = 2114;
    v91 = v23;
    v92 = 2114;
    v93 = v24;
    v94 = 2114;
    v95 = v25;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) X-Apple-Request-UUID: %{public}@, X-Request-UUID: %{public}@, X-Apple-Responding-Instance : %{public}@", buf, 0x34u);
  }

  v26 = sub_10000C688();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = v27;
    v29 = [v84 description];
    *buf = 138412802;
    v87 = v27;
    v88 = 2048;
    v89 = v14;
    v90 = 2112;
    v91 = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) received headers: \n%@", buf, 0x20u);
  }

  if (v15)
  {
    v30 = [[NSString alloc] initWithData:v15 encoding:4];
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
    v89 = v14;
    v90 = 2112;
    v91 = v30;
    v33 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) raw response body : %@", buf, 0x20u);
  }

  [v14 setHttpResponseStatus:a4];
  [v14 setHttpResponseHeaders:v84];
  [v14 setHttpResponseError:v83];
  if ([v15 length])
  {
    v85 = 0;
    v34 = [NSJSONSerialization JSONObjectWithData:v15 options:0 error:&v85];
    v35 = v85;
    v36 = v35;
    if (v34 || !v35)
    {
      [v14 setHttpResponseBody:v34];
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
        v89 = v14;
        v90 = 2112;
        v91 = v40;
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
  v41 = [v14 httpResponseBody];
  v42 = v41 == 0;

  if (!v42)
  {
    v43 = [v14 httpResponseBody];
    v44 = [v43 objectForKeyedSubscript:@"alert"];
    v45 = [v44 fm_nullToNil];
    [v14 setAlertFromServerResponse:v45];
  }

  [v14 setCompleted:{objc_msgSend(v14, "responseErrorType") == 0}];
  if ([v14 responseErrorType] == 1025)
  {
    v46 = [v14 httpResponseHeaders];
    v47 = [v46 stringForCaseInsensitiveStringKey:@"X-Apple-MMe-Host"];

    if (v47)
    {
      v48 = [v14 urlTemplateType];
      v49 = [(FMDServerInteractionController *)self udid];
      v50 = [(FMDServerInteractionController *)self redirectedRequestURLForType:v48 udid:v49];
      v51 = [v50 host];

      v52 = [(FMDServerInteractionController *)self account];
      v53 = [v52 authId];
      [FMDRealmSupport setRedirectedHost:v47 forHost:v51 withContext:v53];

      v54 = sub_100002880();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = objc_opt_class();
        v56 = v55;
        v57 = [(FMDServerInteractionController *)self account];
        v58 = [v57 authId];
        *buf = 138413314;
        v87 = v55;
        v88 = 2048;
        v89 = v14;
        v90 = 2112;
        v91 = v51;
        v92 = 2112;
        v93 = v47;
        v94 = 2112;
        v95 = v58;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Realm redirection from %@ to %@ for %@", buf, 0x34u);
      }
    }
  }

  [(FMDServerInteractionController *)self _evaluateRetriesForRequest:v14];
  [v14 setInProgress:0];
  v59 = [v14 completionHandler];

  if (v59)
  {
    v60 = sub_10000C688();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      sub_100225D9C();
    }

    v61 = [v14 completionHandler];
    (v61)[2](v61, v14);
  }

  v62 = [v14 alertFromServerResponse];

  if (v62)
  {
    v63 = [(FMDServerInteractionController *)self delegate];
    [v63 didReceiveServerAlertForRequest:v14];
  }

  v64 = [v14 httpResponseHeaders];
  v65 = [v64 stringForCaseInsensitiveStringKey:@"X-Apple-Force-Register"];
  if ([v65 isEqualToString:@"true"])
  {
  }

  else
  {
    v66 = [v14 httpResponseHeaders];
    v67 = [v66 BOOLForCaseInsensitiveStringKey:@"X-Apple-Force-Register"];

    if (!v67)
    {
      goto LABEL_40;
    }
  }

  v68 = +[FMDServiceProvider activeServiceProvider];
  [v68 registerDeviceWithCause:@"ForcedServerRegister" force:1];

LABEL_40:
  v69 = [v14 httpResponseHeaders];
  v70 = [v69 objectForKey:@"X-Apple-Ctx"];

  if (v70)
  {
    v71 = +[FMDProtectedContextManager sharedManager];
    [v71 cleanupAllContextsForKey:@"serverContextHeaderContext"];

    v72 = +[FMDProtectedContextManager sharedManager];
    v73 = [v72 saveContext:v70 forContextKey:@"serverContextHeaderContext" dataProtectionClass:4];
  }

  if (([v14 willRetry] & 1) == 0)
  {
    v74 = sub_100002880();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = objc_opt_class();
      *buf = 138412546;
      v87 = v75;
      v88 = 2048;
      v89 = v14;
      v76 = v75;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Removing from the queue as it was completed or it exhausted its retries", buf, 0x16u);
    }

    [v14 deinitializeRequest];
    v77 = [(FMDServerInteractionController *)self requestModifierLock];
    [v77 lock];

    v78 = [(FMDServerInteractionController *)self requests];
    [v78 removeObject:v14];

    v79 = [(FMDServerInteractionController *)self requestModifierLock];
    [v79 unlock];

    [(FMDServerInteractionController *)self _endXPCTransactionForRequest:v14];
  }

  if ([v14 responseErrorType] == 257)
  {
    v80 = [(FMDServerInteractionController *)self delegate];
    [v80 didReceiveAuthFailureForRequest:v14];
  }

  [(FMDServerInteractionController *)self _disablePowerAssertionForRequest:v14];
}

- (void)cancelRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = objc_opt_class();
    v23 = 2048;
    v24 = v4;
    v6 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancelling request %@ (0x%lX)", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(FMDServerInteractionController *)self channels];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v4 requestId];
        [v11 cancelRequestWithId:v12];
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(FMDServerInteractionController *)self _markRequestCancelled:v4];
  v13 = [(FMDServerInteractionController *)self requestModifierLock];
  [v13 lock];

  v14 = [(FMDServerInteractionController *)self requests];
  [v14 removeObject:v4];

  v15 = [(FMDServerInteractionController *)self requestModifierLock];
  [v15 unlock];
}

- (void)_markRequestCancelled:(id)a3
{
  v4 = a3;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138412546;
    *&v9[4] = objc_opt_class();
    *&v9[12] = 2048;
    *&v9[14] = v4;
    v6 = *&v9[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Marking request cancelled %@ (0x%lX)", v9, 0x16u);
  }

  [v4 setCancelled:1];
  [v4 setInProgress:0];
  [(FMDServerInteractionController *)self _evaluateRetriesForRequest:v4];
  v7 = [v4 completionHandler];

  if (v7)
  {
    v8 = [v4 completionHandler];
    (v8)[2](v8, v4);
  }

  [v4 deinitializeRequest];
  [(FMDServerInteractionController *)self _endXPCTransactionForRequest:v4];
  [(FMDServerInteractionController *)self _disablePowerAssertionForRequest:v4];
}

- (void)_evaluateRetriesForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 retryHelper];

  if (!v5)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v4);
    v6 = [FMDRequestRetryHelper alloc];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10012EB70;
    v12 = &unk_1002CD388;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    v7 = [(FMDRequestRetryHelper *)v6 initWithRequest:v4 retryAction:&v9];
    [v4 setRetryHelper:{v7, v9, v10, v11, v12}];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v8 = [v4 retryHelper];
  [v8 checkAndScheduleRetries];
}

- (void)_beginXPCTransactionForRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = [NSString stringWithFormat:@"%@-0x%p", v5, v3];

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 beginTransaction:v7];
}

- (void)_endXPCTransactionForRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = [NSString stringWithFormat:@"%@-0x%p", v5, v3];

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 endTransaction:v7];
}

- (void)_enablePowerAssertionForRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = [NSString stringWithFormat:@"%@-0x%p", v5, v3];

  v6 = +[FMDPowerMgr sharedInstance];
  [v6 powerAssertionEnableWithReason:v7];
}

- (void)_disablePowerAssertionForRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = [NSString stringWithFormat:@"%@-0x%p", v5, v3];

  v6 = +[FMDPowerMgr sharedInstance];
  [v6 powerAssertionDisableWithReason:v7];
}

- (id)requestUrlForType:(id)a3 udid:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[FMDServerConfig sharedInstance];
  v9 = [v8 urlTemplateForRequestType:v7];

  v10 = objc_alloc_init(RequestTemplateURL);
  v11 = [(FMDServerInteractionController *)self account];
  v12 = [(RequestTemplateURL *)v10 urlFromTemplate:v9 account:v11 udid:v6];

  return v12;
}

- (id)redirectedRequestURLForType:(id)a3 udid:(id)a4
{
  v5 = [(FMDServerInteractionController *)self requestUrlForType:a3 udid:a4];
  v6 = [(FMDServerInteractionController *)self redirectedURL:v5];

  return v6;
}

- (id)redirectedURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 host];
    v7 = [(FMDServerInteractionController *)self account];
    v8 = [v7 authId];
    v9 = [FMDRealmSupport redirectedHostForHost:v6 withContext:v8];

    v10 = v5;
    if (v9)
    {
      v10 = v5;
      if (([v6 isEqualToString:v9] & 1) == 0)
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
  v3 = [(FMDServerInteractionController *)self requestAccount];

  if (v3)
  {
    v4 = [(FMDServerInteractionController *)self requestAccount];
  }

  else
  {
    v5 = [(FMDServerInteractionController *)self delegate];
    v4 = [v5 accountForServerInteractionController:self];
  }

  return v4;
}

- (NSString)udid
{
  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 deviceUDID];

  if (self->_udid)
  {
    udid = self->_udid;
  }

  else
  {
    udid = v4;
  }

  v6 = udid;

  return udid;
}

@end