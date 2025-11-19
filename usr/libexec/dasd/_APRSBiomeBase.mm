@interface _APRSBiomeBase
+ (id)config;
+ (id)eventStream;
+ (id)publisherForEventsStartingFromDate:(id)a3;
+ (id)sharedEventQueue;
+ (id)sourceForStream;
+ (void)postEvent:(id)a3;
+ (void)postEvent:(id)a3 usingSource:(id)a4;
+ (void)pruneEventsOlderThanDate:(id)a3;
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
  v2 = [objc_opt_class() eventStream];
  v3 = [v2 source];

  return v3;
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

+ (void)postEvent:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() eventStream];
  v5 = [v4 source];

  [objc_opt_class() postEvent:v3 usingSource:v5];
}

+ (void)postEvent:(id)a3 usingSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_APRSBiomeBase sharedEventQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100062A0C;
  v10[3] = &unk_1001B56E0;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

+ (id)publisherForEventsStartingFromDate:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() eventStream];
  [v3 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = [v4 publisherFromStartTime:v6];

  return v7;
}

+ (void)pruneEventsOlderThanDate:(id)a3
{
  v4 = a3;
  v5 = [a1 eventStream];
  [v4 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = +[_APRSBiomeBase sharedEventQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100062B74;
  v10[3] = &unk_1001B6250;
  v11 = v5;
  v12 = v7;
  v9 = v5;
  dispatch_async(v8, v10);
}

@end