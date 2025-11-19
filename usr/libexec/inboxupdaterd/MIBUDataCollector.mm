@interface MIBUDataCollector
+ (id)sharedInstance;
- (BOOL)_collectThermalDataWithKeys:(id)a3 interval:(int64_t)a4;
- (BOOL)_prepare;
- (BOOL)_prepareThermalDataFile;
- (BOOL)_saveStats;
- (BOOL)clear;
- (BOOL)start;
- (MIBUDataCollector)init;
- (double)_doubleFromData:(id)a3;
- (id)_convertTagName:(id)a3;
- (id)_stringForDate:(id)a3;
- (id)_stringForNumberinData:(id)a3 forKey:(id)a4;
- (id)_thermalColumnNames;
- (id)summaryReport;
- (void)_collectThermalData;
- (void)_finishCollectingThermalData;
- (void)_loadStats;
- (void)_startUpdate;
- (void)_updateThermalSummary:(id)a3 withValue:(id)a4;
- (void)addKeyEvent:(id)a3 additionalData:(id)a4;
- (void)stop;
@end

@implementation MIBUDataCollector

+ (id)sharedInstance
{
  if (qword_1000B8398 != -1)
  {
    sub_100054A98();
  }

  v3 = qword_1000B8390;

  return v3;
}

- (MIBUDataCollector)init
{
  v5.receiver = self;
  v5.super_class = MIBUDataCollector;
  v2 = [(MIBUDataCollector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUDataCollector *)v2 _prepare];
    [(MIBUDataCollector *)v3 _loadStats];
    v3->_collectingKeyEvents = 1;
  }

  return v3;
}

- (BOOL)_prepare
{
  v14 = 0;
  v3 = +[NSFileManager defaultManager];
  if (([v3 fileExistsAtPath:@"/var/mobile/Library/Logs/com.apple.inboxupdaterd" isDirectory:&v14] & 1) == 0)
  {
    v13 = 0;
    v5 = [v3 createDirectoryAtPath:@"/var/mobile/Library/Logs/com.apple.inboxupdaterd" withIntermediateDirectories:1 attributes:0 error:&v13];
    v4 = v13;
    if (v5)
    {
      goto LABEL_5;
    }

    if (qword_1000B84A8[0] != -1)
    {
      sub_100054AAC();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100054AD4(v11);
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  if ((v14 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100054B84();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100054BAC(v8, v9, v10);
    }

    goto LABEL_15;
  }

  v4 = 0;
LABEL_5:
  container = self->_container;
  self->_container = @"/var/mobile/Library/Logs/com.apple.inboxupdaterd";

  v7 = 1;
LABEL_16:

  return v7;
}

- (BOOL)start
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100054C28();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DataCollector: will start.", v5, 2u);
  }

  [(MIBUDataCollector *)self _collectThermalDataWithKeys:&off_1000A9F68 interval:qword_1000B69B8];
  if (!self->_collectingKeyEvents)
  {
    self->_collectingKeyEvents = 1;
  }

  return 1;
}

- (void)_startUpdate
{
  v3 = objc_opt_new();
  thermalStart = self->_thermalStart;
  self->_thermalStart = v3;

  v5 = objc_opt_new();
  thermalEnd = self->_thermalEnd;
  self->_thermalEnd = v5;

  v7 = objc_opt_new();
  thermalPeak = self->_thermalPeak;
  self->_thermalPeak = v7;

  v13[0] = @"StartTime";
  v9 = +[NSDate now];
  v10 = [(MIBUDataCollector *)self _stringForDate:v9];
  v15 = *&self->_thermalStart;
  v13[1] = @"ThermalStart";
  v13[2] = @"ThermalEnd";
  v13[3] = @"ThermalPeak";
  v14 = v10;
  v16 = self->_thermalPeak;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:v13 count:4];
  currentThermalSummary = self->_currentThermalSummary;
  self->_currentThermalSummary = v11;
}

- (void)stop
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100054C3C();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DataCollector: will stop.", buf, 2u);
  }

  thermalCollectionTimer = self->_thermalCollectionTimer;
  if (thermalCollectionTimer)
  {
    dispatch_source_cancel(thermalCollectionTimer);
    v5 = self->_thermalCollectionTimer;
    self->_thermalCollectionTimer = 0;
  }

  if (self->_thermalCollectionQueue)
  {
    objc_initWeak(buf, self);
    thermalCollectionQueue = self->_thermalCollectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CD2C;
    block[3] = &unk_100099458;
    objc_copyWeak(&v13, buf);
    dispatch_sync(thermalCollectionQueue, block);
    v7 = self->_thermalCollectionQueue;
    self->_thermalCollectionQueue = 0;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  if (self->_collectingKeyEvents)
  {
    currentThermalSummary = self->_currentThermalSummary;
    if (currentThermalSummary)
    {
      thermalHistory = self->_thermalHistory;
      if (!thermalHistory)
      {
        v10 = objc_opt_new();
        v11 = self->_thermalHistory;
        self->_thermalHistory = v10;

        thermalHistory = self->_thermalHistory;
        currentThermalSummary = self->_currentThermalSummary;
      }

      [(NSMutableArray *)thermalHistory addObject:currentThermalSummary];
    }

    [(MIBUDataCollector *)self _saveStats];
    self->_collectingKeyEvents = 0;
  }
}

- (BOOL)clear
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100054C50();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DataCollector: will clear files generated.", buf, 2u);
  }

  container = self->_container;
  p_container = &self->_container;
  if (container && ((+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = *p_container, v13 = 0, v8 = [v6 removeItemAtPath:v7 error:&v13], v9 = v13, v6, !v8) || v9))
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100054C64();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100054C8C(p_container, v10, v11);
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)_convertTagName:(id)a3
{
  v3 = a3;
  v24[0] = @"ClientController";
  v23[0] = @"SSUNanMulticastInit";
  v23[1] = @"SSUNanMulticastStart";
  v23[2] = @"SSUNanMulticastEnd";
  v23[3] = @"SSUNanMulticastError";
  v23[4] = @"SSUNanDataPathInit";
  v23[5] = @"SSUNanDataPathStart";
  v23[6] = @"SSUNanDataPathEnd";
  v4 = [NSArray arrayWithObjects:v23 count:7];
  v24[1] = @"Subscriber";
  v25[0] = v4;
  v22 = @"SSUNanSubscriberDiscoveredResult";
  v5 = [NSArray arrayWithObjects:&v22 count:1];
  v25[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

  if ([v3 hasPrefix:@"SSU"])
  {
    v7 = v3;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v3 hasPrefix:{v13, v17}])
          {
            v14 = [v3 substringFromIndex:{objc_msgSend(v13, "length")}];
            v7 = [@"SSU" stringByAppendingString:v14];

            v15 = [v8 objectForKey:v13];
            LOBYTE(v14) = [v15 containsObject:v7];

            if (v14)
            {

              goto LABEL_19;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if (qword_1000B84A8[0] != -1)
    {
      sub_100054D00();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100054D28();
    }

    v7 = 0;
  }

LABEL_19:

  return v7;
}

- (void)addKeyEvent:(id)a3 additionalData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_collectingKeyEvents)
  {
    v8 = [(MIBUDataCollector *)self _convertTagName:v6];

    if (v8)
    {
      if (v8 == @"SSUStart")
      {
        [(MIBUDataCollector *)self _startUpdate];
      }

      v9 = self->_keyEvents;
      objc_sync_enter(v9);
      v10 = objc_opt_new();
      v11 = +[NSDate now];
      v12 = [(MIBUDataCollector *)self _stringForDate:v11];
      [v10 setObject:v12 forKey:@"Time"];

      [v10 setObject:v8 forKey:@"Tag"];
      if (v7)
      {
        if ([NSJSONSerialization isValidJSONObject:v7])
        {
          [v10 setObject:v7 forKey:@"Data"];
        }

        else
        {
          if (qword_1000B84A8[0] != -1)
          {
            sub_100054D94();
          }

          v13 = qword_1000B84A0;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = [objc_opt_class() description];
            sub_100054DA8(v14, &v15, v13);
          }
        }
      }

      [(NSMutableArray *)self->_keyEvents addObject:v10];
      [(MIBUDataCollector *)self _saveStats];

      objc_sync_exit(v9);
    }
  }

  else
  {
    v8 = v6;
  }
}

- (id)summaryReport
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100054DF8();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DataCollector: generating summary report.", buf, 2u);
  }

  if (self->_collectingKeyEvents)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100054ECC();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100054EF4(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = 0;
  }

  else
  {
    keyEvents = self->_keyEvents;
    v21[0] = @"KeyEvents";
    v21[1] = @"Thermal";
    thermalHistory = self->_thermalHistory;
    v22[0] = keyEvents;
    v22[1] = thermalHistory;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = 0;
    v12 = [NSJSONSerialization dataWithJSONObject:v15 options:0 error:&v19];
    v16 = v19;
    if (!v12)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100054E0C();
      }

      v17 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100054E34(v17);
      }
    }
  }

  return v12;
}

- (void)_loadStats
{
  v3 = [(MIBUDataCollector *)self _fileForStatsData];
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    if (v5)
    {
      v6 = [NSData dataWithContentsOfFile:v3];
      v20 = 0;
      v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v20];
      v8 = v20;
      v9 = v8;
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v7 objectForKey:@"KeyEvents"];
          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [NSMutableArray arrayWithArray:v10];
              keyEvents = self->_keyEvents;
              self->_keyEvents = v11;
            }
          }

          v13 = [v7 objectForKey:@"Thermal"];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [NSMutableArray arrayWithArray:v13];
              thermalHistory = self->_thermalHistory;
              self->_thermalHistory = v14;
            }
          }
        }

        else
        {
          if (qword_1000B84A8[0] != -1)
          {
            sub_100054F2C();
          }

          v17 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
          {
            sub_100054F54(v17);
          }
        }
      }

      else if (v8)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100054FF0();
        }

        v16 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_100055018(v16);
        }
      }
    }
  }

  if (!self->_keyEvents)
  {
    v18 = objc_opt_new();
    v19 = self->_keyEvents;
    self->_keyEvents = v18;
  }
}

- (BOOL)_saveStats
{
  v3 = self->_keyEvents;
  objc_sync_enter(v3);
  v4 = [(MIBUDataCollector *)self _fileForStatsData];
  if (v4)
  {
    thermalHistory = self->_thermalHistory;
    if (thermalHistory)
    {
      keyEvents = self->_keyEvents;
      v26[0] = @"KeyEvents";
      v26[1] = @"Thermal";
      v27[0] = keyEvents;
      v27[1] = thermalHistory;
      v7 = v26;
      v8 = v27;
      v9 = 2;
    }

    else
    {
      v11 = self->_keyEvents;
      v24 = @"KeyEvents";
      v25 = v11;
      v7 = &v24;
      v8 = &v25;
      v9 = 1;
    }

    v12 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:v9];
    v22 = 0;
    v13 = [NSJSONSerialization dataWithJSONObject:v12 options:0 error:&v22];
    v14 = v22;
    if (v13)
    {
      v15 = [(MIBUDataCollector *)self _fileForStatsData];
      v21 = v14;
      v10 = [v13 writeToFile:v15 options:0 error:&v21];
      v16 = v21;

      if ((v10 & 1) == 0)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_1000550B0();
        }

        v17 = qword_1000B84A0;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v16 localizedDescription];
          sub_1000550D8(v18, v23, v17);
        }
      }

      v14 = v16;
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100055128();
      }

      v13 = qword_1000B84A0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = [v14 localizedDescription];
        sub_100055150(v19, v23, v13);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v3);
  return v10;
}

- (id)_thermalColumnNames
{
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_thermalKeyMapping;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_thermalKeyMapping objectForKey:v9];
        v11 = [NSString stringWithFormat:@"%@(%@)", v9, v10, v14];
        [v3 addObject:v11];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 componentsJoinedByString:{@", "}];

  return v12;
}

- (BOOL)_prepareThermalDataFile
{
  v3 = [(MIBUDataCollector *)self _fileForThermalData];
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:v3];
    if ((v5 & 1) == 0)
    {
      [v4 createFileAtPath:v3 contents:0 attributes:0];
    }

    v6 = [NSFileHandle fileHandleForWritingAtPath:v3];
    thermalDataFile = self->_thermalDataFile;
    self->_thermalDataFile = v6;

    v8 = self->_thermalDataFile;
    if (v8)
    {
      if (v5)
      {
        [(NSFileHandle *)v8 seekToEndOfFile];
LABEL_14:
        v9 = 1;
LABEL_21:

        goto LABEL_22;
      }

      v11 = [(MIBUDataCollector *)self _thermalColumnNames];
      v12 = [NSString stringWithFormat:@"Time, %@\n", v11];

      v13 = self->_thermalDataFile;
      v14 = [v12 dataUsingEncoding:4];
      v20 = 0;
      v15 = [(NSFileHandle *)v13 writeData:v14 error:&v20];
      v16 = v20;

      if (v15)
      {

        goto LABEL_14;
      }

      if (qword_1000B84A8[0] != -1)
      {
        sub_1000551A0();
      }

      v17 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_1000551C8(v17);
      }

      v18 = self->_thermalDataFile;
      self->_thermalDataFile = 0;
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100055260();
      }

      v10 = qword_1000B84A0;
      v9 = 0;
      if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DataCollector: was not able to open %@ for writing", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_22:

  return v9;
}

- (BOOL)_collectThermalDataWithKeys:(id)a3 interval:(int64_t)a4
{
  v7 = a3;
  objc_initWeak(&location, self);
  objc_storeStrong(&self->_thermalKeyMapping, a3);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.mobileinboxupdate.data_collection.thermal", v8);
  thermalCollectionQueue = self->_thermalCollectionQueue;
  self->_thermalCollectionQueue = v9;

  v11 = self->_thermalCollectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E59C;
  block[3] = &unk_100099458;
  objc_copyWeak(&v20, &location);
  dispatch_async(v11, block);
  if (qword_1000B84A8[0] != -1)
  {
    sub_100055274();
  }

  v12 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DataCollector: start to collect thermal data every %ld seconds", buf, 0xCu);
  }

  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_thermalCollectionQueue);
  thermalCollectionTimer = self->_thermalCollectionTimer;
  self->_thermalCollectionTimer = v13;

  dispatch_source_set_timer(self->_thermalCollectionTimer, 0, 1000000000 * a4, 0);
  v15 = self->_thermalCollectionTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000E644;
  handler[3] = &unk_100099458;
  objc_copyWeak(&v18, &location);
  dispatch_source_set_event_handler(v15, handler);
  dispatch_resume(self->_thermalCollectionTimer);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return 1;
}

- (id)_stringForDate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = +[NSLocale currentLocale];
  [v4 setLocale:v5];

  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v6 = [v4 stringFromDate:v3];

  return v6;
}

- (id)_stringForNumberinData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"TG0V"])
  {
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.2lf", *[v6 bytes] * 0.0000152587891);
    v8 = LABEL_6:;
    goto LABEL_7;
  }

  if ([v6 length] == 4 || objc_msgSend(v6, "length") == 8)
  {
    [(MIBUDataCollector *)self _doubleFromData:v6];
    [NSString stringWithFormat:@"%.2lf", v7];
    goto LABEL_6;
  }

  v8 = @"<Unknown Format>";
LABEL_7:

  return v8;
}

- (double)_doubleFromData:(id)a3
{
  v3 = a3;
  if ([v3 length] == 4)
  {
    v4 = *[v3 bytes];
  }

  else
  {
    v4 = 0.0;
    if ([v3 length] == 8)
    {
      v4 = *[v3 bytes];
    }
  }

  return v4;
}

- (void)_collectThermalData
{
  dispatch_assert_queue_V2(self->_thermalCollectionQueue);
  if (self->_thermalDataFile)
  {
    v3 = +[NSDate now];
    v4 = [(MIBUDataCollector *)self _stringForDate:v3];
    v22 = [NSMutableString stringWithString:v4];

    v5 = +[MIBUDeviceController sharedInstance];
    v6 = [v5 dictFromSMCKeyMapping:self->_thermalKeyMapping];

    if (v6)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = self->_thermalKeyMapping;
      v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v24 + 1) + 8 * i);
            v12 = [v6 objectForKey:v11];
            v13 = [(NSDictionary *)self->_thermalKeyMapping objectForKey:v11];
            v14 = [(MIBUDataCollector *)self _stringForNumberinData:v12 forKey:v13];
            v15 = [@" "];
            [v22 appendString:v15];

            [(MIBUDataCollector *)self _updateThermalSummary:v13 withValue:v14];
          }

          v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v8);
      }

      [v22 appendString:@"\n"];
      thermalDataFile = self->_thermalDataFile;
      v17 = [v22 dataUsingEncoding:4];
      v23 = 0;
      v18 = [(NSFileHandle *)thermalDataFile writeData:v17 error:&v23];
      v19 = v23;

      if ((v18 & 1) == 0)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005529C();
        }

        v20 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_1000552C4(v20);
        }
      }
    }
  }
}

- (void)_updateThermalSummary:(id)a3 withValue:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_thermalStart objectForKey:v13];

  if (!v7)
  {
    [(NSMutableDictionary *)self->_thermalStart setObject:v6 forKey:v13];
  }

  [(NSMutableDictionary *)self->_thermalEnd setObject:v6 forKey:v13];
  v8 = [(NSMutableDictionary *)self->_thermalPeak objectForKey:v13];
  v9 = v8;
  if (!v8 || ([v8 doubleValue], v11 = v10, objc_msgSend(v6, "doubleValue"), v11 < v12))
  {
    [(NSMutableDictionary *)self->_thermalPeak setObject:v6 forKey:v13];
  }
}

- (void)_finishCollectingThermalData
{
  dispatch_assert_queue_V2(self->_thermalCollectionQueue);
  thermalDataFile = self->_thermalDataFile;
  if (thermalDataFile)
  {
    v7 = 0;
    v4 = [(NSFileHandle *)thermalDataFile closeAndReturnError:&v7];
    v5 = v7;
    if ((v4 & 1) == 0)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005535C();
      }

      v6 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100055384(v6);
      }
    }
  }
}

@end