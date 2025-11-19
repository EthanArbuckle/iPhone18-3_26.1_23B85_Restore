@interface NSPAnonymousToken
+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 tokenActivationQuery:(id)a5 completionHandler:(id)a6;
@end

@implementation NSPAnonymousToken

+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 tokenActivationQuery:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
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

  if (!v10)
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

  if (!v11)
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

  v13 = [v11 authInfo];

  if (!v13)
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPAnonymousToken sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null tokenActivationQuery.authInfo", &buf, 0xCu);
    }

LABEL_18:

    (*(v12 + 2))(v12, 4, 0, 0, 0);
    goto LABEL_6;
  }

  [v11 setAuthType:4];
  v14 = [v11 data];
  [v9 setHTTPBody:v14];

  [v9 _setPrivacyProxyFailClosed:1];
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
  v21 = v12;
  v15 = [v10 dataTaskWithRequest:v9 completionHandler:&v17];
  objc_storeStrong((*(&buf + 1) + 40), v15);
  [*(*(&buf + 1) + 40) resume];

  _Block_object_dispose(&buf, 8);
LABEL_6:
}

@end