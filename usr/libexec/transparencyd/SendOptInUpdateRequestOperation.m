@interface SendOptInUpdateRequestOperation
- (SendOptInUpdateRequestOperation)initWithDependenics:(id)a3 optInRequest:(id)a4;
- (void)groupStart;
@end

@implementation SendOptInUpdateRequestOperation

- (SendOptInUpdateRequestOperation)initWithDependenics:(id)a3 optInRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SendOptInUpdateRequestOperation;
  v8 = [(KTGroupOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SendOptInUpdateRequestOperation *)v8 setDeps:v6];
    [(SendOptInUpdateRequestOperation *)v9 setRequest:v7];
  }

  return v9;
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(SendOptInUpdateRequestOperation *)self setFinishedOp:v3];

  v4 = [(SendOptInUpdateRequestOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v4];

  if (qword_10038BCD0 != -1)
  {
    sub_100248EF8();
  }

  v5 = qword_10038BCD8;
  if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [(SendOptInUpdateRequestOperation *)self request];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "sending opt-in state change to IDS: %@", buf, 0xCu);
  }

  v8 = [(SendOptInUpdateRequestOperation *)self deps];
  v9 = [v8 idsOperations];
  v10 = [(SendOptInUpdateRequestOperation *)self request];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003AF48;
  v11[3] = &unk_100319BB8;
  v11[4] = self;
  [v9 sendOptInUpdateRequest:v10 withCompletion:v11];
}

@end