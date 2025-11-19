@interface EPSagaTransactionNewWatchPairing
+ (BOOL)shouldFlagNextPairingForAltAccount;
- (id)pairingID;
- (id)pairingReport;
- (id)registry;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5;
- (void)notifyPasscode:(id)a3;
- (void)routingSlipDidComplete:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionNewWatchPairing

+ (BOOL)shouldFlagNextPairingForAltAccount
{
  v2 = CFPreferencesCopyValue(@"forNextPairingSetIsIDAltAccount", @"com.apple.NanoRegistry", @"mobile", kCFPreferencesAnyHost);
  v3 = v2;
  if (v2 && [v2 BOOLValue])
  {
    CFPreferencesSetValue(@"forNextPairingSetIsIDAltAccount", 0, @"com.apple.NanoRegistry", @"mobile", kCFPreferencesAnyHost);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5
{
  v9 = a3;
  v122 = a4;
  v119 = a5;
  objc_storeStrong(&self->_parentRoutingSlipEntry, a3);
  objc_storeStrong(&self->_serviceRegistry, a4);
  v121 = [v9 objectForKeyedSubscript:@"updatedDuringPairing"];
  v10 = [v121 BOOLValue];
  v120 = [v9 objectForKeyedSubscript:?];
  if ([@"extensiblePairingTypeDiscoverAndPairWithDeviceID" isEqual:?])
  {
    [v9 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  }

  else
  {
    +[NSUUID UUID];
  }
  v11 = ;
  v12 = +[NSMutableArray array];
  if ([objc_opt_class() shouldFlagNextPairingForAltAccount])
  {
    v13 = &__kCFBooleanTrue;
  }

  else
  {
    v13 = [v9 objectForKeyedSubscript:@"isAltAccountGizmo"];
  }

  v124 = v9;
  if (([v13 BOOLValue] & 1) == 0)
  {

    v13 = 0;
  }

  v123 = v13;
  p_info = (&OBJC_METACLASS___NRPBRTCMigrationMetricSessionID + 32);
  v125 = v11;
  v126 = v12;
  if ((v10 & 1) == 0)
  {
    v15 = [EPRoutingSlipEntry alloc];
    v16 = objc_opt_class();
    v154[0] = @"switchToNRDeviceUUID";
    v17 = [[EPSagaOperandUUID alloc] initWithUUID:v11];
    v155[0] = v17;
    v154[1] = @"shouldWaitForConnectivity";
    v18 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanFalse];
    v155[1] = v18;
    v154[2] = @"shouldRollBack";
    v19 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanFalse];
    v155[2] = v19;
    v154[3] = @"shouldKeepLaunchedDameonsDisabled";
    v20 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
    v155[3] = v20;
    v154[4] = @"destinationIsAltAccount";
    v21 = [EPSagaOperandNumber alloc];
    if (v123)
    {
      v22 = v123;
    }

    else
    {
      v22 = &__kCFBooleanFalse;
    }

    v23 = [(EPSagaOperandNumber *)v21 initWithNumber:v22];
    v155[4] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:5];
    v25 = [(EPRoutingSlipEntry *)v15 initWithName:@"assertion" transactionClass:v16 operands:v24];

    [v126 addObject:v25];
    v26 = [NRDevicePropertyDiffType alloc];
    v27 = v26;
    if (v123)
    {
      v28 = [[NRDevicePropertyDiff alloc] initWithValue:v123];
      v29 = [v27 initWithDiff:v28 andChangeType:1];
    }

    else
    {
      v29 = [v26 initWithDiff:0 andChangeType:2];
    }

    v115 = v29;
    v30 = [NRDeviceDiff alloc];
    v152 = NRDevicePropertyIsAltAccount;
    v153 = v29;
    v31 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
    v117 = [v30 initWithDiffPropertyDiffs:v31];

    v116 = [[NRDeviceDiffType alloc] initWithDiff:v117 andChangeType:1];
    v32 = [NRDeviceCollectionDiff alloc];
    v150 = v125;
    v151 = v116;
    v33 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
    v114 = [v32 initWithDeviceCollectionDiffDeviceDiffs:v33];

    v34 = [EPRoutingSlipEntry alloc];
    v35 = objc_opt_class();
    v148 = @"transactionDiff";
    v36 = [[EPSagaOperandDiff alloc] initWithDiff:v114];
    v149 = v36;
    v37 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
    v38 = [(EPRoutingSlipEntry *)v34 initWithName:@"setAltAccountGizmo" transactionClass:v35 operands:v37];

    [v126 addObject:v38];
    v112 = [[EPRoutingSlipEntry alloc] initWithName:@"prepareIDSServices" transactionClass:objc_opt_class() operands:&__NSDictionary0__struct];

    [v126 addObject:v112];
    v110 = [EPRoutingSlipEntry alloc];
    v39 = objc_opt_class();
    v146[0] = @"extensiblePairingDeviceID";
    v113 = [[EPSagaOperandUUID alloc] initWithUUID:v125];
    v147[0] = v113;
    v146[1] = @"extensiblePairingPairingType";
    v40 = [EPSagaOperandString alloc];
    v118 = [v124 objectForKeyedSubscript:@"extensiblePairingPairingType"];
    v111 = [(EPSagaOperandString *)v40 initWithString:v118];
    v147[1] = v111;
    v146[2] = @"extensiblePairingAdvertisedName";
    v41 = [EPSagaOperandString alloc];
    v109 = [v124 objectForKeyedSubscript:@"extensiblePairingAdvertisedName"];
    v42 = [(EPSagaOperandString *)v41 initWithString:v109];
    v147[2] = v42;
    v146[3] = @"extensiblePairingShouldFilePairingReport";
    v43 = [EPSagaOperandNumber alloc];
    v44 = [v124 objectForKeyedSubscript:@"extensiblePairingShouldFilePairingReport"];
    v45 = [(EPSagaOperandNumber *)v43 initWithNumber:v44];
    v147[3] = v45;
    v146[4] = @"extensiblePairingGizmoPairingVersion";
    v46 = [EPSagaOperandNumber alloc];
    v47 = [v124 objectForKeyedSubscript:@"extensiblePairingGizmoPairingVersion"];
    v48 = [(EPSagaOperandNumber *)v46 initWithNumber:v47];
    v147[4] = v48;
    v146[5] = @"isAltAccountGizmo";
    v49 = [[EPSagaOperandNumber alloc] initWithNumber:v123];
    v147[5] = v49;
    v50 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:6];
    v51 = [(EPRoutingSlipEntry *)v110 initWithName:@"pairing" transactionClass:v39 operands:v50];

    v11 = v125;
    [v126 addObject:v51];
    v52 = [[EPRoutingSlipEntry alloc] initWithName:@"updateAppRemovability" transactionClass:objc_opt_class() operands:&__NSDictionary0__struct];

    p_info = &OBJC_METACLASS___NRPBRTCMigrationMetricSessionID.info;
    [v126 addObject:v52];
  }

  v53 = [EPRoutingSlipEntry alloc];
  v54 = objc_opt_class();
  v144[0] = @"notificationName";
  v55 = [objc_alloc((p_info + 206)) initWithString:@"NRNotificationWaitForBridgeComplete"];
  v145[0] = v55;
  v144[1] = @"isDarwinNotification";
  v56 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanFalse];
  v145[1] = v56;
  v57 = [NSDictionary dictionaryWithObjects:v145 forKeys:v144 count:2];
  v58 = [(EPRoutingSlipEntry *)v53 initWithName:@"waitForBridge" transactionClass:v54 operands:v57];

  [v126 addObject:v58];
  v59 = [EPRoutingSlipEntry alloc];
  v60 = objc_opt_class();
  v142[0] = @"setDaemonsEnabledNormalizeDeviceID";
  v61 = [[EPSagaOperandUUID alloc] initWithUUID:v11];
  v143[0] = v61;
  v142[1] = @"setDaemonsEnabledRollback";
  v62 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100187750];
  v143[1] = v62;
  v142[2] = @"forceEnableIfPairedOrActive";
  v63 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  v143[2] = v63;
  v64 = [NSDictionary dictionaryWithObjects:v143 forKeys:v142 count:3];
  v65 = [(EPRoutingSlipEntry *)v59 initWithName:@"enableDaemons" transactionClass:v60 operands:v64];

  [v126 addObject:v65];
  v66 = [EPRoutingSlipEntry alloc];
  v67 = objc_opt_class();
  v140 = @"timeoutDuration";
  v68 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100187848];
  v141 = v68;
  v69 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
  v70 = [(EPRoutingSlipEntry *)v66 initWithName:@"wallClockWaitForDaemonsToEnable" transactionClass:v67 operands:v69];

  [v126 addObject:v70];
  v71 = [EPRoutingSlipEntry alloc];
  v72 = objc_opt_class();
  v138[0] = @"nrDeviceIdentifier";
  v73 = [[EPSagaOperandUUID alloc] initWithUUID:v125];
  v139[0] = v73;
  v138[1] = @"isPaired";
  v74 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  v139[1] = v74;
  v75 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:2];
  v76 = [(EPRoutingSlipEntry *)v71 initWithName:@"setDeviceAsPaired" transactionClass:v72 operands:v75];

  [v126 addObject:v76];
  v77 = +[NRFeatureFlags sharedInstance];
  LODWORD(v73) = [v77 watchTransfer];

  if (v73)
  {
    v78 = [EPRoutingSlipEntry alloc];
    v79 = objc_opt_class();
    v136 = @"nrDeviceIdentifier";
    v80 = [[EPSagaOperandUUID alloc] initWithUUID:v125];
    v137 = v80;
    v81 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    v82 = [(EPRoutingSlipEntry *)v78 initWithName:@"unstageWatch" transactionClass:v79 operands:v81];

    [v126 addObject:v82];
    v76 = v82;
  }

  v83 = [[EPRoutingSlipEntry alloc] initWithName:@"finishSetupIfNotAltAccount" transactionClass:objc_opt_class() operands:0];

  [v126 addObject:v83];
  v84 = [EPRoutingSlipEntry alloc];
  v85 = objc_opt_class();
  v134[0] = @"nrDeviceIdentifier";
  v86 = [[EPSagaOperandUUID alloc] initWithUUID:v125];
  v135[0] = v86;
  v134[1] = @"extensiblePairingShouldFilePairingReport";
  v87 = [EPSagaOperandNumber alloc];
  v88 = [v124 objectForKeyedSubscript:@"extensiblePairingShouldFilePairingReport"];
  v89 = [(EPSagaOperandNumber *)v87 initWithNumber:v88];
  v135[1] = v89;
  v134[2] = @"extensiblePairingGizmoPairingVersion";
  v90 = [EPSagaOperandNumber alloc];
  v91 = [v124 objectForKeyedSubscript:@"extensiblePairingGizmoPairingVersion"];
  v92 = [(EPSagaOperandNumber *)v90 initWithNumber:v91];
  v135[2] = v92;
  v134[3] = @"shouldWaitForIsSetup";
  v93 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100187768];
  v135[3] = v93;
  v94 = [NSDictionary dictionaryWithObjects:v135 forKeys:v134 count:4];
  v95 = [(EPRoutingSlipEntry *)v84 initWithName:@"pairedSyncIfNotAltAccount" transactionClass:v85 operands:v94];

  [v126 addObject:v95];
  if ([v123 BOOLValue])
  {
    v96 = [EPRoutingSlipEntry alloc];
    v97 = objc_opt_class();
    v132 = @"timeoutDuration";
    v98 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100187858];
    v133 = v98;
    v99 = [NSDictionary dictionaryWithObjects:&v133 forKeys:&v132 count:1];
    v100 = [(EPRoutingSlipEntry *)v96 initWithName:@"wallClockWaitForNPSToStart" transactionClass:v97 operands:v99];

    [v126 addObject:v100];
    v95 = v100;
  }

  v101 = [EPRoutingSlipEntry alloc];
  v102 = objc_opt_class();
  v130 = @"nrDeviceIdentifier";
  v103 = [[EPSagaOperandUUID alloc] initWithUUID:v125];
  v131 = v103;
  v104 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
  v105 = [(EPRoutingSlipEntry *)v101 initWithName:@"tellIDSLocalPairingSetupCompleted" transactionClass:v102 operands:v104];

  [v126 addObject:v105];
  v106 = [v124 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E9C8;
  block[3] = &unk_100175688;
  v128 = v126;
  v129 = v119;
  v107 = v126;
  v108 = v119;
  dispatch_async(v106, block);
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 addService:self];
  v8.receiver = self;
  v8.super_class = EPSagaTransactionNewWatchPairing;
  [(EPSagaTransactionRoutingSlip *)&v8 beginTransactionWithRoutingSlipEntry:v7 serviceRegistry:v6];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 addService:self];
  v8.receiver = self;
  v8.super_class = EPSagaTransactionNewWatchPairing;
  [(EPSagaTransactionRoutingSlip *)&v8 beginRollbackWithRoutingSlipEntry:v7 serviceRegistry:v6];
}

- (void)routingSlipDidComplete:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 removeService:self];
  v8.receiver = self;
  v8.super_class = EPSagaTransactionNewWatchPairing;
  [(EPSagaTransactionRoutingSlip *)&v8 routingSlipDidComplete:v7 serviceRegistry:v6];
}

- (void)notifyPasscode:(id)a3
{
  serviceRegistry = self->_serviceRegistry;
  v4 = a3;
  v5 = [(EPServiceRegistry *)serviceRegistry optionalServiceFromClass:objc_opt_class()];
  [v5 notifyPasscode:v4];
}

- (id)pairingReport
{
  v2 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v3 = [v2 pairingReport];

  return v3;
}

- (id)pairingID
{
  v2 = [(EPServiceRegistry *)self->_serviceRegistry optionalServiceFromClass:objc_opt_class()];
  v3 = [v2 pairingID];

  return v3;
}

@end