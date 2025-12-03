@interface KTIDSReporting
- (KTIDSReporting)init;
- (id)transformError:(id)error recursion:(int)recursion;
- (void)reportRemotePeerKTFailureWithPushToken:(id)token type:(id)type ktError:(id)error completionHandler:(id)handler;
- (void)reportResultWithSuccess:(id)success startFrom:(double)from interval:(id)interval completionHandler:(id)handler;
@end

@implementation KTIDSReporting

- (KTIDSReporting)init
{
  v6.receiver = self;
  v6.super_class = KTIDSReporting;
  v2 = [(KTIDSReporting *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IDSEventReportingManager);
    [(KTIDSReporting *)v2 setManager:v3];

    v4 = v2;
  }

  return v2;
}

- (void)reportResultWithSuccess:(id)success startFrom:(double)from interval:(id)interval completionHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = success;
  v20[0] = @"status";
  v20[1] = @"startFrom";
  intervalCopy = interval;
  successCopy = success;
  v13 = [NSNumber numberWithLong:from];
  v20[2] = @"interval";
  v21[1] = v13;
  v21[2] = intervalCopy;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

  v15 = [[IDSReportClientEvent alloc] initWithReport:v14 reportType:@"kt-reliability" timeout:&off_10033CE10];
  manager = [(KTIDSReporting *)self manager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000180F0;
  v18[3] = &unk_1003176B8;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [manager reportClientEvent:v15 withCompletion:v18];
}

- (id)transformError:(id)error recursion:(int)recursion
{
  errorCopy = error;
  v7 = errorCopy;
  if (recursion <= 10 && errorCopy)
  {
    underlyingErrors = [errorCopy underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject)
    {
      firstObject = +[NSMutableArray array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = underlyingErrors;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [(KTIDSReporting *)self transformError:*(*(&v21 + 1) + 8 * i) recursion:(recursion + 1), v21];
            if (v15)
            {
              [firstObject addObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v12);
      }
    }

    v25[0] = @"domain";
    domain = [v7 domain];
    v25[1] = @"code";
    v26[0] = domain;
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
    v26[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v19 = [v18 mutableCopy];

    if ([firstObject count])
    {
      [v19 setObject:firstObject forKeyedSubscript:@"underlying"];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)reportRemotePeerKTFailureWithPushToken:(id)token type:(id)type ktError:(id)error completionHandler:(id)handler
{
  tokenCopy = token;
  typeCopy = type;
  errorCopy = error;
  handlerCopy = handler;
  v26 = @"kt-push-token";
  v27 = tokenCopy;
  v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v15 = [v14 mutableCopy];

  if (typeCopy)
  {
    [v15 setObject:typeCopy forKeyedSubscript:@"kt-type"];
  }

  v16 = [(KTIDSReporting *)self transformError:errorCopy recursion:0];
  v17 = v16;
  if (v16)
  {
    v24 = @"error";
    v25 = v16;
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v15 setObject:v18 forKeyedSubscript:@"kt-reason"];
  }

  v19 = [[IDSReportClientEvent alloc] initWithReport:v15 reportType:@"kt-remote-reporting" timeout:&off_10033CE10];
  manager = [(KTIDSReporting *)self manager];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100018668;
  v22[3] = &unk_1003176B8;
  v23 = handlerCopy;
  v21 = handlerCopy;
  [manager reportClientEvent:v19 withCompletion:v22];
}

@end