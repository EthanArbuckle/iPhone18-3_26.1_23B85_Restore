@interface NSPAnonymousToken
+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session tokenActivationQuery:(id)query completionHandler:(id)handler;
@end

@implementation NSPAnonymousToken

+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session tokenActivationQuery:(id)query completionHandler:(id)handler
{
  tokensCopy = tokens;
  sessionCopy = session;
  queryCopy = query;
  handlerCopy = handler;
  if (!tokensCopy)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPAnonymousToken sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null urlRequest", &buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (!sessionCopy)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPAnonymousToken sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null tokenFetchURLSession", &buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (!queryCopy)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPAnonymousToken sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null tokenActivationQuery", &buf, 0xCu);
    }

    goto LABEL_18;
  }

  authInfo = [queryCopy authInfo];

  if (!authInfo)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPAnonymousToken sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null tokenActivationQuery.authInfo", &buf, 0xCu);
    }

LABEL_18:

    (*(handlerCopy + 2))(handlerCopy, 4, 0, 0, 0);
    goto LABEL_6;
  }

  [queryCopy setAuthType:4];
  data = [queryCopy data];
  [tokensCopy setHTTPBody:data];

  [tokensCopy _setPrivacyProxyFailClosed:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_100001FB4;
  v26 = sub_1000AF790;
  v27 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000B1730;
  v20 = &unk_10010AA30;
  p_buf = &buf;
  v21 = handlerCopy;
  v15 = [sessionCopy dataTaskWithRequest:tokensCopy completionHandler:&v17];
  objc_storeStrong((*(&buf + 1) + 40), v15);
  [*(*(&buf + 1) + 40) resume];

  _Block_object_dispose(&buf, 8);
LABEL_6:
}

@end