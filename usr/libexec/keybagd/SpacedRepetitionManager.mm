@interface SpacedRepetitionManager
+ (id)sharedInstance;
- (BOOL)beginNewRepetitionPeriod;
- (BOOL)commitNextVerificationEpoch;
- (BOOL)continueRepetitionPeriod;
- (BOOL)handleVerificationEpoch;
- (BOOL)repetitionPeriodTimer:(id)timer;
- (BOOL)setupNextTimer;
- (id)initialize;
- (id)readConfig;
- (int64_t)getNextVerificationEpoch;
- (int64_t)getSpacedRepetitionTimeout;
- (void)dealloc;
- (void)setupIntervals;
- (void)stopSpacedRepetition;
@end

@implementation SpacedRepetitionManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F40;
  block[3] = &unk_100034C80;
  block[4] = self;
  if (qword_10003D2B0 != -1)
  {
    dispatch_once(&qword_10003D2B0, block);
  }

  return qword_10003D2B8;
}

- (void)setupIntervals
{
  if (dword_10003D280 == 1)
  {
    v2 = [NSArray arrayWithObjects:&off_10003AB98, &off_10003ABB0, &off_10003ABC8, 0];
  }

  else
  {
    v2 = [NSArray arrayWithObjects:&off_10003ABE0, &off_10003ABF8, 0, v3];
  }

  qword_10003D288 = v2;
}

- (id)initialize
{
  v5.receiver = self;
  v5.super_class = SpacedRepetitionManager;
  v2 = [(SpacedRepetitionManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SpacedRepetitionManager *)v2 setupIntervals];
    [(SpacedRepetitionManager *)v3 readConfig];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SpacedRepetitionManager;
  [(SpacedRepetitionManager *)&v3 dealloc];
}

- (id)readConfig
{
  if (qword_10003D290)
  {
  }

  result = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/private/var/root/Library/Preferences/com.apple.spaced_repetition.plist"];
  qword_10003D290 = result;
  if (!result)
  {
    result = objc_alloc_init(NSMutableDictionary);
    qword_10003D290 = result;
  }

  return result;
}

- (int64_t)getNextVerificationEpoch
{
  integerValue2 = time(0);
  v4 = [qword_10003D290 valueForKey:@"lastVerificationEpoch"];
  v5 = [qword_10003D290 valueForKey:@"verificationEpochStartTime"];
  [(SpacedRepetitionManager *)self setupIntervals];
  if (!v4)
  {
    return -1;
  }

  integerValue = [v4 integerValue];
  if (v5)
  {
    integerValue2 = [v5 integerValue];
  }

  if (integerValue < [qword_10003D288 count])
  {
    return integerValue2 + [objc_msgSend(qword_10003D288 objectAtIndex:{integerValue), "intValue"}];
  }

  else
  {
    return -1;
  }
}

- (BOOL)commitNextVerificationEpoch
{
  v3 = [objc_msgSend(qword_10003D290 valueForKey:{@"lastVerificationEpoch", "intValue"}];
  v4 = [objc_msgSend(qword_10003D288 objectAtIndex:{v3), "intValue"}];
  [(SpacedRepetitionManager *)self setupIntervals];
  if ([qword_10003D288 count] <= v3)
  {
    return 0;
  }

  v5 = v3 + 1;
  [qword_10003D290 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", v5), @"lastVerificationEpoch"}];
  [qword_10003D290 setObject:+[NSNumber numberWithUnsignedLong:](NSNumber forKey:{"numberWithUnsignedLong:", time(0) - v4), @"verificationEpochStartTime"}];
  [(SpacedRepetitionManager *)self writeConfig];
  NSLog(@"advancing verification epoch to %lu", v5);
  return v5 < [qword_10003D288 count];
}

- (int64_t)getSpacedRepetitionTimeout
{
  if (dword_10003D280 == 1)
  {
    return 120;
  }

  else
  {
    return 518400;
  }
}

- (void)stopSpacedRepetition
{
  [qword_10003D290 removeObjectForKey:@"lastVerificationEpoch"];
  [qword_10003D290 removeObjectForKey:@"verificationEpochStartTime"];

  [(SpacedRepetitionManager *)self writeConfig];
}

- (BOOL)handleVerificationEpoch
{
  checkForVerificationEpoch = [(SpacedRepetitionManager *)self checkForVerificationEpoch];
  if (!checkForVerificationEpoch)
  {
    return checkForVerificationEpoch;
  }

  NSLog(@"handling verification epoch");
  v8 = 0;
  if (!sub_1000156CC(0xFFFFFFFFLL, &v8))
  {
    NSLog(@"unable to get device state");
    goto LABEL_7;
  }

  if ((v8 & 0x10) == 0)
  {
LABEL_7:
    NSLog(@"biometric state is NOT armed. NOT advancing verification interval.");
    goto LABEL_8;
  }

  if (dword_10003D280 == 2)
  {
    NSLog(@"spaced repetition is disabled. NOT performing verification.");
LABEL_8:
    LOBYTE(checkForVerificationEpoch) = 0;
    return checkForVerificationEpoch;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_100003AA0;
  v4 = qword_10003D2C0;
  v18 = sub_100003AB0;
  v19 = qword_10003D2C0;
  if (!qword_10003D2C0)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100003ABC;
    v12 = &unk_100034CD0;
    v13 = &v14;
    sub_100003ABC(&v9);
    v4 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  availableDevices = [v4 availableDevices];
  if (![availableDevices count])
  {
    NSLog(@"could not find a biometric device for verification");
    goto LABEL_8;
  }

  NSLog(@"discarding bio for verification");
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_100003AA0;
  v6 = qword_10003D2D0;
  v18 = sub_100003AB0;
  v19 = qword_10003D2D0;
  if (!qword_10003D2D0)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100003C7C;
    v12 = &unk_100034CD0;
    v13 = &v14;
    sub_100003C7C(&v9);
    v6 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  checkForVerificationEpoch = [objc_msgSend(v6 deviceWithDescriptor:objc_msgSend(availableDevices error:{"objectAtIndexedSubscript:", 0), 0), "dropAllUnlockTokensWithError:", 0}];
  if (checkForVerificationEpoch)
  {
    if (![(SpacedRepetitionManager *)self commitNextVerificationEpoch])
    {
      [(SpacedRepetitionManager *)self stopSpacedRepetition];
    }

    LOBYTE(checkForVerificationEpoch) = 1;
  }

  return checkForVerificationEpoch;
}

- (BOOL)setupNextTimer
{
  if (dword_10003D280 == 2)
  {
    NSLog(@"stopping verification services, spaced repetition mode disabled", a2);
    return 0;
  }

  getNextVerificationEpoch = [(SpacedRepetitionManager *)self getNextVerificationEpoch];
  if (getNextVerificationEpoch < 1)
  {
    return 0;
  }

  v4 = getNextVerificationEpoch;
  v5 = time(0);
  if (v5 >= [(SpacedRepetitionManager *)self getSpacedRepetitionTimeout]+ v4)
  {
    v9 = time(0);
    NSLog(@"spaced repetition has timed out: %lu secs", v9 - v4);
    [(SpacedRepetitionManager *)self stopSpacedRepetition];
    return 0;
  }

  if (dword_10003D280 == 1)
  {
    v6 = 20;
  }

  else
  {
    v6 = 60;
  }

  v7 = v4 - time(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000037B8;
  block[3] = &unk_100034CA8;
  if (v6 > v7)
  {
    v7 = v6;
  }

  block[4] = self;
  block[5] = v7;
  dispatch_async(&_dispatch_main_q, block);
  return 1;
}

- (BOOL)repetitionPeriodTimer:(id)timer
{
  v4 = dword_10003D284;
  if (v4 != [objc_msgSend(timer "userInfo")])
  {
    return 0;
  }

  NSLog(@"verification timer[%d] fired", dword_10003D284);
  if ([(SpacedRepetitionManager *)self checkForVerificationEpoch]&& [(SpacedRepetitionManager *)self handleVerificationEpoch])
  {
    NSLog(@"handled verification epoch successfully");
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  [(SpacedRepetitionManager *)self setupNextTimer];
  return v5;
}

- (BOOL)beginNewRepetitionPeriod
{
  [(SpacedRepetitionManager *)self setupIntervals];
  [qword_10003D290 setObject:&off_10003AC10 forKey:@"lastVerificationEpoch"];
  [qword_10003D290 setObject:+[NSNumber numberWithLong:](NSNumber forKey:{"numberWithLong:", time(0)), @"verificationEpochStartTime"}];
  writeConfig = [(SpacedRepetitionManager *)self writeConfig];
  if (writeConfig)
  {
    NSLog(@"beginning new verification cycle...");

    LOBYTE(writeConfig) = [(SpacedRepetitionManager *)self setupNextTimer];
  }

  return writeConfig;
}

- (BOOL)continueRepetitionPeriod
{
  [(SpacedRepetitionManager *)self setupIntervals];

  return [(SpacedRepetitionManager *)self setupNextTimer];
}

@end