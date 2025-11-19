@interface OTRamp
- (BOOL)checkRampStateWithError:(id *)a3;
- (OTRamp)initWithRecordName:(id)a3 localSettingName:(id)a4 container:(id)a5 database:(id)a6 zoneID:(id)a7 accountTracker:(id)a8 lockStateTracker:(id)a9 reachabilityTracker:(id)a10 fetchRecordRecordsOperationClass:(Class)a11;
- (void)fetchRampRecordWithReply:(id)a3;
@end

@implementation OTRamp

- (BOOL)checkRampStateWithError:(id *)a3
{
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_1001717CC;
  v80 = sub_1001717DC;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v5 = [(OTRamp *)self localSettingName];
  v6 = CFPreferencesCopyValue(v5, @"com.apple.security", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  v7 = sub_100006274("octagon");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(OTRamp *)self localSettingName];
    if (v6)
    {
      v9 = "True";
    }

    else
    {
      v9 = "False";
    }

    if (v6)
    {
      v10 = CFGetTypeID(v6);
      TypeID = CFBooleanGetTypeID();
      v12 = "False";
      if (v10 == TypeID && v6 == kCFBooleanTrue)
      {
        v12 = "True";
      }
    }

    else
    {
      v12 = "False";
    }

    *buf = 138413058;
    v99 = v8;
    v100 = 2080;
    v101 = "False";
    v102 = 2080;
    v103 = v9;
    v104 = 2080;
    v105 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Defaults availability: SecCKKSTestsEnabled[%s] DefaultsPointer[%s] DefaultsValue[%s]", buf, 0x2Au);
  }

  if (!v6)
  {
LABEL_20:
    v19 = objc_alloc_init(NSDate);
    v20 = [(OTRamp *)self lastFetch];
    [v19 timeIntervalSinceDate:v20];
    v22 = v21;
    [(OTRamp *)self retryAfter];
    v24 = v22 < v23;

    if (v24)
    {
      v14 = [(OTRamp *)self cachedFeatureAllowed];
LABEL_54:

      goto LABEL_55;
    }

    v25 = [(OTRamp *)self lockStateTracker];
    v26 = [v25 isLocked];

    if (v26)
    {
      v27 = sub_100006274("octagon");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "device is locked! can't check ramp state", buf, 2u);
      }

      v96 = NSLocalizedDescriptionKey;
      v97 = @"device is locked";
      v28 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v29 = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-25308 userInfo:v28];
      v30 = v77[5];
      v77[5] = v29;

      if (a3)
      {
LABEL_52:
        v14 = 0;
        *a3 = v77[5];
        goto LABEL_54;
      }
    }

    else
    {
      v31 = [(OTRamp *)self accountTracker];
      v32 = [v31 ckAccountInfoInitialized];
      [v32 wait:5000000000];

      v33 = [(OTRamp *)self accountTracker];
      v34 = [v33 currentCKAccountInfo];
      v35 = [v34 accountStatus] == 1;

      if (v35)
      {
        v36 = [(OTRamp *)self reachabilityTracker];
        v37 = [v36 currentReachability];

        if (v37)
        {
          v38 = +[CKKSAnalytics logger];
          v39 = [v38 logSystemMetricsForActivityNamed:@"CKKSActivityOTFetchRampState" withAction:0];
          v40 = dispatch_semaphore_create(0);
          [v39 start];
          v64 = _NSConcreteStackBlock;
          v65 = 3221225472;
          v66 = sub_1001717E4;
          v67 = &unk_100339120;
          v69 = &v82;
          v70 = &v72;
          v71 = &v76;
          v41 = v40;
          v68 = v41;
          [(OTRamp *)self fetchRampRecordWithReply:&v64];
          v42 = dispatch_time(0, 65000000000);
          if (dispatch_semaphore_wait(v41, v42))
          {
            v43 = sub_100006274("octagon");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "timed out waiting for response from CloudKit\n", buf, 2u);
            }

            v90 = NSLocalizedDescriptionKey;
            v91 = @"timed out waiting for response from CloudKit";
            v44 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1, v64, v65, v66, v67];
            v45 = [NSError errorWithDomain:@"com.apple.security.octagon" code:23 userInfo:v44];
            v46 = v77[5];
            v77[5] = v45;

            v47 = v77[5];
            v88 = @"OTFailureReason";
            v89 = @"cloud kit timed out";
            v48 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            [v38 logUnrecoverableError:v47 forEvent:@"OctagonEventRamp" withAttributes:v48];
          }

          [v39 stop];
          if (v73[3] >= 1)
          {
            v49 = sub_100006274("octagon");
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = v73[3];
              *buf = 134217984;
              v99 = v50;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "cloud kit asked security to retry: %lu", buf, 0xCu);
            }

            [(OTRamp *)self setRetryAfter:v73[3]];
          }

          if (v77[5])
          {
            v51 = sub_100006274("SecError");
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = v77[5];
              *buf = 138412290;
              v99 = v52;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "octagon: had an error fetching ramp state: %@", buf, 0xCu);
            }

            v53 = v77[5];
            v86 = @"OTFailureReason";
            v87 = @"fetching ramp state";
            v54 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
            [v38 logUnrecoverableError:v53 forEvent:@"OctagonEventRamp" withAttributes:v54];

            if (a3)
            {
              *a3 = v77[5];
            }
          }

          if (*(v83 + 24) == 1)
          {
            [v38 logSuccessForEventNamed:@"OctagonEventRamp"];
          }

          [(OTRamp *)self setLastFetch:v19];
          [(OTRamp *)self setCachedFeatureAllowed:*(v83 + 24)];
          v14 = *(v83 + 24);

          goto LABEL_54;
        }

        v59 = sub_100006274("octagon");
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "no network! can't check ramp state", buf, 2u);
        }

        v92 = NSLocalizedDescriptionKey;
        v93 = @"no network";
        v60 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v61 = [NSError errorWithDomain:@"com.apple.security.octagon" code:24 userInfo:v60];
        v62 = v77[5];
        v77[5] = v61;

        if (a3)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v55 = sub_100006274("octagon");
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "not signed in! can't check ramp state", buf, 2u);
        }

        v94 = NSLocalizedDescriptionKey;
        v95 = @"not signed in";
        v56 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v57 = [NSError errorWithDomain:@"com.apple.security.octagon" code:25 userInfo:v56];
        v58 = v77[5];
        v77[5] = v57;

        if (a3)
        {
          goto LABEL_52;
        }
      }
    }

    v14 = 0;
    goto LABEL_54;
  }

  v13 = CFGetTypeID(v6);
  if (v13 != CFBooleanGetTypeID())
  {
    CFRelease(v6);
    goto LABEL_20;
  }

  v14 = v6 == kCFBooleanTrue;
  v15 = sub_100006274("octagon");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(OTRamp *)self recordName];
    v17 = v16;
    v18 = @"disabled";
    if (v6 == kCFBooleanTrue)
    {
      v18 = @"enabled";
    }

    *buf = 138412546;
    v99 = v18;
    v100 = 2112;
    v101 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "feature is %@: %@ (local config)", buf, 0x16u);
  }

  CFRelease(v6);
LABEL_55:
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  return v14 & 1;
}

- (void)fetchRampRecordWithReply:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CKOperationConfiguration);
  [v5 setAllowsCellularAccess:1];
  [v5 setIsCloudKitSupportOperation:1];
  v6 = [[CKRecordID alloc] initWithRecordName:self->_recordName zoneID:self->_zoneID];
  [(OTRamp *)self fetchRecordRecordsOperationClass];
  v7 = objc_alloc(objc_opt_class());
  v20 = v6;
  v8 = [NSArray arrayWithObjects:&v20 count:1];
  v9 = [v7 initWithRecordIDs:v8];

  v19[0] = @"FeatureAllowed";
  v19[1] = @"FeaturePromoted";
  v19[2] = @"FeatureVisible";
  v19[3] = @"RetryAfter";
  v10 = [NSArray arrayWithObjects:v19 count:4];
  [v9 setDesiredKeys:v10];

  [v9 setConfiguration:v5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100171B54;
  v16[3] = &unk_1003390F8;
  v17 = v6;
  v18 = v4;
  v11 = v4;
  v12 = v6;
  [v9 setFetchRecordsCompletionBlock:v16];
  v13 = [(OTRamp *)self database];
  [v13 addOperation:v9];

  v14 = sub_100006274("octagon");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to fetch ramp state from CloudKit", v15, 2u);
  }
}

- (OTRamp)initWithRecordName:(id)a3 localSettingName:(id)a4 container:(id)a5 database:(id)a6 zoneID:(id)a7 accountTracker:(id)a8 lockStateTracker:(id)a9 reachabilityTracker:(id)a10 fetchRecordRecordsOperationClass:(Class)a11
{
  v17 = a3;
  v18 = a4;
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v29 = a9;
  v19 = a10;
  v34.receiver = self;
  v34.super_class = OTRamp;
  v20 = [(OTRamp *)&v34 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_container, a5);
    v22 = [v17 copy];
    recordName = v21->_recordName;
    v21->_recordName = v22;

    v24 = [v18 copy];
    localSettingName = v21->_localSettingName;
    v21->_localSettingName = v24;

    objc_storeStrong(&v21->_database, a6);
    objc_storeStrong(&v21->_zoneID, a7);
    objc_storeStrong(&v21->_accountTracker, a8);
    objc_storeStrong(&v21->_lockStateTracker, a9);
    objc_storeStrong(&v21->_reachabilityTracker, a10);
    objc_storeStrong(&v21->_fetchRecordRecordsOperationClass, a11);
    v26 = +[NSDate distantPast];
    lastFetch = v21->_lastFetch;
    v21->_lastFetch = v26;

    v21->_retryAfter = 86400.0;
    v21->_cachedFeatureAllowed = 0;
  }

  return v21;
}

@end