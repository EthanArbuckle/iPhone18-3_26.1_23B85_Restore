@interface KTFetchURIOperation
- (KTFetchURIOperation)initWithURI:(id)a3 application:(id)a4 dependencies:(id)a5;
- (void)groupStart;
@end

@implementation KTFetchURIOperation

- (KTFetchURIOperation)initWithURI:(id)a3 application:(id)a4 dependencies:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = KTFetchURIOperation;
  v11 = [(KTGroupOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(KTFetchURIOperation *)v11 setUri:v8];
    [(KTFetchURIOperation *)v12 setApplication:v9];
    [(KTFetchURIOperation *)v12 setDeps:v10];
    v13 = objc_alloc_init(NSOperation);
    [(KTFetchURIOperation *)v12 setFinishedOp:v13];

    v14 = v12;
  }

  return v12;
}

- (void)groupStart
{
  v3 = [(KTFetchURIOperation *)self uri];
  v4 = [(KTFetchURIOperation *)self application];
  v19 = 0;
  v5 = [TransparencyRPCRequestBuilder buildQueryRequest:v3 application:v4 error:&v19];
  v6 = v19;
  [(KTFetchURIOperation *)self setQueryRequest:v5];

  v7 = [(KTFetchURIOperation *)self queryRequest];
  LODWORD(v3) = v7 == 0;

  if (v3)
  {
    if (qword_10039C9D0 != -1)
    {
      sub_10025C6A4();
    }

    v14 = qword_10039C9D8;
    if (os_log_type_enabled(qword_10039C9D8, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [(KTFetchURIOperation *)self uri];
      *location = 141558530;
      *&location[4] = 1752392040;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "FetchKTSelf: failed to create query request for %{mask.hash}@: %@", location, 0x20u);
    }

    [(KTResultOperation *)self setError:v6];
  }

  else
  {
    v8 = objc_alloc_init(NSOperation);
    [(KTFetchURIOperation *)self setFinishedOp:v8];

    v9 = [(KTFetchURIOperation *)self finishedOp];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v9];

    v10 = +[NSUUID UUID];
    objc_initWeak(location, self);
    v11 = [(KTFetchURIOperation *)self deps];
    v12 = [v11 logClient];
    v13 = [(KTFetchURIOperation *)self queryRequest];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001D33BC;
    v17[3] = &unk_100327BA8;
    objc_copyWeak(&v18, location);
    [v12 fetchQuery:v13 uuid:v10 completionHandler:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }
}

@end