@interface OSIntelligenceTrialManager
+ (id)sharedChargePredictionInstance;
- (OSIntelligenceTrialManager)init;
- (double)doubleFactorForName:(id)name;
- (double)loadTrialAdjustedHours;
- (double)loadTrialDRAModelLeeway;
- (double)loadTrialDRAModelMinDuration;
- (double)loadTrialMinInputChargeDuration;
- (double)loadTrialThreshold;
- (id)loadModelFromPath:(id)path deleteExistingFiles:(BOOL)files;
- (int64_t)longFactorForName:(id)name;
- (void)addUpdateHandler:(id)handler;
- (void)loadTrialUpdates;
@end

@implementation OSIntelligenceTrialManager

- (OSIntelligenceTrialManager)init
{
  v33.receiver = self;
  v33.super_class = OSIntelligenceTrialManager;
  v2 = [(OSIntelligenceTrialManager *)&v33 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = os_log_create("com.apple.osintelligence", "chargeprediction.trialmanager");
    log = v3->_log;
    v3->_log = v4;

    v6 = [TRIClient clientWithIdentifier:220];
    trialClient = v3->_trialClient;
    v3->_trialClient = v6;

    v8 = v3->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v3->_trialClient;
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Trial Client %@", buf, 0xCu);
    }

    trackingId = [(TRIClient *)v3->_trialClient trackingId];
    trialTrackingID = v3->_trialTrackingID;
    v3->_trialTrackingID = trackingId;

    v12 = [TRINamespace namespaceNameFromId:251];
    trialNamespaceName = v3->_trialNamespaceName;
    v3->_trialNamespaceName = v12;

    v14 = v3->_trialClient;
    v15 = v3->_trialNamespaceName;
    v31 = 0;
    v32 = 0;
    v16 = [(TRIClient *)v14 trialIdentifiersWithNamespaceName:v15 experimentId:&v32 deploymentId:0 treatmentId:&v31];
    v17 = v32;
    v18 = v32;
    v19 = v31;
    v20 = v31;
    if ((v16 & 1) == 0)
    {
      v21 = v3->_log;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to load experiment/treatment IDs", buf, 2u);
      }
    }

    objc_storeStrong(&v3->_experimentID, v17);
    objc_storeStrong(&v3->_treatmentID, v19);
    v22 = +[NSMutableArray array];
    updateHandlers = v3->_updateHandlers;
    v3->_updateHandlers = v22;

    objc_initWeak(buf, v3);
    v24 = v3->_trialClient;
    v25 = v3->_trialNamespaceName;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100015374;
    v28[3] = &unk_100094D98;
    objc_copyWeak(&v30, buf);
    v29 = v3;
    v26 = [(TRIClient *)v24 addUpdateHandlerForNamespaceName:v25 usingBlock:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  return v3;
}

+ (id)sharedChargePredictionInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001555C;
  block[3] = &unk_100094818;
  block[4] = self;
  if (qword_1000B6A18 != -1)
  {
    dispatch_once(&qword_1000B6A18, block);
  }

  v2 = qword_1000B6A20;

  return v2;
}

- (void)loadTrialUpdates
{
  os_unfair_lock_lock(&self->_lock);
  [(TRIClient *)self->_trialClient refresh];
  newTrackingId = [(TRIClient *)self->_trialClient newTrackingId];
  trialTrackingID = self->_trialTrackingID;
  self->_trialTrackingID = newTrackingId;

  v5 = [TRINamespace namespaceNameFromId:251];
  trialNamespaceName = self->_trialNamespaceName;
  self->_trialNamespaceName = v5;

  trialClient = self->_trialClient;
  v8 = self->_trialNamespaceName;
  v17 = 0;
  v18 = 0;
  v9 = [(TRIClient *)trialClient trialIdentifiersWithNamespaceName:v8 experimentId:&v18 deploymentId:0 treatmentId:&v17];
  v10 = v18;
  v11 = v17;
  if ((v9 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Failed to load experiment/treatment IDs", v16, 2u);
    }
  }

  experimentID = self->_experimentID;
  self->_experimentID = v10;
  v14 = v10;

  treatmentID = self->_treatmentID;
  self->_treatmentID = v11;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)longFactorForName:(id)name
{
  v3 = [(OSIntelligenceTrialManager *)self trialFactor:name];
  longValue = [v3 longValue];

  return longValue;
}

- (double)doubleFactorForName:(id)name
{
  v3 = [(OSIntelligenceTrialManager *)self trialFactor:name];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)addUpdateHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  updateHandlers = self->_updateHandlers;
  v6 = objc_retainBlock(handlerCopy);

  [(NSMutableArray *)updateHandlers addObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)loadTrialThreshold
{
  v3 = [(OSIntelligenceTrialManager *)self trialFactor:@"engagementThreshold"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Threshold value is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)loadTrialAdjustedHours
{
  v3 = [(OSIntelligenceTrialManager *)self trialFactor:@"adjustedHours"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Duration hours is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)loadTrialMinInputChargeDuration
{
  v3 = [(OSIntelligenceTrialManager *)self trialFactor:@"minInputChargeDuration"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Minimum charge duration considered for model input is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)loadModelFromPath:(id)path deleteExistingFiles:(BOOL)files
{
  filesCopy = files;
  pathCopy = path;
  v7 = os_transaction_create();
  v8 = v7;
  if (pathCopy)
  {
    v59 = v7;
    if (([(__CFString *)pathCopy isAbsolutePath]& 1) == 0)
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 pathForResource:pathCopy ofType:0];

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v10;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Not an absolute path, loading absolute path...Path is %@", buf, 0xCu);
      }

      if (v10)
      {
        v12 = v10;

        pathCopy = v12;
      }
    }

    v13 = +[NSFileManager defaultManager];
    v68 = 0;
    lastPathComponent = [(__CFString *)pathCopy lastPathComponent];
    v15 = [NSString stringWithFormat:@"%@%@", lastPathComponent, @"c"];

    v78[0] = @"/var/mobile/Library/OSIntelligence";
    v78[1] = v15;
    v16 = [NSArray arrayWithObjects:v78 count:2];
    v17 = [NSURL fileURLWithPathComponents:v16];

    if (filesCopy)
    {
      path = [(__CFString *)v17 path];
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = path;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Removing existing files from %@", buf, 0xCu);
      }

      v67 = 0;
      v20 = [v13 removeItemAtPath:path error:&v67];
      v21 = v67;
      if ((v20 & 1) == 0)
      {
        v22 = self->_log;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v71 = path;
          v72 = 2112;
          v73 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v21 = 0;
    }

    path2 = [(__CFString *)v17 path];
    v26 = [v13 fileExistsAtPath:path2 isDirectory:&v68];

    if (v26)
    {
      v66 = v21;
      v27 = [MLModel modelWithContentsOfURL:v17 error:&v66];
      v28 = v66;

      if (v28)
      {
        v29 = self->_log;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v71 = v17;
          v72 = 2112;
          v73 = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Failed to load model: %@ -- %@", buf, 0x16u);
        }

        v24 = 0;
      }

      else
      {
        v27 = v27;
        v24 = v27;
      }

      goto LABEL_54;
    }

    v57 = v17;
    v58 = v15;
    temporaryDirectory = [v13 temporaryDirectory];
    path3 = [temporaryDirectory path];
    v77[0] = path3;
    v32 = +[NSUUID UUID];
    uUIDString = [v32 UUIDString];
    v77[1] = uUIDString;
    v34 = [NSArray arrayWithObjects:v77 count:2];
    v27 = [NSString pathWithComponents:v34];

    v65 = v21;
    LOBYTE(v32) = [v13 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v65];
    v28 = v65;

    if ((v32 & 1) == 0)
    {
      v40 = self->_log;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v71 = v27;
        v72 = 2112;
        v73 = v28;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Failed to create directory at path %@ -- %@", buf, 0x16u);
      }

      v24 = 0;
      v17 = v57;
      v15 = v58;
      goto LABEL_54;
    }

    v76[0] = v27;
    lastPathComponent2 = [(__CFString *)pathCopy lastPathComponent];
    v76[1] = lastPathComponent2;
    v36 = [NSArray arrayWithObjects:v76 count:2];
    v37 = [NSURL fileURLWithPathComponents:v36];

    path4 = [(__CFString *)v37 path];
    v64 = v28;
    LOBYTE(lastPathComponent2) = [v13 copyItemAtPath:pathCopy toPath:path4 error:&v64];
    v39 = v64;

    if ((lastPathComponent2 & 1) == 0)
    {
      v41 = self->_log;
      v17 = v57;
      v15 = v58;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v71 = pathCopy;
        v72 = 2112;
        v73 = v37;
        v74 = 2112;
        v75 = v39;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed to copy model from %@ to %@ -- %@", buf, 0x20u);
      }

      v24 = 0;
      goto LABEL_53;
    }

    v17 = v57;
    if ([v13 fileExistsAtPath:@"/var/mobile/Library/OSIntelligence" isDirectory:&v68])
    {
      v39 = 0;
    }

    else
    {
      v63 = 0;
      v42 = [v13 createDirectoryAtPath:@"/var/mobile/Library/OSIntelligence" withIntermediateDirectories:1 attributes:0 error:&v63];
      v39 = v63;
      if ((v42 & 1) == 0)
      {
        v51 = self->_log;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v71 = @"/var/mobile/Library/OSIntelligence";
          v72 = 2112;
          v73 = v39;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Failed to create directory at path %@ -- %@", buf, 0x16u);
        }

        v24 = 0;
        v15 = v58;
        goto LABEL_53;
      }
    }

    v69 = @"/var/mobile/Library/OSIntelligence";
    v43 = [NSArray arrayWithObjects:&v69 count:1];
    v44 = [NSURL fileURLWithPathComponents:v43];

    v45 = +[MLCompilerOptions defaultOptions];
    v62 = 0;
    v46 = [MLCompiler compileSpecificationAtURL:v37 toURL:v44 options:v45 error:&v62];
    v39 = v62;

    if (v39)
    {
      v47 = self->_log;
      v15 = v58;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v71 = v37;
        v72 = 2112;
        v73 = v39;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Failed to compile model: %@ -- %@", buf, 0x16u);
      }

      v24 = 0;
    }

    else
    {
      v61 = 0;
      v56 = [MLModel modelWithContentsOfURL:v57 error:&v61];
      v48 = v61;
      v15 = v58;
      if (v48)
      {
        v39 = v48;
        v49 = self->_log;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v71 = v57;
          v72 = 2112;
          v73 = v39;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Failed to load model: %@ -- %@", buf, 0x16u);
        }

        v24 = 0;
        v50 = v56;
      }

      else
      {
        v55 = v46;
        v60 = 0;
        v52 = [v13 removeItemAtPath:v27 error:&v60];
        v39 = v60;
        if ((v52 & 1) == 0)
        {
          v53 = self->_log;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v71 = v27;
            v72 = 2112;
            v73 = v39;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
          }
        }

        v24 = v56;
        v50 = v56;
        v46 = v55;
      }
    }

LABEL_53:
    v28 = v39;
LABEL_54:

    v8 = v59;
    goto LABEL_55;
  }

  v23 = self->_log;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to load model from null path", buf, 2u);
  }

  v24 = 0;
LABEL_55:

  return v24;
}

- (double)loadTrialDRAModelMinDuration
{
  v3 = [(OSIntelligenceTrialManager *)self trialFactor:@"trialDRAModelMinDuration"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Min duration value is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = -1.0;
  }

  return v8;
}

- (double)loadTrialDRAModelLeeway
{
  v3 = [(OSIntelligenceTrialManager *)self trialFactor:@"trialDRAModelLeeway"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DRA leeway value is %lf", &v10, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = -1.0;
  }

  return v8;
}

@end