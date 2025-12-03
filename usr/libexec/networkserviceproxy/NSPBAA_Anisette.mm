@interface NSPBAA_Anisette
+ (void)authenticationFailure;
+ (void)sendRequestForQuota:(id)quota urlSession:(id)session quotaServiceRequest:(id)request completionHandler:(id)handler;
+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session messageBody:(id)body completionHandler:(id)handler;
+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session tokenActivationQuery:(id)query completionHandler:(id)handler;
@end

@implementation NSPBAA_Anisette

+ (void)authenticationFailure
{
  +[NSPBAA authenticationFailure];

  +[NSPAnisette authenticationFailure];
}

+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session tokenActivationQuery:(id)query completionHandler:(id)handler
{
  tokensCopy = tokens;
  sessionCopy = session;
  queryCopy = query;
  handlerCopy = handler;
  if (!tokensCopy)
  {
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPBAA_Anisette sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      v25 = "%s called with null urlRequest";
      goto LABEL_13;
    }

LABEL_11:

    (*(handlerCopy + 2))(handlerCopy, 1, 0, 0, 0);
    goto LABEL_5;
  }

  if (!sessionCopy)
  {
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPBAA_Anisette sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
      v25 = "%s called with null tokenFetchURLSession";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!queryCopy)
  {
    v24 = nplog_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[NSPBAA_Anisette sendRequestForTokens:tokenFetchURLSession:tokenActivationQuery:completionHandler:]";
    v25 = "%s called with null tokenActivationQuery";
LABEL_13:
    _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, v25, &buf, 0xCu);
    goto LABEL_11;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000B0CA0;
  v28[3] = &unk_10010B208;
  v27 = tokensCopy;
  v29 = tokensCopy;
  v26 = sessionCopy;
  v30 = sessionCopy;
  v31 = queryCopy;
  v32 = handlerCopy;
  v13 = queryCopy;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  v17 = v28;
  objc_opt_self();
  [v16 setAuthType:1];
  tokenInfo = [v16 tokenInfo];
  data = [tokenInfo data];
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v34 = sub_1000AFC08;
  v35 = &unk_10010B190;
  v20 = v16;
  v36 = v20;
  v21 = v14;
  v37 = v21;
  v22 = v15;
  v38 = v22;
  v23 = v17;
  v39 = v23;
  sub_1000AEFE4(NSPBAA, data, &buf);

  queryCopy = v13;
  tokensCopy = v27;

  sessionCopy = v26;
LABEL_5:
}

+ (void)sendRequestForQuota:(id)quota urlSession:(id)session quotaServiceRequest:(id)request completionHandler:(id)handler
{
  quotaCopy = quota;
  sessionCopy = session;
  requestCopy = request;
  handlerCopy = handler;
  if (!quotaCopy)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315138;
      v16 = "+[NSPBAA_Anisette sendRequestForQuota:urlSession:quotaServiceRequest:completionHandler:]";
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
      v15 = 136315138;
      v16 = "+[NSPBAA_Anisette sendRequestForQuota:urlSession:quotaServiceRequest:completionHandler:]";
      v14 = "%s called with null urlSession";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!requestCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v15 = 136315138;
    v16 = "+[NSPBAA_Anisette sendRequestForQuota:urlSession:quotaServiceRequest:completionHandler:]";
    v14 = "%s called with null quotaServiceRequest";
LABEL_13:
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, &v15, 0xCu);
    goto LABEL_11;
  }

  [NSPBAA sendRequestForQuota:quotaCopy urlSession:sessionCopy quotaServiceRequest:requestCopy completionHandler:handlerCopy];
LABEL_5:
}

+ (void)sendRequestForTokens:(id)tokens tokenFetchURLSession:(id)session messageBody:(id)body completionHandler:(id)handler
{
  tokensCopy = tokens;
  sessionCopy = session;
  bodyCopy = body;
  handlerCopy = handler;
  if (!tokensCopy)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPBAA_Anisette sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
      v22 = "%s called with null urlRequest";
      goto LABEL_13;
    }

LABEL_11:

    (*(handlerCopy + 2))(handlerCopy, 1, 0, 0, 0);
    goto LABEL_5;
  }

  if (!sessionCopy)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[NSPBAA_Anisette sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
      v22 = "%s called with null tokenFetchURLSession";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!bodyCopy)
  {
    v21 = nplog_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[NSPBAA_Anisette sendRequestForTokens:tokenFetchURLSession:messageBody:completionHandler:]";
    v22 = "%s called with null messageBody";
LABEL_13:
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v22, &buf, 0xCu);
    goto LABEL_11;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B1268;
  v23[3] = &unk_10010B208;
  v24 = tokensCopy;
  v25 = sessionCopy;
  v26 = bodyCopy;
  v27 = handlerCopy;
  v13 = v24;
  v14 = v25;
  v15 = v26;
  v16 = v23;
  objc_opt_self();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v29 = sub_1000B07B0;
  v30 = &unk_10010B1E0;
  v17 = v13;
  v31 = v17;
  v18 = v15;
  v32 = v18;
  v19 = v14;
  v33 = v19;
  v20 = v16;
  v34 = v20;
  sub_1000AFFE0(NSPBAA, v18, v17, &buf);

LABEL_5:
}

@end