@interface TransparencyTranscript
- (TransparencyTranscript)initWithContext:(id)context settings:(id)settings;
- (id)serialize;
- (void)addEvent:(id)event;
- (void)startEvent:(id)event;
- (void)stopEventWithFailure:(id)failure error:(id)error;
- (void)stopEventWithSuccess:(id)success;
@end

@implementation TransparencyTranscript

- (TransparencyTranscript)initWithContext:(id)context settings:(id)settings
{
  contextCopy = context;
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = TransparencyTranscript;
  v8 = [(TransparencyTranscript *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(NSMutableArray);
    [(TransparencyTranscript *)v8 set_events:v9];

    [(TransparencyTranscript *)v8 setContext:contextCopy];
    [(TransparencyTranscript *)v8 setSettings:settingsCopy];
  }

  return v8;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  settings = [(TransparencyTranscript *)self settings];
  if ([settings allowsInternalSecurityPolicies])
  {
    settings2 = [(TransparencyTranscript *)self settings];
    v6 = [settings2 getBool:kTransparencyFlagEnableTranscript];

    if (!v6)
    {
      goto LABEL_7;
    }

    settings = [(TransparencyTranscript *)self _events];
    objc_sync_enter(settings);
    _events = [(TransparencyTranscript *)self _events];
    v8 = [[TransparencyTranscriptEvent alloc] initWithName:eventCopy];
    [_events insertObject:v8 atIndex:0];

    _events2 = [(TransparencyTranscript *)self _events];
    v10 = [_events2 count];

    if (v10 >= 0x101)
    {
      _events3 = [(TransparencyTranscript *)self _events];
      [_events3 removeLastObject];
    }

    objc_sync_exit(settings);
  }

LABEL_7:
}

- (void)startEvent:(id)event
{
  eventCopy = event;
  if (qword_10039CEF8 != -1)
  {
    sub_100260664();
  }

  v5 = qword_10039CF00;
  if (os_log_type_enabled(qword_10039CF00, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Event start: %@", buf, 0xCu);
  }

  eventCopy = [NSString stringWithFormat:@"%@-Start", eventCopy];
  [(TransparencyTranscript *)self addEvent:eventCopy];
}

- (void)stopEventWithSuccess:(id)success
{
  successCopy = success;
  if (qword_10039CEF8 != -1)
  {
    sub_100260678();
  }

  v5 = qword_10039CF00;
  if (os_log_type_enabled(qword_10039CF00, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = successCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Event success: %@", buf, 0xCu);
  }

  successCopy = [NSString stringWithFormat:@"%@-Stop-Success", successCopy];
  [(TransparencyTranscript *)self addEvent:successCopy];
}

- (void)stopEventWithFailure:(id)failure error:(id)error
{
  failureCopy = failure;
  errorCopy = error;
  if (qword_10039CEF8 != -1)
  {
    sub_10026068C();
  }

  v8 = qword_10039CF00;
  if (os_log_type_enabled(qword_10039CF00, OS_LOG_TYPE_ERROR))
  {
    v9 = &stru_10032E8E8;
    if (errorCopy)
    {
      v9 = errorCopy;
    }

    *buf = 138412546;
    v12 = failureCopy;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Event failure: %@ %@", buf, 0x16u);
  }

  failureCopy = [NSString stringWithFormat:@"%@-Stop-Failure", failureCopy];
  [(TransparencyTranscript *)self addEvent:failureCopy];
}

- (id)serialize
{
  _events = [(TransparencyTranscript *)self _events];
  objc_sync_enter(_events);
  _events2 = [(TransparencyTranscript *)self _events];
  v5 = [NSArray arrayWithArray:_events2];

  objc_sync_exit(_events);
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