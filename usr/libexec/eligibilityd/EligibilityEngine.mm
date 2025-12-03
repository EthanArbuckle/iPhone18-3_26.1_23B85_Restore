@interface EligibilityEngine
+ (id)sharedInstance;
- (BOOL)_onQueue_saveDomainAnswerOutputsWithError:(id *)error;
- (BOOL)_onQueue_saveDomainsWithError:(id *)error;
- (BOOL)_onQueue_serializeOverrideDataToDiskWithError:(id *)error;
- (BOOL)_sendNotification:(id)notification;
- (BOOL)_serializeObject:(id)object toURL:(id)l withError:(id *)error;
- (BOOL)dumpToDirectory:(id)directory withError:(id *)error;
- (BOOL)forceDomainAnswer:(unint64_t)answer answer:(unint64_t)a4 context:(id)context withError:(id *)error;
- (BOOL)forceDomainSetAnswers:(unint64_t)answers answer:(unint64_t)answer context:(id)context withError:(id *)error;
- (BOOL)resetAllDomainsWithError:(id *)error;
- (BOOL)resetDomain:(unint64_t)domain withError:(id *)error;
- (BOOL)setInput:(unint64_t)input to:(id)to status:(unint64_t)status fromProcess:(id)process withError:(id *)error;
- (EligibilityEngine)init;
- (id)_decodeObjectOfClasses:(id)classes atURL:(id)l withError:(id *)error;
- (id)_loadCurrentEligibilityOnDisk;
- (id)_loadOverridesWithError:(id *)error;
- (id)_onQueue_finalEligibilityDictionaryForDomain:(id)domain;
- (id)_onQueue_urlToDomainData;
- (id)internalStateWithError:(id *)error;
- (id)stateDumpWithError:(id *)error;
- (void)_onQueue_handleRecompute:(id)recompute;
- (void)_onQueue_notifySADSupportFramework;
- (void)_onQueue_recomputeAllDomainAnswers;
- (void)_onQueue_recomputeAnswerForDomain:(id)domain;
- (void)_onQueue_sendNotifications;
- (void)asyncUpdateAndRecomputeAllAnswers;
- (void)recomputeAllDomainAnswers;
- (void)scheduleDailyRecompute;
@end

@implementation EligibilityEngine

- (void)scheduleDailyRecompute
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  internalQueue = [(EligibilityEngine *)self internalQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000294A4;
  v5[3] = &unk_100046A68;
  v5[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.eligibility.recompute" usingQueue:internalQueue launchHandler:v5];
}

- (void)_onQueue_handleRecompute:(id)recompute
{
  recomputeCopy = recompute;
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (qword_10005D560 != -1)
  {
    dispatch_once(&qword_10005D560, &stru_100046AA8);
  }

  v6 = qword_10005D558;
  if (os_signpost_enabled(qword_10005D558))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.DailyRecompute", "", buf, 2u);
  }

  identifier = [recomputeCopy identifier];
  *buf = 0;
  v21 = buf;
  v22 = 0x2020000000;
  v23 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100029898;
  v17[3] = &unk_100046A18;
  v8 = identifier;
  v18 = v8;
  v19 = buf;
  [recomputeCopy setExpirationHandler:v17];
  v9 = sub_10001F638();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 136315138;
    v25 = "[EligibilityEngine _onQueue_handleRecompute:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Refresh MobileAsset parameters", v24, 0xCu);
  }

  v10 = +[MobileAssetManager sharedInstance];
  [v10 asyncRefetchMobileAsset];

  if (v21[24])
  {
    goto LABEL_12;
  }

  v11 = sub_10001F638();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 136315394;
    v25 = "[EligibilityEngine _onQueue_handleRecompute:]";
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Recomputing eligiblity for %@", v24, 0x16u);
  }

  [(EligibilityEngine *)self _onQueue_recomputeAllDomainAnswers];
  if (v21[24] & 1) != 0 || ([(EligibilityEngine *)self _sendNotification:@"com.apple.os-eligibility-domain.input-needed"], (v21[24]))
  {
LABEL_12:
    v16 = 0;
    v12 = [recomputeCopy setTaskExpiredWithRetryAfter:&v16 error:0.0];
    v13 = v16;
    if ((v12 & 1) == 0)
    {
      v14 = sub_10001F638();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315394;
        v25 = "[EligibilityEngine _onQueue_handleRecompute:]";
        v26 = 2112;
        v27 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Failed to expire task with error: %@", v24, 0x16u);
      }

      [recomputeCopy setTaskCompleted];
    }
  }

  else
  {
    if (qword_10005D560 != -1)
    {
      dispatch_once(&qword_10005D560, &stru_100046AA8);
    }

    v15 = qword_10005D558;
    if (os_signpost_enabled(qword_10005D558))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.DailyRecompute", "", v24, 2u);
    }

    [recomputeCopy setTaskCompleted];
    v13 = 0;
  }

  _Block_object_dispose(buf, 8);
}

- (void)asyncUpdateAndRecomputeAllAnswers
{
  internalQueue = [(EligibilityEngine *)self internalQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029A34;
  v4[3] = &unk_1000469A0;
  v4[4] = self;
  sub_100025F54(internalQueue, v4);
}

- (BOOL)dumpToDirectory:(id)directory withError:(id *)error
{
  v6 = [directory URLByAppendingPathComponent:@"state.plist" isDirectory:0];
  v17 = 0;
  v7 = [(EligibilityEngine *)self stateDumpWithError:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v16 = v8;
    v10 = [v7 writeToURL:v6 error:&v16];
    v11 = v16;

    if (v10)
    {
      v12 = 1;
      goto LABEL_13;
    }

    v13 = sub_10001F638();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[EligibilityEngine dumpToDirectory:withError:]";
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Failed to save state dump to disk: %@", buf, 0x16u);
    }

    v9 = v11;
  }

  else
  {
    v13 = sub_10001F638();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[EligibilityEngine dumpToDirectory:withError:]";
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Failed to generate state dump: %@", buf, 0x16u);
    }
  }

  if (error)
  {
    v14 = v9;
    v12 = 0;
    *error = v9;
  }

  else
  {
    v12 = 0;
  }

  v11 = v9;
LABEL_13:

  return v12;
}

- (id)stateDumpWithError:(id *)error
{
  v4 = objc_opt_new();
  internalQueue = [(EligibilityEngine *)self internalQueue];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100029CFC;
  v12 = &unk_1000469C8;
  v13 = v4;
  selfCopy = self;
  v6 = v4;
  dispatch_sync(internalQueue, &v9);

  v7 = [v6 copy];

  return v7;
}

- (id)internalStateWithError:(id *)error
{
  v4 = objc_opt_new();
  internalQueue = [(EligibilityEngine *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A114;
  block[3] = &unk_1000469A0;
  v10 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, block);

  v7 = [v6 copy];

  return v7;
}

- (BOOL)forceDomainSetAnswers:(unint64_t)answers answer:(unint64_t)answer context:(id)context withError:(id *)error
{
  contextCopy = context;
  v11 = +[GlobalConfiguration sharedInstance];
  supportsForcedAnswers = [v11 supportsForcedAnswers];

  if (supportsForcedAnswers)
  {
    if (contextCopy)
    {
      type = xpc_get_type(contextCopy);
      if (type != &_xpc_type_dictionary)
      {
        v14 = type;
        v15 = sub_10001F638();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[EligibilityEngine forceDomainSetAnswers:answer:context:withError:]";
          *&buf[12] = 2080;
          *&buf[14] = xpc_type_get_name(v14);
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Expected context to be a dictionary but instead was a %s", buf, 0x16u);
        }

        v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        goto LABEL_10;
      }

      v19 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v19 = 0;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    internalQueue = [(EligibilityEngine *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002A4B4;
    block[3] = &unk_100046A40;
    answersCopy = answers;
    answerCopy = answer;
    block[4] = self;
    v24 = v19;
    v25 = buf;
    v21 = v19;
    dispatch_sync(internalQueue, block);

    v18 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);

    v16 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v17 = sub_10001F638();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[EligibilityEngine forceDomainSetAnswers:answer:context:withError:]";
    *&buf[12] = 2048;
    *&buf[14] = answers;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Attempting to force domain set %llu on a device that doesn't support forcing an answer", buf, 0x16u);
  }

  v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
LABEL_10:
  v18 = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if ((v18 & 1) == 0)
  {
    v16 = v16;
    *error = v16;
  }

LABEL_17:

  return v18 & 1;
}

- (BOOL)forceDomainAnswer:(unint64_t)answer answer:(unint64_t)a4 context:(id)context withError:(id *)error
{
  contextCopy = context;
  if (answer - 1 >= 0x85)
  {
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    goto LABEL_12;
  }

  v11 = off_100046010[answer - 1];
  v12 = +[GlobalConfiguration sharedInstance];
  supportsForcedAnswers = [v12 supportsForcedAnswers];

  if ((supportsForcedAnswers & 1) == 0)
  {
    v18 = sub_10001F638();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[EligibilityEngine forceDomainAnswer:answer:context:withError:]";
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Attempting to force the answer of domain %s on a device that doesn't support forcing an answer", buf, 0x16u);
    }

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
LABEL_12:
    v19 = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (contextCopy)
  {
    type = xpc_get_type(contextCopy);
    if (type != &_xpc_type_dictionary)
    {
      v15 = type;
      v16 = sub_10001F638();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[EligibilityEngine forceDomainAnswer:answer:context:withError:]";
        *&buf[12] = 2080;
        *&buf[14] = xpc_type_get_name(v15);
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Expected context to be a dictionary but instead was a %s", buf, 0x16u);
      }

      v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      goto LABEL_12;
    }

    v21 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v21 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v30 = 0;
  internalQueue = [(EligibilityEngine *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AA34;
  block[3] = &unk_100046A40;
  answerCopy = answer;
  v28 = a4;
  block[4] = self;
  v25 = v21;
  v26 = buf;
  v23 = v21;
  dispatch_sync(internalQueue, block);

  v19 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  v17 = 0;
  if (!error)
  {
    goto LABEL_15;
  }

LABEL_13:
  if ((v19 & 1) == 0)
  {
    v17 = v17;
    *error = v17;
  }

LABEL_15:

  return v19 & 1;
}

- (BOOL)resetAllDomainsWithError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = +[GlobalConfiguration sharedInstance];
  supportsForcedAnswers = [v5 supportsForcedAnswers];

  if (supportsForcedAnswers)
  {
    internalQueue = [(EligibilityEngine *)self internalQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002AC6C;
    v12[3] = &unk_100046A18;
    v12[4] = self;
    v12[5] = &v13;
    dispatch_sync(internalQueue, v12);

    v8 = 0;
  }

  else
  {
    v9 = sub_10001F638();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[EligibilityEngine resetAllDomainsWithError:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Attempting to reset all domains on a device that doesn't support forcing an answer", buf, 0xCu);
    }

    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  }

  v10 = *(v14 + 24);
  if (error && (v14[3] & 1) == 0)
  {
    v8 = v8;
    *error = v8;
    v10 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  return v10 & 1;
}

- (BOOL)resetDomain:(unint64_t)domain withError:(id *)error
{
  if (domain - 1 >= 0x85)
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    goto LABEL_9;
  }

  v7 = off_100046010[domain - 1];
  v8 = +[GlobalConfiguration sharedInstance];
  supportsForcedAnswers = [v8 supportsForcedAnswers];

  if ((supportsForcedAnswers & 1) == 0)
  {
    v13 = sub_10001F638();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[EligibilityEngine resetDomain:withError:]";
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Attempting to reset domain %s on a device that doesn't support forcing an answer", buf, 0x16u);
    }

    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
LABEL_9:
    v11 = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v17 = 0;
  internalQueue = [(EligibilityEngine *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AF14;
  block[3] = &unk_1000469F0;
  block[5] = buf;
  block[6] = domain;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  v11 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  v12 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if ((v11 & 1) == 0)
  {
    v12 = v12;
    *error = v12;
  }

LABEL_12:

  return v11 & 1;
}

- (BOOL)setInput:(unint64_t)input to:(id)to status:(unint64_t)status fromProcess:(id)process withError:(id *)error
{
  toCopy = to;
  processCopy = process;
  if (input > 13)
  {
    if (input > 15)
    {
      if (input != 16)
      {
        if (input == 17)
        {
          v14 = [[ShiptoLocationInput alloc] initWithShiptoLocation:toCopy status:status process:processCopy];
          if (!v14)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }

        goto LABEL_31;
      }

      v15 = PreciseLocationInput;
    }

    else
    {
      if (input != 14)
      {
        v14 = [[BirthdateInput alloc] initWithDate:toCopy status:status process:processCopy];
        if (!v14)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

      v15 = InitialSetupLocationInput;
    }

    v14 = [[v15 alloc] initWithLocations:toCopy status:status process:processCopy];
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_23:
    v16 = sub_10001F638();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 136315138;
    v36 = "[EligibilityEngine setInput:to:status:fromProcess:withError:]";
    v17 = "%s: Failed to initalize input type";
    v18 = v16;
    v19 = 12;
    goto LABEL_37;
  }

  if (input > 3)
  {
    if (input != 4)
    {
      if (input == 9)
      {
        v14 = [[GreymatterQueueInput alloc] initOnQueue:toCopy status:status process:processCopy];
        if (!v14)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

LABEL_31:
      v16 = sub_10001F638();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *buf = 136315394;
      v36 = "[EligibilityEngine setInput:to:status:fromProcess:withError:]";
      v37 = 2048;
      inputCopy = input;
      v17 = "%s: Unsupported eligibility input type %llu";
      v18 = v16;
      v19 = 22;
LABEL_37:
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_32:

      v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      if (error)
      {
        v26 = v26;
        v27 = 0;
        *error = v26;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_35;
    }

    v14 = [[DeviceLocaleInput alloc] initWithDeviceLocale:toCopy status:status process:processCopy];
    if (v14)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (input == 1)
  {
    v14 = [[LocatedCountryInput alloc] initWithCountryCodes:toCopy status:status process:processCopy];
    if (!v14)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (input != 2)
  {
    goto LABEL_31;
  }

  v14 = [[CountryBillingInput alloc] initWithBillingCountry:toCopy status:status process:processCopy];
  if (!v14)
  {
    goto LABEL_23;
  }

LABEL_27:
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_10002B334;
  v32 = &unk_1000469C8;
  v20 = v14;
  v33 = v20;
  selfCopy = self;
  v21 = objc_retainBlock(&v29);
  v22 = [GlobalConfiguration sharedInstance:v29];
  testMode = [v22 testMode];

  internalQueue = [(EligibilityEngine *)self internalQueue];
  v25 = internalQueue;
  if (testMode)
  {
    dispatch_sync(internalQueue, v21);
  }

  else
  {
    sub_100025F54(internalQueue, v21);
  }

  v26 = 0;
  v27 = 1;
LABEL_35:

  return v27;
}

- (void)_onQueue_recomputeAllDomainAnswers
{
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4 = +[MobileAssetManager sharedInstance];
  domains = [v4 domains];

  if (qword_10005D560 != -1)
  {
    dispatch_once(&qword_10005D560, &stru_100046AA8);
  }

  v6 = qword_10005D558;
  if (os_signpost_enabled(qword_10005D558))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.RecomputeAllDomains", "", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = domains;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(EligibilityEngine *)self _onQueue_recomputeAnswerForDomain:*(*(&v17 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  if (qword_10005D560 != -1)
  {
    dispatch_once(&qword_10005D560, &stru_100046AA8);
  }

  v12 = qword_10005D558;
  if (os_signpost_enabled(qword_10005D558))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.RecomputeAllDomains", "", buf, 2u);
  }

  v16 = 0;
  v13 = [(EligibilityEngine *)self _onQueue_saveDomainsWithError:&v16];
  v14 = v16;
  if (v13)
  {
    [(EligibilityEngine *)self _onQueue_sendNotifications];
  }

  else
  {
    v15 = sub_10001F638();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[EligibilityEngine _onQueue_recomputeAllDomainAnswers]";
      v23 = 2112;
      v24 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Failed to save domains to disk: %@", buf, 0x16u);
    }
  }
}

- (void)_onQueue_recomputeAnswerForDomain:(id)domain
{
  domainCopy = domain;
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v5 = [(EligibilityEngine *)self _onQueue_finalEligibilityDictionaryForDomain:domainCopy];
  domainToAnswer = [(EligibilityEngine *)self domainToAnswer];
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [domainCopy domain]);
  v8 = [domainToAnswer objectForKeyedSubscript:v7];

  if (([v5 isEqualToDictionary:v8] & 1) == 0)
  {
    notificationsToSend = [(EligibilityEngine *)self notificationsToSend];
    domainChangeNotificationName = [domainCopy domainChangeNotificationName];
    [notificationsToSend addObject:domainChangeNotificationName];

    domainToAnswer2 = [(EligibilityEngine *)self domainToAnswer];
    v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [domainCopy domain]);
    [domainToAnswer2 setObject:v5 forKeyedSubscript:v12];
  }
}

- (void)recomputeAllDomainAnswers
{
  internalQueue = [(EligibilityEngine *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B8E8;
  block[3] = &unk_1000469A0;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_onQueue_sendNotifications
{
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  notificationsToSend = [(EligibilityEngine *)self notificationsToSend];
  if ([notificationsToSend count])
  {
    [notificationsToSend addObject:@"com.apple.os-eligibility-domain.change"];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [notificationsToSend copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([(EligibilityEngine *)self _sendNotification:v10])
        {
          [notificationsToSend removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)_sendNotification:(id)notification
{
  uTF8String = [notification UTF8String];
  v4 = notify_post(uTF8String);
  if (v4)
  {
    v5 = sub_10001F638();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[EligibilityEngine _sendNotification:]";
      v9 = 2080;
      v10 = uTF8String;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: Could not post domain change notification %s: %u", &v7, 0x1Cu);
    }
  }

  return v4 == 0;
}

- (BOOL)_onQueue_saveDomainAnswerOutputsWithError:(id *)error
{
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10002BCA0;
  v18 = sub_10002BCB0;
  v19 = 0;
  _onQueue_urlToDomainData = [(EligibilityEngine *)self _onQueue_urlToDomainData];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002BCB8;
  v9[3] = &unk_100046978;
  v9[4] = &v14;
  v9[5] = &v10;
  [_onQueue_urlToDomainData enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(v11 + 24);
  if (error && (v11[3] & 1) == 0)
  {
    *error = v15[5];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v14, 8);
  return v7;
}

- (id)_onQueue_urlToDomainData
{
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4 = objc_opt_new();
  domainToAnswer = [(EligibilityEngine *)self domainToAnswer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002BF34;
  v9[3] = &unk_100046950;
  v10 = v4;
  v6 = v4;
  [domainToAnswer enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

- (id)_onQueue_finalEligibilityDictionaryForDomain:(id)domain
{
  domainCopy = domain;
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  eligibilityOverrides = [(EligibilityEngine *)self eligibilityOverrides];
  v7 = [eligibilityOverrides overrideResultDictionaryForDomain:{objc_msgSend(domainCopy, "domain")}];

  if (v7)
  {
    answerDictionary = v7;
  }

  else
  {
    answerDictionary = [domainCopy answerDictionary];
  }

  v9 = answerDictionary;

  return v9;
}

- (void)_onQueue_notifySADSupportFramework
{
  if (&_SADSEligiblilityDidChange)
  {
    internalQueue = [(EligibilityEngine *)self internalQueue];
    dispatch_assert_queue_V2(internalQueue);

    v4 = objc_opt_new();
    domainToAnswer = [(EligibilityEngine *)self domainToAnswer];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002C32C;
    v8[3] = &unk_100046950;
    v9 = v4;
    v6 = v4;
    [domainToAnswer enumerateKeysAndObjectsUsingBlock:v8];

    v7 = [v6 copy];
    SADSEligiblilityDidChange();
  }
}

- (BOOL)_onQueue_serializeOverrideDataToDiskWithError:(id *)error
{
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  eligibilityOverrides = [(EligibilityEngine *)self eligibilityOverrides];
  if (eligibilityOverrides)
  {
    v17 = 0;
    v7 = sub_1000282D8(&v17);
    v8 = v17;
    if (v7)
    {
      v9 = [v7 URLByAppendingPathComponent:@"Library/Caches/NeverRestore/eligibility_overrides.data" isDirectory:0];
      v16 = v8;
      v10 = [(EligibilityEngine *)self _serializeObject:eligibilityOverrides toURL:v9 withError:&v16];
      v11 = v16;

      if (v10)
      {
        v12 = 1;
LABEL_16:

        goto LABEL_17;
      }

      v13 = sub_10001F638();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[EligibilityEngine _onQueue_serializeOverrideDataToDiskWithError:]";
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Failed to write eligibility overrides data to disk: %@", buf, 0x16u);
      }

      v8 = v11;
    }

    else
    {
      v13 = sub_10001F638();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[EligibilityEngine _onQueue_serializeOverrideDataToDiskWithError:]";
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Failed to obtain the URL for our data container: %@", buf, 0x16u);
      }

      v9 = 0;
    }

    if (error)
    {
      v14 = v8;
      v12 = 0;
      *error = v8;
    }

    else
    {
      v12 = 0;
    }

    v11 = v8;
    goto LABEL_16;
  }

  v12 = 1;
LABEL_17:

  return v12;
}

- (BOOL)_serializeObject:(id)object toURL:(id)l withError:(id *)error
{
  objectCopy = object;
  lCopy = l;
  v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v9 encodeObject:objectCopy forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v9 encodedData];

  v18 = 0;
  v11 = [encodedData writeToURL:lCopy options:268435457 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v14 = sub_10001F638();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 136315906;
      v20 = "[EligibilityEngine _serializeObject:toURL:withError:]";
      v21 = 2112;
      v22 = objectCopy;
      v23 = 2112;
      v24 = path;
      v25 = 2112;
      v26 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Failed to write data %@ to disk at %@: %@", buf, 0x2Au);
    }

    if (error)
    {
      v15 = v12;
      v13 = 0;
      *error = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)_onQueue_saveDomainsWithError:(id *)error
{
  internalQueue = [(EligibilityEngine *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (qword_10005D560 != -1)
  {
    dispatch_once(&qword_10005D560, &stru_100046AA8);
  }

  v6 = qword_10005D558;
  if (os_signpost_enabled(qword_10005D558))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.SaveDomains", "", buf, 2u);
  }

  v17 = 0;
  v7 = [(EligibilityEngine *)self _onQueue_saveDomainAnswerOutputsWithError:&v17];
  v8 = v17;
  v9 = v8;
  if (!v7)
  {
    v11 = v8;
LABEL_13:
    if (error)
    {
      v14 = v11;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_16;
  }

  v16 = v8;
  v10 = [(EligibilityEngine *)self _onQueue_serializeOverrideDataToDiskWithError:&v16];
  v11 = v16;

  if (!v10)
  {
    goto LABEL_13;
  }

  [(EligibilityEngine *)self _onQueue_notifySADSupportFramework];
  if (qword_10005D560 != -1)
  {
    dispatch_once(&qword_10005D560, &stru_100046AA8);
  }

  v12 = qword_10005D558;
  if (os_signpost_enabled(qword_10005D558))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.SaveDomains", "", buf, 2u);
  }

  v13 = 1;
LABEL_16:

  return v13;
}

- (id)_loadCurrentEligibilityOnDisk
{
  v2 = objc_opt_new();
  v3 = 0;
  v4 = 1;
  v5 = &_xpc_type_dictionary;
  do
  {
    v6 = v4;
    v7 = *(&xmmword_100033CF0 + v3);
    v8 = sub_10001BEBC(v7);
    v9 = v8;
    if (!v8)
    {
      v15 = 0;
      v12 = 22;
      goto LABEL_38;
    }

    memset(&v47, 0, sizeof(v47));
    v10 = open(v8, 0x20000000);
    if (v10 < 0)
    {
      v12 = *__error();
      v16 = sub_10001F638();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = strerror(v12);
        *buf = 136315906;
        v40 = "load_eligibility_plist";
        v41 = 2080;
        v42 = v9;
        v43 = 2080;
        v44 = v17;
        v45 = 1024;
        v46 = v12;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Failed to open %s: %s(%d)", buf, 0x26u);
      }

      goto LABEL_37;
    }

    v11 = v10;
    if (fstat(v10, &v47))
    {
      v12 = *__error();
      v13 = sub_10001F638();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v29 = strerror(v12);
        *buf = 136315906;
        v40 = "load_eligibility_plist";
        v41 = 2080;
        v42 = v9;
        v43 = 2080;
        v44 = v29;
        v45 = 1024;
        v46 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Failed to stat %s: %s(%d)", buf, 0x26u);
      }

      v14 = 0;
    }

    else
    {
      st_size = v47.st_size;
      if (v47.st_size >> 31)
      {
        v19 = sub_10001F638();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v40 = "load_eligibility_plist";
          v41 = 2048;
          v42 = st_size;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: eligibility plist is too large (%zu)", buf, 0x16u);
        }

        v14 = 0;
        v12 = 27;
      }

      else
      {
        v20 = v5;
        v21 = mmap(0, v47.st_size, 1, 1026, v11, 0);
        if (v21 == -1)
        {
          v12 = *__error();
          v27 = sub_10001F638();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v32 = strerror(v12);
            *buf = 136315650;
            v40 = "load_eligibility_plist";
            v41 = 2080;
            v42 = v9;
            v43 = 2080;
            v44 = v32;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: Failed to map file at %s; error: %s", buf, 0x20u);
          }

          v14 = 0;
        }

        else
        {
          v22 = v21;
          v23 = xpc_create_from_plist();
          v14 = v23;
          if (v23)
          {
            v35 = v2;
            type = xpc_get_type(v23);
            if (type == v20)
            {
              v12 = 0;
            }

            else
            {
              v25 = type;
              v26 = sub_10001F638();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                name = xpc_type_get_name(v25);
                *buf = 136315394;
                v40 = "load_eligibility_plist";
                v41 = 2080;
                v42 = name;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: Expected plist to be a dictionary but instead was a %s", buf, 0x16u);
              }

              v12 = -1;
            }

            v2 = v35;
          }

          else
          {
            v28 = sub_10001F638();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v40 = "load_eligibility_plist";
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Failed to parse property list", buf, 0xCu);
            }

            v12 = -1;
          }

          munmap(v22, st_size);
        }

        v5 = v20;
      }
    }

    close(v11);
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v12 && v14)
    {
      xpc_release(v14);
LABEL_37:
      v15 = 0;
    }

LABEL_38:
    free(v9);
    if (v12)
    {
      v30 = 0;
    }

    else
    {
      v30 = v15;
    }

    if (v12 && v15)
    {
      xpc_release(v15);
      v30 = 0;
LABEL_44:
      v31 = sub_10001F638();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v47.st_dev = 136315650;
        *&v47.st_mode = "[EligibilityEngine _loadCurrentEligibilityOnDisk]";
        WORD2(v47.st_ino) = 2048;
        *(&v47.st_ino + 6) = v7;
        HIWORD(v47.st_gid) = 1024;
        v47.st_rdev = v12;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s: Unable to load the current eligibility answers on disk, skipping file %llu: %d", &v47, 0x1Cu);
      }

      goto LABEL_46;
    }

    if (v12 || !v30)
    {
      goto LABEL_44;
    }

    if (xpc_get_type(v30) == v5)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_10002D064;
      applier[3] = &unk_100046928;
      v38 = v7;
      v37 = v2;
      xpc_dictionary_apply(v30, applier);
      v31 = v37;
    }

    else
    {
      v31 = sub_10001F638();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v47.st_dev = 136315394;
        *&v47.st_mode = "[EligibilityEngine _loadCurrentEligibilityOnDisk]";
        WORD2(v47.st_ino) = 2048;
        *(&v47.st_ino + 6) = v7;
        _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "%s: Answer plist %llu unexpectedly returned a non-dictionary object", &v47, 0x16u);
      }
    }

LABEL_46:

    v4 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);

  return v2;
}

- (id)_loadOverridesWithError:(id *)error
{
  v15 = 0;
  v5 = sub_1000282D8(&v15);
  v6 = v15;
  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:@"Library/Caches/NeverRestore/eligibility_overrides.data" isDirectory:0];
    v8 = [NSSet setWithObjects:objc_opt_class(), 0];
    v14 = v6;
    v9 = [(EligibilityEngine *)self _decodeObjectOfClasses:v8 atURL:v7 withError:&v14];
    v10 = v14;

    if (v9)
    {
      v6 = v10;
      goto LABEL_13;
    }

    v11 = sub_10001F638();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[EligibilityEngine _loadOverridesWithError:]";
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Failed to decode eligibility overrides: %@", buf, 0x16u);
    }

    v6 = v10;
  }

  else
  {
    v11 = sub_10001F638();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[EligibilityEngine _loadOverridesWithError:]";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Failed to obtain the URL for our data container: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  if (error)
  {
    v12 = v6;
    v9 = 0;
    *error = v6;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (id)_decodeObjectOfClasses:(id)classes atURL:(id)l withError:(id *)error
{
  classesCopy = classes;
  lCopy = l;
  v26 = 0;
  v9 = [NSData dataWithContentsOfURL:lCopy options:3 error:&v26];
  v10 = v26;
  error2 = v10;
  if (!v9)
  {
    domain = [v10 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [error2 code];

      if (code == 260)
      {
        v18 = sub_10001F638();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          path = [lCopy path];
          *buf = 136315650;
          v28 = "[EligibilityEngine _decodeObjectOfClasses:atURL:withError:]";
          v29 = 2112;
          v30 = path;
          v31 = 2112;
          v32 = error2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: URL %@ doesn't exist yet: %@", buf, 0x20u);
LABEL_26:

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    v18 = sub_10001F638();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 136315650;
      v28 = "[EligibilityEngine _decodeObjectOfClasses:atURL:withError:]";
      v29 = 2112;
      v30 = path;
      v31 = 2112;
      v32 = error2;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Failed to deserialize data in %@: %@", buf, 0x20u);
      goto LABEL_26;
    }

LABEL_14:
    v12 = 0;
LABEL_18:

    if (error)
    {
      v21 = error2;
      v15 = 0;
      *error = error2;
    }

    else
    {
      v15 = 0;
    }

    v13 = error2;
    goto LABEL_22;
  }

  v25 = v10;
  v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:&v25];
  v13 = v25;

  if (!v12)
  {
    v18 = sub_10001F638();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[EligibilityEngine _decodeObjectOfClasses:atURL:withError:]";
      v29 = 2112;
      v30 = v13;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Failed to create unarchiver: %@", buf, 0x16u);
    }

    v12 = 0;
    error2 = v13;
    goto LABEL_18;
  }

  v14 = [v12 decodeObjectOfClasses:classesCopy forKey:NSKeyedArchiveRootObjectKey];
  if (!v14)
  {
    v20 = sub_10001F638();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      error = [v12 error];
      *buf = 136315650;
      v28 = "[EligibilityEngine _decodeObjectOfClasses:atURL:withError:]";
      v29 = 2112;
      v30 = path2;
      v31 = 2112;
      v32 = error;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to decode data at %@ : %@", buf, 0x20u);
    }

    error2 = [v12 error];
    v18 = v13;
    goto LABEL_18;
  }

  v15 = v14;
  [v12 finishDecoding];
LABEL_22:

  return v15;
}

- (EligibilityEngine)init
{
  v19.receiver = self;
  v19.super_class = EligibilityEngine;
  v2 = [(EligibilityEngine *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v18 = 0;
    v4 = [(EligibilityEngine *)v2 _loadOverridesWithError:&v18];
    v5 = v18;
    if (!v4)
    {
      v6 = sub_10001F638();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[EligibilityEngine init]";
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Unable to load serialized overrides, initing with no overrides: %@", buf, 0x16u);
      }

      v4 = objc_opt_new();
    }

    eligibilityOverrides = v3->_eligibilityOverrides;
    v3->_eligibilityOverrides = v4;
    v8 = v4;

    v9 = objc_opt_new();
    notificationsToSend = v3->_notificationsToSend;
    v3->_notificationsToSend = v9;

    _loadCurrentEligibilityOnDisk = [(EligibilityEngine *)v3 _loadCurrentEligibilityOnDisk];
    domainToAnswer = v3->_domainToAnswer;
    v3->_domainToAnswer = _loadCurrentEligibilityOnDisk;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.eligibility.EligibilityEngine.internal", v13);
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = v14;

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v3 selector:"_currentLocaleDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DA10;
  block[3] = &unk_100046900;
  block[4] = self;
  if (qword_10005D550 != -1)
  {
    dispatch_once(&qword_10005D550, block);
  }

  v2 = qword_10005D548;

  return v2;
}

@end