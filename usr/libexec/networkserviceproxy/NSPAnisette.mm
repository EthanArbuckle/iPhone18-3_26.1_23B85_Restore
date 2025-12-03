@interface NSPAnisette
+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session messageBody:(id)body completionHandler:(id)handler;
+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session tokenActivationQuery:(id)query completionHandler:(id)handler;
@end

@implementation NSPAnisette

+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session tokenActivationQuery:(id)query completionHandler:(id)handler
{
  tokensCopy = tokens;
  sessionCopy = session;
  queryCopy = query;
  handlerCopy = handler;
  if (!tokensCopy)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      (*(handlerCopy + 2))(handlerCopy, 2, 0, 0, 0);
      goto LABEL_6;
    }

    *buf = 136315138;
    v23 = "+[NSPAnisette sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
    v19 = "%s called with null urlRequest";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, v19, buf, 0xCu);
    goto LABEL_10;
  }

  if (!queryCopy)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v23 = "+[NSPAnisette sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
    v19 = "%s called with null tokenActivationQuery";
    goto LABEL_12;
  }

  [tokensCopy ak_addClientInfoHeader];
  [tokensCopy ak_addDeviceUDIDHeader];
  [queryCopy setAuthType:2];
  data = [queryCopy data];
  [tokensCopy setHTTPBody:data];

  ++dword_1001298B8;
  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [tokensCopy URL];
    *buf = 138412290;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending request for %@", buf, 0xCu);
  }

  v16 = +[AKURLSession sharedURLSession];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AECD4;
  v20[3] = &unk_10010B140;
  v21 = handlerCopy;
  v17 = [v16 beginDataTaskWithRequest:tokensCopy completionHandler:v20];

LABEL_6:
}

+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session messageBody:(id)body completionHandler:(id)handler
{
  tokensCopy = tokens;
  sessionCopy = session;
  bodyCopy = body;
  handlerCopy = handler;
  if (!tokensCopy)
  {
    v19 = nplog_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      (*(handlerCopy + 2))(handlerCopy, 2, 0, 0, 0);
      goto LABEL_6;
    }

    *buf = 136315138;
    v24 = "+[NSPAnisette sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
    v20 = "%s called with null urlRequest";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, v20, buf, 0xCu);
    goto LABEL_10;
  }

  if (!bodyCopy)
  {
    v19 = nplog_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v24 = "+[NSPAnisette sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
    v20 = "%s called with null messageBody";
    goto LABEL_12;
  }

  v14 = [self description];
  [tokensCopy addValue:v14 forHTTPHeaderField:@"Client-Auth-Type"];

  [tokensCopy ak_addClientInfoHeader];
  [tokensCopy ak_addDeviceUDIDHeader];
  [tokensCopy setHTTPBody:bodyCopy];
  ++dword_1001298B8;
  v15 = nplog_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [tokensCopy URL];
    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending request for %@", buf, 0xCu);
  }

  v17 = +[AKURLSession sharedURLSession];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000AEF9C;
  v21[3] = &unk_10010B140;
  v22 = handlerCopy;
  v18 = [v17 beginDataTaskWithRequest:tokensCopy completionHandler:v21];

LABEL_6:
}

@end