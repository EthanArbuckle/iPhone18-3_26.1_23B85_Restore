@interface NSPBAA
+ (void)authenticationFailure;
+ (void)sendRequestForQuota:(id)quota urlSession:(id)session quotaServiceRequest:(id)request completionHandler:(id)handler;
+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session messageBody:(id)body completionHandler:(id)handler;
+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session tokenActivationQuery:(id)query completionHandler:(id)handler;
@end

@implementation NSPBAA

+ (void)authenticationFailure
{
  v2 = +[NSPDeviceIdentityCertificate sharedDeviceIdentity];
  [v2 deviceIdentityAuthenticationFailed];
}

+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session tokenActivationQuery:(id)query completionHandler:(id)handler
{
  tokensCopy = tokens;
  sessionCopy = session;
  queryCopy = query;
  handlerCopy = handler;
  if (!tokensCopy)
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v23 = "+[NSPBAA sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      v16 = "%s called with null urlRequest";
      goto LABEL_13;
    }

LABEL_11:

    (*(handlerCopy + 2))(handlerCopy, 1, 0, 0, 0);
    goto LABEL_5;
  }

  if (!sessionCopy)
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v23 = "+[NSPBAA sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      v16 = "%s called with null tokenFetchURLSession";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!queryCopy)
  {
    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v23 = "+[NSPBAA sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
    v16 = "%s called with null tokenActivationQuery";
LABEL_13:
    _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, v16, buf, 0xCu);
    goto LABEL_11;
  }

  [queryCopy setAuthType:1];
  tokenInfo = [queryCopy tokenInfo];
  data = [tokenInfo data];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AFAC0;
  v17[3] = &unk_10010B190;
  v18 = queryCopy;
  v19 = tokensCopy;
  v20 = sessionCopy;
  v21 = handlerCopy;
  sub_1000AEFE4(NSPBAA, data, v17);

LABEL_5:
}

+ (void)sendRequestForQuota:(id)quota urlSession:(id)session quotaServiceRequest:(id)request completionHandler:(id)handler
{
  quotaCopy = quota;
  sessionCopy = session;
  requestCopy = request;
  handlerCopy = handler;
  request = [requestCopy request];
  data = [request data];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AFE98;
  v19[3] = &unk_10010B190;
  v20 = requestCopy;
  v21 = quotaCopy;
  v22 = sessionCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = sessionCopy;
  v17 = quotaCopy;
  v18 = requestCopy;
  sub_1000AEFE4(NSPBAA, data, v19);
}

+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session messageBody:(id)body completionHandler:(id)handler
{
  tokensCopy = tokens;
  sessionCopy = session;
  bodyCopy = body;
  handlerCopy = handler;
  if (!tokensCopy)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v21 = "+[NSPBAA sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
      v14 = "%s called with null urlRequest";
      goto LABEL_13;
    }

LABEL_11:

    (*(handlerCopy + 2))(handlerCopy, 1, 0, 0, 0);
    goto LABEL_5;
  }

  if (!sessionCopy)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v21 = "+[NSPBAA sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
      v14 = "%s called with null tokenFetchURLSession";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!bodyCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v21 = "+[NSPBAA sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
    v14 = "%s called with null messageBody";
LABEL_13:
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, buf, 0xCu);
    goto LABEL_11;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B068C;
  v15[3] = &unk_10010B1E0;
  v16 = tokensCopy;
  v17 = bodyCopy;
  v18 = sessionCopy;
  v19 = handlerCopy;
  sub_1000AFFE0(NSPBAA, v17, v16, v15);

LABEL_5:
}

@end