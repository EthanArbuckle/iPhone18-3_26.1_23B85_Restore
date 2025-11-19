@interface CPMTrialManager
+ (id)sharedInstance;
- (BOOL)didTrialEnd:(id)a3;
- (BOOL)didTrialStart:(id)a3;
- (BOOL)didTrialUpdate:(id)a3;
- (CPMTrialManager)init;
- (void)addDelegate:(id)a3;
- (void)updateFactors;
@end

@implementation CPMTrialManager

+ (id)sharedInstance
{
  if (qword_100036BA0 != -1)
  {
    sub_100018BD0();
  }

  v3 = qword_100036B98;

  return v3;
}

- (CPMTrialManager)init
{
  v20.receiver = self;
  v20.super_class = CPMTrialManager;
  v2 = [(CPMTrialManager *)&v20 init];
  v3 = v2;
  if (v2)
  {
    [(CPMTrialManager *)v2 setNamespace:@"COREOS_POWER_EXPERIENCE_POWER_TUNING"];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.powerexperienced.trialmanager", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = os_log_create("com.apple.powerexperienced", "trialmanager");
    log = v3->_log;
    v3->_log = v7;

    v9 = [TRIClient clientWithIdentifier:364];
    trialClient = v3->_trialClient;
    v3->_trialClient = v9;

    v11 = +[NSMutableArray array];
    delegates = v3->_delegates;
    v3->_delegates = v11;

    objc_initWeak(&location, v3);
    v14 = v3->_namespace;
    v13 = v3->_trialClient;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A6DC;
    v17[3] = &unk_10002C830;
    objc_copyWeak(&v18, &location);
    v15 = [(TRIClient *)v13 addUpdateHandlerForNamespaceName:v14 usingBlock:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (BOOL)didTrialStart:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_4:
    LOBYTE(v6) = 0;
    goto LABEL_6;
  }

  v6 = [v4 experimentId];
  if (v6)
  {
    v7 = [(CPMTrialManager *)self experimentActive];

    if ((v7 & 1) == 0)
    {
      v8 = [v5 treatmentId];
      treatmentID = self->_treatmentID;
      self->_treatmentID = v8;

      v10 = [v5 experimentId];
      experimentID = self->_experimentID;
      self->_experimentID = v10;

      self->_deploymentID = [v5 deploymentId];
      LOBYTE(v6) = 1;
      [(CPMTrialManager *)self setExperimentActive:1];
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v6;
}

- (BOOL)didTrialEnd:(id)a3
{
  if (a3)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(CPMTrialManager *)self experimentActive];
    if (v3)
    {
      [(CPMTrialManager *)self setExperimentActive:0];
      [(CPMTrialManager *)self setExperimentID:0];
      [(CPMTrialManager *)self setTreatmentID:0];
      [(CPMTrialManager *)self setDeploymentID:0];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)didTrialUpdate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 experimentId], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && -[CPMTrialManager experimentActive](self, "experimentActive"))
  {
    v7 = [v5 treatmentId];
    treatmentID = self->_treatmentID;
    self->_treatmentID = v7;

    v9 = [v5 experimentId];
    experimentID = self->_experimentID;
    self->_experimentID = v9;

    self->_deploymentID = [v5 deploymentId];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateFactors
{
  v3 = [(CPMTrialManager *)self trialClient];
  [v3 refresh];

  v4 = [(CPMTrialManager *)self trialClient];
  v5 = [v4 experimentIdentifiersWithNamespaceName:self->_namespace];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "experimentIdentifier %@", buf, 0xCu);
  }

  if ([(CPMTrialManager *)self didTrialStart:v5])
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      experimentID = self->_experimentID;
      treatmentID = self->_treatmentID;
      deploymentID = self->_deploymentID;
      *buf = 138412802;
      v33 = treatmentID;
      v34 = 2112;
      v35 = experimentID;
      v36 = 1024;
      v37 = deploymentID;
      v11 = "Trial started. treatmentID %@, experimentID %@, deploymentID %d";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v11, buf, 0x1Cu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if ([(CPMTrialManager *)self didTrialUpdate:v5])
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_experimentID;
      v12 = self->_treatmentID;
      v14 = self->_deploymentID;
      *buf = 138412802;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      v36 = 1024;
      v37 = v14;
      v11 = "Trial updated. treatmentID %@, experimentID %@, deploymentID %d";
      goto LABEL_12;
    }

LABEL_13:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [(CPMTrialManager *)self delegates];
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v27 + 1) + 8 * i);
          v26 = self->_log;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Calling trial delegates", buf, 2u);
          }

          [v25 cpmTrialManager:self hasUpdatedParametersForNamespace:self->_namespace];
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v22);
    }

    goto LABEL_23;
  }

  v15 = [(CPMTrialManager *)self didTrialEnd:v5];
  v7 = self->_log;
  v16 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v16)
    {
      v18 = self->_experimentID;
      v17 = self->_treatmentID;
      v19 = self->_deploymentID;
      *buf = 138412802;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      v36 = 1024;
      v37 = v19;
      v11 = "Trial ended, treatmentID %@, experimentID %@, deploymentID %d";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No trial experiments", buf, 2u);
  }

LABEL_23:
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(CPMTrialManager *)self delegates];
    objc_sync_enter(v5);
    v6 = [(CPMTrialManager *)self delegates];
    [v6 addObject:v7];

    objc_sync_exit(v5);
    [(CPMTrialManager *)self updateFactors];
    v4 = v7;
  }
}

@end