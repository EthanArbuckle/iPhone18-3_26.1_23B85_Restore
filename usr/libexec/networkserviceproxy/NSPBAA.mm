@interface NSPBAA
+ (void)authenticationFailure;
+ (void)sendRequestForQuota:(id)a3 urlSession:(id)a4 quotaServiceRequest:(id)a5 completionHandler:(id)a6;
+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 messageBody:(id)a5 completionHandler:(id)a6;
+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 tokenActivationQuery:(id)a5 completionHandler:(id)a6;
@end

@implementation NSPBAA

+ (void)authenticationFailure
{
  v2 = +[NSPDeviceIdentityCertificate sharedDeviceIdentity];
  [v2 deviceIdentityAuthenticationFailed];
}

+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 tokenActivationQuery:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
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

    (*(v12 + 2))(v12, 1, 0, 0, 0);
    goto LABEL_5;
  }

  if (!v10)
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

  if (!v11)
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

  [v11 setAuthType:1];
  v13 = [v11 tokenInfo];
  v14 = [v13 data];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AFAC0;
  v17[3] = &unk_10010B190;
  v18 = v11;
  v19 = v9;
  v20 = v10;
  v21 = v12;
  sub_1000AEFE4(NSPBAA, v14, v17);

LABEL_5:
}

+ (void)sendRequestForQuota:(id)a3 urlSession:(id)a4 quotaServiceRequest:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 request];
  v14 = [v13 data];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AFE98;
  v19[3] = &unk_10010B190;
  v20 = v11;
  v21 = v9;
  v22 = v10;
  v23 = v12;
  v15 = v12;
  v16 = v10;
  v17 = v9;
  v18 = v11;
  sub_1000AEFE4(NSPBAA, v14, v19);
}

+ (void)sendRequestForTokens:(id)a3 tokenFetchURLSession:(id)a4 messageBody:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
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

    (*(v12 + 2))(v12, 1, 0, 0, 0);
    goto LABEL_5;
  }

  if (!v10)
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

  if (!v11)
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
  v16 = v9;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  sub_1000AFFE0(NSPBAA, v17, v16, v15);

LABEL_5:
}

@end