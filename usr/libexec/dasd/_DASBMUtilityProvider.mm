@interface _DASBMUtilityProvider
+ (id)sharedUtilityProvider;
- (BOOL)deviceIsInferredCarry;
- (_DASBMUtilityProvider)init;
@end

@implementation _DASBMUtilityProvider

+ (id)sharedUtilityProvider
{
  if (qword_10020ADD0 != -1)
  {
    sub_10011BD18();
  }

  v3 = qword_10020ADD8;

  return v3;
}

- (_DASBMUtilityProvider)init
{
  v6.receiver = self;
  v6.super_class = _DASBMUtilityProvider;
  v2 = [(_DASBMUtilityProvider *)&v6 init];
  if (v2)
  {
    v3 = [_DASDaemonLogger logForCategory:@"BMUtility"];
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

- (BOOL)deviceIsInferredCarry
{
  v3 = os_transaction_create();
  v4 = +[NSDate date];
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = sub_10000CCEC;
  v57[4] = sub_10000CCFC;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_10000CCEC;
  v55[4] = sub_10000CCFC;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_10000CCEC;
  v53 = sub_10000CCFC;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000CCEC;
  v47 = sub_10000CCFC;
  v48 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_10000CCEC;
  v41[4] = sub_10000CCFC;
  v42 = 0;
  v5 = +[NSMutableArray array];
  v6 = objc_autoreleasePoolPush();
  v7 = BiomeLibrary();
  v8 = [v7 Device];
  v9 = [v8 Power];
  v10 = [v9 PluggedIn];

  v11 = [BMPublisherOptions alloc];
  v12 = [NSDate dateWithTimeIntervalSinceNow:-1296000.0];
  v13 = [v11 initWithStartDate:v4 endDate:v12 maxEvents:0 lastN:0 reversed:1];

  v14 = [v10 publisherWithUseCase:@"DASBiomeUtilityUseCase" options:v13];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10000CD04;
  v40[3] = &unk_1001B5570;
  v40[4] = self;
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_10000CD64;
  v32 = &unk_1001B5598;
  v34 = v55;
  v35 = v57;
  v36 = v41;
  v37 = &v49;
  v38 = &v43;
  v39 = 0x40BC200000000000;
  v15 = v5;
  v33 = v15;
  v16 = [v14 sinkWithCompletion:v40 receiveInput:&v29];
  if ([v15 count] >= 8 && (objc_msgSend(v4, "timeIntervalSinceDate:", v50[5]), v17 >= 1209600.0) && (objc_msgSend(v4, "timeIntervalSinceDate:", v44[5]), v18 <= 604800.0))
  {
    v23 = 1;
  }

  else
  {
    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v15 count];
      v21 = v44[5];
      v22 = v50[5];
      *buf = 134218498;
      v60 = v20;
      v61 = 2112;
      v62 = v21;
      v63 = 2112;
      v64 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not real carry device: %ld pluginEvents, Recent plugin: %@, Oldest plugin: %@", buf, 0x20u);
    }

    v23 = 0;
  }

  objc_autoreleasePoolPop(v6);
  if (v23)
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v15 count];
      v26 = v44[5];
      v27 = v50[5];
      *buf = 134218498;
      v60 = v25;
      v61 = 2112;
      v62 = v26;
      v63 = 2112;
      v64 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Real carry device: %ld pluginEvents, Recent plugin: %@, Oldest plugin: %@", buf, 0x20u);
    }
  }

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v55, 8);

  _Block_object_dispose(v57, 8);
  return v23;
}

@end