@interface NRTermsEventCollectionDB
+ (BOOL)deviceUnlocked;
+ (NRTermsEventCollectionDB)sharedInstance;
+ (id)pathToTermsEventLog;
- (NRTermsEventCollection)events;
- (id)reverseObjectEnumerator;
- (void)loadEvents;
- (void)saveEvents;
@end

@implementation NRTermsEventCollectionDB

+ (NRTermsEventCollectionDB)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7F0C;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3998 != -1)
  {
    dispatch_once(&qword_1001B3998, block);
  }

  v2 = qword_1001B39A0;

  return v2;
}

+ (id)pathToTermsEventLog
{
  v2 = +[NRDataFilePaths pathToNanoRegistryStateDirectory];
  v3 = [NSURL fileURLWithPath:v2];

  v4 = [v3 URLByAppendingPathComponent:@"termsEventLog"];

  return v4;
}

+ (BOOL)deviceUnlocked
{
  v5 = @"ExtendedDeviceLockState";
  v6 = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v2 = MKBGetDeviceLockState();
  return (v2 < 8) & (0x89u >> v2);
}

- (void)loadEvents
{
  v3 = +[NRTermsEventCollectionDB pathToTermsEventLog];
  v4 = [v3 path];
  v48 = 0;
  v5 = [NSData dataWithContentsOfFile:v4 options:0 error:&v48];
  v6 = v48;

  if (v6)
  {
    v7 = [v6 domain];
    if ([NSCocoaErrorDomain isEqual:v7])
    {
      v8 = [v6 code];

      if (v8 == 260)
      {
        v9 = [v6 userInfo];
        v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

        v11 = [v10 domain];
        if ([NSPOSIXErrorDomain isEqual:v11])
        {
          v12 = [v10 code];

          if (v12 == 2)
          {
            v13 = nr_daemon_log();
            v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

            if (v14)
            {
              v15 = nr_daemon_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NRTermsAcknowledgementRegistryService: Creating new NRTermsEventCollection", buf, 2u);
              }
            }

            v16 = objc_opt_new();
            events = self->_events;
            self->_events = v16;

            goto LABEL_38;
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

    v19 = v6;
LABEL_42:
    objc_exception_throw(v19);
  }

  v46 = 0;
  v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v46];
  v19 = v46;
  if (v19)
  {
    goto LABEL_42;
  }

  v20 = [(NRTermsEventCollection *)v18 termsTextCleared];
  v21 = nr_daemon_log();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    if (v22)
    {
      v23 = nr_daemon_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Terms text cleared already. skipping.", buf, 2u);
      }
    }

    v24 = self->_events;
    self->_events = v18;
  }

  else
  {
    v41 = self;
    if (v22)
    {
      v25 = nr_daemon_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Clearing terms text from terms event log", buf, 2u);
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = [(NRTermsEventCollection *)v18 events];
    v27 = [v26 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v42 + 1) + 8 * i);
          v32 = objc_autoreleasePoolPush();
          if ([v31 hasTermsText])
          {
            v33 = [v31 termsDigest];

            if (!v33)
            {
              v34 = nr_daemon_log();
              v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

              if (v35)
              {
                v36 = nr_daemon_log();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Adding terms digest before saving", buf, 2u);
                }
              }

              v37 = [v31 termsText];
              v38 = [NRTermsEvent digestFromData:v37];
              [v31 setTermsDigest:v38];
            }

            [v31 saveEventTextToFileIfNeeded];
            [v31 setWritable:1];
            [v31 setTermsText:0];
            [v31 setWritable:0];
            [(NRTermsEventCollection *)v18 setDirty:1];
          }

          objc_autoreleasePoolPop(v32);
        }

        v28 = [v26 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v28);
    }

    [(NRTermsEventCollection *)v18 setTermsTextCleared:1];
    v39 = v41->_events;
    v41->_events = v18;

    [(NRTermsEventCollectionDB *)v41 saveEvents];
    v5 = v40;
  }

LABEL_38:
}

- (void)saveEvents
{
  v3 = [(NRTermsEventCollectionDB *)self events];
  v4 = [v3 dirty];

  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_events;
    v6 = [(NRTermsEventCollection *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if ([v10 hasTermsText])
          {
            v11 = [v10 termsDigest];

            if (!v11)
            {
              v12 = [v10 termsText];
              v13 = [NRTermsEvent digestFromData:v12];
              [v10 setTermsDigest:v13];
            }
          }

          [v10 setWritable:1];
          [v10 setTermsText:0];
          [v10 setWritable:0];
        }

        v7 = [(NRTermsEventCollection *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    events = self->_events;
    v20 = 0;
    v15 = [NSKeyedArchiver archivedDataWithRootObject:events requiringSecureCoding:1 error:&v20];
    v16 = v20;
    if (!v16)
    {
      v17 = [objc_opt_class() pathToTermsEventLog];
      v19 = 0;
      [v15 writeToURL:v17 options:1073741825 error:&v19];
      v18 = v19;

      if (!v18)
      {

        return;
      }

      v16 = v18;
    }

    objc_exception_throw(v16);
  }
}

- (id)reverseObjectEnumerator
{
  v2 = [(NRTermsEventCollectionDB *)self events];
  v3 = [v2 reverseObjectEnumerator];

  return v3;
}

- (NRTermsEventCollection)events
{
  events = self->_events;
  if (!events)
  {
    [(NRTermsEventCollectionDB *)self loadEvents];
    events = self->_events;
  }

  return events;
}

@end