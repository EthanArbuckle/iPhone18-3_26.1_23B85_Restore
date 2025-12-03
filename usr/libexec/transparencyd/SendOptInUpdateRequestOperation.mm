@interface SendOptInUpdateRequestOperation
- (SendOptInUpdateRequestOperation)initWithDependenics:(id)dependenics optInRequest:(id)request;
- (void)groupStart;
@end

@implementation SendOptInUpdateRequestOperation

- (SendOptInUpdateRequestOperation)initWithDependenics:(id)dependenics optInRequest:(id)request
{
  dependenicsCopy = dependenics;
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = SendOptInUpdateRequestOperation;
  v8 = [(KTGroupOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SendOptInUpdateRequestOperation *)v8 setDeps:dependenicsCopy];
    [(SendOptInUpdateRequestOperation *)v9 setRequest:requestCopy];
  }

  return v9;
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(SendOptInUpdateRequestOperation *)self setFinishedOp:v3];

  finishedOp = [(SendOptInUpdateRequestOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  if (qword_10038BCD0 != -1)
  {
    sub_100248EF8();
  }

  v5 = qword_10038BCD8;
  if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    request = [(SendOptInUpdateRequestOperation *)self request];
    *buf = 138412290;
    v13 = request;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "sending opt-in state change to IDS: %@", buf, 0xCu);
  }

  deps = [(SendOptInUpdateRequestOperation *)self deps];
  idsOperations = [deps idsOperations];
  request2 = [(SendOptInUpdateRequestOperation *)self request];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003AF48;
  v11[3] = &unk_100319BB8;
  v11[4] = self;
  [idsOperations sendOptInUpdateRequest:request2 withCompletion:v11];
}

@end