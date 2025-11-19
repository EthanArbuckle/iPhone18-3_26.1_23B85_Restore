@interface NSPAnisette
+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 messageBody:(id)a5 completionHandler:(id)a6;
+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 tokenActivationQuery:(id)a5 completionHandler:(id)a6;
@end

@implementation NSPAnisette

+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 tokenActivationQuery:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      (*(v12 + 2))(v12, 2, 0, 0, 0);
      goto LABEL_6;
    }

    *buf = 136315138;
    v23 = "+[NSPAnisette sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
    v19 = "%s called with null urlRequest";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, v19, buf, 0xCu);
    goto LABEL_10;
  }

  if (!v11)
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

  [v9 ak_addClientInfoHeader];
  [v9 ak_addDeviceUDIDHeader];
  [v11 setAuthType:2];
  v13 = [v11 data];
  [v9 setHTTPBody:v13];

  ++dword_1001298B8;
  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 URL];
    *buf = 138412290;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending request for %@", buf, 0xCu);
  }

  v16 = +[AKURLSession sharedURLSession];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AECD4;
  v20[3] = &unk_10010B140;
  v21 = v12;
  v17 = [v16 beginDataTaskWithRequest:v9 completionHandler:v20];

LABEL_6:
}

+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 messageBody:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v19 = nplog_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      (*(v13 + 2))(v13, 2, 0, 0, 0);
      goto LABEL_6;
    }

    *buf = 136315138;
    v24 = "+[NSPAnisette sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
    v20 = "%s called with null urlRequest";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, v20, buf, 0xCu);
    goto LABEL_10;
  }

  if (!v12)
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

  v14 = [a1 description];
  [v10 addValue:v14 forHTTPHeaderField:@"Client-Auth-Type"];

  [v10 ak_addClientInfoHeader];
  [v10 ak_addDeviceUDIDHeader];
  [v10 setHTTPBody:v12];
  ++dword_1001298B8;
  v15 = nplog_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v10 URL];
    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending request for %@", buf, 0xCu);
  }

  v17 = +[AKURLSession sharedURLSession];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000AEF9C;
  v21[3] = &unk_10010B140;
  v22 = v13;
  v18 = [v17 beginDataTaskWithRequest:v10 completionHandler:v21];

LABEL_6:
}

@end