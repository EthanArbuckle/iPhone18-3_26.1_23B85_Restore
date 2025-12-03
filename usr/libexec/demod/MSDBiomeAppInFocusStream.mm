@interface MSDBiomeAppInFocusStream
+ (BOOL)timeRange:(id)range subsumes:(id)subsumes;
+ (id)collectAppUsageDataFrom:(id)from to:(id)to;
+ (id)eventSessionToAppUsage:(id)usage;
+ (void)printBMAppInfocusEvent:(id)event;
@end

@implementation MSDBiomeAppInFocusStream

+ (id)collectAppUsageDataFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = fromCopy;
  v8 = toCopy;
  v9 = +[NSMutableArray array];
  v10 = BiomeLibrary();
  v11 = [v10 App];
  inFocus = [v11 InFocus];
  publisher = [inFocus publisher];
  v14 = [BMPairedEventSession sessionPublisherWithStreamPublisher:publisher startingBlock:&stru_10016C538 sessionKeyBlock:&stru_10016C578 options:0];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1000BB980;
  v40 = sub_1000BB990;
  v41 = 0;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000BB998;
  v35[3] = &unk_10016C5A0;
  v35[4] = &v36;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3254779904;
  v31[2] = sub_1000BBAB0;
  v31[3] = &unk_10016C5C8;
  v15 = v7;
  v33 = v15;
  v16 = v8;
  v34 = v16;
  v17 = v9;
  v32 = v17;
  v18 = [v14 sinkWithBookmark:0 completion:v35 receiveInput:v31];
  v19 = [BMPairedEventSession openSessionsFromBookmark:v37[5]];
  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 count];
    *buf = 134349056;
    v43 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Number of open events:  %{public}lu", buf, 0xCu);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3254779904;
  v27[2] = sub_1000BBE08;
  v27[3] = &unk_10016C600;
  v22 = v15;
  v29 = v22;
  v23 = v16;
  v30 = v23;
  v24 = v17;
  v28 = v24;
  [v19 enumerateObjectsUsingBlock:v27];
  v25 = [v24 sortedArrayUsingComparator:&stru_10016C650];

  _Block_object_dispose(&v36, 8);

  return v25;
}

+ (id)eventSessionToAppUsage:(id)usage
{
  var1 = usage.var1;
  var0 = usage.var0;
  absoluteTimestamp = [usage.var0 absoluteTimestamp];
  absoluteTimestamp2 = [var1 absoluteTimestamp];
  v7 = absoluteTimestamp2;
  if (absoluteTimestamp2)
  {
    [absoluteTimestamp2 timeIntervalSinceDate:absoluteTimestamp];
    [NSNumber numberWithDouble:?];
  }

  else
  {
    v7 = +[NSNull null];
    [NSNumber numberWithDouble:0.0];
  }
  v8 = ;
  bundleID = [var0 bundleID];
  if ([(__CFString *)bundleID containsString:@"/"])
  {
    lastPathComponent = [(__CFString *)bundleID lastPathComponent];

    bundleID = @"<unknown>";
  }

  else
  {
    lastPathComponent = @"<unknown>";
  }

  v13[0] = @"bundleID";
  v13[1] = @"executableName";
  v14[0] = bundleID;
  v14[1] = lastPathComponent;
  v13[2] = @"sessionStartTime";
  v13[3] = @"sessionEndTime";
  v14[2] = absoluteTimestamp;
  v14[3] = v7;
  v13[4] = @"appDuration";
  v14[4] = v8;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5];

  return v11;
}

+ (BOOL)timeRange:(id)range subsumes:(id)subsumes
{
  var1 = subsumes.var1;
  var0 = subsumes.var0;
  v6 = range.var1;
  v7 = range.var0;
  if ([range.var0 isEarlierDateThan:subsumes.var0])
  {
    v8 = [v6 isLaterDateThan:var1];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    toString = [v7 toString];
    [v6 toString];
    objc_claimAutoreleasedReturnValue();
    sub_1000EABDC();
  }

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    toString2 = [var0 toString];
    [var1 toString];
    objc_claimAutoreleasedReturnValue();
    sub_1000EAC34();
  }

  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAC8C();
  }

  return v8;
}

+ (void)printBMAppInfocusEvent:(id)event
{
  eventCopy = event;
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAD04(eventCopy);
  }

  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAD94(eventCopy);
  }

  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAE18(eventCopy);
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAEA8(eventCopy);
  }

  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000EAF2C(eventCopy);
  }
}

@end