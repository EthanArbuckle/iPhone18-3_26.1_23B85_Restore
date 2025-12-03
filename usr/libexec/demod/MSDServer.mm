@interface MSDServer
- (void)sendQueryForRequest:(id)request toPath:(id)path maxRetry:(int64_t)retry;
- (void)sendRequest:(id)request toEndpoint:(id)endpoint postData:(BOOL)data maxRetry:(int64_t)retry;
@end

@implementation MSDServer

- (void)sendQueryForRequest:(id)request toPath:(id)path maxRetry:(int64_t)retry
{
  requestCopy = request;
  pathCopy = path;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007C20C;
  v22[3] = &unk_10016B6D8;
  v10 = requestCopy;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  if ([v10 isValid])
  {
    getQueryItems = [v10 getQueryItems];

    if (getQueryItems)
    {
      if (pathCopy)
      {
        completion2 = objc_alloc_init(NSURLComponents);
        getQueryItems2 = [v10 getQueryItems];
        [completion2 setQueryItems:getQueryItems2];

        [completion2 setPath:pathCopy];
        v15 = [(MSDServer *)self taskInfoFromCommandRequest:v10];
        v16 = [completion2 URL];
        absoluteString = [v16 absoluteString];
        [(MSDServerResponse *)v15 setEndpoint:absoluteString];

        [(MSDServerResponse *)v15 setMaxRetry:retry];
        [(MSDServerResponse *)v15 setHandler:v11];
        session = [(MSDServer *)self session];
        [session launchTaskWithInfo:v15];

        v19 = 0;
        goto LABEL_5;
      }

      sub_1000DC3D0(v10, &v24);
    }

    else
    {
      sub_1000DC484(v10, &v24);
    }
  }

  else
  {
    sub_1000DC31C(v10, &v24);
  }

  v21 = 0;
  sub_1000C1390(&v21, 3727744769, @"Input is invalid");
  v19 = v21;
  completion = [v10 completion];

  if (!completion)
  {
    goto LABEL_6;
  }

  completion2 = [v10 completion];
  v15 = [[MSDServerResponse alloc] initWithError:v19];
  (*(completion2 + 2))(completion2, v15);
LABEL_5:

LABEL_6:
}

- (void)sendRequest:(id)request toEndpoint:(id)endpoint postData:(BOOL)data maxRetry:(int64_t)retry
{
  dataCopy = data;
  requestCopy = request;
  endpointCopy = endpoint;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007C558;
  v22[3] = &unk_10016B6D8;
  v12 = requestCopy;
  v23 = v12;
  v13 = objc_retainBlock(v22);
  if (([v12 isValid] & 1) == 0)
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000DC538(v12);
    }

    goto LABEL_14;
  }

  if (dataCopy)
  {
    getPostData = [v12 getPostData];
    if (!getPostData)
    {
      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000DC6C4(v12);
      }

LABEL_14:
      getPostData = 0;
      goto LABEL_19;
    }
  }

  else
  {
    getPostData = 0;
  }

  if (endpointCopy)
  {
    v16 = [(MSDServer *)self taskInfoFromCommandRequest:v12];
    if (v16)
    {
      completion2 = v16;
      [v16 setEndpoint:endpointCopy];
      [completion2 setMaxRetry:retry];
      [completion2 setPostData:getPostData];
      [completion2 setHandler:v13];
      session = [(MSDServer *)self session];
      [(MSDServerResponse *)session launchTaskWithInfo:completion2];
      v19 = 0;
      goto LABEL_10;
    }

    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000DC5BC(v12);
    }
  }

  else
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000DC640(v12);
    }
  }

LABEL_19:

  v21 = 0;
  sub_1000C1390(&v21, 3727744769, @"Input is invalid");
  v19 = v21;
  completion = [v12 completion];

  if (!completion)
  {
    goto LABEL_11;
  }

  completion2 = [v12 completion];
  session = [[MSDServerResponse alloc] initWithError:v19];
  (completion2)[2](completion2, session);
LABEL_10:

LABEL_11:
}

@end