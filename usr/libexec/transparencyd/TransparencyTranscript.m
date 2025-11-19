@interface TransparencyTranscript
- (TransparencyTranscript)initWithContext:(id)a3 settings:(id)a4;
- (id)serialize;
- (void)addEvent:(id)a3;
- (void)startEvent:(id)a3;
- (void)stopEventWithFailure:(id)a3 error:(id)a4;
- (void)stopEventWithSuccess:(id)a3;
@end

@implementation TransparencyTranscript

- (TransparencyTranscript)initWithContext:(id)a3 settings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TransparencyTranscript;
  v8 = [(TransparencyTranscript *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(NSMutableArray);
    [(TransparencyTranscript *)v8 set_events:v9];

    [(TransparencyTranscript *)v8 setContext:v6];
    [(TransparencyTranscript *)v8 setSettings:v7];
  }

  return v8;
}

- (void)addEvent:(id)a3
{
  v12 = a3;
  v4 = [(TransparencyTranscript *)self settings];
  if ([v4 allowsInternalSecurityPolicies])
  {
    v5 = [(TransparencyTranscript *)self settings];
    v6 = [v5 getBool:kTransparencyFlagEnableTranscript];

    if (!v6)
    {
      goto LABEL_7;
    }

    v4 = [(TransparencyTranscript *)self _events];
    objc_sync_enter(v4);
    v7 = [(TransparencyTranscript *)self _events];
    v8 = [[TransparencyTranscriptEvent alloc] initWithName:v12];
    [v7 insertObject:v8 atIndex:0];

    v9 = [(TransparencyTranscript *)self _events];
    v10 = [v9 count];

    if (v10 >= 0x101)
    {
      v11 = [(TransparencyTranscript *)self _events];
      [v11 removeLastObject];
    }

    objc_sync_exit(v4);
  }

LABEL_7:
}

- (void)startEvent:(id)a3
{
  v4 = a3;
  if (qword_10039CEF8 != -1)
  {
    sub_100260664();
  }

  v5 = qword_10039CF00;
  if (os_log_type_enabled(qword_10039CF00, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Event start: %@", buf, 0xCu);
  }

  v6 = [NSString stringWithFormat:@"%@-Start", v4];
  [(TransparencyTranscript *)self addEvent:v6];
}

- (void)stopEventWithSuccess:(id)a3
{
  v4 = a3;
  if (qword_10039CEF8 != -1)
  {
    sub_100260678();
  }

  v5 = qword_10039CF00;
  if (os_log_type_enabled(qword_10039CF00, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Event success: %@", buf, 0xCu);
  }

  v6 = [NSString stringWithFormat:@"%@-Stop-Success", v4];
  [(TransparencyTranscript *)self addEvent:v6];
}

- (void)stopEventWithFailure:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10039CEF8 != -1)
  {
    sub_10026068C();
  }

  v8 = qword_10039CF00;
  if (os_log_type_enabled(qword_10039CF00, OS_LOG_TYPE_ERROR))
  {
    v9 = &stru_10032E8E8;
    if (v7)
    {
      v9 = v7;
    }

    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Event failure: %@ %@", buf, 0x16u);
  }

  v10 = [NSString stringWithFormat:@"%@-Stop-Failure", v6];
  [(TransparencyTranscript *)self addEvent:v10];
}

- (id)serialize
{
  v3 = [(TransparencyTranscript *)self _events];
  objc_sync_enter(v3);
  v4 = [(TransparencyTranscript *)self _events];
  v5 = [NSArray arrayWithArray:v4];

  objc_sync_exit(v3);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1002452C4;
  v13 = &unk_10032CFF0;
  v14 = objc_alloc_init(NSMutableArray);
  v6 = v14;
  [v5 enumerateObjectsUsingBlock:&v10];
  v7 = [(TransparencyTranscript *)self context:v10];
  v15 = v7;
  v16 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  return v8;
}

@end