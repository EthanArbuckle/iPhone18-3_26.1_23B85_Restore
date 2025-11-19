@interface MSDServer
- (void)sendQueryForRequest:(id)a3 toPath:(id)a4 maxRetry:(int64_t)a5;
- (void)sendRequest:(id)a3 toEndpoint:(id)a4 postData:(BOOL)a5 maxRetry:(int64_t)a6;
@end

@implementation MSDServer

- (void)sendQueryForRequest:(id)a3 toPath:(id)a4 maxRetry:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007C20C;
  v22[3] = &unk_10016B6D8;
  v10 = v8;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  if ([v10 isValid])
  {
    v12 = [v10 getQueryItems];

    if (v12)
    {
      if (v9)
      {
        v13 = objc_alloc_init(NSURLComponents);
        v14 = [v10 getQueryItems];
        [v13 setQueryItems:v14];

        [v13 setPath:v9];
        v15 = [(MSDServer *)self taskInfoFromCommandRequest:v10];
        v16 = [v13 URL];
        v17 = [v16 absoluteString];
        [(MSDServerResponse *)v15 setEndpoint:v17];

        [(MSDServerResponse *)v15 setMaxRetry:a5];
        [(MSDServerResponse *)v15 setHandler:v11];
        v18 = [(MSDServer *)self session];
        [v18 launchTaskWithInfo:v15];

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
  v20 = [v10 completion];

  if (!v20)
  {
    goto LABEL_6;
  }

  v13 = [v10 completion];
  v15 = [[MSDServerResponse alloc] initWithError:v19];
  (*(v13 + 2))(v13, v15);
LABEL_5:

LABEL_6:
}

- (void)sendRequest:(id)a3 toEndpoint:(id)a4 postData:(BOOL)a5 maxRetry:(int64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007C558;
  v22[3] = &unk_10016B6D8;
  v12 = v10;
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

  if (v7)
  {
    v14 = [v12 getPostData];
    if (!v14)
    {
      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000DC6C4(v12);
      }

LABEL_14:
      v14 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v16 = [(MSDServer *)self taskInfoFromCommandRequest:v12];
    if (v16)
    {
      v17 = v16;
      [v16 setEndpoint:v11];
      [v17 setMaxRetry:a6];
      [v17 setPostData:v14];
      [v17 setHandler:v13];
      v18 = [(MSDServer *)self session];
      [(MSDServerResponse *)v18 launchTaskWithInfo:v17];
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
  v20 = [v12 completion];

  if (!v20)
  {
    goto LABEL_11;
  }

  v17 = [v12 completion];
  v18 = [[MSDServerResponse alloc] initWithError:v19];
  (v17)[2](v17, v18);
LABEL_10:

LABEL_11:
}

@end