@interface _APRSBiomeBase
+ (id)config;
+ (id)eventStream;
+ (id)publisherForEventsStartingFromDate:(id)date;
+ (id)sharedEventQueue;
+ (id)sourceForStream;
+ (void)postEvent:(id)event;
+ (void)postEvent:(id)event usingSource:(id)source;
+ (void)pruneEventsOlderThanDate:(id)date;
@end

@implementation _APRSBiomeBase

+ (id)config
{
  v2 = [BMStoreConfig newPrivateStreamDefaultConfigurationWithStoreBasePath:?];

  return v2;
}

+ (id)eventStream
{
  v2 = +[_APRSBiomeBase config];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 substringFromIndex:1];

  v6 = [[BMStoreStream alloc] initWithPrivateStreamIdentifier:v5 storeConfig:v2];

  return v6;
}

+ (id)sourceForStream
{
  eventStream = [objc_opt_class() eventStream];
  source = [eventStream source];

  return source;
}

+ (id)sharedEventQueue
{
  if (qword_10020B308 != -1)
  {
    sub_10012073C();
  }

  v3 = qword_10020B300;

  return v3;
}

+ (void)postEvent:(id)event
{
  eventCopy = event;
  eventStream = [objc_opt_class() eventStream];
  source = [eventStream source];

  [objc_opt_class() postEvent:eventCopy usingSource:source];
}

+ (void)postEvent:(id)event usingSource:(id)source
{
  eventCopy = event;
  sourceCopy = source;
  v7 = +[_APRSBiomeBase sharedEventQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100062A0C;
  v10[3] = &unk_1001B56E0;
  v11 = sourceCopy;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = sourceCopy;
  dispatch_async(v7, v10);
}

+ (id)publisherForEventsStartingFromDate:(id)date
{
  dateCopy = date;
  eventStream = [objc_opt_class() eventStream];
  [dateCopy timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = [eventStream publisherFromStartTime:v6];

  return v7;
}

+ (void)pruneEventsOlderThanDate:(id)date
{
  dateCopy = date;
  eventStream = [self eventStream];
  [dateCopy timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = +[_APRSBiomeBase sharedEventQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100062B74;
  v10[3] = &unk_1001B6250;
  v11 = eventStream;
  v12 = v7;
  v9 = eventStream;
  dispatch_async(v8, v10);
}

@end