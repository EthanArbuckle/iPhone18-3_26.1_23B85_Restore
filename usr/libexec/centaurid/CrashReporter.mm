@interface CrashReporter
+ (id)coreNameFromFilename:(id)filename;
+ (id)decodeCrashlogs:(id)crashlogs fromSubsystem:(id)subsystem;
+ (id)decodeCustomSectionsFromData:(id)data forCore:(id)core withDecoder:(id)decoder sectionInfo:(id)info;
+ (id)firmwareReasonFromDecodedCrashlogs:(id)crashlogs subsystemID:(id)d;
+ (id)humanReadableDurationFromTimestamp:(id)timestamp;
+ (id)humanReadableWallTimeFromTimestamp:(id)timestamp;
+ (id)primaryCoreNameForSubsystemID:(id)d;
+ (id)radarCreationURLWithHostReason:(id)reason firmwareReason:(id)firmwareReason subsystemName:(id)name upTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp realTimestamp:(id)realTimestamp;
+ (id)subsystemNameForSubsystemID:(id)d;
+ (id)unslideAddress:(id)address slide:(unint64_t)slide;
+ (id)unslideCallstack:(id)callstack slide:(unint64_t)slide;
+ (int64_t)getUserNotificationMinInterval;
+ (unint64_t)crashAnalyticsSamplingRate;
+ (void)saveDecodedCrashlogs:(id)crashlogs fromSubsystem:(id)subsystem timestamp:(id)timestamp;
- (BOOL)shouldNotifyUser;
- (CrashReporter)initWithBuiltIn:(BOOL)in analyticsReporter:(id)reporter;
- (id)analyticsDataForCrashlog:(id)crashlog core:(id)core;
- (int64_t)getLastUserNotificationTimestamp;
- (void)notifyUserWithBody:(id)body radarCreationURL:(id)l;
- (void)processCrash:(id)crash;
- (void)processCrashes:(id)crashes completion:(id)completion;
- (void)sendToCrashAnalyticsPipeline:(id)pipeline hostReason:(id)reason subsystemID:(id)d upTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp realTimestamp:(id)realTimestamp;
- (void)setLastUserNotificationTimestamp:(int64_t)timestamp;
@end

@implementation CrashReporter

- (CrashReporter)initWithBuiltIn:(BOOL)in analyticsReporter:(id)reporter
{
  reporterCopy = reporter;
  v27.receiver = self;
  v27.super_class = CrashReporter;
  v9 = [(CrashReporter *)&v27 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.centaurid.crashreporter", v10);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v11;

    v9->_builtIn = in;
    objc_storeStrong(&v9->_analyticsReporter, reporter);
    v13 = _os_feature_enabled_impl();
    v9->_enableCrashAnalytics = v13;
    if (v13)
    {
      if (&kOSALogOptionOverrideFilePrefix)
      {
        if (v9->_builtIn)
        {
          v14 = sub_100025608();
          wsku = v9->_wsku;
          v9->_wsku = v14;

          v16 = sub_1000257CC();
          chipset = v9->_chipset;
          v9->_chipset = v16;

          v18 = sub_100025918();
          chipsetRevision = v9->_chipsetRevision;
          v9->_chipsetRevision = v18;
        }

        v20 = sub_100025A64();
        productType = v9->_productType;
        v9->_productType = v20;
      }

      else
      {
        v25 = sub_100025204();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10002A474();
        }

        v9->_enableCrashAnalytics = 0;
      }
    }

    else
    {
      v22 = sub_100025204();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [objc_opt_class() description];
        v24 = NSStringFromSelector(a2);
        *buf = 138543618;
        v29 = v23;
        v30 = 2114;
        v31 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: crash analytics feature disabled", buf, 0x16u);
      }
    }
  }

  return v9;
}

- (void)processCrashes:(id)crashes completion:(id)completion
{
  crashesCopy = crashes;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010B28;
  block[3] = &unk_10005CA10;
  v12 = crashesCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = crashesCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)processCrash:(id)crash
{
  crashCopy = crash;
  v5 = [NSString stringWithUTF8String:"Metadata"];
  v6 = [crashCopy objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [NSString stringWithUTF8String:"Reason"];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [NSString stringWithUTF8String:"SubsystemID"];
      v10 = [v6 objectForKeyedSubscript:v9];

      if (!v10)
      {
        sub_10002A714(self);
        goto LABEL_28;
      }

      v11 = [objc_opt_class() subsystemNameForSubsystemID:v10];
      v12 = [NSString stringWithUTF8String:"UpTimestamp"];
      v13 = [v6 objectForKeyedSubscript:v12];

      v48 = v13;
      if (v13)
      {
        v14 = [NSString stringWithUTF8String:"MonotonicTimestamp"];
        v15 = [v6 objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = [NSString stringWithUTF8String:"RealTimestamp"];
          v17 = [v6 objectForKeyedSubscript:v16];

          if (v17)
          {
            v47 = v10;
            v18 = [objc_opt_class() decodeCrashlogs:crashCopy fromSubsystem:v11];
            v45 = crashCopy;
            v46 = v8;
            if (v18)
            {
              if (sub_10002529C())
              {
                v19 = +[NSUserDefaults standardUserDefaults];
                v20 = [v19 BOOLForKey:@"SaveDecodedCrashlogs"];

                if (v20)
                {
                  [objc_opt_class() saveDecodedCrashlogs:v18 fromSubsystem:v11 timestamp:v17];
                }
              }

              v21 = [objc_opt_class() firmwareReasonFromDecodedCrashlogs:v18 subsystemID:v47];
            }

            else
            {
              v21 = 0;
            }

            v22 = sub_100025204();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [objc_opt_class() description];
              v24 = NSStringFromSelector(a2);
              *buf = 138543874;
              v51 = v23;
              v52 = 2114;
              v53 = v24;
              v54 = 2112;
              v55 = v11;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: subsystem: %@", buf, 0x20u);
            }

            v25 = sub_100025204();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [objc_opt_class() description];
              v27 = NSStringFromSelector(a2);
              *buf = 138543874;
              v51 = v26;
              v52 = 2114;
              v53 = v27;
              v54 = 2114;
              v55 = v46;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: host reason: %{public}@", buf, 0x20u);
            }

            v28 = sub_100025204();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [objc_opt_class() description];
              v30 = NSStringFromSelector(a2);
              *buf = 138543874;
              v51 = v29;
              v52 = 2114;
              v53 = v30;
              v54 = 2114;
              v55 = v21;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: firmware reason: %{public}@", buf, 0x20u);
            }

            v31 = sub_100025204();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [objc_opt_class() description];
              v33 = NSStringFromSelector(a2);
              *buf = 138543874;
              v51 = v32;
              v52 = 2114;
              v53 = v33;
              v54 = 2112;
              v55 = v48;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: up timestamp: %@", buf, 0x20u);
            }

            v34 = sub_100025204();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [objc_opt_class() description];
              v36 = NSStringFromSelector(a2);
              *buf = 138543874;
              v51 = v35;
              v52 = 2114;
              v53 = v36;
              v54 = 2112;
              v55 = v15;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: monotonic timestamp: %@", buf, 0x20u);
            }

            v37 = sub_100025204();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [objc_opt_class() description];
              v39 = NSStringFromSelector(a2);
              *buf = 138543874;
              v51 = v38;
              v52 = 2114;
              v53 = v39;
              v54 = 2112;
              v55 = v17;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: real timestamp: %@", buf, 0x20u);
            }

            v8 = v46;
            [(AnalyticsReporter *)self->_analyticsReporter reportCrashlogProcessedFromSubsystem:v11 hostReason:v46 firmwareReason:v21];
            if ([(CrashReporter *)self shouldNotifyUser])
            {
              v40 = [objc_opt_class() notificationBodyForHostReason:v46 firmwareReason:v21 subsystemName:v11];
              v41 = [objc_opt_class() radarCreationURLWithHostReason:v46 firmwareReason:v21 subsystemName:v11 upTimestamp:v48 monotonicTimestamp:v15 realTimestamp:v17];
              [(CrashReporter *)self notifyUserWithBody:v40 radarCreationURL:v41];
            }

            [(CrashReporter *)self sendToCrashAnalyticsPipeline:v18 hostReason:v46 subsystemID:v47 upTimestamp:v48 monotonicTimestamp:v15 realTimestamp:v17];

            crashCopy = v45;
            goto LABEL_28;
          }

          v44 = sub_100025204();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_10002A51C();
          }
        }

        else
        {
          v43 = sub_100025204();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_10002A5C4();
          }
        }
      }

      else
      {
        v42 = sub_100025204();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10002A66C();
        }
      }

      goto LABEL_28;
    }

    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002A7E4();
    }
  }

  else
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002A88C();
    }
  }

LABEL_28:
}

+ (id)decodeCrashlogs:(id)crashlogs fromSubsystem:(id)subsystem
{
  crashlogsCopy = crashlogs;
  if (&_RTBuddyCrashlogDecode)
  {
    [CrashlogDecoder decoderForSubsystem:subsystem];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100029EE4;
    v15 = &unk_10005CA38;
    selfCopy = self;
    v16 = v19 = a2;
    v17 = objc_alloc_init(NSMutableDictionary);
    v8 = v17;
    v9 = v16;
    [crashlogsCopy enumerateKeysAndObjectsUsingBlock:&v12];
    v10 = [v8 copy];
  }

  else
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002A934();
    }

    v10 = 0;
  }

  return v10;
}

+ (id)decodeCustomSectionsFromData:(id)data forCore:(id)core withDecoder:(id)decoder sectionInfo:(id)info
{
  dataCopy = data;
  coreCopy = core;
  decoderCopy = decoder;
  infoCopy = info;
  objc_opt_class();
  v40 = infoCopy;
  v46 = decoderCopy;
  v47 = coreCopy;
  if (objc_opt_isKindOfClass())
  {
    v50 = [decoderCopy supportedSectionsForCore:coreCopy];
    if (v50)
    {
      v41 = objc_alloc_init(NSMutableDictionary);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v12 = infoCopy;
      v13 = [v12 countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (!v13)
      {
        goto LABEL_33;
      }

      v15 = *v52;
      *&v14 = 138544386;
      v39 = v14;
      while (1)
      {
        v16 = 0;
        do
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v51 + 1) + 8 * v16);
          v18 = [v17 objectForKeyedSubscript:{@"section-signature", v39}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![v50 containsObject:v18])
            {
              goto LABEL_26;
            }

            v19 = [v17 objectForKeyedSubscript:@"section-offset"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v17 objectForKeyedSubscript:@"section-size"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                unsignedIntegerValue = [v19 unsignedIntegerValue];
                unsignedIntegerValue2 = [v20 unsignedIntegerValue];
                if (unsignedIntegerValue < [dataCopy length] && unsignedIntegerValue2 < objc_msgSend(dataCopy, "length") && &unsignedIntegerValue[unsignedIntegerValue2] <= objc_msgSend(dataCopy, "length"))
                {
                  v29 = sub_100025204();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v45 = [objc_opt_class() description];
                    v30 = NSStringFromSelector(a2);
                    *buf = 138544130;
                    v56 = v45;
                    v57 = 2114;
                    v58 = v30;
                    v59 = 2112;
                    v60 = v47;
                    v61 = 2112;
                    v62 = v18;
                    v43 = v30;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: decoding %@:%@", buf, 0x2Au);
                  }

                  v31 = [dataCopy subdataWithRange:{unsignedIntegerValue, unsignedIntegerValue2}];
                  v23 = [v46 decodeData:v31 forSection:v18 fromCore:v47];

                  if ([v23 count])
                  {
                    [v41 addEntriesFromDictionary:v23];
                  }
                }

                else
                {
                  v23 = sub_100025204();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    v44 = [objc_opt_class() description];
                    v42 = NSStringFromSelector(a2);
                    v24 = [dataCopy length];
                    *buf = 138544642;
                    v56 = v44;
                    v57 = 2114;
                    v58 = v42;
                    v59 = 2112;
                    v60 = v18;
                    v61 = 2048;
                    v62 = unsignedIntegerValue;
                    v63 = 2048;
                    v64 = unsignedIntegerValue2;
                    v65 = 2048;
                    v66 = v24;
                    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %@ section out of bounds: %lu, %lu, %lu", buf, 0x3Eu);
                  }
                }
              }

              else
              {
                v23 = sub_100025204();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v32 = [objc_opt_class() description];
                  v33 = NSStringFromSelector(a2);
                  *buf = 138543874;
                  v56 = v32;
                  v57 = 2114;
                  v58 = v33;
                  v59 = 2112;
                  v60 = v18;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %@ section size missing or wrong type", buf, 0x20u);
                }
              }
            }

            else
            {
              v20 = sub_100025204();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v27 = [objc_opt_class() description];
                v28 = NSStringFromSelector(a2);
                *buf = 138543874;
                v56 = v27;
                v57 = 2114;
                v58 = v28;
                v59 = 2112;
                v60 = v18;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %@ section offset missing or wrong type", buf, 0x20u);
              }
            }
          }

          else
          {
            v19 = sub_100025204();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v25 = [objc_opt_class() description];
              v26 = NSStringFromSelector(a2);
              *buf = 138543618;
              v56 = v25;
              v57 = 2114;
              v58 = v26;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: signature missing or wrong type", buf, 0x16u);
            }
          }

LABEL_26:
          v16 = v16 + 1;
        }

        while (v13 != v16);
        v34 = [v12 countByEnumeratingWithState:&v51 objects:v67 count:16];
        v13 = v34;
        if (!v34)
        {
LABEL_33:

          v35 = v41;
          goto LABEL_35;
        }
      }
    }
  }

  v50 = 0;
  v35 = 0;
LABEL_35:
  v36 = v35;
  v37 = [v35 copy];

  return v37;
}

+ (id)firmwareReasonFromDecodedCrashlogs:(id)crashlogs subsystemID:(id)d
{
  crashlogsCopy = crashlogs;
  dCopy = d;
  v9 = [self primaryCoreNameForSubsystemID:dCopy];
  if (!v9)
  {
    v14 = sub_100025204();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2112;
    v25 = dCopy;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid subsystemID %@", &v20, 0x20u);
    goto LABEL_7;
  }

  v10 = [crashlogsCopy objectForKey:v9];
  if (!v10)
  {
    v14 = sub_100025204();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v11 = 0;
      goto LABEL_11;
    }

    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no crashlog for %@", &v20, 0x20u);
LABEL_7:

    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v10 objectForKey:@"panic"];
  if (v12)
  {
    v13 = v12;
    goto LABEL_12;
  }

  v14 = sub_100025204();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [objc_opt_class() description];
    v18 = NSStringFromSelector(a2);
    v20 = 138543874;
    v21 = v17;
    v22 = 2114;
    v23 = v18;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no panic string in %@'s crashlog", &v20, 0x20u);
  }

LABEL_11:

  v13 = 0;
LABEL_12:

  return v13;
}

+ (id)subsystemNameForSubsystemID:(id)d
{
  unsignedIntegerValue = [d unsignedIntegerValue];
  if (unsignedIntegerValue >= [&off_100080E28 count])
  {
    v4 = @"???";
  }

  else
  {
    v4 = [&off_100080E40 objectAtIndexedSubscript:unsignedIntegerValue];
  }

  return v4;
}

+ (id)primaryCoreNameForSubsystemID:(id)d
{
  dCopy = d;
  v5 = [NSString stringWithUTF8String:"Crashlog.CTRL.bin"];
  v6 = [NSString stringWithUTF8String:"Crashlog.WFMAIN.bin", v5];
  v13[1] = v6;
  v7 = [NSString stringWithUTF8String:"Crashlog.BTMAIN.bin"];
  v13[2] = v7;
  v8 = [NSArray arrayWithObjects:v13 count:3];

  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  if (unsignedIntegerValue >= [v8 count])
  {
    v11 = 0;
  }

  else
  {
    v10 = [v8 objectAtIndexedSubscript:unsignedIntegerValue];
    v11 = [self coreNameFromFilename:v10];
  }

  return v11;
}

+ (id)coreNameFromFilename:(id)filename
{
  filenameCopy = filename;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"Crashlog\\.(\\S+)\\.bin" options:0 error:0];
  v5 = [v4 firstMatchInString:filenameCopy options:0 range:{0, objc_msgSend(filenameCopy, "length")}];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 rangeAtIndex:1];
    v9 = [filenameCopy substringWithRange:{v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)saveDecodedCrashlogs:(id)crashlogs fromSubsystem:(id)subsystem timestamp:(id)timestamp
{
  crashlogsCopy = crashlogs;
  subsystemCopy = subsystem;
  v10 = [self humanReadableWallTimeFromTimestamp:timestamp];
  v11 = NSTemporaryDirectory();
  v12 = [NSString stringWithFormat:@"CentauriCrash-%@-%@", subsystemCopy, v10];
  v13 = [v11 stringByAppendingPathComponent:v12];

  v14 = +[NSFileManager defaultManager];
  v43 = 0;
  v37 = v13;
  LOBYTE(v12) = [v14 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v43];
  v15 = v43;

  if (v12)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = crashlogsCopy;
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v17)
    {
      v18 = v17;
      v32 = v10;
      v33 = subsystemCopy;
      v34 = crashlogsCopy;
      v36 = *v40;
      do
      {
        v19 = 0;
        v20 = v15;
        do
        {
          if (*v40 != v36)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v39 + 1) + 8 * v19);
          v22 = [v37 stringByAppendingPathComponent:v21];
          v23 = [v22 stringByAppendingPathExtension:@"plist"];

          v24 = [v16 objectForKeyedSubscript:v21];
          v25 = [NSURL fileURLWithPath:v23];
          v38 = v20;
          v26 = [v24 writeToURL:v25 error:&v38];
          v15 = v38;

          if ((v26 & 1) == 0)
          {
            v27 = sub_100025204();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = [objc_opt_class() description];
              v29 = NSStringFromSelector(a2);
              *buf = 138544130;
              v45 = v28;
              v46 = 2114;
              v47 = v29;
              v48 = 2114;
              v49 = v21;
              v50 = 2114;
              v51 = v15;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to write %{public}@: %{public}@", buf, 0x2Au);
            }
          }

          v19 = v19 + 1;
          v20 = v15;
        }

        while (v18 != v19);
        v18 = [v16 countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v18);
      subsystemCopy = v33;
      crashlogsCopy = v34;
      v10 = v32;
    }
  }

  else
  {
    v16 = sub_100025204();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      *buf = 138543874;
      v45 = v30;
      v46 = 2114;
      v47 = v31;
      v48 = 2114;
      v49 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to create directory: %{public}@", buf, 0x20u);
    }
  }
}

- (void)notifyUserWithBody:(id)body radarCreationURL:(id)l
{
  bodyCopy = body;
  lCopy = l;
  if (self->_userNotificationCenter || (v9 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.centaurid.CentauriNotifications" queue:self->_dispatchQueue], v10 = self->_userNotificationCenter, self->_userNotificationCenter = v9, v10, self->_userNotificationCenter))
  {
    v11 = objc_alloc_init(UNMutableNotificationContent);
    [v11 setTitle:@"Connectivity Fatal Error Detected"];
    [v11 setSubtitle:@"Please File a Radar"];
    [v11 setBody:bodyCopy];
    v12 = +[UNNotificationSound defaultSound];
    [v11 setSound:v12];

    [v11 setThreadIdentifier:@"com.apple.centaurid.crashalert"];
    [v11 setCategoryIdentifier:@"com.apple.centaurid.crashalert"];
    [v11 setShouldBackgroundDefaultAction:1];
    [v11 setShouldAuthenticateDefaultAction:1];
    [v11 setDefaultActionURL:lCopy];
    v13 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.TapToRadar"];
    [v11 setIcon:v13];

    v14 = [UNNotificationRequest requestWithIdentifier:@"com.apple.centaurid.CentauriNotifications" content:v11 trigger:0];
    if (v14)
    {
      v15 = v14;
      objc_initWeak(&location, self);
      userNotificationCenter = self->_userNotificationCenter;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000128D0;
      v17[3] = &unk_10005CA60;
      objc_copyWeak(v18, &location);
      v18[1] = a2;
      [(UNUserNotificationCenter *)userNotificationCenter addNotificationRequest:v15 withCompletionHandler:v17];
      objc_destroyWeak(v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = sub_100025204();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10002A9DC(self, a2);
      }
    }
  }

  else
  {
    v11 = sub_100025204();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002AA90(self, a2);
    }
  }
}

+ (int64_t)getUserNotificationMinInterval
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"CrashNotificationMinInterval"];

  if (v4 < 1)
  {
    return 60;
  }

  v5 = sub_100025204();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: overriding to %ld seconds", &v9, 0x20u);
  }

  return v4;
}

- (void)setLastUserNotificationTimestamp:(int64_t)timestamp
{
  self->_lastUserNotificationTimestamp = timestamp;
  p_lastUserNotificationTimestamp = &self->_lastUserNotificationTimestamp;
  self->_lastUserNotificationTimestampKnown = 1;
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"lastCrashNotificationTimestamp.bin"];

  v7 = [NSData dataWithBytes:p_lastUserNotificationTimestamp length:8];
  v8 = v7;
  if (!v7)
  {
    v11 = sub_100025204();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB44();
    }

    v10 = 0;
    goto LABEL_9;
  }

  v14 = 0;
  v9 = [v7 writeToFile:v6 options:0 error:&v14];
  v10 = v14;
  if ((v9 & 1) == 0)
  {
    v11 = sub_100025204();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to write file: %{public}@", buf, 0x20u);
    }

LABEL_9:
  }
}

- (BOOL)shouldNotifyUser
{
  v4 = sub_10002529C();
  if (v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"EnableCrashNotifications"];

    if (v6)
    {
      if (!objc_opt_class())
      {
        v12 = sub_100025204();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10002ACB8();
        }

        goto LABEL_18;
      }

      v19.tv_sec = 0;
      v19.tv_nsec = 0;
      if (clock_gettime(_CLOCK_MONOTONIC_RAW, &v19))
      {
        v7 = sub_100025204();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10002ABEC();
        }
      }

      getLastUserNotificationTimestamp = [(CrashReporter *)self getLastUserNotificationTimestamp];
      tv_sec = v19.tv_sec;
      if (getLastUserNotificationTimestamp >= 1)
      {
        v10 = getLastUserNotificationTimestamp;
        if (v19.tv_sec >= getLastUserNotificationTimestamp)
        {
          v11 = v19.tv_sec - getLastUserNotificationTimestamp;
          if (v11 < [objc_opt_class() getUserNotificationMinInterval])
          {
            v12 = sub_100025204();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [objc_opt_class() description];
              v14 = NSStringFromSelector(a2);
              *buf = 138543874;
              v21 = v13;
              v22 = 2114;
              v23 = v14;
              v24 = 2048;
              v25 = v19.tv_sec - v10;
              v15 = "%{public}@::%{public}@: %ld seconds since last notification, suppressing";
              v16 = v12;
              v17 = 32;
LABEL_15:
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);

              goto LABEL_18;
            }

            goto LABEL_18;
          }

          tv_sec = v19.tv_sec;
        }
      }

      [(CrashReporter *)self setLastUserNotificationTimestamp:tv_sec];
      LOBYTE(v4) = 1;
      return v4;
    }

    v12 = sub_100025204();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_opt_class() description];
      v14 = NSStringFromSelector(a2);
      *buf = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v15 = "%{public}@::%{public}@: preference disabled";
      v16 = v12;
      v17 = 22;
      goto LABEL_15;
    }

LABEL_18:

    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)radarCreationURLWithHostReason:(id)reason firmwareReason:(id)firmwareReason subsystemName:(id)name upTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp realTimestamp:(id)realTimestamp
{
  realTimestampCopy = realTimestamp;
  monotonicTimestampCopy = monotonicTimestamp;
  timestampCopy = timestamp;
  nameCopy = name;
  firmwareReasonCopy = firmwareReason;
  reasonCopy = reason;
  v17 = objc_opt_new();
  [v17 setScheme:@"tap-to-radar"];
  [v17 setHost:@"new"];
  v18 = sub_1000254F0();
  v19 = sub_1000253D8();
  firmwareReasonCopy = [NSString stringWithFormat:@"%@: %@: Connectivity Fatal Error: %@: %@: %@", v18, v19, nameCopy, reasonCopy, firmwareReasonCopy];

  v20 = sub_1000253D8();
  v21 = sub_1000254F0();
  v22 = [objc_opt_class() humanReadableDurationFromTimestamp:timestampCopy];

  v23 = [objc_opt_class() humanReadableDurationFromTimestamp:monotonicTimestampCopy];

  v24 = [objc_opt_class() humanReadableWallTimeFromTimestamp:realTimestampCopy];

  v25 = [NSString stringWithFormat:@"Connectivity Fatal Error Detected\nSubsystem: %@\nHost Reason: %@\nFirmware Reason: %@\nOS Version: %@\nDevice Type: %@\nUptime Excluding Sleep: %@\nUptime Including Sleep: %@\nTimestamp: %@\n", nameCopy, reasonCopy, firmwareReasonCopy, v20, v21, v22, v23, v24];

  v26 = v25;
  v27 = +[NSMutableArray array];
  v28 = [[NSURLQueryItem alloc] initWithName:@"ComponentID" value:@"1671730"];
  [v27 addObject:v28];

  v29 = [[NSURLQueryItem alloc] initWithName:@"ComponentName" value:@"Connectivity LiveOn"];
  [v27 addObject:v29];

  v30 = [[NSURLQueryItem alloc] initWithName:@"ComponentVersion" value:@"All"];
  [v27 addObject:v30];

  v31 = [[NSURLQueryItem alloc] initWithName:@"Title" value:firmwareReasonCopy];
  [v27 addObject:v31];

  v32 = [[NSURLQueryItem alloc] initWithName:@"Description" value:v26];
  [v27 addObject:v32];

  v33 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:@"Crash/Hang/Data Loss"];
  [v27 addObject:v33];

  v34 = [[NSURLQueryItem alloc] initWithName:@"Keywords" value:@"1942038"];
  [v27 addObject:v34];

  v35 = [[NSURLQueryItem alloc] initWithName:@"ExtensionIdentifiers" value:{@"com.apple.DiagnosticExtensions.ConnectivityDE, com.apple.DiagnosticExtensions.WiFi, com.apple.DiagnosticExtensions.BluetoothDiagnosticExtension, com.apple.DiagnosticExtensions.BluetoothHeadset, com.apple.DiagnosticExtensions.sysdiagnose"}];
  [v27 addObject:v35];

  [v17 setQueryItems:v27];
  v36 = sub_100025204();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [objc_opt_class() description];
    v38 = NSStringFromSelector(a2);
    v39 = [v17 URL];
    *buf = 138543874;
    v47 = v37;
    v48 = 2114;
    v49 = v38;
    v50 = 2112;
    v51 = v39;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@", buf, 0x20u);
  }

  v40 = [v17 URL];

  return v40;
}

+ (id)humanReadableDurationFromTimestamp:(id)timestamp
{
  unsignedLongLongValue = [timestamp unsignedLongLongValue];
  v4 = unsignedLongLongValue / 0x3B9ACA00;
  v5 = (unsignedLongLongValue / 0x3B9ACA00 * 0x444444444444445uLL) >> 64;
  v6 = unsignedLongLongValue / 0xDF8475800 - 60 * (((572662307 * (unsignedLongLongValue / 0xDF8475800)) >> 32) >> 3);
  v7 = (unsignedLongLongValue / 0x34630B8A000 - 24 * ((178956971 * (unsignedLongLongValue / 0x34630B8A000)) >> 32));
  v8 = objc_alloc_init(NSMutableString);
  v9 = v8;
  if (unsignedLongLongValue >= 0x4E94914F0000)
  {
    [v8 appendFormat:@"%@%llu days", @", ", unsignedLongLongValue / 0x4E94914F0000];
  }

  if (v7)
  {
    [v9 appendFormat:@"%@%llu hours", @", ", v7];
  }

  if (v6)
  {
    [v9 appendFormat:@"%@%llu minutes", @", ", v6];
  }

  if (v4 != 60 * v5)
  {
    [v9 appendFormat:@"%@%llu seconds", @", ", v4 - 60 * v5];
  }

  if ([v9 length])
  {
    v10 = [v9 substringFromIndex:{objc_msgSend(@", ", "length")}];
    v11 = [v10 copy];
  }

  else
  {
    v11 = &stru_10005D038;
  }

  return v11;
}

+ (id)humanReadableWallTimeFromTimestamp:(id)timestamp
{
  v3 = qword_100087188;
  timestampCopy = timestamp;
  if (v3 != -1)
  {
    sub_10002AD60();
  }

  unsignedLongLongValue = [timestampCopy unsignedLongLongValue];

  v6 = qword_100087190;
  v7 = [NSDate dateWithTimeIntervalSince1970:unsignedLongLongValue / 1000000000.0];
  v8 = [v6 stringFromDate:v7];

  return v8;
}

+ (unint64_t)crashAnalyticsSamplingRate
{
  if (sub_10002529C())
  {
    v3 = 100;
  }

  else
  {
    v3 = 10;
  }

  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.da"];
  v5 = [v4 objectForKey:@"com.apple.centaurid.CrashAnalyticsSamplingRate"];

  if (!v5)
  {
    integerValue = v3;
LABEL_11:
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [objc_opt_class() description];
      v12 = NSStringFromSelector(a2);
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2048;
      v21 = integerValue;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %lu%%", &v16, 0x20u);
    }

    v3 = integerValue;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v5 integerValue];
    v7 = sub_100025204();
    v8 = v7;
    if (integerValue < 0x65)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [objc_opt_class() description];
        v10 = NSStringFromSelector(a2);
        v16 = 138543618;
        v17 = v9;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: override accepted", &v16, 0x16u);
      }

      goto LABEL_11;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = 138543874;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      v20 = 2048;
      v21 = integerValue;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: override out of range: %ld", &v16, 0x20u);
    }
  }

  else
  {
    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002AD74();
    }
  }

LABEL_14:

  return v3;
}

- (void)sendToCrashAnalyticsPipeline:(id)pipeline hostReason:(id)reason subsystemID:(id)d upTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp realTimestamp:(id)realTimestamp
{
  pipelineCopy = pipeline;
  reasonCopy = reason;
  dCopy = d;
  timestampCopy = timestamp;
  monotonicTimestampCopy = monotonicTimestamp;
  realTimestampCopy = realTimestamp;
  if (self->_enableCrashAnalytics)
  {
    v20 = arc4random_uniform(0x64u);
    if ([objc_opt_class() crashAnalyticsSamplingRate] <= v20)
    {
      v26 = sub_100025204();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [objc_opt_class() description];
        NSStringFromSelector(a2);
        v29 = v28 = realTimestampCopy;
        *buf = 138543618;
        v98 = v27;
        v99 = 2114;
        v100 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: dropping due to sampling rate", buf, 0x16u);

        realTimestampCopy = v28;
      }

      goto LABEL_49;
    }

    v78 = realTimestampCopy;
    v80 = timestampCopy;
    v81 = reasonCopy;
    v79 = monotonicTimestampCopy;
    if (sub_10002529C() && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 BOOLForKey:@"CrashAnalyticsTestMode"], v21, v22))
    {
      v23 = sub_100025204();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [objc_opt_class() description];
        v25 = NSStringFromSelector(a2);
        *buf = 138543618;
        v98 = v24;
        v99 = 2114;
        v100 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: test mode enabled", buf, 0x16u);
      }

      v73 = 1;
    }

    else
    {
      v73 = 0;
    }

    v77 = [objc_opt_class() subsystemNameForSubsystemID:dCopy];
    selfCopy = self;
    v75 = dCopy;
    v84 = [objc_opt_class() primaryCoreNameForSubsystemID:dCopy];
    v85 = objc_alloc_init(NSMutableArray);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v76 = pipelineCopy;
    v30 = pipelineCopy;
    v31 = [v30 countByEnumeratingWithState:&v91 objects:v111 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v92;
      do
      {
        v34 = 0;
        do
        {
          if (*v92 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v91 + 1) + 8 * v34);
          v36 = [v30 objectForKeyedSubscript:v35];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v38 = [v30 objectForKeyedSubscript:v35];
            v39 = [(CrashReporter *)selfCopy analyticsDataForCrashlog:v38 core:v35];

            if (v39)
            {
              v109[0] = @"core";
              v109[1] = @"crashlog";
              v110[0] = v35;
              v110[1] = v39;
              v40 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:2];
              [v85 addObject:v40];

              if ([v84 isEqualToString:v35])
              {
                v41 = [v39 mutableCopy];
                [v41 removeObjectForKey:@"application-info"];
                v108[0] = @"AP";
                v107[0] = @"core";
                v107[1] = @"crashlog";
                v42 = [v41 copy];
                v108[1] = v42;
                v43 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:2];
                [v85 addObject:v43];

LABEL_20:
              }
            }
          }

          else
          {
            v39 = sub_100025204();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v41 = [objc_opt_class() description];
              v42 = NSStringFromSelector(a2);
              *buf = 138543618;
              v98 = v41;
              v99 = 2114;
              v100 = v42;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: decoded crashlog has wrong type", buf, 0x16u);
              goto LABEL_20;
            }
          }

          v34 = v34 + 1;
        }

        while (v32 != v34);
        v44 = [v30 countByEnumeratingWithState:&v91 objects:v111 count:16];
        v32 = v44;
      }

      while (v44);
    }

    v105[0] = @"bug_type";
    v105[1] = @"UI_country_code";
    v106[0] = @"305";
    v106[1] = @"US";
    v105[2] = @"log-version";
    v105[3] = @"accessory_type";
    v106[2] = @"1.0";
    v106[3] = @"centauri";
    v105[4] = @"analytics_test_mode";
    v74 = [NSNumber numberWithBool:v73];
    v106[4] = v74;
    v105[5] = @"accessory_machine_config";
    productType = selfCopy->_productType;
    v46 = productType;
    if (!productType)
    {
      v46 = +[NSNull null];
    }

    v72 = v46;
    v106[5] = v46;
    v105[6] = @"application-info";
    v103[0] = @"chipset";
    chipset = selfCopy->_chipset;
    v48 = chipset;
    if (!chipset)
    {
      v48 = +[NSNull null];
    }

    v70 = v48;
    v104[0] = v48;
    v103[1] = @"chipset-revision";
    chipsetRevision = selfCopy->_chipsetRevision;
    v50 = chipsetRevision;
    if (!chipsetRevision)
    {
      v50 = [NSNull null:v48];
    }

    v104[1] = v50;
    v103[2] = @"sku";
    wsku = selfCopy->_wsku;
    v52 = wsku;
    if (!wsku)
    {
      v52 = +[NSNull null];
    }

    v104[2] = v52;
    v103[3] = @"builtin";
    v53 = [NSNumber numberWithBool:selfCopy->_builtIn, v70];
    v104[3] = v53;
    v104[4] = v81;
    v103[4] = @"host-reason";
    v103[5] = @"subsystem";
    v104[5] = v77;
    v104[6] = v80;
    v103[6] = @"uptime-without-sleep";
    v103[7] = @"uptime-with-sleep";
    v104[7] = v79;
    v103[8] = @"wall-time";
    v54 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v78 unsignedLongLongValue] % 0x4E94914F0000);
    v104[8] = v54;
    v55 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:9];
    v105[7] = @"crashlogs";
    v106[6] = v55;
    v106[7] = v85;
    v82 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:8];

    if (wsku)
    {
      if (chipsetRevision)
      {
        goto LABEL_36;
      }
    }

    else
    {

      if (chipsetRevision)
      {
        goto LABEL_36;
      }
    }

LABEL_36:
    v26 = v85;
    v56 = v82;
    if (!chipset)
    {
    }

    monotonicTimestampCopy = v79;
    if (!productType)
    {
    }

    v90 = 0;
    v57 = [NSJSONSerialization dataWithJSONObject:v82 options:1 error:&v90];
    v58 = v90;
    v59 = v58;
    reasonCopy = v81;
    if (!v57 || v58)
    {
      v67 = sub_100025204();
      pipelineCopy = v76;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = [objc_opt_class() description];
        v69 = NSStringFromSelector(a2);
        *buf = 138543874;
        v98 = v68;
        v99 = 2114;
        v100 = v69;
        v101 = 2114;
        v102 = v59;
        _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: json serialization failed: %{public}@", buf, 0x20u);
      }

      goto LABEL_48;
    }

    v95 = kOSALogOptionOverrideFilePrefix;
    v96 = @"CentauriFirmwareEvent";
    v60 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v89 = 0;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_1000144B0;
    v87[3] = &unk_10005CAC8;
    v88 = v57;
    v61 = [OSALog createForSubmission:@"305" metadata:0 options:v60 error:&v89 writing:v87];
    v59 = v89;

    v62 = sub_100025204();
    v63 = v62;
    pipelineCopy = v76;
    if (!v61 || v59)
    {
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      v64 = [objc_opt_class() description];
      v65 = NSStringFromSelector(a2);
      *buf = 138543874;
      v98 = v64;
      v99 = 2114;
      v100 = v65;
      v101 = 2114;
      v102 = v59;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: submission failed: %{public}@", buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
LABEL_47:

        v67 = v88;
LABEL_48:

        dCopy = v75;
        timestampCopy = v80;
        realTimestampCopy = v78;
LABEL_49:

        goto LABEL_50;
      }

      v64 = [objc_opt_class() description];
      v65 = NSStringFromSelector(a2);
      filepath = [v61 filepath];
      *buf = 138543874;
      v98 = v64;
      v99 = 2114;
      v100 = v65;
      v101 = 2114;
      v102 = filepath;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: submitted: %{public}@", buf, 0x20u);

      v56 = v82;
    }

    v26 = v85;
    goto LABEL_47;
  }

LABEL_50:
}

- (id)analyticsDataForCrashlog:(id)crashlog core:(id)core
{
  crashlogCopy = crashlog;
  coreCopy = core;
  v7 = objc_alloc_init(NSMutableArray);
  v234 = objc_alloc_init(NSMutableArray);
  v8 = [crashlogCopy objectForKeyedSubscript:@"errors"];

  v231 = crashlogCopy;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v235 = 0;
    v257 = 0;
    goto LABEL_234;
  }

  v19 = [crashlogCopy objectForKeyedSubscript:@"panic"];
  v20 = &airship_ch_interface_close_ptr;
  if (v19)
  {
    v21 = v19;
    objc_opt_class();
    v235 = v21;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    v22 = sub_100025204();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10002AE1C();
    }
  }

  v235 = 0;
LABEL_9:
  v23 = [crashlogCopy objectForKeyedSubscript:@"crashlog-version"];
  if (v23)
  {
    v24 = v23;
    objc_opt_class();
    v229 = v24;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_15;
    }

    v25 = sub_100025204();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10002AED4();
    }
  }

  v229 = 0;
LABEL_15:
  v26 = [crashlogCopy objectForKeyedSubscript:@"exception"];
  if (v26)
  {
    v27 = v26;
    objc_opt_class();
    v228 = v27;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_21;
    }

    v28 = sub_100025204();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10002AF8C();
    }
  }

  v228 = 0;
LABEL_21:
  v29 = [crashlogCopy objectForKeyedSubscript:@"sections"];
  if (!v29)
  {
    null6 = sub_100025204();
    if (os_log_type_enabled(null6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B0EC();
    }

    v225 = 0;
    v226 = 0;
    v227 = 0;
    v232 = 0;
    v233 = 0;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    goto LABEL_231;
  }

  v30 = v29;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    null6 = sub_100025204();
    v238 = v30;
    if (os_log_type_enabled(null6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B044();
    }

    v225 = 0;
    v226 = 0;
    v227 = 0;
    v232 = 0;
    v233 = 0;
    v236 = 0;
    v237 = 0;
LABEL_231:
    v257 = 0;
    goto LABEL_232;
  }

  aSelector = a2;
  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v279 objects:v302 count:16];
  v33 = &airship_ch_interface_close_ptr;
  v34 = &airship_ch_interface_close_ptr;
  v238 = v31;
  if (!v32)
  {
    v236 = 0;
    v237 = 0;
    v232 = 0;
    v233 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
LABEL_255:

    goto LABEL_256;
  }

  v35 = v32;
  v225 = 0;
  v226 = 0;
  v227 = 0;
  v232 = 0;
  v233 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  v243 = *v280;
  do
  {
    v36 = 0;
    v241 = v35;
    do
    {
      if (*v280 != v243)
      {
        objc_enumerationMutation(v31);
      }

      v245 = v36;
      v37 = *(*(&v279 + 1) + 8 * v36);
      v38 = v33[197];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v47 = sub_100025204();
        obj = v47;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = [objc_opt_class() description];
          v49 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v299 = v48;
          v300 = 2114;
          v301 = v49;
          v50 = v47;
          v51 = "%{public}@::%{public}@: section has wrong type";
          goto LABEL_150;
        }

LABEL_41:
        v247 = 0;
        v249 = 0;
        goto LABEL_46;
      }

      v39 = [v37 objectForKeyedSubscript:@"section-name"];
      if (!v39)
      {
        v52 = sub_100025204();
        obj = v52;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v48 = [objc_opt_class() description];
          v49 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v299 = v48;
          v300 = 2114;
          v301 = v49;
          v50 = v52;
          v51 = "%{public}@::%{public}@: section missing name";
LABEL_150:
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v51, buf, 0x16u);

          v35 = v241;
        }

        goto LABEL_41;
      }

      v40 = v39;
      v41 = v20[183];
      objc_opt_class();
      v249 = v40;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v53 = sub_100025204();
        obj = v53;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = [objc_opt_class() description];
          v55 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v299 = v54;
          v300 = 2114;
          v301 = v55;
          v56 = v53;
          v57 = "%{public}@::%{public}@: section name has wrong type";
          goto LABEL_176;
        }

LABEL_45:
        v247 = 0;
        goto LABEL_46;
      }

      v42 = [v37 objectForKeyedSubscript:@"section-signature"];
      if (!v42)
      {
        v58 = sub_100025204();
        obj = v58;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v54 = [objc_opt_class() description];
          v55 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v299 = v54;
          v300 = 2114;
          v301 = v55;
          v56 = v58;
          v57 = "%{public}@::%{public}@: section missing signature";
LABEL_176:
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, v57, buf, 0x16u);

          v35 = v241;
        }

        goto LABEL_45;
      }

      v43 = v42;
      v44 = v20[183];
      objc_opt_class();
      v247 = v43;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v60 = sub_100025204();
        obj = v60;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = [objc_opt_class() description];
          v62 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v299 = v61;
          v300 = 2114;
          v301 = v62;
          _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: section signature has wrong type", buf, 0x16u);

          v35 = v241;
        }

        goto LABEL_46;
      }

      if ([v249 isEqualToString:@"Version Section"] && objc_msgSend(v43, "isEqualToString:", @"Cver"))
      {
        v45 = [v37 objectForKeyedSubscript:@"uuid"];

        if (v45)
        {
          v46 = v20[183];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v236 = v45;
            goto LABEL_162;
          }

          v141 = sub_100025204();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            v168 = [objc_opt_class() description];
            v169 = NSStringFromSelector(aSelector);
            *buf = 138543618;
            v299 = v168;
            v300 = 2114;
            v301 = v169;
            _os_log_error_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: uuid has wrong type", buf, 0x16u);

            v35 = v241;
          }
        }

        v236 = 0;
LABEL_162:
        v142 = [v37 objectForKeyedSubscript:@"version"];

        if (v142)
        {
          v143 = v20[183];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v237 = v142;
            goto LABEL_169;
          }

          v144 = sub_100025204();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            v170 = [objc_opt_class() description];
            v171 = NSStringFromSelector(aSelector);
            *buf = 138543618;
            v299 = v170;
            v300 = 2114;
            v301 = v171;
            _os_log_error_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: version has wrong type", buf, 0x16u);

            v35 = v241;
          }
        }

        v237 = 0;
LABEL_169:
        v145 = [v37 objectForKeyedSubscript:@"slide"];
        v31 = v238;
        obj = v145;
        if (v145)
        {
          v146 = v145;
          v147 = v20[183];
          objc_opt_class();
          v59 = v245;
          if (objc_opt_isKindOfClass())
          {
            v239 = strtoull([v146 UTF8String], 0, 0);
          }

          else
          {
            v148 = sub_100025204();
            if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
            {
              v172 = [objc_opt_class() description];
              v173 = NSStringFromSelector(aSelector);
              *buf = 138543618;
              v299 = v172;
              v300 = 2114;
              v301 = v173;
              _os_log_error_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: slide has wrong type", buf, 0x16u);

              v35 = v241;
            }
          }

          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (![v249 isEqualToString:@"Callstack Section"] || !objc_msgSend(v43, "isEqualToString:", @"Ccst"))
      {
        if ([v249 isEqualToString:@"Task List Section"] && objc_msgSend(v43, "isEqualToString:", @"Crtk"))
        {
          v73 = [v37 objectForKeyedSubscript:@"tasks"];
          if (v73)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v74 = sub_100025204();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                v178 = [objc_opt_class() description];
                v179 = NSStringFromSelector(aSelector);
                *buf = 138543618;
                v299 = v178;
                v300 = 2114;
                v301 = v179;
                _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: tasks has wrong type", buf, 0x16u);
              }

              v73 = 0;
            }
          }

          v273 = 0u;
          v274 = 0u;
          v271 = 0u;
          v272 = 0u;
          obj = v73;
          v75 = [obj countByEnumeratingWithState:&v271 objects:v296 count:16];
          if (!v75)
          {
LABEL_115:

            v31 = v238;
            v35 = v241;
            goto LABEL_46;
          }

          v76 = v75;
          v258 = *v272;
          while (2)
          {
            v77 = 0;
LABEL_78:
            if (*v272 != v258)
            {
              objc_enumerationMutation(obj);
            }

            v78 = *(*(&v271 + 1) + 8 * v77);
            v79 = [v78 objectForKeyedSubscript:@"description"];
            if (v79)
            {
              v80 = v20[183];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v81 = sub_100025204();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  v97 = [objc_opt_class() description];
                  v98 = NSStringFromSelector(aSelector);
                  *buf = 138543618;
                  v299 = v97;
                  v300 = 2114;
                  v301 = v98;
                  _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: task description has wrong type", buf, 0x16u);

                  v20 = &airship_ch_interface_close_ptr;
                }

                v79 = 0;
              }
            }

            v82 = [v78 objectForKeyedSubscript:@"stack"];
            if (v82)
            {
              v83 = v82;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v269 = 0u;
                v270 = 0u;
                v267 = 0u;
                v268 = 0u;
                v84 = v83;
                v85 = [v84 countByEnumeratingWithState:&v267 objects:v295 count:16];
                if (v85)
                {
                  v86 = v85;
                  v87 = v7;
                  v88 = *v268;
                  while (2)
                  {
                    for (i = 0; i != v86; i = i + 1)
                    {
                      if (*v268 != v88)
                      {
                        objc_enumerationMutation(v84);
                      }

                      v90 = *(*(&v267 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v93 = sub_100025204();
                        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                        {
                          v99 = [objc_opt_class() description];
                          v100 = NSStringFromSelector(aSelector);
                          *buf = 138543618;
                          v299 = v99;
                          v300 = 2114;
                          v301 = v100;
                          _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: task stack entry has wrong type", buf, 0x16u);
                        }

                        v7 = v87;
                        v33 = &airship_ch_interface_close_ptr;
                        v34 = &airship_ch_interface_close_ptr;
                        v20 = &airship_ch_interface_close_ptr;
                        goto LABEL_102;
                      }
                    }

                    v86 = [v84 countByEnumeratingWithState:&v267 objects:v295 count:16];
                    if (v86)
                    {
                      continue;
                    }

                    break;
                  }

                  v7 = v87;
                  v33 = &airship_ch_interface_close_ptr;
                  v34 = &airship_ch_interface_close_ptr;
                  v20 = &airship_ch_interface_close_ptr;
                }
              }

              else
              {
                v84 = sub_100025204();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                {
                  v91 = [objc_opt_class() description];
                  v92 = NSStringFromSelector(aSelector);
                  *buf = 138543618;
                  v299 = v91;
                  v300 = 2114;
                  v301 = v92;
                  _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: task stack has wrong type", buf, 0x16u);

                  v20 = &airship_ch_interface_close_ptr;
                }

LABEL_102:

                v84 = 0;
              }
            }

            else
            {
              v84 = 0;
            }

            v293[0] = @"description";
            v94 = v79;
            if (!v79)
            {
              null = [v34[201] null];
              v94 = null;
            }

            v294[0] = v94;
            v293[1] = @"stack";
            v95 = v84;
            if (!v84)
            {
              null2 = [v34[201] null];
              v95 = null2;
            }

            v294[1] = v95;
            v96 = [v33[197] dictionaryWithObjects:v294 forKeys:v293 count:2];
            [v7 addObject:v96];

            if (v84)
            {
              if (v79)
              {
                goto LABEL_110;
              }

LABEL_113:
            }

            else
            {

              if (!v79)
              {
                goto LABEL_113;
              }
            }

LABEL_110:

            if (++v77 == v76)
            {
              v101 = [obj countByEnumeratingWithState:&v271 objects:v296 count:16];
              v76 = v101;
              if (!v101)
              {
                goto LABEL_115;
              }

              continue;
            }

            goto LABEL_78;
          }
        }

        if ([v249 isEqualToString:@"Mailbox Section"] && objc_msgSend(v43, "isEqualToString:", @"Cmbx"))
        {
          v102 = [v37 objectForKeyedSubscript:@"registers"];
          if (v102)
          {
            v103 = v33[197];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v104 = sub_100025204();
              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                v180 = [objc_opt_class() description];
                v181 = NSStringFromSelector(aSelector);
                *buf = 138543618;
                v299 = v180;
                v300 = 2114;
                v301 = v181;
                _os_log_error_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: mailbox registers has wrong type", buf, 0x16u);

                v33 = &airship_ch_interface_close_ptr;
              }

              v102 = 0;
            }
          }

          v265 = 0u;
          v266 = 0u;
          v263 = 0u;
          v264 = 0u;
          v105 = v102;
          v106 = [v105 countByEnumeratingWithState:&v263 objects:v292 count:16];
          obj = v105;
          v31 = v238;
          if (!v106)
          {
            goto LABEL_186;
          }

          v107 = v106;
          v108 = *v264;
LABEL_125:
          v109 = 0;
          while (1)
          {
            if (*v264 != v108)
            {
              objc_enumerationMutation(v105);
            }

            v110 = *(*(&v263 + 1) + 8 * v109);
            v111 = v20[183];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v112 = [v105 objectForKeyedSubscript:v110];
            v113 = v20[183];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              v150 = sub_100025204();
              if (!os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_185;
              }

              v151 = [objc_opt_class() description];
              v152 = NSStringFromSelector(aSelector);
              *buf = 138543618;
              v299 = v151;
              v300 = 2114;
              v301 = v152;
              v153 = v150;
              v154 = "%{public}@::%{public}@: mailbox register value has wrong type";
              goto LABEL_216;
            }

            v109 = v109 + 1;
            v31 = v238;
            if (v107 == v109)
            {
              v107 = [v105 countByEnumeratingWithState:&v263 objects:v292 count:16];
              if (v107)
              {
                goto LABEL_125;
              }

              obj = v105;
              v33 = &airship_ch_interface_close_ptr;
              v34 = &airship_ch_interface_close_ptr;
LABEL_186:

              v124 = [v37 objectForKeyedSubscript:@"mailbox-error"];
              if (v124)
              {
                v155 = v20[183];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v156 = sub_100025204();
                  if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
                  {
                    v182 = [objc_opt_class() description];
                    v183 = NSStringFromSelector(aSelector);
                    *buf = 138543618;
                    v299 = v182;
                    v300 = 2114;
                    v301 = v183;
                    _os_log_error_impl(&_mh_execute_header, v156, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: mailbox error has wrong type", buf, 0x16u);

                    v33 = &airship_ch_interface_close_ptr;
                  }

                  v124 = 0;
                }
              }

              v125 = [v37 objectForKeyedSubscript:@"route-number"];
              if (v125)
              {
                v157 = v20[183];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v158 = sub_100025204();
                  if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                  {
                    v184 = [objc_opt_class() description];
                    v185 = NSStringFromSelector(aSelector);
                    *buf = 138543618;
                    v299 = v184;
                    v300 = 2114;
                    v301 = v185;
                    _os_log_error_impl(&_mh_execute_header, v158, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: mailbox route number has wrong type", buf, 0x16u);

                    v33 = &airship_ch_interface_close_ptr;
                  }

                  v125 = 0;
                }
              }

              v59 = v245;
              v290[0] = @"registers";
              v159 = obj;
              if (!obj)
              {
                null3 = [v34[201] null];
                v159 = null3;
              }

              v291[0] = v159;
              v290[1] = @"mailbox-error";
              v160 = v124;
              if (!v124)
              {
                null4 = [v34[201] null];
                v160 = null4;
              }

              v291[1] = v160;
              v290[2] = @"route-number";
              v161 = v125;
              if (!v125)
              {
                null5 = [v34[201] null];
                v161 = null5;
              }

              v291[2] = v161;
              v162 = [v33[197] dictionaryWithObjects:v291 forKeys:v290 count:{3, null3}];
              [v234 addObject:v162];

              if (v125)
              {
                if (v124)
                {
LABEL_204:
                  if (!obj)
                  {
                  }

                  goto LABEL_206;
                }
              }

              else
              {

                if (v124)
                {
                  goto LABEL_204;
                }
              }

              goto LABEL_204;
            }
          }

          v150 = sub_100025204();
          if (!os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
          {
LABEL_185:
            v34 = &airship_ch_interface_close_ptr;

            obj = 0;
            v31 = v238;
            v33 = &airship_ch_interface_close_ptr;
            goto LABEL_186;
          }

          v151 = [objc_opt_class() description];
          v152 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v299 = v151;
          v300 = 2114;
          v301 = v152;
          v153 = v150;
          v154 = "%{public}@::%{public}@: mailbox register key has wrong type";
LABEL_216:
          _os_log_error_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, v154, buf, 0x16u);

          goto LABEL_185;
        }

        if ([v249 isEqualToString:@"Register Frame Section"] && objc_msgSend(v43, "isEqualToString:", @"CrgM"))
        {
          v115 = [v37 objectForKeyedSubscript:@"registers"];
          obj = v115;
          if (v115)
          {
            v116 = v115;
            v117 = v20[183];
            objc_opt_class();
            v59 = v245;
            if (objc_opt_isKindOfClass())
            {
              v118 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"pc=(0x[0-9a-fA-F]+)", 0, 0);
              v119 = [v118 firstMatchInString:v116 options:0 range:{0, objc_msgSend(v116, "length")}];
              [v119 rangeAtIndex:1];
              if (v120)
              {
                v121 = [v119 rangeAtIndex:1];
                v123 = [v116 substringWithRange:{v121, v122}];

                v226 = v123;
                v33 = &airship_ch_interface_close_ptr;
              }

              v124 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"lr=(0x[0-9a-fA-F]+)", 0, 0);

              v125 = -[NSObject firstMatchInString:options:range:](v124, "firstMatchInString:options:range:", v116, 0, 0, [v116 length]);

              [v125 rangeAtIndex:1];
              if (v126)
              {
                v127 = [v125 rangeAtIndex:1];
                v129 = [v116 substringWithRange:{v127, v128}];

                v227 = v129;
              }

LABEL_206:

LABEL_207:
              v35 = v241;
LABEL_47:

              goto LABEL_48;
            }

            v124 = sub_100025204();
            if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_207;
            }

            v133 = [objc_opt_class() description];
            v163 = NSStringFromSelector(aSelector);
            *buf = 138543618;
            v299 = v133;
            v300 = 2114;
            v301 = v163;
            v164 = v124;
            v165 = "%{public}@::%{public}@: registers has wrong type";
LABEL_214:
            _os_log_error_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, v165, buf, 0x16u);

LABEL_147:
            v33 = &airship_ch_interface_close_ptr;
            goto LABEL_148;
          }

          goto LABEL_46;
        }

        if ([v249 isEqualToString:@"String Section"] && objc_msgSend(v43, "isEqualToString:", @"Cstr"))
        {
          v130 = [v37 objectForKeyedSubscript:@"contents"];
          obj = v130;
          if (v130)
          {
            v131 = v130;
            v132 = v20[183];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v124 = sub_100025204();
              v59 = v245;
              if (!os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_207;
              }

              v133 = [objc_opt_class() description];
              v163 = NSStringFromSelector(aSelector);
              *buf = 138543618;
              v299 = v133;
              v300 = 2114;
              v301 = v163;
              v164 = v124;
              v165 = "%{public}@::%{public}@: contents has wrong type";
              goto LABEL_214;
            }

            v124 = [NSRegularExpression regularExpressionWithPattern:@"Boot Args:\\s*(\\S+.*)" options:0 error:0];
            v133 = -[NSObject firstMatchInString:options:range:](v124, "firstMatchInString:options:range:", v131, 0, 0, [v131 length]);
            [v133 rangeAtIndex:1];
            v59 = v245;
            if (v134)
            {
              v135 = [v133 rangeAtIndex:1];
              v137 = [v131 substringWithRange:{v135, v136}];

              v225 = v137;
              goto LABEL_147;
            }

LABEL_148:

            goto LABEL_207;
          }

LABEL_46:
          v59 = v245;
          goto LABEL_47;
        }

        goto LABEL_178;
      }

      v63 = [v37 objectForKeyedSubscript:@"stack"];

      if (v63)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v64 = sub_100025204();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v174 = [objc_opt_class() description];
            v175 = NSStringFromSelector(aSelector);
            *buf = 138543618;
            v299 = v174;
            v300 = 2114;
            v301 = v175;
            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: callstack has wrong type", buf, 0x16u);

            v35 = v241;
          }

          v63 = 0;
        }
      }

      v277 = 0u;
      v278 = 0u;
      v275 = 0u;
      v276 = 0u;
      v65 = v63;
      v66 = [v65 countByEnumeratingWithState:&v275 objects:v297 count:16];
      v67 = v65;
      if (v66)
      {
        v68 = v66;
        v69 = *v276;
        while (2)
        {
          for (j = 0; j != v68; j = j + 1)
          {
            if (*v276 != v69)
            {
              objc_enumerationMutation(v65);
            }

            v71 = *(*(&v275 + 1) + 8 * j);
            v72 = v20[183];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v138 = sub_100025204();
              v35 = v241;
              if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
              {
                v166 = [objc_opt_class() description];
                v167 = NSStringFromSelector(aSelector);
                *buf = 138543618;
                v299 = v166;
                v300 = 2114;
                v301 = v167;
                _os_log_error_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: callstack entry has wrong type", buf, 0x16u);

                v35 = v241;
              }

              v67 = 0;
              goto LABEL_154;
            }

            v35 = v241;
          }

          v68 = [v65 countByEnumeratingWithState:&v275 objects:v297 count:16];
          if (v68)
          {
            continue;
          }

          break;
        }

        v67 = v65;
LABEL_154:
        v33 = &airship_ch_interface_close_ptr;
        v34 = &airship_ch_interface_close_ptr;
      }

      v233 = v67;

      v139 = [v37 objectForKeyedSubscript:@"stack-description"];

      if (!v139)
      {
        v232 = 0;
        v31 = v238;
LABEL_178:
        v59 = v245;
        goto LABEL_48;
      }

      v140 = v20[183];
      objc_opt_class();
      v31 = v238;
      v59 = v245;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        obj = v139;
        v149 = sub_100025204();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          v176 = [objc_opt_class() description];
          v177 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v299 = v176;
          v300 = 2114;
          v301 = v177;
          _os_log_error_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: callstack description has wrong type", buf, 0x16u);

          v35 = v241;
        }

        v232 = 0;
        goto LABEL_47;
      }

      v232 = v139;
LABEL_48:

      v36 = v59 + 1;
    }

    while (v36 != v35);
    v186 = [v31 countByEnumeratingWithState:&v279 objects:v302 count:16];
    v35 = v186;
  }

  while (v186);

  if (v239)
  {
    v188 = v226;
    v187 = v227;
    if (v226)
    {
      v189 = [objc_opt_class() unslideAddress:v226 slide:v239];

      v188 = v189;
    }

    if (v227)
    {
      v190 = [objc_opt_class() unslideAddress:v227 slide:v239];

      v187 = v190;
    }

    if (v233)
    {
      v191 = [objc_opt_class() unslideCallstack:v233 slide:v239];

      v233 = v191;
    }

    else
    {
      v233 = 0;
    }

    v194 = v235;
    v226 = v188;
    v227 = v187;
    if (!v7)
    {
      v34 = &airship_ch_interface_close_ptr;
      goto LABEL_257;
    }

    v195 = objc_alloc_init(NSMutableArray);
    v259 = 0u;
    v260 = 0u;
    v261 = 0u;
    v262 = 0u;
    v196 = v7;
    v197 = [v196 countByEnumeratingWithState:&v259 objects:v289 count:16];
    if (v197)
    {
      v198 = v197;
      v199 = *v260;
      do
      {
        for (k = 0; k != v198; k = k + 1)
        {
          if (*v260 != v199)
          {
            objc_enumerationMutation(v196);
          }

          v201 = *(*(&v259 + 1) + 8 * k);
          v202 = [v201 objectForKeyedSubscript:@"stack"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v203 = [objc_opt_class() unslideCallstack:v202 slide:v239];
          }

          else
          {
            v203 = 0;
          }

          v287[0] = @"description";
          v204 = [v201 objectForKeyedSubscript:?];
          v288[0] = v204;
          v287[1] = @"stack";
          v205 = v203;
          if (!v203)
          {
            v7 = +[NSNull null];
            v205 = v7;
          }

          v288[1] = v205;
          v206 = [v33[197] dictionaryWithObjects:v288 forKeys:v287 count:2];
          [v195 addObject:v206];

          if (!v203)
          {
          }

          v33 = &airship_ch_interface_close_ptr;
        }

        v198 = [v196 countByEnumeratingWithState:&v259 objects:v289 count:16];
      }

      while (v198);
    }

    v31 = v195;
    v7 = v31;
    v34 = &airship_ch_interface_close_ptr;
    goto LABEL_255;
  }

LABEL_256:
  v194 = v235;
LABEL_257:
  v285[0] = @"panic";
  null6 = v194;
  if (!v194)
  {
    null6 = [v34[201] null];
  }

  v286[0] = null6;
  v285[1] = @"crashlog-version";
  null7 = v229;
  if (!v229)
  {
    null7 = [v34[201] null];
  }

  v252 = null7;
  v286[1] = null7;
  v285[2] = @"exception";
  v208 = v228;
  if (!v228)
  {
    v208 = +[NSNull null];
  }

  v250 = v208;
  v286[2] = v208;
  v285[3] = @"uuid";
  v209 = v236;
  if (!v236)
  {
    v209 = +[NSNull null];
  }

  v248 = v209;
  v286[3] = v209;
  v285[4] = @"version";
  v210 = v237;
  if (!v237)
  {
    v210 = +[NSNull null];
  }

  v286[4] = v210;
  v285[5] = @"call-stack";
  v283[0] = @"stack";
  v211 = v233;
  if (!v233)
  {
    v211 = +[NSNull null];
  }

  v246 = v211;
  v284[0] = v211;
  v283[1] = @"stack-description";
  v212 = v232;
  if (!v232)
  {
    v212 = +[NSNull null];
  }

  v244 = v212;
  v284[1] = v212;
  v254 = [v33[197] dictionaryWithObjects:v284 forKeys:v283 count:2];
  v286[5] = v254;
  v285[6] = @"tasks";
  v213 = [v7 copy];
  v214 = v213;
  if (!v213)
  {
    v213 = +[NSNull null];
  }

  obja = v7;
  v242 = v213;
  v286[6] = v213;
  v285[7] = @"mailboxes";
  v215 = [v234 copy];
  v216 = v215;
  if (!v215)
  {
    v216 = +[NSNull null];
  }

  v286[7] = v216;
  v285[8] = @"program-counter";
  v217 = v226;
  if (!v226)
  {
    v217 = +[NSNull null];
  }

  v286[8] = v217;
  v285[9] = @"link-register";
  v218 = v227;
  if (!v227)
  {
    v218 = +[NSNull null];
  }

  v286[9] = v218;
  v285[10] = @"boot-args";
  v219 = v225;
  if (!v225)
  {
    v219 = +[NSNull null];
  }

  v286[10] = v219;
  v285[11] = @"application-info";
  v220 = [v231 objectForKeyedSubscript:@"__customSectionData"];
  v221 = v220;
  if (!v220)
  {
    v221 = +[NSNull null];
  }

  v286[11] = v221;
  v257 = [NSDictionary dictionaryWithObjects:v286 forKeys:v285 count:12];
  if (!v220)
  {
  }

  if (!v225)
  {
  }

  if (!v227)
  {
  }

  if (!v226)
  {
  }

  if (!v215)
  {
  }

  v7 = obja;
  if (!v214)
  {
  }

  if (!v232)
  {
  }

  if (!v233)
  {
  }

  if (!v237)
  {
  }

  v15 = v236;
  if (!v236)
  {
  }

  if (!v228)
  {
  }

  if (!v229)
  {
  }

  if (v235)
  {
    v17 = v228;
    v18 = v229;
    v14 = v237;
    v16 = v238;
    v9 = v225;
    v11 = v226;
    v10 = v227;
    goto LABEL_233;
  }

  v235 = 0;
LABEL_232:

  v17 = v228;
  v18 = v229;
  v14 = v237;
  v16 = v238;
  v9 = v225;
  v11 = v226;
  v10 = v227;
  v15 = v236;
LABEL_233:
  v12 = v232;
  v13 = v233;
LABEL_234:

  return v257;
}

+ (id)unslideAddress:(id)address slide:(unint64_t)slide
{
  addressCopy = address;
  v7 = strtoull([address UTF8String], 0, 0);
  if (v7 == -1)
  {
    v9 = sub_100025204();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002B23C();
    }

    goto LABEL_8;
  }

  if (v7 - 1879048192 >= 0xFFFFFFFF90000001)
  {
    v8 = v7 >= slide;
    v7 -= slide;
    if (!v8)
    {
      v9 = sub_100025204();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002B194();
      }

LABEL_8:

      v7 = 0;
    }
  }

  v10 = [NSString stringWithFormat:@"0x%016llx", v7];

  return v10;
}

+ (id)unslideCallstack:(id)callstack slide:(unint64_t)slide
{
  callstackCopy = callstack;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(callstackCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = callstackCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [self unslideAddress:*(*(&v16 + 1) + 8 * i) slide:{slide, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

- (int64_t)getLastUserNotificationTimestamp
{
  if (!self->_lastUserNotificationTimestampKnown)
  {
    v4 = NSTemporaryDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"lastCrashNotificationTimestamp.bin"];

    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:v5];

    if (v7)
    {
      v17 = 0;
      v8 = [NSData dataWithContentsOfFile:v5 options:0 error:&v17];
      v9 = v17;
      if (v8)
      {
        if ([v8 length]== 8)
        {
          self->_lastUserNotificationTimestamp = *[v8 bytes];
          self->_lastUserNotificationTimestampKnown = 1;
          goto LABEL_6;
        }

        v12 = sub_100025204();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = [objc_opt_class() description];
          v15 = NSStringFromSelector(a2);
          v16 = [v8 length];
          *buf = 138544130;
          v19 = v14;
          v20 = 2114;
          v21 = v15;
          v22 = 2048;
          v23 = v16;
          v24 = 2048;
          v25 = 8;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unexpected file size %lu, expected %zu", buf, 0x2Au);
        }
      }

      else
      {
        v8 = sub_100025204();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        v12 = [objc_opt_class() description];
        v13 = NSStringFromSelector(a2);
        *buf = 138543874;
        v19 = v12;
        v20 = 2114;
        v21 = v13;
        v22 = 2112;
        v23 = v9;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to read file: %@", buf, 0x20u);
      }

      goto LABEL_6;
    }

    v9 = sub_100025204();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no prior user notifications since boot", buf, 0x16u);

LABEL_6:
LABEL_7:
  }

  return self->_lastUserNotificationTimestamp;
}

@end