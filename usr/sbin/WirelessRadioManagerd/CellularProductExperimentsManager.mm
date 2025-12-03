@interface CellularProductExperimentsManager
- (CellularProductExperimentsManager)init;
- (void)notifyRegisteredClientsForExperimentEnd;
- (void)notifyRegisteredClientsForExperimentStart:(id)start;
- (void)readParametersFromPlist:(id)plist;
- (void)subscribeToTrial;
- (void)updateTreatment;
@end

@implementation CellularProductExperimentsManager

- (CellularProductExperimentsManager)init
{
  v7.receiver = self;
  v7.super_class = CellularProductExperimentsManager;
  v2 = [(CellularProductExperimentsManager *)&v7 init];
  [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: init CellularProductExperimentsManager"];
  v3 = dispatch_queue_create("com.apple.WirelessRadioManager.CellularProductExperimentsManager", 0);
  [(CellularProductExperimentsManager *)v2 setCellularProdExpQueue:v3];

  v4 = [TRIClient clientWithIdentifier:259];
  trialClient = v2->trialClient;
  v2->trialClient = v4;

  [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: initialized trialClient for Wireless project ID"];
  return v2;
}

- (void)readParametersFromPlist:(id)plist
{
  plistCopy = plist;
  v11 = 0;
  v4 = [[NSDictionary alloc] initWithContentsOfURL:plistCopy error:&v11];

  v5 = v11;
  if ([v4 count])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = @"CellularProductExperimentsManager: readParametersFromPlist: Error reading from plist file";
LABEL_9:
    [WCM_Logging logLevel:22 message:v7];
    goto LABEL_10;
  }

  v8 = [v4 objectForKeyedSubscript:@"com.apple.WirelessRadioManagerd"];
  if (!v8)
  {
    v7 = @"CellularProductExperimentsManager: readParametersFromPlist: No Bundle ID com.apple.WirelessRadioManagerd in the plist";
    goto LABEL_9;
  }

  v9 = v8;
  v10 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  [v10 setTrialParameters:v9];

LABEL_10:
}

- (void)notifyRegisteredClientsForExperimentStart:(id)start
{
  startCopy = start;
  [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: Experiment Start: set parameters from plist at %@", startCopy];
  [(CellularProductExperimentsManager *)self readParametersFromPlist:startCopy];
}

- (void)notifyRegisteredClientsForExperimentEnd
{
  [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: Experiment End: restore to default parameters from default plist file at %@", @"/System/Library/WRM/WRMDefaultCellularProductExperimentParameters.plist"];
  v3 = [NSURL fileURLWithPath:@"/System/Library/WRM/WRMDefaultCellularProductExperimentParameters.plist"];
  [(CellularProductExperimentsManager *)self readParametersFromPlist:v3];
}

- (void)updateTreatment
{
  [(TRIClient *)self->trialClient refresh];
  v3 = [(TRIClient *)self->trialClient experimentIdentifiersWithNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL"];
  v20 = v3;
  if (!v3)
  {
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: experimentIdentifiers nil. Experiment ended"];
    [(CellularProductExperimentsManager *)self notifyRegisteredClientsForExperimentEnd];
    goto LABEL_14;
  }

  experimentId = [v3 experimentId];
  deploymentId = [v20 deploymentId];
  treatmentId = [v20 treatmentId];
  [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: experimentIdentifiers are: experimentId: %@, deploymentId: %d, treatmentId: %@", experimentId, deploymentId, treatmentId];

  v7 = [(TRIClient *)self->trialClient levelForFactor:off_1002B76B8 withNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL"];
  v8 = v7;
  if (v7)
  {
    fileValue = [v7 fileValue];
    path = [fileValue path];
    if (path)
    {
      v11 = path;
      fileValue2 = [v8 fileValue];
      path2 = [fileValue2 path];
      v14 = [path2 length];

      if (v14)
      {
        fileValue3 = [v8 fileValue];
        path3 = [fileValue3 path];
        v17 = [NSURL fileURLWithPath:path3];

        if (v17)
        {
          fileValue4 = [v8 fileValue];
          path4 = [fileValue4 path];
          [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: activateTreatment: Trial Asset path: %@", path4];

          [(CellularProductExperimentsManager *)self notifyRegisteredClientsForExperimentStart:v17];
        }

        else
        {
          [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: activateTreatment: Invalid asset path in trial"];
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: activateTreatment: Invalid Asset Path. Treatment ended. Clear trial plist."];
    [(CellularProductExperimentsManager *)self notifyRegisteredClientsForExperimentEnd];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: activateTreatment: Invalid Trial level"];
  }

LABEL_13:

LABEL_14:
}

- (void)subscribeToTrial
{
  if (self->trialClient)
  {
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: checkTreatmentUpdate: Subscribing to Trial"];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v3 = objc_autoreleasePoolPush();
    objc_initWeak(&location, self);
    trialClient = self->trialClient;
    cellularProdExpQueue = self->cellularProdExpQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100048160;
    v7[3] = &unk_10023E808;
    objc_copyWeak(&v8, &location);
    v7[4] = &v10;
    v6 = [(TRIClient *)trialClient addUpdateHandlerForNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" queue:cellularProdExpQueue usingBlock:v7];
    if ((v11[3] & 1) == 0)
    {
      [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: checkTreatmentUpdate: trialCallbackReceived : NO"];
      [(CellularProductExperimentsManager *)self updateTreatment];
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v3);
    _Block_object_dispose(&v10, 8);
  }

  else
  {

    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: checkTreatmentUpdate: Invalid Trial client"];
  }
}

@end