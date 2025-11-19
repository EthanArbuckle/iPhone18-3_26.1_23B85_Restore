@interface NerdController
+ (id)copyStringRepresentationOfNVRamVariableValue:(const __CFString *)a3;
+ (id)logTypeString:(unsigned __int8)a3;
+ (void)saveSystemLogs;
- (BOOL)bootCentauri;
- (BOOL)drawImageFromPath:(id)a3;
- (BOOL)rebootCentauri;
- (BOOL)rebootToRecovery;
- (id)getNearestDescriptorToTarget:(id)a3 primaryDescriptor:(id)a4 primaryAlternateDescriptor:(id)a5;
- (id)initController;
- (int)getFreeSpaceAvailableForUpdate:(unint64_t *)a3 deleteSystemPartition:(BOOL)a4;
- (int64_t)actionApplyUpdate:(id *)a3;
- (int64_t)actionBeginScan:(id *)a3;
- (int64_t)actionCheckApplyConstraints:(id *)a3;
- (int64_t)actionCheckDownloadConstraints:(id *)a3;
- (int64_t)actionCheckPrepareConstraints:(id *)a3;
- (int64_t)actionCheckPreviousUpdateState:(id *)a3;
- (int64_t)actionCleanupAndReboot:(id *)a3;
- (int64_t)actionDoEACS:(id *)a3;
- (int64_t)actionDownloadUpdate:(id *)a3;
- (int64_t)actionInitializeManualMode:(id *)a3;
- (int64_t)actionLoadNWCredAndCamp:(id *)a3;
- (int64_t)actionLoadPersisted:(id *)a3;
- (int64_t)actionPrepareUpdate:(id *)a3;
- (int64_t)actionPurge:(id *)a3;
- (int64_t)actionReportUpdateFound:(id *)a3;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (unsigned)readRecoveryReason;
- (void)activateStateMachine;
- (void)adjustUpdateProgressUI:(double)a3;
- (void)adoptOptionalEventAlterations;
- (void)applyAttemptFailed:(id)a3;
- (void)beginTapToManager;
- (void)cleanBootCommandForPanicMedic;
- (void)cleanSystemLogs;
- (void)dumpControllerState;
- (void)handleDebugModeSignals:(int)a3;
- (void)initializeOOBMessenger;
- (void)postErrorEventWithDescription:(id)a3;
- (void)registerNERDFSMhandlers;
- (void)sendControllerEvent:(id)a3 eventDescription:(id)a4;
- (void)sendOOBMessage:(id)a3 withCompletion:(id)a4;
- (void)sendOOBState:(id)a3 andProgress:(id)a4;
- (void)setCustomizations:(id)a3 controllerName:(id)a4 initialState:(id)a5 activate:(BOOL)a6;
- (void)setupAndBeginTapToManager;
- (void)setupCompletedDoEACS;
- (void)setupCompletedDoReboot;
- (void)setupCompletedDoRecovery;
- (void)setupCompletedDoScan;
- (void)startDownloadForSU:(id)a3;
- (void)startSystemLogStream;
- (void)startUpdateHelper;
- (void)statusChange:(id)a3 onEvent:(id)a4 inState:(id)a5 nextState:(id)a6;
- (void)stopSystemLogStream;
- (void)updateApplied;
- (void)updateAssetDownloadProgress:(id)a3;
- (void)updateAssetDownloadStalled:(id)a3;
- (void)updateAssetDownloaded:(id)a3;
- (void)updateAttemptFailed:(id)a3;
- (void)updatePrepareProgress:(id)a3;
- (void)updatePrepared:(id)a3;
@end

@implementation NerdController

- (unsigned)readRecoveryReason
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v3)
  {
    v4 = v3;
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"recovery-reason", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = CFGetTypeID(CFProperty);
      if (v7 == CFDataGetTypeID())
      {
        v8 = *CFDataGetBytePtr(v6);
        v9 = [(NerdController *)self nerdLogger];
        v10 = [v9 oslog];

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v17[0] = 67109120;
          v17[1] = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found recovery-reason=%u", v17, 8u);
        }
      }

      else
      {
        v15 = [(NerdController *)self nerdLogger];
        v10 = [v15 oslog];

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17[0]) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to find a valid recovery-reason property", v17, 2u);
        }

        v8 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v13 = [(NerdController *)self nerdLogger];
      v14 = [v13 oslog];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unable to find recovery-reason property", v17, 2u);
      }

      v8 = 0;
    }

    IOObjectRelease(v4);
  }

  else
  {
    v11 = [(NerdController *)self nerdLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to create Registry entry for the 'chosen' node. Failed to check if we entered from panicmedic", v17, 2u);
    }

    return 0;
  }

  return v8;
}

- (void)cleanBootCommandForPanicMedic
{
  if ([(NerdController *)self readRecoveryReason]== 3)
  {
    v3 = [(NerdController *)self nerdLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entered NeRD from panicmedic, cleaning boot-command", buf, 2u);
    }

    if (!delete_nvram_variable_and_force_sync(@"boot-command"))
    {
      v5 = [(NerdController *)self nerdLogger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to delete boot-command nvram", v7, 2u);
      }
    }
  }
}

- (void)setCustomizations:(id)a3 controllerName:(id)a4 initialState:(id)a5 activate:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [[NSDictionary alloc] initWithDictionary:v12 copyItems:1];

  [(NerdController *)self setStateTable:v13];
  v14 = [[SUCoreLog alloc] initWithCategory:v10];
  [(NerdController *)self setNerdLogger:v14];

  [(NerdController *)self adoptOptionalEventAlterations];
  v15 = [(NerdController *)self nerdLogger];
  v16 = [v15 oslog];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating FSM", buf, 2u);
  }

  v17 = [[SUCoreFSM alloc] initMachine:v10 withTable:self->_stateTable startingIn:v11];
  [(NerdController *)self setNerdFSM:v17];

  [(NerdController *)self setUpdateAttempt:0];
  v18 = [NSNumber numberWithUnsignedLongLong:0];
  [(NerdController *)self setApplyAttempt:v18];

  v19 = [NSNumber numberWithUnsignedLongLong:0];
  [(NerdController *)self setDownloadAttempt:v19];

  v20 = [NSNumber numberWithUnsignedLongLong:0];
  [(NerdController *)self setUpdateProgress:v20];

  [(NerdController *)self setOkToProceedWithAutoPath:0];
  [(NerdController *)self setUpdatePolicy:0];
  [(NerdController *)self setPersistedState:0];
  [(NerdController *)self setRunningInDebugMode:0];
  [(NerdController *)self setStopBeforeReboot:0];
  v21 = os_transaction_create();
  [(NerdController *)self setKeepAliveTransaction:v21];

  v22 = [NSNumber numberWithUnsignedLongLong:60];
  [(NerdController *)self setNetworkConnectivityTimeout:v22];

  v23 = [[NeRDWiFiManager alloc] initManager];
  [(NerdController *)self setWifiManager:v23];

  [(NerdController *)self setAccessPointName:0];
  [(NerdController *)self setAccessPointPassword:0];
  v24 = [NSNumber numberWithUnsignedLongLong:0];
  [(NerdController *)self setNetworkAquisitionAttempt:v24];

  v25 = objc_alloc_init(NSMutableDictionary);
  [(NerdController *)self setStateDictionary:v25];

  [(NerdController *)self registerNERDFSMhandlers];
  v26 = dispatch_queue_create("com.apple.nerd.sharingQueue", 0);
  [(NerdController *)self setSharingDispatchQueue:v26];

  v27 = dispatch_queue_create("com.apple.nerd.persistedStateQueue", 0);
  [(NerdController *)self setPersistedStateDispatchQueue:v27];

  v28 = dispatch_queue_create("com.apple.nerd.SystemConfigQueue", 0);
  [(NerdController *)self setSystemConfigDispatchQueue:v28];

  [(NerdController *)self setPreviousOTAUUID:0];
  [(NerdController *)self setBootedOSType:0];
  [(NerdController *)self setBootedOSVersion:0];
  [(NerdController *)self setBootedOSProductVersion:0];
  [(NerdController *)self setTargetOSVersion:0];
  [(NerdController *)self setTapToManagerNeedsReinitialization:0];
  [(NerdController *)self setFakeUI:0];
  [(NerdController *)self setBootCommand:0];
  v29 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"boot-command"];
  if (v29)
  {
    [(NerdController *)self setBootCommand:v29];
    v30 = [(NerdController *)self nerdLogger];
    v31 = [v30 oslog];

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v65 = v29;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found boot-command=%{public}@", buf, 0xCu);
    }

    if ([v29 isEqual:@"recover-once"])
    {
      v32 = [(NerdController *)self nerdLogger];
      v33 = [v32 oslog];

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Found boot-command=recover-once, consider as manually entered", buf, 2u);
      }

      [(NerdController *)self setManuallyEntered:1];
    }
  }

  v34 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"ota-uuid"];
  if (!v34)
  {
    v35 = [(NerdController *)self nerdLogger];
    v36 = [v35 oslog];

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Did not find ota-uuid, consider as manually entered", buf, 2u);
    }

    [(NerdController *)self setManuallyEntered:1];
  }

  [(NerdController *)self cleanBootCommandForPanicMedic];
  updated = mount_update_partition_if_exists("/private/var/MobileSoftwareUpdate/", v37, v38, v39, v40, v41, v42, v43);
  v45 = [(NerdController *)self nerdLogger];
  v46 = [v45 oslog];

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = "Failed to mount";
    if (!updated)
    {
      v47 = "Successfully/Previously mounted";
    }

    *buf = 136446466;
    v65 = v47;
    v66 = 1024;
    v67 = updated;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}s update volume rc: %d", buf, 0x12u);
  }

  v48 = +[NSFileManager defaultManager];
  v49 = [[NSString alloc] initWithFormat:@"%s/%s", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD"];
  v63 = 0;
  if ([v48 fileExistsAtPath:v49 isDirectory:&v63])
  {
    v50 = 0;
LABEL_23:
    v54 = [(NerdController *)self nerdLogger];
    v55 = [v54 oslog];

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v65 = v49;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Creating splunk report directory under %{public}@", buf, 0xCu);
    }

    v56 = [SUCoreEventReporter initSharedReporterStoringToPath:v49];
    goto LABEL_29;
  }

  v51 = [(NerdController *)self nerdLogger];
  v52 = [v51 oslog];

  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v65 = v49;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Creating nerdController persisted state directory(%{public}@)", buf, 0xCu);
  }

  v62 = 0;
  v53 = [v48 createDirectoryAtPath:v49 withIntermediateDirectories:1 attributes:0 error:&v62];
  v50 = v62;
  if (v53)
  {
    goto LABEL_23;
  }

  v57 = [(NerdController *)self nerdLogger];
  v58 = [v57 oslog];

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Failed to create Persisted state dir for nerd. Splunk events will be stored under /tmp", buf, 2u);
  }

  v56 = +[SUCoreEventReporter sharedReporter];
LABEL_29:
  v59 = v56;
  [(NerdController *)self setNerdEventReporter:v56];

  if (v6)
  {
    [(NerdController *)self activateStateMachine];
  }

  ramrod_log_set_handler(nerd_ramrod_msg_logger);
  v60 = [(NerdController *)self nerdLogger];
  v61 = [v60 oslog];

  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Initialization of nerd controller complete", buf, 2u);
  }
}

- (void)adoptOptionalEventAlterations
{
  if (MGGetBoolAnswer())
  {
    v3 = [[NSString alloc] initWithFormat:@"%s/%s/%@", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD", @"NeRDSimulateEventAlterations.txt"];
    v4 = +[SUCoreSimulate sharedSimulator];
    [v4 adoptAllEventAlterations:v3];

    v5 = [(NerdController *)self nerdLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initializing controller with SUCore simulated event alterations (from file '%{public}@'):", buf, 0xCu);
    }

    v7 = +[SUCoreSimulate sharedSimulator];
    [v7 dumpAllEventAlterations];
  }
}

- (void)activateStateMachine
{
  v3 = [(NerdController *)self nerdLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activating machine", v6, 2u);
  }

  v5 = [(NerdController *)self nerdFSM];
  [v5 activateMachine];
}

- (BOOL)drawImageFromPath:(id)a3
{
  v3 = [(NerdController *)self nerdLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[NerdController drawImageFromPath:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s not supported in this environment", &v6, 0xCu);
  }

  return 0;
}

- (BOOL)bootCentauri
{
  has_centauri = ramrod_device_has_centauri();
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (has_centauri)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to mount recovery volume", buf, 2u);
    }

    v14 = mount_recovery_boot("/mnt8", v7, v8, v9, v10, v11, v12, v13);
    v15 = [(NerdController *)self nerdLogger];
    v16 = [v15 oslog];

    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Recovery volume mounted successfully", buf, 2u);
      }
    }

    else
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to mount recovery volume", buf, 2u);
      }

      v14 = "";
    }

    v19 = [NSString stringWithCString:v14];
    v20 = [NSString stringWithCString:"/boot/usr/standalone/firmware/Centauri/ftab.bin"];
    v5 = [v19 stringByAppendingPathComponent:v20];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    v32 = 0u;
    *(&v32 + 1) = [v5 fileSystemRepresentation];
    v21 = CentauriBooterCreate();
    if (v21)
    {
      v22 = v21;
      v23 = CentauriBooterBootChip();
      CFRelease(v22);
      v24 = [(NerdController *)self nerdLogger];
      v25 = [v24 oslog];

      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v26)
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Centauri booted successfully", v30, 2u);
        }

        v18 = 1;
        goto LABEL_24;
      }

      if (v26)
      {
        *v30 = 0;
        v28 = "Failed to boot Centauri";
        goto LABEL_22;
      }
    }

    else
    {
      v27 = [(NerdController *)self nerdLogger];
      v25 = [v27 oslog];

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        v28 = "Failed to allocate Centauri booter";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v28, v30, 2u);
      }
    }

    v18 = 0;
LABEL_24:

    goto LABEL_25;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Centauri not supported, no need to boot it", buf, 2u);
  }

  v18 = 1;
LABEL_25:

  return v18;
}

- (BOOL)rebootCentauri
{
  if (ramrod_device_has_centauri())
  {
    if (CentauriControllerSetChipPower())
    {
      v3 = [(NerdController *)self nerdLogger];
      v4 = [v3 oslog];

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to power off Centauri", buf, 2u);
      }

      return 0;
    }

    v8 = CentauriControllerSetChipPower();
    v9 = [(NerdController *)self nerdLogger];
    v10 = [v9 oslog];

    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to power on Centauri", v13, 2u);
      }

      return 0;
    }

    if (v11)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Centauri power cycled", v12, 2u);
    }

    return [(NerdController *)self bootCentauri];
  }

  else
  {
    v5 = [(NerdController *)self nerdLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Centauri not supported, no need to reboot it", v15, 2u);
    }

    return 1;
  }
}

- (id)initController
{
  v101.receiver = self;
  v101.super_class = NerdController;
  v2 = [(NerdController *)&v101 init];
  v3 = v2;
  if (v2)
  {
    [(NerdController *)v2 setMaxUpdateAttempts:5];
    v96 = kSU_S_Startup;
    v235[0] = kSU_S_Startup;
    v233 = kSU_E_ActivateLoadingPersisted;
    v4 = kSUCoreNextStateKey;
    v5 = kSU_S_LoadingPersisted;
    v6 = kSUCoreActionKey;
    v231[0] = kSUCoreNextStateKey;
    v231[1] = kSUCoreActionKey;
    v232[0] = kSU_S_LoadingPersisted;
    v232[1] = kSU_A_LoadPersisted;
    v95 = [NSDictionary dictionaryWithObjects:v232 forKeys:v231 count:2];
    v234 = v95;
    v94 = [NSDictionary dictionaryWithObjects:&v234 forKeys:&v233 count:1];
    v236[0] = v94;
    v235[1] = v5;
    v229[0] = @"ProceedToNextUpdateStep";
    v227[0] = v4;
    v227[1] = v6;
    v228[0] = @"CheckingPreviousUpdateStatus";
    v228[1] = @"ActionCheckPreviousUpdateState";
    v93 = [NSDictionary dictionaryWithObjects:v228 forKeys:v227 count:2];
    v230[0] = v93;
    v229[1] = @"ErrorGeneric";
    v225[0] = v4;
    v225[1] = v6;
    v226[0] = @"StartingManualMode";
    v226[1] = @"ActionInitializeManualMode";
    v92 = [NSDictionary dictionaryWithObjects:v226 forKeys:v225 count:2];
    v230[1] = v92;
    v91 = [NSDictionary dictionaryWithObjects:v230 forKeys:v229 count:2];
    v236[1] = v91;
    v235[2] = @"CheckingPreviousUpdateStatus";
    v223[0] = @"ErrorGeneric";
    v221[0] = v4;
    v221[1] = v6;
    v222[0] = @"StartingManualMode";
    v222[1] = @"ActionInitializeManualMode";
    v90 = [NSDictionary dictionaryWithObjects:v222 forKeys:v221 count:2];
    v224[0] = v90;
    v223[1] = @"SwitchToManualMode";
    v219[0] = v4;
    v219[1] = v6;
    v220[0] = @"StartingManualMode";
    v220[1] = @"ActionInitializeManualMode";
    v89 = [NSDictionary dictionaryWithObjects:v220 forKeys:v219 count:2];
    v224[1] = v89;
    v223[2] = @"ProceedToNextUpdateStep";
    v217[0] = v4;
    v217[1] = v6;
    v218[0] = @"LoadingNwCredentialsAndCamping";
    v218[1] = @"ActionLoadNWCredentialsAndCamp";
    v88 = [NSDictionary dictionaryWithObjects:v218 forKeys:v217 count:2];
    v224[2] = v88;
    v87 = [NSDictionary dictionaryWithObjects:v224 forKeys:v223 count:3];
    v236[2] = v87;
    v235[3] = @"LoadingNwCredentialsAndCamping";
    v215[0] = @"ErrorGeneric";
    v213[0] = v4;
    v213[1] = v6;
    v214[0] = @"StartingManualMode";
    v214[1] = @"ActionInitializeManualMode";
    v86 = [NSDictionary dictionaryWithObjects:v214 forKeys:v213 count:2];
    v216[0] = v86;
    v215[1] = @"ProceedToNextUpdateStep";
    v98 = kSU_S_PurgingAnyPrepared;
    v211[0] = v4;
    v211[1] = v6;
    v63 = kSU_A_MSUPurge;
    v212[0] = kSU_S_PurgingAnyPrepared;
    v212[1] = kSU_A_MSUPurge;
    v85 = [NSDictionary dictionaryWithObjects:v212 forKeys:v211 count:2];
    v216[1] = v85;
    v215[2] = @"ErrorNetwork";
    v209 = v6;
    v210 = @"ActionLoadNWCredentialsAndCamp";
    v84 = [NSDictionary dictionaryWithObjects:&v210 forKeys:&v209 count:1];
    v216[2] = v84;
    v215[3] = @"ResetManualMode";
    v207[0] = v4;
    v207[1] = v6;
    v208[0] = @"StartingManualMode";
    v208[1] = @"ActionInitializeManualMode";
    v83 = [NSDictionary dictionaryWithObjects:v208 forKeys:v207 count:2];
    v216[3] = v83;
    v82 = [NSDictionary dictionaryWithObjects:v216 forKeys:v215 count:4];
    v236[3] = v82;
    v235[4] = @"StartingManualMode";
    v205[0] = @"ErrorGeneric";
    v203[0] = v4;
    v203[1] = v6;
    v204[0] = @"StartingManualMode";
    v204[1] = @"ActionInitializeManualMode";
    v81 = [NSDictionary dictionaryWithObjects:v204 forKeys:v203 count:2];
    v206[0] = v81;
    v205[1] = @"ResetManualMode";
    v201[0] = v4;
    v201[1] = v6;
    v202[0] = @"StartingManualMode";
    v202[1] = @"ActionInitializeManualMode";
    v80 = [NSDictionary dictionaryWithObjects:v202 forKeys:v201 count:2];
    v206[1] = v80;
    v205[2] = @"ProceedToNextUpdateStep";
    v199[0] = v4;
    v199[1] = v6;
    v200[0] = @"LoadingNwCredentialsAndCamping";
    v200[1] = @"ActionLoadNWCredentialsAndCamp";
    v79 = [NSDictionary dictionaryWithObjects:v200 forKeys:v199 count:2];
    v206[2] = v79;
    v205[3] = @"TriggerRecoveryWithSR";
    v197[0] = v4;
    v197[1] = v6;
    v198[0] = @"LoadingNwCredentialsAndCamping";
    v198[1] = @"ActionLoadNWCredentialsAndCamp";
    v78 = [NSDictionary dictionaryWithObjects:v198 forKeys:v197 count:2];
    v206[3] = v78;
    v205[4] = @"TriggerEACS";
    v195[0] = v4;
    v195[1] = v6;
    v196[0] = @"EACS";
    v196[1] = @"ActionDoEACS";
    v77 = [NSDictionary dictionaryWithObjects:v196 forKeys:v195 count:2];
    v206[4] = v77;
    v205[5] = @"TriggerReboot";
    v193[0] = v4;
    v193[1] = v6;
    v194[0] = @"CleanupAndReboot";
    v194[1] = @"ActionCleanupAndReboot";
    v76 = [NSDictionary dictionaryWithObjects:v194 forKeys:v193 count:2];
    v206[5] = v76;
    v75 = [NSDictionary dictionaryWithObjects:v206 forKeys:v205 count:6];
    v236[4] = v75;
    v235[5] = @"EACS";
    v191[0] = @"ErrorGeneric";
    v189[0] = v4;
    v189[1] = v6;
    v190[0] = @"StartingManualMode";
    v190[1] = @"ActionInitializeManualMode";
    v74 = [NSDictionary dictionaryWithObjects:v190 forKeys:v189 count:2];
    v192[0] = v74;
    v191[1] = @"ProceedToNextUpdateStep";
    v187[0] = v4;
    v187[1] = v6;
    v188[0] = @"CleanupAndReboot";
    v188[1] = @"ActionCleanupAndReboot";
    v73 = [NSDictionary dictionaryWithObjects:v188 forKeys:v187 count:2];
    v192[1] = v73;
    v72 = [NSDictionary dictionaryWithObjects:v192 forKeys:v191 count:2];
    v236[5] = v72;
    v235[6] = v98;
    v185[0] = @"ErrorGeneric";
    v183[0] = v4;
    v183[1] = v6;
    v184[0] = @"StartingManualMode";
    v184[1] = @"ActionInitializeManualMode";
    v71 = [NSDictionary dictionaryWithObjects:v184 forKeys:v183 count:2];
    v186[0] = v71;
    v185[1] = @"ProceedToNextUpdateStep";
    v7 = kSU_S_Scanning;
    v181[0] = v4;
    v181[1] = v6;
    v97 = v3;
    v182[0] = kSU_S_Scanning;
    v182[1] = @"ActionBeginScan";
    v70 = [NSDictionary dictionaryWithObjects:v182 forKeys:v181 count:2];
    v186[1] = v70;
    v185[2] = @"ResetManualMode";
    v179[0] = v4;
    v179[1] = v6;
    v180[0] = @"StartingManualMode";
    v180[1] = @"ActionInitializeManualMode";
    v69 = [NSDictionary dictionaryWithObjects:v180 forKeys:v179 count:2];
    v186[2] = v69;
    v68 = [NSDictionary dictionaryWithObjects:v186 forKeys:v185 count:3];
    v236[6] = v68;
    v235[7] = v7;
    v177[0] = @"ErrorNetwork";
    v175 = v6;
    v176 = @"ActionBeginScan";
    v67 = [NSDictionary dictionaryWithObjects:&v176 forKeys:&v175 count:1];
    v178[0] = v67;
    v177[1] = @"NoUpdateFound";
    v173[0] = v4;
    v173[1] = v6;
    v174[0] = @"StartingManualMode";
    v174[1] = @"ActionInitializeManualMode";
    v66 = [NSDictionary dictionaryWithObjects:v174 forKeys:v173 count:2];
    v178[1] = v66;
    v177[2] = @"ErrorGeneric";
    v171[0] = v4;
    v171[1] = v6;
    v172[0] = @"StartingManualMode";
    v172[1] = @"ActionInitializeManualMode";
    v65 = [NSDictionary dictionaryWithObjects:v172 forKeys:v171 count:2];
    v178[2] = v65;
    v177[3] = @"ProceedToNextUpdateStep";
    v169[0] = v4;
    v169[1] = v6;
    v170[0] = @"CheckNerdConstraints";
    v170[1] = @"ActionCheckDownloadConstraints";
    v62 = [NSDictionary dictionaryWithObjects:v170 forKeys:v169 count:2];
    v178[3] = v62;
    v177[4] = @"ResetManualMode";
    v167[0] = v4;
    v167[1] = v6;
    v168[0] = @"StartingManualMode";
    v168[1] = @"ActionInitializeManualMode";
    v61 = [NSDictionary dictionaryWithObjects:v168 forKeys:v167 count:2];
    v178[4] = v61;
    v177[5] = @"UpdateFound";
    v8 = kSU_S_UpdateFound;
    v165[0] = v4;
    v165[1] = v6;
    v166[0] = kSU_S_UpdateFound;
    v166[1] = @"ActionReportUpdateFound";
    v60 = [NSDictionary dictionaryWithObjects:v166 forKeys:v165 count:2];
    v178[5] = v60;
    v59 = [NSDictionary dictionaryWithObjects:v178 forKeys:v177 count:6];
    v236[7] = v59;
    v235[8] = v8;
    v163[0] = @"ErrorGeneric";
    v161[0] = v4;
    v161[1] = v6;
    v162[0] = @"StartingManualMode";
    v162[1] = @"ActionInitializeManualMode";
    v58 = [NSDictionary dictionaryWithObjects:v162 forKeys:v161 count:2];
    v164[0] = v58;
    v163[1] = @"ProceedToNextUpdateStep";
    v159[0] = v4;
    v159[1] = v6;
    v160[0] = @"CheckNerdConstraints";
    v160[1] = @"ActionCheckDownloadConstraints";
    v57 = [NSDictionary dictionaryWithObjects:v160 forKeys:v159 count:2];
    v164[1] = v57;
    v163[2] = @"ResetManualMode";
    v157[0] = v4;
    v157[1] = v6;
    v158[0] = @"StartingManualMode";
    v158[1] = @"ActionInitializeManualMode";
    v56 = [NSDictionary dictionaryWithObjects:v158 forKeys:v157 count:2];
    v164[2] = v56;
    v163[3] = @"TriggerRecoveryWithSR";
    v155[0] = v4;
    v155[1] = v6;
    v156[0] = @"LoadingNwCredentialsAndCamping";
    v156[1] = @"ActionLoadNWCredentialsAndCamp";
    v55 = [NSDictionary dictionaryWithObjects:v156 forKeys:v155 count:2];
    v164[3] = v55;
    v163[4] = @"TriggerEACS";
    v153[0] = v4;
    v153[1] = v6;
    v154[0] = @"EACS";
    v154[1] = @"ActionDoEACS";
    v54 = [NSDictionary dictionaryWithObjects:v154 forKeys:v153 count:2];
    v164[4] = v54;
    v163[5] = @"TriggerReboot";
    v151[0] = v4;
    v151[1] = v6;
    v152[0] = @"CleanupAndReboot";
    v152[1] = @"ActionCleanupAndReboot";
    v53 = [NSDictionary dictionaryWithObjects:v152 forKeys:v151 count:2];
    v164[5] = v53;
    v52 = [NSDictionary dictionaryWithObjects:v164 forKeys:v163 count:6];
    v236[8] = v52;
    v235[9] = @"CheckNerdConstraints";
    v149[0] = @"DownloadConstraintsMet";
    v9 = kSU_S_DownloadingSU;
    v147[0] = v4;
    v147[1] = v6;
    v148[0] = kSU_S_DownloadingSU;
    v148[1] = kSU_A_DownloadSU;
    v51 = [NSDictionary dictionaryWithObjects:v148 forKeys:v147 count:2];
    v150[0] = v51;
    v149[1] = @"PrepareConstraintsMet";
    v38 = kSU_S_Preparing;
    v145[0] = v4;
    v145[1] = v6;
    v146[0] = kSU_S_Preparing;
    v146[1] = kSU_A_PrepareUpdate;
    v50 = [NSDictionary dictionaryWithObjects:v146 forKeys:v145 count:2];
    v150[1] = v50;
    v149[2] = @"ApplyConstraintsMet";
    v37 = kSU_S_Applying;
    v143[0] = v4;
    v143[1] = v6;
    v144[0] = kSU_S_Applying;
    v144[1] = kSU_A_ApplyUpdate;
    v49 = [NSDictionary dictionaryWithObjects:v144 forKeys:v143 count:2];
    v150[2] = v49;
    v149[3] = @"DownloadConstraintsUNMet";
    v141 = v6;
    v142 = @"ActionCheckDownloadConstraints";
    v48 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v141 count:1];
    v150[3] = v48;
    v149[4] = @"PrepareConstraintsUNMet";
    v139 = v6;
    v140 = @"ActionCheckPrepareConstraints";
    v47 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
    v150[4] = v47;
    v149[5] = @"ApplyConstraintsUNMet";
    v137 = v6;
    v138 = @"ActionCheckApplyConstraints";
    v46 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
    v150[5] = v46;
    v149[6] = @"ErrorGeneric";
    v135[0] = v4;
    v135[1] = v6;
    v136[0] = @"StartingManualMode";
    v136[1] = @"ActionInitializeManualMode";
    v45 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:2];
    v150[6] = v45;
    v44 = [NSDictionary dictionaryWithObjects:v150 forKeys:v149 count:7];
    v236[9] = v44;
    v235[10] = v9;
    v133[0] = @"ErrorGeneric";
    v131[0] = v4;
    v131[1] = v6;
    v132[0] = @"StartingManualMode";
    v132[1] = @"ActionInitializeManualMode";
    v43 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:2];
    v134[0] = v43;
    v133[1] = @"ProceedToNextUpdateStep";
    v129[0] = v4;
    v129[1] = v6;
    v130[0] = @"CheckNerdConstraints";
    v130[1] = @"ActionCheckPrepareConstraints";
    v42 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:2];
    v134[1] = v42;
    v10 = kSU_E_DownloadFailed;
    v133[2] = kSU_E_DownloadFailed;
    v127[0] = v4;
    v127[1] = v6;
    v128[0] = v98;
    v128[1] = v63;
    v41 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:2];
    v134[2] = v41;
    v40 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:3];
    v236[10] = v40;
    v235[11] = v38;
    v125[0] = @"ErrorGeneric";
    v123[0] = v4;
    v123[1] = v6;
    v124[0] = @"StartingManualMode";
    v124[1] = @"ActionInitializeManualMode";
    v39 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:2];
    v126[0] = v39;
    v125[1] = @"ProceedToNextUpdateStep";
    v121[0] = v4;
    v121[1] = v6;
    v122[0] = @"CheckNerdConstraints";
    v122[1] = @"ActionCheckApplyConstraints";
    v36 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:2];
    v126[1] = v36;
    v125[2] = v10;
    v119[0] = v4;
    v119[1] = v6;
    v120[0] = v98;
    v120[1] = v63;
    v99 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:2];
    v126[2] = v99;
    v64 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:3];
    v236[11] = v64;
    v235[12] = v37;
    v117[0] = @"ErrorGeneric";
    v115[0] = v4;
    v115[1] = v6;
    v116[0] = @"StartingManualMode";
    v116[1] = @"ActionInitializeManualMode";
    v11 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:2];
    v118[0] = v11;
    v117[1] = @"RetryApply";
    v113[0] = v4;
    v113[1] = v6;
    v114[0] = @"CheckNerdConstraints";
    v114[1] = @"ActionCheckApplyConstraints";
    v12 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:2];
    v118[1] = v12;
    v117[2] = @"ProceedToNextUpdateStep";
    v111[0] = v4;
    v111[1] = v6;
    v112[0] = @"CleanupAndReboot";
    v112[1] = @"ActionCleanupAndReboot";
    v13 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:2];
    v118[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:3];
    v236[12] = v14;
    v235[13] = @"CleanupAndReboot";
    v109 = @"ProceedToNextUpdateStep";
    v107 = v6;
    v108 = @"ActionCleanupAndReboot";
    v15 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    v110 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v236[13] = v16;
    v235[14] = kSUCoreFSMStateDead;
    v105 = kSUCoreFSMEventNotValid;
    v103 = v4;
    v104 = kSUCoreFSMStateNotValid;
    v17 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v106 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v236[14] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v236 forKeys:v235 count:15];

    v20 = v19;
    v3 = v97;

    [(NerdController *)v97 setLastStateTransition:@"Controller Initializing"];
    v21 = +[NSFileManager defaultManager];
    [v21 removeItemAtPath:@"/tmp/nerdControllerState.plist" error:0];
    set_partition_logging_function(_nerd_partition_logger);
    set_partition_execution_function(msu_execute_command_with_callback);
    set_partition_execution_logging_function(msu_partition_execution_logger);
    [(NerdController *)v97 setCustomizations:v19 controllerName:@"nerdController" initialState:v96 activate:1];
    v22 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"nerd-logging"];
    if ([v22 isEqual:@"debug"])
    {
      [(NerdController *)v97 startSystemLogStream];
    }

    if (![(NerdController *)v97 bootCentauri])
    {
      v23 = [(NerdController *)v97 nerdLogger];
      v24 = [v23 oslog];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to boot Centauri, try one more time", buf, 2u);
      }

      if (![(NerdController *)v97 rebootCentauri])
      {
        v25 = [(NerdController *)v97 nerdLogger];
        v26 = [v25 oslog];

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to reboot Centauri, trying one more time", buf, 2u);
        }

        if (![(NerdController *)v97 rebootCentauri])
        {
          v27 = [(NerdController *)v97 nerdLogger];
          v28 = [v27 oslog];

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to reboot Centauri, giving up", buf, 2u);
          }

          [(NerdController *)v97 cleanSystemLogs];
          +[NerdController saveSystemLogs];
          [(NerdController *)v97 rebootToRecovery];
        }
      }
    }

    v29 = [(NerdController *)v97 nerdLogger];
    v30 = [v29 oslog];

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Initializing display", buf, 2u);
    }

    NeRDUIInit();
    sleep(4u);
    v31 = [(NerdController *)v97 nerdLogger];
    v32 = [v31 oslog];

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Done initizlizing display", buf, 2u);
    }

    *buf = "applelogo";
    if ((setNeRDUIStepDisplayData(1, buf) & 1) == 0)
    {
      v33 = [(NerdController *)v97 nerdLogger];
      v34 = [v33 oslog];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed to display logo", v100, 2u);
      }
    }
  }

  return v3;
}

- (void)registerNERDFSMhandlers
{
  v3 = [(NerdController *)self stateTable];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __41__NerdController_registerNERDFSMhandlers__block_invoke;
  v4[3] = &unk_1000997C0;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __41__NerdController_registerNERDFSMhandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __41__NerdController_registerNERDFSMhandlers__block_invoke_2;
  v7[3] = &unk_100099798;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __41__NerdController_registerNERDFSMhandlers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKey:kSUCoreActionKey];
  if (v5)
  {
    v6 = [*(a1 + 32) nerdFSM];
    [v6 registerAction:v5 ForEvent:v7 inState:*(a1 + 40) usingDelegate:*(a1 + 32) withInfoClass:0];
  }
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [(NerdController *)self nerdLogger];
  v18 = [v17 oslog];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v24 = v13;
    v25 = 2114;
    v26 = v14;
    v27 = 2114;
    v28 = v15;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PerformAction: Action:%{public}@ Event:%{public}@ inState:%{public}@ nextState:%{public}@", buf, 0x2Au);
  }

  v19 = [[NSString alloc] initWithFormat:@"%@->%@ on event %@", v15, v16, v14];
  [(NerdController *)self setLastRecordedState:v19];
  if ([v13 isEqualToString:kSUCoreFSMActionNoOp])
  {
    v20 = 0;
  }

  else
  {
    if ([v13 isEqualToString:kSU_A_LoadPersisted])
    {
      v21 = [(NerdController *)self actionLoadPersisted:a8];
    }

    else if ([v13 isEqualToString:@"ActionCheckPreviousUpdateState"])
    {
      v21 = [(NerdController *)self actionCheckPreviousUpdateState:a8];
    }

    else if ([v13 isEqualToString:@"ActionInitializeManualMode"])
    {
      v21 = [(NerdController *)self actionInitializeManualMode:a8];
    }

    else if ([v13 isEqualToString:@"ActionDoEACS"])
    {
      v21 = [(NerdController *)self actionDoEACS:a8];
    }

    else if ([v13 isEqualToString:kSU_A_MSUPurge])
    {
      v21 = [(NerdController *)self actionPurge:a8];
    }

    else if ([v13 isEqualToString:@"ActionBeginScan"])
    {
      v21 = [(NerdController *)self actionBeginScan:a8];
    }

    else if ([v13 isEqualToString:@"ActionReportUpdateFound"])
    {
      v21 = [(NerdController *)self actionReportUpdateFound:a8];
    }

    else if ([v13 isEqualToString:@"ActionCheckDownloadConstraints"])
    {
      v21 = [(NerdController *)self actionCheckDownloadConstraints:a8];
    }

    else if ([v13 isEqualToString:kSU_A_DownloadSU])
    {
      v21 = [(NerdController *)self actionDownloadUpdate:a8];
    }

    else if ([v13 isEqualToString:@"ActionCheckPrepareConstraints"])
    {
      v21 = [(NerdController *)self actionCheckPrepareConstraints:a8];
    }

    else if ([v13 isEqualToString:kSU_A_PrepareUpdate])
    {
      v21 = [(NerdController *)self actionPrepareUpdate:a8];
    }

    else if ([v13 isEqualToString:@"ActionCheckApplyConstraints"])
    {
      v21 = [(NerdController *)self actionCheckApplyConstraints:a8];
    }

    else if ([v13 isEqualToString:kSU_A_ApplyUpdate])
    {
      v21 = [(NerdController *)self actionApplyUpdate:a8];
    }

    else if ([v13 isEqualToString:@"ActionLoadNWCredentialsAndCamp"])
    {
      v21 = [(NerdController *)self actionLoadNWCredAndCamp:a8];
    }

    else if ([v13 isEqualToString:@"ActionCleanupAndReboot"])
    {
      v21 = [(NerdController *)self actionCleanupAndReboot:a8];
    }

    else
    {
      v21 = [(NerdController *)self actionUnknownAction:v13 error:a8];
    }

    v20 = v21;
  }

  return v20;
}

+ (id)copyStringRepresentationOfNVRamVariableValue:(const __CFString *)a3
{
  if (a3)
  {
    v3 = copy_nvram_variable(a3);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 == CFDataGetTypeID())
      {
        v6 = [NSString alloc];
        BytePtr = CFDataGetBytePtr(v4);
        v8 = [v6 initWithBytes:BytePtr length:CFDataGetLength(v4) encoding:4];
      }

      else
      {
        v12 = CFGetTypeID(v4);
        if (v12 != CFStringGetTypeID())
        {
          v11 = 0;
          goto LABEL_13;
        }

        v8 = [[NSString alloc] initWithString:v4];
      }

      v11 = v8;
LABEL_13:
      CFRelease(v4);
      return v11;
    }
  }

  else
  {
    v9 = +[SUCoreLog sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalid variable name", v14, 2u);
    }
  }

  return 0;
}

- (int64_t)actionLoadPersisted:(id *)a3
{
  v3 = [(NerdController *)self nerdLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionLoadPersisted.", buf, 2u);
  }

  v174 = [[NSString alloc] initWithFormat:@"%s/%s", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD"];
  v167 = [[NSString alloc] initWithFormat:@"%@/%@", v174, @"NeRDPersistedState.status"];
  v5 = [(NerdController *)self nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to mount update volume", buf, 2u);
  }

  updated = mount_update_partition_if_exists("/private/var/MobileSoftwareUpdate/", v7, v8, v9, v10, v11, v12, v13);
  v15 = [(NerdController *)self nerdLogger];
  v16 = [v15 oslog];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "Failed to mount";
    if (!updated)
    {
      v17 = "Successfully/Previously mounted";
    }

    *buf = 136446466;
    *&buf[4] = v17;
    *&buf[12] = 1024;
    *&buf[14] = updated;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s update volume rc: %d", buf, 0x12u);
  }

  v18 = [(NerdController *)self persistedState];
  v19 = v18 == 0;

  if (v19)
  {
    v20 = [SUCorePersistedState alloc];
    v21 = [(NerdController *)self persistedStateDispatchQueue];
    v22 = [v20 initWithDispatchQueue:v21 withPersistencePath:v167 forPolicyVersion:@"1.0"];
    [(NerdController *)self setPersistedState:v22];

    v23 = [(NerdController *)self persistedState];
    LODWORD(v21) = v23 == 0;

    if (v21)
    {
      v26 = [(NerdController *)self nerdLogger];
      v27 = [v26 oslog];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed to initialize SUCore persisted state object", buf, 2u);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v193 = __Block_byref_object_copy_;
      v194 = __Block_byref_object_dispose_;
      v195 = 0;
      v185 = 0;
      v186 = &v185;
      v187 = 0x3032000000;
      v188 = __Block_byref_object_copy_;
      v189 = __Block_byref_object_dispose_;
      v190 = 0;
      v24 = [(NerdController *)self persistedStateDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __38__NerdController_actionLoadPersisted___block_invoke;
      block[3] = &unk_1000997E8;
      block[4] = self;
      block[5] = buf;
      block[6] = &v185;
      dispatch_sync(v24, block);

      v25 = *(*&buf[8] + 40);
      if (v25)
      {
        [(NerdController *)self sendControllerEvent:v25 eventDescription:v186[5]];
      }

      _Block_object_dispose(&v185, 8);

      _Block_object_dispose(buf, 8);
    }
  }

  v28 = [(NerdController *)self nerdLogger];
  v29 = [v28 oslog];

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Loading data from previous bootedOS", buf, 2u);
  }

  v175 = MSUCopyEnvInfoForNeRD();
  v30 = [(NerdController *)self nerdLogger];
  v31 = [v30 oslog];

  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v175)
  {
    if (v32)
    {
      *buf = 138543362;
      *&buf[4] = v175;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Previous Booted OS state is: %{public}@", buf, 0xCu);
    }

    v173 = [v175 objectForKeyedSubscript:@"BootedOSSUAssetURL"];
    if (v173)
    {
      v33 = [(NerdController *)self nerdLogger];
      v34 = [v33 oslog];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v173;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Setting SU Asset URL to : %{public}@", buf, 0xCu);
      }

      MASetServerUrlOverride();
    }

    v172 = [v175 objectForKeyedSubscript:@"BootedOSBrainURL"];
    if (v172)
    {
      v35 = [(NerdController *)self nerdLogger];
      v36 = [v35 oslog];

      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v172;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Setting Update Brain URL to: %{public}@", buf, 0xCu);
      }

      MASetServerUrlOverride();
    }

    v171 = [v175 objectForKeyedSubscript:@"BootedOSDocumentationURL"];
    if (v171)
    {
      v37 = [(NerdController *)self nerdLogger];
      v38 = [v37 oslog];

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v171;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Setting Documentation URL to :%{public}@", buf, 0xCu);
      }

      MASetServerUrlOverride();
    }

    v170 = [v175 objectForKeyedSubscript:@"BootedOSWatchDocumentationURL"];
    if (v170)
    {
      v39 = [(NerdController *)self nerdLogger];
      v40 = [v39 oslog];

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v170;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Setting Watch Documentation URL to : %{public}@", buf, 0xCu);
      }

      MASetServerUrlOverride();
    }

    v169 = [v175 objectForKeyedSubscript:@"BootedOSAssetAudience"];
    v41 = [(NerdController *)self nerdLogger];
    v42 = [v41 oslog];

    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    if (v169)
    {
      if (v43)
      {
        *buf = 138543362;
        *&buf[4] = v169;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Setting MA Asset audience to %{public}@", buf, 0xCu);
      }

      MASetPallasAudience();
    }

    else
    {
      if (v43)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "No asset audience saved by booted OS.. default one will be used", buf, 2u);
      }
    }

    v158 = MGGetBoolAnswer();
    v165 = [v175 objectForKeyedSubscript:@"BootedOSHasPallasDisabled"];
    if (v165 && [v165 isEqualToString:@"YES"])
    {
      v44 = [(NerdController *)self nerdLogger];
      v45 = [v44 oslog];

      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
      if (v158)
      {
        if (v46)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Disabling pallas for all SU assets..", buf, 2u);
        }

        if (nerdGetSoftwareUpdateTypes_softwareUpdateTypesOnce != -1)
        {
          [NerdController actionLoadPersisted:];
        }

        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v45 = nerdGetSoftwareUpdateTypes_softwareUpdateAssetTypes;
        v47 = [v45 countByEnumeratingWithState:&v180 objects:v191 count:16];
        if (v47)
        {
          v48 = *v181;
          do
          {
            for (i = 0; i != v47; i = i + 1)
            {
              if (*v181 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v180 + 1) + 8 * i);
              v51 = [(NerdController *)self nerdLogger];
              v52 = [v51 oslog];

              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = v50;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Setting pallasEnabled to false for %{public}@", buf, 0xCu);
              }

              MASetPallasEnabled();
            }

            v47 = [v45 countByEnumeratingWithState:&v180 objects:v191 count:16];
          }

          while (v47);
        }
      }

      else if (v46)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Disabling of pallas not allowed in this environment", buf, 2u);
      }
    }

    v166 = [v175 objectForKeyedSubscript:@"BootedOSDawTokenPath"];
    if (v166)
    {
      v53 = [v166 lastPathComponent];
      v54 = [(NerdController *)self nerdLogger];
      v55 = [v54 oslog];

      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      if (v53)
      {
        if (v56)
        {
          *buf = 138543362;
          *&buf[4] = v53;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Setting DAW token file path to %{public}@", buf, 0xCu);
        }

        MASetDawTokenPath();
      }

      else
      {
        if (v56)
        {
          *buf = 138543362;
          *&buf[4] = v166;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Unable to extract token file name from %{public}@", buf, 0xCu);
        }
      }
    }

    v168 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"pallas-server-override"];
    if (!v168)
    {
      goto LABEL_88;
    }

    if ([v168 isEqualToString:@"internal"])
    {
      v57 = @"https://gdmf-staging-int.apple.com/v2/assets";
    }

    else
    {
      if (([v168 isEqualToString:@"customer"] & 1) == 0)
      {
        v60 = [(NerdController *)self nerdLogger];
        v61 = [v60 oslog];

        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Unsupported value for pallas-server-override detected. Ignoring", buf, 2u);
        }

        goto LABEL_88;
      }

      v57 = @"https://gdmf.apple.com/v2/assets";
    }

    v160 = [NSURL URLWithString:v57];
    if (v160)
    {
      v58 = [(NerdController *)self nerdLogger];
      v59 = [v58 oslog];

      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v160;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Setting pallasURL to %{public}@", buf, 0xCu);
      }

      MASetPallasUrl();
LABEL_91:
      v176 = [v175 objectForKeyedSubscript:@"BootedOSType"];
      if (v176)
      {
        if ([v176 isEqualToString:@"BootedOSReleaseTypeUnknown"])
        {
          v64 = [(NerdController *)self nerdLogger];
          v65 = [v64 oslog];

          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v176;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Previously saved releaseType was %{public}@. Defaulting to nil", buf, 0xCu);
          }
        }

        else
        {
          [(NerdController *)self setBootedOSType:v176];
        }
      }

      v164 = [v175 objectForKeyedSubscript:@"BootedOSVersion"];
      if (v164)
      {
        [(NerdController *)self setBootedOSVersion:v164];
      }

      v163 = [v175 objectForKeyedSubscript:@"BootedOSProductVersion"];
      if (v163)
      {
        [(NerdController *)self setBootedOSProductVersion:v163];
      }

      v162 = [v175 objectForKeyedSubscript:@"TargetOSVersion"];
      if (v162)
      {
        [(NerdController *)self setTargetOSVersion:v162];
      }

      v161 = [v175 objectForKeyedSubscript:@"TargetRestoreVersion"];
      if (v161)
      {
        [(NerdController *)self setTargetRestoreVersion:v161];
      }

      if (v158)
      {
        v66 = [(NerdController *)self nerdLogger];
        v67 = [v66 oslog];

        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "(Internal Only) - Running on internal build", buf, 2u);
        }

        v159 = [v175 objectForKeyedSubscript:@"NeRDDebugMode"];
        if ([v159 BOOLValue])
        {
          v68 = [(NerdController *)self nerdLogger];
          v69 = [v68 oslog];

          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Running in debug mode(Internal Only)..Suspending and waiting for signal to resume", buf, 2u);
          }

          [(NerdController *)self setRunningInDebugMode:1];
          v70 = dispatch_semaphore_create(0);
          v71 = debugModeResume;
          debugModeResume = v70;

          v72 = dispatch_get_global_queue(17, 0);
          v73 = 0;
          v74 = 1;
          do
          {
            v75 = v74;
            v76 = actionLoadPersisted__signals[v73];
            v77 = dispatch_source_create(&_dispatch_source_type_signal, v76, 0, v72);
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = __38__NerdController_actionLoadPersisted___block_invoke_732;
            handler[3] = &unk_100099810;
            handler[4] = self;
            v179 = v76;
            dispatch_source_set_event_handler(v77, handler);
            dispatch_resume(v77);
            objc_storeStrong(&actionLoadPersisted__signalSources[v73], v77);
            signal(v76, 1);

            v74 = 0;
            v73 = 1;
          }

          while ((v75 & 1) != 0);
          dispatch_semaphore_wait(debugModeResume, 0xFFFFFFFFFFFFFFFFLL);
          v78 = [(NerdController *)self nerdLogger];
          v79 = [v78 oslog];

          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Resuming running in debug mode", buf, 2u);
          }
        }

        v80 = [v175 objectForKeyedSubscript:@"NeRDMaxUpdateAttempts"];
        v81 = v80;
        if (v80)
        {
          -[NerdController setMaxUpdateAttempts:](self, "setMaxUpdateAttempts:", [v80 unsignedLongLongValue]);
          v82 = [(NerdController *)self nerdLogger];
          v83 = [v82 oslog];

          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = [v81 unsignedLongLongValue];
            *buf = 134217984;
            *&buf[4] = v84;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Overriding maxUpdateAttempts to %llu", buf, 0xCu);
          }
        }

        v85 = [v175 objectForKeyedSubscript:@"NeRDMSUBrainOverride"];
        if (v85)
        {
          v86 = [(NerdController *)self nerdLogger];
          v87 = [v86 oslog];

          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v85;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Overriding brain location to %{public}@", buf, 0xCu);
          }

          CFPreferencesSetValue(@"MSUUpdateBrainLocationOverride", v85, @"com.apple.MobileSoftwareUpdate", @"mobile", kCFPreferencesAnyHost);
        }

        v88 = [v175 objectForKeyedSubscript:@"StopNeRDBeforeReboot"];
        if ([v88 BOOLValue])
        {
          v89 = [(NerdController *)self nerdLogger];
          v90 = [v89 oslog];

          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Will stop before reboot", buf, 2u);
          }

          [(NerdController *)self setStopBeforeReboot:1];
        }

        v91 = [v175 objectForKeyedSubscript:@"TTRNOUI"];
        if (v91)
        {
          v92 = [(NerdController *)self nerdLogger];
          v93 = [v92 oslog];

          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Will not show UI for TTR", buf, 2u);
          }

          [(NerdController *)self setFakeUI:1];
        }
      }

      v31 = v173;
      goto LABEL_134;
    }

LABEL_88:
    v62 = [(NerdController *)self nerdLogger];
    v63 = [v62 oslog];

    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Not overriding pallasURL. Using MA default", buf, 2u);
    }

    v160 = 0;
    goto LABEL_91;
  }

  if (v32)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No saved data from previous BootedOS found", buf, 2u);
  }

LABEL_134:

  v94 = [(NerdController *)self bootedOSVersion];
  if (v94)
  {
  }

  else
  {
    v95 = [(NerdController *)self targetOSVersion];
    v96 = v95 == 0;

    if (v96)
    {
      v97 = [(NerdController *)self nerdLogger];
      v98 = [v97 oslog];

      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "No bootedOS or targetOS version, can't start recovery", buf, 2u);
      }

      if ([(NerdController *)self okToProceedWithAutoPath])
      {
        v99 = [(NerdController *)self nerdLogger];
        v100 = [v99 oslog];

        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "In auto path, will reboot to recovery", buf, 2u);
        }

        [(NerdController *)self cleanSystemLogs];
        +[NerdController saveSystemLogs];
        [(NerdController *)self rebootToRecovery];
      }
    }
  }

  v101 = [(NerdController *)self updatePolicy];
  v102 = v101 == 0;

  if (!v102)
  {
    goto LABEL_166;
  }

  v103 = [SUCorePolicy alloc];
  v104 = MGGetStringAnswer();
  v105 = [SUCorePolicyFamily getAssetTypeForKind:2 usingFamily:[SUCorePolicyFamily getFamilyUsingDeviceClass:v104]];
  v106 = [v103 initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.SoftwareUpdate" documentationAssetType:v105 usingPolicies:127 usingExtensions:0];

  [v106 setCheckAvailableSpace:0];
  v107 = [v106 softwareUpdateScanPolicy];
  [v107 setDiscretionary:0];

  v108 = [v106 softwareUpdateScanPolicy];
  [v108 setAllowsCellular:0];

  v109 = [v106 softwareUpdateScanPolicy];
  [v109 setRequiresPowerPluggedIn:0];

  v110 = [v106 softwareUpdateScanPolicy];
  [v110 setRestrictToIncremental:0];

  v111 = [v106 softwareUpdateScanPolicy];
  [v111 setRestrictToFull:1];

  v112 = [v106 softwareUpdateScanPolicy];
  [v112 setAllowSameVersion:1];

  v113 = [v106 documentationScanPolicy];
  [v113 setDiscretionary:0];

  v114 = [v106 documentationScanPolicy];
  [v114 setAllowsCellular:0];

  v115 = [v106 documentationScanPolicy];
  [v115 setRequiresPowerPluggedIn:0];

  v116 = [v106 documentationDownloadPolicy];
  [v116 setDiscretionary:0];

  v117 = [v106 documentationDownloadPolicy];
  [v117 setAllowsCellular:0];

  v118 = [v106 documentationDownloadPolicy];
  [v118 setRequiresPowerPluggedIn:0];

  v119 = [v106 loadBrainPolicy];
  [v119 setDiscretionary:0];

  v120 = [v106 loadBrainPolicy];
  [v120 setAllowsCellular:0];

  v121 = [v106 downloadPreflightPolicy];
  [v121 setDiscretionary:0];

  v122 = [v106 downloadPreflightPolicy];
  [v122 setAllowsCellular:0];

  v123 = [v106 softwareUpdateDownloadPolicy];
  [v123 setDiscretionary:0];

  v124 = [v106 softwareUpdateDownloadPolicy];
  [v124 setAllowsCellular:0];

  v125 = [v106 softwareUpdateDownloadPolicy];
  [v125 setRequiresPowerPluggedIn:0];

  v126 = [v106 softwareUpdateDownloadPolicy];
  [v126 setDownloadTimeoutSecs:86400];

  v127 = [(NerdController *)self nerdLogger];
  v128 = [v127 oslog];

  if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = 86400;
    _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Setting SU download time to %d seconds", buf, 8u);
  }

  v129 = [(NerdController *)self bootedOSType];
  v130 = v129 == 0;

  v131 = [(NerdController *)self nerdLogger];
  v132 = [v131 oslog];

  v133 = os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT);
  if (v130)
  {
    if (v133)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "No releaseType passed in from bootedOS", buf, 2u);
    }

    [v106 setReleaseType:0];
  }

  else
  {
    if (v133)
    {
      v134 = [(NerdController *)self bootedOSType];
      *buf = 138543362;
      *&buf[4] = v134;
      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "BootedOS passed in releaseType: %{public}@", buf, 0xCu);
    }

    v135 = [(NerdController *)self bootedOSType];
    [v106 setReleaseType:v135];
  }

  v136 = [(NerdController *)self targetOSVersion];
  v137 = v136 == 0;

  if (!v137)
  {
    v138 = [(NerdController *)self nerdLogger];
    v139 = [v138 oslog];

    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      v140 = [(NerdController *)self targetOSVersion];
      *buf = 138543362;
      *&buf[4] = v140;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "targetOSVersion specified. Asking core to look for build >= %{public}@", buf, 0xCu);
    }

    v141 = [(NerdController *)self targetOSVersion];
LABEL_161:
    v148 = v141;
    [v106 setPrerequisiteBuildVersion:v141];

    v149 = [(NerdController *)self bootedOSProductVersion];
    LOBYTE(v148) = v149 == 0;

    if ((v148 & 1) == 0)
    {
      v150 = [(NerdController *)self nerdLogger];
      v151 = [v150 oslog];

      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        v152 = [(NerdController *)self bootedOSProductVersion];
        *buf = 138543362;
        *&buf[4] = v152;
        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "Setting prerequisiteProductVersion to %{public}@", buf, 0xCu);
      }

      v153 = [(NerdController *)self bootedOSProductVersion];
      [v106 setPrerequisiteProductVersion:v153];
    }

    [(NerdController *)self setUpdatePolicy:v106];

LABEL_166:
    v154 = [(NerdController *)self okToProceedWithAutoPath];
    v155 = [(NerdController *)self nerdFSM];
    v106 = v155;
    if (v154)
    {
      [v155 postEvent:@"ProceedToNextUpdateStep"];
    }

    else
    {
      [v155 postEvent:@"ErrorGeneric"];
    }

    goto LABEL_169;
  }

  v142 = [(NerdController *)self bootedOSVersion];
  v143 = v142 == 0;

  v144 = [(NerdController *)self nerdLogger];
  v145 = [v144 oslog];

  v146 = os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT);
  if (!v143)
  {
    if (v146)
    {
      v147 = [(NerdController *)self bootedOSVersion];
      *buf = 138543362;
      *&buf[4] = v147;
      _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "No targetOSVersion specificed but bootedOSVersion is set. Asking core to look for build >= %{public}@", buf, 0xCu);
    }

    v141 = [(NerdController *)self bootedOSVersion];
    goto LABEL_161;
  }

  if (v146)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "No targetOSVersion/bootedOSVersion found..Failing to recovery", buf, 2u);
  }

  v157 = [(NerdController *)self nerdFSM];
  [v157 postEvent:@"ErrorGeneric"];

LABEL_169:
  return 0;
}

void __38__NerdController_actionLoadPersisted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistedState];
  v3 = [v2 loadPersistedState];

  v4 = *(a1 + 32);
  if ((v3 & 1) == 0)
  {
    v41 = [v4 nerdLogger];
    v42 = [v41 oslog];

    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      return;
    }

    *buf = 0;
    v43 = "Failed to load NeRD persisted state";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
    goto LABEL_21;
  }

  v5 = [v4 persistedState];
  v6 = [v5 ullForKey:@"NerdLoaded"];

  v7 = [*(a1 + 32) nerdLogger];
  v8 = [v7 oslog];

  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reconstructing NeRD state from persisted state", buf, 2u);
    }

    v10 = [*(a1 + 32) nerdLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) persistedState];
      v13 = [v12 ullForKey:@"NerdLoaded"];
      *buf = 134217984;
      v113 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NerdPreviouslyRun: %llu", buf, 0xCu);
    }

    v14 = *(a1 + 32);
    v15 = [v14 persistedState];
    v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 ullForKey:@"NerdRetryCount"]);
    [v14 setUpdateAttempt:v16];

    v17 = *(a1 + 32);
    v18 = [v17 persistedState];
    v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 ullForKey:@"NeRDDownloadCount"]);
    [v17 setDownloadAttempt:v19];

    v20 = [*(a1 + 32) nerdLogger];
    v21 = [v20 oslog];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(a1 + 32) updateAttempt];
      v23 = [v22 longLongValue];
      v24 = [*(a1 + 32) downloadAttempt];
      v25 = [v24 longLongValue];
      *buf = 134218240;
      v113 = v23;
      v114 = 2048;
      v115 = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PreviousNerdUpdateAttempts: %llu PreviousNerdDownloadAttempts: %llu", buf, 0x16u);
    }

    v26 = [*(a1 + 32) persistedState];
    v27 = [v26 stringForKey:@"PreviousOTAStatus"];

    if (v27)
    {
      v28 = [*(a1 + 32) nerdLogger];
      v29 = [v28 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v113 = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Previously stashed ota-outcome value: %{public}@", buf, 0xCu);
      }

      [*(a1 + 32) setOkToProceedWithAutoPath:1];
      v30 = *(a1 + 32);
      v31 = [NSNumber numberWithUnsignedLongLong:120];
      [v30 setNetworkConnectivityTimeout:v31];
    }

    v32 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"ota-uuid"];
    v33 = [*(a1 + 32) persistedState];
    v34 = v33;
    if (v32)
    {
      [v33 persistBoolean:1 forKey:@"PreviousOTADetected"];

      v35 = [*(a1 + 32) persistedState];
      v36 = [v35 stringForKey:@"PreviousOTAUUID"];

      v37 = [*(a1 + 32) nerdLogger];
      v38 = [v37 oslog];

      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (v36)
      {
        if (v39)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "RecoveryOS found existing preRecoveryOTAUUID..Using that for previousOTAUUID", buf, 2u);
        }

        v40 = v36;
      }

      else
      {
        if (v39)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "RecoveryOS found ota-uuid and preRecoveryOTAUUID is not yet set.Updating to match", buf, 2u);
        }

        v38 = [*(a1 + 32) persistedState];
        [v38 persistString:v32 forKey:@"PreviousOTAUUID"];
        v40 = v32;
      }

      [*(a1 + 32) setPreviousOTAUUID:v40];
    }

    else
    {
      v36 = [v33 stringForKey:@"PreviousOTAUUID"];

      v60 = [*(a1 + 32) nerdLogger];
      v61 = [v60 oslog];

      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
      if (v36)
      {
        if (v62)
        {
          *buf = 138543362;
          v113 = v36;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "RecoveryOS found a previous ota-uuid(%{public}@) from persisted state", buf, 0xCu);
        }

        [*(a1 + 32) setPreviousOTAUUID:v36];
        [*(a1 + 32) setManuallyEntered:0];
      }

      else
      {
        if (v62)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "No preRecoveryOTAUUID found", buf, 2u);
        }
      }
    }

    v63 = *(a1 + 32);
    v64 = +[NSUUID UUID];
    v65 = [v64 UUIDString];
    [v63 setUuid:v65];

    v66 = [*(a1 + 32) nerdLogger];
    v67 = [v66 oslog];

    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [*(a1 + 32) uuid];
      v69 = [*(a1 + 32) previousOTAUUID];
      if (v69)
      {
        v70 = [*(a1 + 32) previousOTAUUID];
      }

      else
      {
        v70 = @"N/A";
      }

      *buf = 138543618;
      v113 = v68;
      v114 = 2114;
      v115 = v70;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Created new UUID(%{public}@) for recoveryOS initiated update. Previous update UUID: %{public}@", buf, 0x16u);
      if (v69)
      {
      }
    }

    v84 = *(*(a1 + 40) + 8);
    v85 = *(v84 + 40);
    *(v84 + 40) = @"NerdRestarted";

    v86 = [NSString alloc];
    v71 = [*(a1 + 32) updateAttempt];
    v82 = [v86 initWithFormat:@"%@", v71];
    v83 = 48;
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting fresh NeRD run", buf, 2u);
    }

    v44 = [*(a1 + 32) persistedState];
    [v44 persistULL:1 forKey:@"NerdLoaded"];

    v45 = [*(a1 + 32) readRecoveryReason];
    if (v45)
    {
      v46 = v45;
      v47 = [*(a1 + 32) persistedState];
      v48 = [NSString stringWithFormat:@"%u", v46];
      [v47 persistString:v48 forKey:@"RecoveryReason"];
    }

    v27 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"device-recovery-boot-reason"];
    if (v27)
    {
      v49 = [*(a1 + 32) persistedState];
      [v49 persistString:v27 forKey:@"DeviceRecoveryReason"];

      v50 = [*(a1 + 32) nerdLogger];
      v51 = [v50 oslog];

      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v113 = v27;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Last device-recovery-boot-reason was : %{public}@", buf, 0xCu);
      }
    }

    v52 = [*(a1 + 32) bootCommand];

    if (v52)
    {
      v53 = [*(a1 + 32) persistedState];
      v54 = [*(a1 + 32) bootCommand];
      [v53 persistString:v54 forKey:@"BootCommand"];
    }

    v32 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"ota-outcome"];
    v55 = [*(a1 + 32) nerdLogger];
    v56 = [v55 oslog];

    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
    if (v32)
    {
      if (v57)
      {
        *buf = 138543362;
        v113 = v32;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Last ota-outcome was : %{public}@. Stashing result and proceeding with update", buf, 0xCu);
      }

      [*(a1 + 32) setOkToProceedWithAutoPath:1];
      v58 = *(a1 + 32);
      v59 = [NSNumber numberWithUnsignedLongLong:120];
      [v58 setNetworkConnectivityTimeout:v59];

      v56 = [*(a1 + 32) persistedState];
      [v56 persistString:v32 forKey:@"PreviousOTAStatus"];
    }

    else if (v57)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Unable to obtain last otaResult", buf, 2u);
    }

    v71 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"ota-uuid"];
    if (v71)
    {
      v72 = [*(a1 + 32) nerdLogger];
      v73 = [v72 oslog];

      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v113 = v71;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Previous update uuid is: %{public}@", buf, 0xCu);
      }

      v74 = [*(a1 + 32) persistedState];
      [v74 persistString:v71 forKey:@"PreviousOTAUUID"];

      v75 = [*(a1 + 32) persistedState];
      [v75 persistBoolean:1 forKey:@"PreviousOTADetected"];

      [*(a1 + 32) setPreviousOTAUUID:v71];
    }

    v76 = *(a1 + 32);
    v77 = +[NSUUID UUID];
    v78 = [v77 UUIDString];
    [v76 setUuid:v78];

    v79 = [*(a1 + 32) nerdLogger];
    v80 = [v79 oslog];

    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = [*(a1 + 32) uuid];
      *buf = 138543362;
      v113 = v81;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Created new UUID(%{public}@) for recoveryOS initiated update", buf, 0xCu);
    }

    v82 = @"NeRDStarted";
    v83 = 40;
  }

  v87 = *(*(a1 + v83) + 8);
  v88 = *(v87 + 40);
  *(v87 + 40) = v82;

  updated = MSUReportAndCleanupPreviousUpdateState();
  v90 = [*(a1 + 32) nerdLogger];
  v91 = [v90 oslog];

  v92 = os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT);
  if (updated)
  {
    if (!v92)
    {
      goto LABEL_67;
    }

    *buf = 0;
    v93 = "Successfully cleaned up previous update state";
  }

  else
  {
    if (!v92)
    {
      goto LABEL_67;
    }

    *buf = 0;
    v93 = "Failed to ask softwareupdated to cleanup previous state";
  }

  _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, v93, buf, 2u);
LABEL_67:

  set_nvram_variable("recoveryos-initiated-update", "true", v94, v95, v96, v97, v98, v99);
  v100 = [*(a1 + 32) persistedState];
  v101 = [v100 BOOLeanForKey:@"PreviousOTADetected"];

  if (!v101)
  {
    return;
  }

  v102 = [*(a1 + 32) previousOTAUUID];
  v103 = [v102 UTF8String];

  v104 = [*(a1 + 32) nerdLogger];
  v42 = [v104 oslog];

  v105 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
  if (!v103)
  {
    if (!v105)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v43 = "Unable to save previous update UUID to nvram";
    goto LABEL_20;
  }

  if (v105)
  {
    *buf = 136446210;
    v113 = v103;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Saving previous update UUID(%{public}s) to nvram", buf, 0xCu);
  }

  set_nvram_variable("pre-recovery-ota-failure-uuid", v103, v106, v107, v108, v109, v110, v111);
}

- (int64_t)actionCheckPreviousUpdateState:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionCheckPreviousUpdateState.", &v22, 2u);
  }

  v6 = [(NerdController *)self updateAttempt];
  v7 = [v6 unsignedLongValue];
  if (v7 > [(NerdController *)self maxUpdateAttempts])
  {

    goto LABEL_6;
  }

  v8 = [(NerdController *)self downloadAttempt];
  v9 = [v8 longLongValue];

  if (v9 >= 2)
  {
LABEL_6:
    v10 = [(NerdController *)self nerdLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(NerdController *)self updateAttempt];
      v13 = [v12 longLongValue];
      v14 = [(NerdController *)self downloadAttempt];
      v15 = [v14 longLongValue];
      v22 = 134218240;
      v23 = v13;
      v24 = 2048;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Previous attempts to download/update via nerd failed too many times(UpdateAttempts:%llu DownloadAttempts:%llu)..Switching to manual mode", &v22, 0x16u);
    }

LABEL_8:
    v16 = @"SwitchToManualMode";
    goto LABEL_9;
  }

  v19 = [(NerdController *)self okToProceedWithAutoPath];
  v20 = [(NerdController *)self nerdLogger];
  v11 = [v20 oslog];

  v21 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (v21)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "okToProceedWithAutoPath is false. Switching to manual mode", &v22, 2u);
    }

    goto LABEL_8;
  }

  if (v21)
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Proceeding with auto update path", &v22, 2u);
  }

  v16 = @"ProceedToNextUpdateStep";
LABEL_9:

  v17 = [(NerdController *)self nerdFSM];
  [v17 postEvent:v16];

  return 0;
}

- (int64_t)actionLoadNWCredAndCamp:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionLoadNWCredAndCamp.", buf, 2u);
  }

  v6 = [(NerdController *)self networkAquisitionAttempt];
  v7 = [v6 unsignedLongLongValue] + 1;

  v8 = [NSNumber numberWithLongLong:v7];
  [(NerdController *)self setNetworkAquisitionAttempt:v8];

  v9 = [(NerdController *)self nerdLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    networkAquisitionAttempt = self->_networkAquisitionAttempt;
    *buf = 138543362;
    v55 = networkAquisitionAttempt;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Will attempt to aquire network. Attempt %{public}@", buf, 0xCu);
  }

  if (![(NerdController *)self okToProceedWithAutoPath])
  {
    v18 = [(NerdController *)self nerdLogger];
    v19 = [v18 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping network aquisition step for manual mode", buf, 2u);
    }

    v17 = 0;
    goto LABEL_13;
  }

  v12 = [(NerdController *)self wifiManager];
  v13 = [v12 checkForNetworkReachability:0 timeOutInSeconds:0];

  v14 = [(NerdController *)self nerdLogger];
  v15 = [v14 oslog];

  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Network connection already available..Proceeding", buf, 2u);
    }

    v17 = 0;
    goto LABEL_20;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Network connection not currently available", buf, 2u);
  }

  v30 = [(NerdController *)self accessPointName];

  v31 = [(NerdController *)self nerdLogger];
  v32 = [v31 oslog];

  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    if (v33)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "WiFi credentials previously set", buf, 2u);
    }

    v17 = 0;
  }

  else
  {
    if (v33)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Attempting to read WiFi credentials from stashed connectivity data", buf, 2u);
    }

    v40 = MSUCopyConnectivityData();
    v17 = v40;
    if (v40 && [v40 safeBooleanForKey:@"BootedOSHasConnectivityData"])
    {
      v41 = [(NerdController *)self nerdLogger];
      v42 = [v41 oslog];

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Got credentials from stashed data", buf, 2u);
      }

      v43 = [v17 objectForKeyedSubscript:@"BootedOSAccessPoint"];
      [(NerdController *)self setAccessPointName:v43];

      v32 = [v17 objectForKeyedSubscript:@"BootedOSAccessPointPwd"];
      [(NerdController *)self setAccessPointPassword:v32];
    }

    else
    {
      v46 = [(NerdController *)self nerdLogger];
      v32 = [v46 oslog];

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No valid stashed connectivity data found", buf, 2u);
      }
    }
  }

  v34 = [(NerdController *)self accessPointName];

  if (!v34)
  {
LABEL_14:
    v20 = [(NerdController *)self wifiManager];
    v21 = [(NerdController *)self networkConnectivityTimeout];
    v22 = [v20 checkForNetworkReachability:1 timeOutInSeconds:{objc_msgSend(v21, "unsignedIntValue")}];

    v23 = [(NerdController *)self nerdLogger];
    v15 = [v23 oslog];

    v24 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        *buf = 0;
        v25 = "Network connection available..Proceeding";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      }
    }

    else if (v24)
    {
      *buf = 0;
      v25 = "Network connection did not come up after timeout..Proceeding anyways";
      goto LABEL_19;
    }

LABEL_20:

    v26 = [(NerdController *)self nerdFSM];
    v27 = v26;
    v28 = @"ProceedToNextUpdateStep";
    goto LABEL_21;
  }

  v35 = [(NerdController *)self wifiManager];
  v36 = [(NerdController *)self accessPointName];
  v37 = [(NerdController *)self accessPointPassword];
  v38 = [v35 connectToSSID:v36 password:v37];

  if (v38)
  {
    v39 = [(NerdController *)self nerdLogger];
    v19 = [v39 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully joined wifi network", buf, 2u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v7 >= 11)
  {
    v53[0] = @"NeRDStateFailed";
    v52[0] = @"NeRDState";
    v52[1] = @"NeRDError";
    v50[0] = @"NeRDErrorDomain";
    v50[1] = @"NeRDErrorCode";
    v51[0] = NSOSStatusErrorDomain;
    v51[1] = &off_1000A7EB8;
    v44 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    v53[1] = v44;
    v45 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = __42__NerdController_actionLoadNWCredAndCamp___block_invoke;
    v49[3] = &unk_1000995D0;
    v49[4] = self;
    [(NerdController *)self sendOOBMessage:v45 withCompletion:v49];

    goto LABEL_22;
  }

  v47 = [(NerdController *)self nerdLogger];
  v48 = [v47 oslog];

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v55) = 30;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Unable to join wifi network..will retry after %d seconds", buf, 8u);
  }

  sleep(0x1Eu);
  v26 = [(NerdController *)self nerdFSM];
  v27 = v26;
  v28 = @"ErrorNetwork";
LABEL_21:
  [v26 postEvent:v28];

LABEL_22:
  return 0;
}

void __42__NerdController_actionLoadNWCredAndCamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:@"Failed to join wifi network after max retry attempts"];
}

- (int64_t)actionPurge:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionPurge.", buf, 2u);
  }

  v6 = [(NerdController *)self coreUpdateMachine];

  v7 = [(NerdController *)self nerdLogger];
  v8 = [v7 oslog];

  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Previous CoreUpdateMachine found..clearing", buf, 2u);
    }

    [(NerdController *)self setCoreUpdateMachine:0];
    v10 = [(NerdController *)self nerdFSM];
    [v10 postEvent:@"ProceedToNextUpdateStep"];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No CoreUpdateMachine currently exists..Calling removeAllUpdateContentWithPolicy", buf, 2u);
    }

    v11 = [(NerdController *)self updatePolicy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __30__NerdController_actionPurge___block_invoke;
    v13[3] = &unk_1000995D0;
    v13[4] = self;
    [SUCorePurge removeAllUpdateContentWithPolicy:v11 completion:v13];
  }

  return 0;
}

void __30__NerdController_actionPurge___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nerdLogger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v11 = 138543362;
      v12 = v3;
      v7 = "removeAllUpdateContentWithPolicy failed with error: %{public}@. PROCEEDING ANYWAY";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v11) = 0;
    v7 = "Successfully removed previous update content";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = [*(a1 + 32) nerdFSM];
  [v10 postEvent:@"ProceedToNextUpdateStep"];
}

- (void)startUpdateHelper
{
  v3 = [NSString alloc];
  if ([(NerdController *)self okToProceedWithAutoPath])
  {
    v4 = "Auto";
  }

  else
  {
    v4 = "Manual";
  }

  v5 = [(NerdController *)self updateAttempt];
  v6 = [v3 initWithFormat:@"%s_%@", v4, v5];

  v7 = objc_opt_new();
  [v7 setObject:v6 forKey:@"NeRDUpdateAttempt"];
  v8 = [(NerdController *)self previousOTAUUID];

  if (v8)
  {
    v9 = [(NerdController *)self previousOTAUUID];
    [v7 setObject:v9 forKey:@"preRecoveryClientId"];
  }

  v10 = [(NerdController *)self updatePolicy];
  v11 = [v10 setUpdateMetricEventFieldsFromDictionary:v7];

  v12 = [(NerdController *)self nerdLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NerdController *)self updateAttempt];
    *buf = 138543362;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting update attempt: %{public}@", buf, 0xCu);
  }

  if ([(NerdController *)self startedManualSR])
  {
    [(NerdController *)self setupCompletedClearScreen];
    [(NerdController *)self adjustUpdateProgressUI:5.0];
    v15 = [(NerdController *)self updateProgress];
    [(NerdController *)self sendOOBState:@"NeRDStateDownloading" andProgress:v15];

    [(NerdController *)self setStartedManualRecovery:1];
  }

  v16 = [(NerdController *)self nerdFSM];
  [v16 postEvent:@"ProceedToNextUpdateStep"];
}

- (int64_t)actionBeginScan:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionBeginScan", buf, 2u);
  }

  v6 = [SUCoreScan alloc];
  v7 = [(NerdController *)self uuid];
  v8 = [v6 initWithUUID:v7];

  [(NerdController *)self setScanner:v8];
  [(NerdController *)self setUpdateDescriptor:0];
  [(NerdController *)self setAlternateUpdateDescriptor:0];
  v9 = [(NerdController *)self nerdLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NerdController *)self updatePolicy];
    v12 = [v11 description];
    *buf = 138543362;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpdatePolicy: %{public}@", buf, 0xCu);
  }

  [(NerdController *)self sendControllerEvent:@"NeRDScanStarted" eventDescription:0];
  if (![(NerdController *)self startedManualSR])
  {
    [(NerdController *)self adjustUpdateProgressUI:5.0];
    v13 = [(NerdController *)self updateProgress];
    [(NerdController *)self sendOOBState:@"NeRDStateScanning" andProgress:v13];
  }

  scanner = self->_scanner;
  v15 = [(NerdController *)self updatePolicy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __34__NerdController_actionBeginScan___block_invoke;
  v17[3] = &unk_1000998D8;
  v17[4] = self;
  [(SUCoreScan *)scanner checkForAvailableUpdateWithPolicy:v15 completion:v17];

  return 0;
}

void __34__NerdController_actionBeginScan___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [*(a1 + 32) nerdLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v51 = v10;
    v52 = 2114;
    v53 = v8;
    v54 = 2114;
    v55 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scan returned: error: %{public}@\n primaryDescriptor: %{public}@\n secondaryDescriptor: %{public}@\n", buf, 0x20u);
  }

  v13 = [*(a1 + 32) updateAttempt];

  if (v13)
  {
    v14 = [*(a1 + 32) updateAttempt];
    v15 = [v14 unsignedLongLongValue] + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(a1 + 32);
  v17 = [NSNumber numberWithLongLong:v15];
  [v16 setUpdateAttempt:v17];

  v18 = [*(a1 + 32) persistedStateDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__NerdController_actionBeginScan___block_invoke_783;
  block[3] = &unk_100099838;
  block[4] = *(a1 + 32);
  block[5] = v15;
  dispatch_sync(v18, block);

  v19 = *(a1 + 32);
  if (!v10)
  {
    if (([*(a1 + 32) startedManualSR] & 1) == 0)
    {
      [*(a1 + 32) adjustUpdateProgressUI:10.0];
    }

    [*(a1 + 32) sendControllerEvent:@"NeRDScanSuccess" eventDescription:0];
    if ([*(a1 + 32) okToProceedWithAutoPath])
    {
      [*(a1 + 32) setUpdateDescriptor:v8];
    }

    else
    {
      v32 = v8;
      v33 = [*(a1 + 32) nerdLogger];
      v34 = [v33 oslog];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v51 = v32;
        v52 = 2114;
        v53 = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Manual Mode, choosing primary descriptor: %{public}@, alternate descriptor: %{public}@", buf, 0x16u);
      }

      v35 = [*(a1 + 32) startedManualSR];
      v36 = *(a1 + 32);
      if (v35)
      {
        v37 = [v36 scanner];
        v38 = [*(a1 + 32) updatePolicy];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = __34__NerdController_actionBeginScan___block_invoke_794;
        v39[3] = &unk_1000998B0;
        v39[4] = *(a1 + 32);
        v40 = v32;
        v41 = 0;
        v27 = v32;
        [v37 collectDocumentationMetadataWithPolicy:v38 descriptor:v27 downloadDocumentation:0 completion:v39];

        v28 = v40;
        goto LABEL_20;
      }

      [v36 setUpdateDescriptor:v32];
    }

    [*(a1 + 32) startUpdateHelper];
    goto LABEL_23;
  }

  v20 = [v10 localizedDescription];
  [v19 sendControllerEvent:@"NeRDScanFail" eventDescription:v20];

  if (v15 > [*(a1 + 32) maxUpdateAttempts])
  {
    v21 = [[NSString alloc] initWithFormat:@"Scan Error..Update has failed too many(%llu) times.Switching to manual mode", v15];
    v22 = *(a1 + 32);
    v48[1] = @"NeRDError";
    v49[0] = @"NeRDStateFailed";
    v48[0] = @"NeRDState";
    v46[0] = @"NeRDErrorDomain";
    v23 = [v10 domain];
    v47[0] = v23;
    v46[1] = @"NeRDErrorCode";
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 code]);
    v47[1] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
    v49[1] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = __34__NerdController_actionBeginScan___block_invoke_2;
    v43[3] = &unk_100099860;
    v43[4] = *(a1 + 32);
    v44 = v21;
    v27 = v21;
    [v22 sendOOBMessage:v26 withCompletion:v43];

    v28 = v44;
LABEL_20:

    goto LABEL_23;
  }

  v29 = [*(a1 + 32) nerdLogger];
  v30 = [v29 oslog];

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v51 = v15;
    v52 = 1024;
    LODWORD(v53) = 30;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Scan Error..Attempt %llu : Retrying after %d seconds", buf, 0x12u);
  }

  v31 = dispatch_time(0, 30000000000);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = __34__NerdController_actionBeginScan___block_invoke_790;
  v42[3] = &unk_100099428;
  v42[4] = *(a1 + 32);
  dispatch_after(v31, &_dispatch_main_q, v42);
LABEL_23:
}

void __34__NerdController_actionBeginScan___block_invoke_783(uint64_t a1)
{
  v2 = [*(a1 + 32) persistedState];
  [v2 persistULL:*(a1 + 40) forKey:@"NerdRetryCount"];
}

void __34__NerdController_actionBeginScan___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:*(a1 + 40)];
}

void __34__NerdController_actionBeginScan___block_invoke_790(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  [v2 setUuid:v4];

  v5 = [*(a1 + 32) nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) uuid];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Regenerated uuid(%{public}@) and retrying scan", &v9, 0xCu);
  }

  v8 = [*(a1 + 32) nerdFSM];
  [v8 postEvent:@"ErrorNetwork"];
}

void __34__NerdController_actionBeginScan___block_invoke_794(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = [v10 nerdLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to scan for documentation for primary descritpor:%{public}@ with error:%{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    v14 = *(a1 + 40);
  }

  else
  {
    v14 = v8;
  }

  [v10 setUpdateDescriptor:v14];
  v15 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v16 = [v15 scanner];
    v17 = [*(a1 + 32) updatePolicy];
    v18 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __34__NerdController_actionBeginScan___block_invoke_795;
    v20[3] = &unk_100099888;
    v20[4] = *(a1 + 32);
    v21 = v18;
    [v16 collectDocumentationMetadataWithPolicy:v17 descriptor:v21 downloadDocumentation:0 completion:v20];
  }

  else
  {
    v19 = [v15 nerdFSM];
    [v19 postEvent:@"UpdateFound"];
  }
}

void __34__NerdController_actionBeginScan___block_invoke_795(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 nerdLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to scan for documentation for alternate descritpor:%{public}@ with error:%{public}@", &v13, 0x16u);
    }

    v7 = *(a1 + 32);
    v11 = *(a1 + 40);
  }

  else
  {
    v11 = a3;
  }

  [v7 setAlternateUpdateDescriptor:v11];
  v12 = [*(a1 + 32) nerdFSM];
  [v12 postEvent:@"UpdateFound"];
}

- (id)getNearestDescriptorToTarget:(id)a3 primaryDescriptor:(id)a4 primaryAlternateDescriptor:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [SUCoreRestoreVersion alloc];
  v12 = [v8 restoreVersion];
  v13 = [v11 initWithRestoreVersion:v12];

  v14 = [SUCoreRestoreVersion alloc];
  v15 = [v9 restoreVersion];
  v16 = [v14 initWithRestoreVersion:v15];

  v17 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v10];
  v18 = [(NerdController *)self nerdLogger];
  v19 = [v18 oslog];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v17 summary];
    v21 = [v13 summary];
    v22 = [v16 summary];
    v32 = 138543874;
    v33 = v20;
    v34 = 2114;
    v35 = v21;
    v36 = 2114;
    v37 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "getNearestDescriptorToTarget: targetRestoreVersion:%{public}@ primaryRestoreVersion:%{public}@ alternateRestoreVersion:%{public}@", &v32, 0x20u);
  }

  if (v17 && v13 && v16)
  {
    v23 = [v17 getNextNearestRestoreVersionOf:v13 and:v16];

    v24 = [(NerdController *)self nerdLogger];
    v25 = [v24 oslog];

    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v23 == v16)
    {
      if (v26)
      {
        LOWORD(v32) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "getNearestDescriptorToTarget: nearset descriptor is alternate descriptor.", &v32, 2u);
      }

      v27 = v9;
    }

    else
    {
      if (v26)
      {
        LOWORD(v32) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "getNearestDescriptorToTarget: nearset descriptor is primary descriptor.", &v32, 2u);
      }

      v27 = v8;
    }
  }

  else
  {
    v28 = [(NerdController *)self nerdLogger];
    v29 = [v28 oslog];

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "getNearestDescriptorToTarget: one of the restore versions is nil.", &v32, 2u);
    }

    if (v8)
    {
      v27 = v8;
    }

    else
    {
      v27 = v9;
    }
  }

  v30 = v27;

  return v27;
}

- (int64_t)actionReportUpdateFound:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionReportUpdateFound", buf, 2u);
  }

  v70[0] = @"NeRDSUInfoVersion";
  v6 = [(NerdController *)self updateDescriptor];
  v7 = [v6 productVersion];
  v70[1] = @"NeRDSUInfoBuild";
  v71[0] = v7;
  v8 = [(NerdController *)self updateDescriptor];
  v9 = [v8 productBuildVersion];
  v71[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:2];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

  v12 = [(NerdController *)self updateDescriptor];
  v13 = [v12 documentationAssetType];
  if (v13)
  {
    v14 = v13;
    v15 = [(NerdController *)self updateDescriptor];
    v16 = [v15 documentationID];

    if (!v16)
    {
      goto LABEL_12;
    }

    v68[0] = @"NeRDSUInfoDocAssetType";
    v53 = [(NerdController *)self updateDescriptor];
    v17 = [v53 documentationAssetType];
    v69[0] = v17;
    v68[1] = @"NeRDSUInfoDocAssetUUID";
    v18 = [(NerdController *)self updateDescriptor];
    v19 = [v18 assetAudienceUUID];
    v20 = [(NerdController *)self updateDescriptor];
    v21 = v20;
    v55 = v11;
    if (v19)
    {
      [v20 assetAudienceUUID];
    }

    else
    {
      v51 = [v20 documentationAssetType];
      MAGetPallasAudience();
    }
    v22 = ;
    v69[1] = v22;
    v68[2] = @"NeRDSUInfoDocDeviceClass";
    v23 = MGGetStringAnswer();
    v69[2] = v23;
    v68[3] = @"NeRDSUInfoDocDocumentationID";
    v24 = [(NerdController *)self updateDescriptor];
    v25 = [v24 documentationID];
    v69[3] = v25;
    v12 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];

    if (!v19)
    {

      v22 = v51;
    }

    v11 = v55;
    [v55 setObject:v12 forKey:@"NeRDSUInfoDoc"];
  }

LABEL_12:
  v26 = [(NerdController *)self alternateUpdateDescriptor];

  if (!v26)
  {
    v62 = v11;
    v42 = [NSArray arrayWithObjects:&v62 count:1];
    v32 = 0;
    goto LABEL_24;
  }

  v66[0] = @"NeRDSUInfoVersion";
  v27 = [(NerdController *)self alternateUpdateDescriptor];
  v28 = [v27 productVersion];
  v67[0] = v28;
  v66[1] = @"NeRDSUInfoBuild";
  v29 = [(NerdController *)self alternateUpdateDescriptor];
  v30 = [v29 productBuildVersion];
  v67[1] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
  v32 = [NSMutableDictionary dictionaryWithDictionary:v31];

  v33 = [(NerdController *)self alternateUpdateDescriptor];
  v34 = [v33 documentationAssetType];
  if (!v34)
  {
    goto LABEL_22;
  }

  v35 = v34;
  v36 = [(NerdController *)self alternateUpdateDescriptor];
  v37 = [v36 documentationID];

  if (v37)
  {
    v56 = v11;
    v64[0] = @"NeRDSUInfoDocAssetType";
    v54 = [(NerdController *)self alternateUpdateDescriptor];
    v52 = [v54 documentationAssetType];
    v65[0] = v52;
    v64[1] = @"NeRDSUInfoDocAssetUUID";
    v38 = [(NerdController *)self updateDescriptor];
    v39 = [v38 alternateAssetAudienceUUID];
    if (v39)
    {
      v40 = [(NerdController *)self updateDescriptor];
      [v40 alternateAssetAudienceUUID];
    }

    else
    {
      v40 = [(NerdController *)self alternateUpdateDescriptor];
      v50 = [v40 documentationAssetType];
      MAGetPallasAudience();
    }
    v41 = ;
    v65[1] = v41;
    v64[2] = @"NeRDSUInfoDocDeviceClass";
    v43 = MGGetStringAnswer();
    v65[2] = v43;
    v64[3] = @"NeRDSUInfoDocDocumentationID";
    v44 = [(NerdController *)self alternateUpdateDescriptor];
    v45 = [v44 documentationID];
    v65[3] = v45;
    v33 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:4];

    if (!v39)
    {

      v41 = v50;
    }

    [v32 setObject:v33 forKey:@"NeRDSUInfoDoc"];
    v11 = v56;
LABEL_22:
  }

  v63[0] = v11;
  v63[1] = v32;
  v42 = [NSArray arrayWithObjects:v63 count:2];
LABEL_24:
  v46 = [(NerdController *)self nerdLogger];
  v47 = [v46 oslog];

  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v61 = v42;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sending update found with: %{public}@", buf, 0xCu);
  }

  v58[0] = @"NeRDState";
  v58[1] = @"NeRDUpdateFound";
  v59[0] = @"NeRDStateUpdateFound";
  v59[1] = v42;
  v48 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = __42__NerdController_actionReportUpdateFound___block_invoke;
  v57[3] = &unk_1000995D0;
  v57[4] = self;
  [(NerdController *)self sendOOBMessage:v48 withCompletion:v57];

  return 0;
}

void __42__NerdController_actionReportUpdateFound___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send update found message: %{public}@", &v6, 0xCu);
    }
  }
}

- (int64_t)actionCheckDownloadConstraints:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionCheckDownloadConstraints.", buf, 2u);
  }

  if ([(NerdController *)self startedManualSR])
  {
    [(NerdController *)self adjustUpdateProgressUI:10.0];
  }

  v6 = [(NerdController *)self updateDescriptor];

  if (!v6)
  {
    v10 = @"Update descriptor is null. Cannot check download constraints";
    goto LABEL_20;
  }

  if ([(NerdController *)self okToProceedWithAutoPath])
  {
    v7 = [(NerdController *)self updateAttempt];
    v8 = [v7 unsignedLongLongValue];
    v9 = [(NerdController *)self maxUpdateAttempts];

    if (v8 > v9)
    {
      v10 = @"Max Update attempts exceeced. Switching to manual mode";
LABEL_20:
      v19 = 8116;
LABEL_21:
      v36[0] = @"NeRDStateFailed";
      v35[0] = @"NeRDState";
      v35[1] = @"NeRDError";
      v33[0] = @"NeRDErrorDomain";
      v33[1] = @"NeRDErrorCode";
      v34[0] = kSUCoreErrorDomain;
      v21 = [NSNumber numberWithInteger:v19];
      v34[1] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
      v36[1] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = __49__NerdController_actionCheckDownloadConstraints___block_invoke;
      v28 = &unk_100099860;
      v29 = self;
      v30 = v10;
      v24 = v10;
      [(NerdController *)self sendOOBMessage:v23 withCompletion:&v25];

      [(NerdController *)self sendControllerEvent:@"NeRDDownloadConstraintsUnmet" eventDescription:0, v25, v26, v27, v28, v29];
      return v19;
    }
  }

  v11 = [(NerdController *)self nerdLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(NerdController *)self updateDescriptor];
    v14 = [v13 totalRequiredFreeSpace];
    *buf = 134217984;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Total free space needed for update: %llu bytes", buf, 0xCu);
  }

  v32 = 0;
  v15 = [(NerdController *)self spaceCheckHelper:0 outErrorString:&v32];
  v10 = v32;
  if (v15 == 8600)
  {
    v16 = [(NerdController *)self nerdLogger];
    v17 = [v16 oslog];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not enough space, will try to delete system partition", buf, 2u);
    }

    v31 = 0;
    v15 = [(NerdController *)self spaceCheckHelper:1 outErrorString:&v31];
    v10 = v31;
  }

  if (!v15)
  {
    v18 = [(NerdController *)self nerdFSM];
    [v18 postEvent:@"DownloadConstraintsMet"];
  }

  v19 = 0;
  result = 0;
  if (v10)
  {
    goto LABEL_21;
  }

  return result;
}

void __49__NerdController_actionCheckDownloadConstraints___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:*(a1 + 40)];
}

- (int64_t)actionDownloadUpdate:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actiondownloadUpdate", buf, 2u);
  }

  v6 = [(NerdController *)self updateDescriptor];

  if (v6)
  {
    v7 = [SUCoreUpdate alloc];
    v8 = [(NerdController *)self updateDescriptor];
    v9 = [(NerdController *)self uuid];
    v10 = [v7 initWithDelegate:self updateDescriptor:v8 updateUUID:v9];

    [(NerdController *)self setCoreUpdateMachine:v10];
    v11 = [(NerdController *)self downloadAttempt];
    v12 = [v11 longLongValue] + 1;

    v13 = [NSNumber numberWithLongLong:v12];
    [(NerdController *)self setDownloadAttempt:v13];

    v14 = [(NerdController *)self nerdLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Starting Download attempt %llu", buf, 0xCu);
    }

    v16 = [(NerdController *)self persistedStateDispatchQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __39__NerdController_actionDownloadUpdate___block_invoke_819;
    v25[3] = &unk_100099838;
    v25[4] = self;
    v25[5] = v12;
    dispatch_sync(v16, v25);

    v17 = [(NerdController *)self coreUpdateMachine];
    v18 = [(NerdController *)self updatePolicy];
    [v17 targetDownloaded:v18];

    v19 = [(NerdController *)self updateProgress];
    [(NerdController *)self sendOOBState:@"NeRDStateDownloading" andProgress:v19];

    return 0;
  }

  else
  {
    v32[0] = @"NeRDState";
    v32[1] = @"NeRDError";
    v33[0] = @"NeRDStateFailed";
    v31[0] = kSUCoreErrorDomain;
    v30[0] = @"NeRDErrorDomain";
    v30[1] = @"NeRDErrorCode";
    v20 = 8700;
    v21 = [NSNumber numberWithInteger:8700];
    v31[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v33[1] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __39__NerdController_actionDownloadUpdate___block_invoke;
    v26[3] = &unk_100099860;
    v26[4] = self;
    v27 = @"No update descriptor present..Cannot download";
    [(NerdController *)self sendOOBMessage:v23 withCompletion:v26];
  }

  return v20;
}

void __39__NerdController_actionDownloadUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:*(a1 + 40)];
}

void __39__NerdController_actionDownloadUpdate___block_invoke_819(uint64_t a1)
{
  v2 = [*(a1 + 32) persistedState];
  [v2 persistULL:*(a1 + 40) forKey:@"NeRDDownloadCount"];
}

- (void)updateAssetDownloadProgress:(id)a3
{
  v4 = a3;
  v5 = [(NerdController *)self nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = *&v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Download progress is : %{public}@", &v12, 0xCu);
  }

  [v4 portionComplete];
  v8 = v7 * 50.0 + 10.0;
  v9 = [(NerdController *)self nerdLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adjusting progress percentage bar to %lf", &v12, 0xCu);
  }

  [(NerdController *)self adjustUpdateProgressUI:v8];
  v11 = [(NerdController *)self updateProgress];
  [(NerdController *)self sendOOBState:@"NeRDStateDownloading" andProgress:v11];
}

- (void)updateAssetDownloadStalled:(id)a3
{
  v4 = a3;
  v5 = [(NerdController *)self nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Download is currently stalled : %{public}@", &v7, 0xCu);
  }
}

- (void)updateAssetDownloaded:(id)a3
{
  v4 = a3;
  v5 = [(NerdController *)self nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Update asset has downloaded successfully : %{public}@", &v8, 0xCu);
  }

  +[NeRDTapToManager cleanDataVolumeIfNeeded];
  [(NerdController *)self sendControllerEvent:@"NeRDDownloadFinished" eventDescription:0];
  v7 = [(NerdController *)self nerdFSM];
  [v7 postEvent:@"ProceedToNextUpdateStep"];
}

- (int64_t)actionCheckPrepareConstraints:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionCheckPrepareConstraints..StubFunction", v8, 2u);
  }

  v6 = [(NerdController *)self nerdFSM];
  [v6 postEvent:@"PrepareConstraintsMet"];

  return 0;
}

- (int64_t)actionPrepareUpdate:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionPrepareUpdate", buf, 2u);
  }

  v6 = [(NerdController *)self updateDescriptor];

  if (!v6)
  {
    v11 = @"No update descriptor present..Cannot prepare";
LABEL_8:
    v22[0] = @"NeRDStateFailed";
    v21[0] = @"NeRDState";
    v21[1] = @"NeRDError";
    v19[0] = @"NeRDErrorDomain";
    v19[1] = @"NeRDErrorCode";
    v20[0] = kSUCoreErrorDomain;
    v10 = 8116;
    v12 = [NSNumber numberWithInteger:8116];
    v20[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v22[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __38__NerdController_actionPrepareUpdate___block_invoke;
    v16[3] = &unk_100099860;
    v16[4] = self;
    v17 = v11;
    [(NerdController *)self sendOOBMessage:v14 withCompletion:v16];

    return v10;
  }

  if (!self->_coreUpdateMachine)
  {
    v11 = @"No coreUpdateMachine present and we are trying to prepare. Bailing";
    goto LABEL_8;
  }

  v7 = [(NerdController *)self coreUpdateMachine];
  v8 = [(NerdController *)self updatePolicy];
  [v7 targetPrepared:v8];

  v9 = [(NerdController *)self updateProgress];
  [(NerdController *)self sendOOBState:@"NeRDStatePreparing" andProgress:v9];

  return 0;
}

void __38__NerdController_actionPrepareUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:*(a1 + 40)];
}

- (void)updatePrepareProgress:(id)a3
{
  v4 = a3;
  v5 = [(NerdController *)self nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = *&v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PrepareStatus: %{public}@", &v12, 0xCu);
  }

  [v4 portionComplete];
  v8 = v7 * 35.0 + 60.0;
  v9 = [(NerdController *)self nerdLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adjusting progress percentage bar to %lf", &v12, 0xCu);
  }

  [(NerdController *)self adjustUpdateProgressUI:v8];
  v11 = [(NerdController *)self updateProgress];
  [(NerdController *)self sendOOBState:@"NeRDStatePreparing" andProgress:v11];
}

- (void)updateAttemptFailed:(id)a3
{
  v4 = a3;
  if ([(NerdController *)self startedManualRecovery]|| [(NerdController *)self startedManualSR])
  {
    goto LABEL_9;
  }

  v5 = [(NerdController *)self updateAttempt];
  v6 = [v5 unsignedLongLongValue];
  if (v6 > [(NerdController *)self maxUpdateAttempts])
  {

LABEL_9:
    v13 = [(NerdController *)self updateAttempt];
    v14 = [(NerdController *)self downloadAttempt];
    v15 = [NSString stringWithFormat:@"started manual recovery or max download or overall update attempts exceeded: OverallUpdateAttempts:%@ DownloadAttempts:%@ startedManualRecovery:%d or startedManualSR:%d", v13, v14, [(NerdController *)self startedManualRecovery], [(NerdController *)self startedManualSR]];

    v25[0] = @"NeRDStateFailed";
    v24[0] = @"NeRDState";
    v24[1] = @"NeRDError";
    v22[0] = @"NeRDErrorDomain";
    v16 = [v4 domain];
    v22[1] = @"NeRDErrorCode";
    v23[0] = v16;
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    v23[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v25[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __38__NerdController_updateAttemptFailed___block_invoke;
    v20[3] = &unk_100099860;
    v20[4] = self;
    v11 = v15;
    v21 = v11;
    [(NerdController *)self sendOOBMessage:v19 withCompletion:v20];

    goto LABEL_10;
  }

  v7 = [(NerdController *)self downloadAttempt];
  v8 = [v7 unsignedLongLongValue];

  if (v8 > 1)
  {
    goto LABEL_9;
  }

  v9 = [(NerdController *)self nerdLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = @"Update failed. Purging and possibly retrying";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v11 = @"Update failed. Purging and possibly retrying";
  [(NerdController *)self setLastRecordedError:@"Update failed. Purging and possibly retrying"];
  [(NerdController *)self sendControllerEvent:@"NeRDUpdateAttemptFailed" eventDescription:@"Update failed..See MSU event for details"];
  v12 = [(NerdController *)self nerdFSM];
  [v12 postEvent:kSU_E_DownloadFailed];

LABEL_10:
}

void __38__NerdController_updateAttemptFailed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:*(a1 + 40)];
}

- (void)updatePrepared:(id)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update prepared successfully", v7, 2u);
  }

  +[NeRDTapToManager cleanDataVolumeIfNeeded];
  v6 = [(NerdController *)self nerdFSM];
  [v6 postEvent:@"ProceedToNextUpdateStep"];
}

- (int64_t)actionApplyUpdate:(id *)a3
{
  v4 = [(NerdController *)self applyAttempt];
  v5 = [v4 longLongValue] + 1;

  v6 = [NSNumber numberWithLongLong:v5];
  [(NerdController *)self setApplyAttempt:v6];

  v7 = [(NerdController *)self nerdLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In actionApplyUpdate: Attempt %llu", buf, 0xCu);
  }

  v9 = [(NerdController *)self updateDescriptor];

  if (!v9)
  {
    v14 = @"No update descriptor present..Cannot apply";
LABEL_8:
    v23[0] = @"NeRDState";
    v23[1] = @"NeRDError";
    v24[0] = @"NeRDStateFailed";
    v21[0] = @"NeRDErrorDomain";
    v21[1] = @"NeRDErrorCode";
    v22[0] = kSUCoreErrorDomain;
    v13 = 8116;
    v15 = [NSNumber numberWithInteger:8116];
    v22[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v24[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __36__NerdController_actionApplyUpdate___block_invoke;
    v19[3] = &unk_100099860;
    v19[4] = self;
    v20 = v14;
    [(NerdController *)self sendOOBMessage:v17 withCompletion:v19];

    return v13;
  }

  if (!self->_coreUpdateMachine)
  {
    v14 = @"No coreUpdateMachine present and we are trying to apply. Bailing";
    goto LABEL_8;
  }

  v10 = [(NerdController *)self coreUpdateMachine];
  v11 = [(NerdController *)self updatePolicy];
  [v10 targetApplied:v11];

  v12 = [(NerdController *)self updateProgress];
  [(NerdController *)self sendOOBState:@"NeRDStateInstalling" andProgress:v12];

  return 0;
}

void __36__NerdController_actionApplyUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:*(a1 + 40)];
}

- (int64_t)actionCheckApplyConstraints:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionCheckApplyConstraints", v8, 2u);
  }

  v6 = [(NerdController *)self nerdFSM];
  [v6 postEvent:@"ApplyConstraintsMet"];

  return 0;
}

- (void)updateApplied
{
  v3 = [(NerdController *)self nerdLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update applied successfully.", buf, 2u);
  }

  [(NerdController *)self adjustUpdateProgressUI:100.0];
  v5 = [(NerdController *)self nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting up upgrade fallback nvram var", v15, 2u);
  }

  set_nvram_variable("upgrade-fallback-boot-command", "recover", v7, v8, v9, v10, v11, v12);
  [(NerdController *)self sendControllerEvent:@"NeRDFinished" eventDescription:0];
  v13 = [(NerdController *)self updateProgress];
  [(NerdController *)self sendOOBState:@"NeRDStateInstalled" andProgress:v13];

  v14 = [(NerdController *)self nerdFSM];
  [v14 postEvent:@"ProceedToNextUpdateStep"];
}

- (void)applyAttemptFailed:(id)a3
{
  v4 = a3;
  v5 = [(NerdController *)self applyAttempt];
  v6 = [v5 longLongValue];

  v7 = [(NerdController *)self nerdLogger];
  v8 = [v7 oslog];

  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6 > 1)
  {
    if (v9)
    {
      *buf = 134217984;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Apply has failed more times(%lld) than the max allowed limit", buf, 0xCu);
    }

    v11 = [NSNumber numberWithLongLong:0];
    [(NerdController *)self setApplyAttempt:v11];

    [(NerdController *)self sendControllerEvent:@"NeRDApplyFailed" eventDescription:@"ErroringOut"];
    v19[1] = @"NeRDError";
    v20[0] = @"NeRDStateFailed";
    v19[0] = @"NeRDState";
    v17[0] = @"NeRDErrorDomain";
    v12 = [v4 domain];
    v17[1] = @"NeRDErrorCode";
    v18[0] = v12;
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    v18[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v20[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __37__NerdController_applyAttemptFailed___block_invoke;
    v16[3] = &unk_1000995D0;
    v16[4] = self;
    [(NerdController *)self sendOOBMessage:v15 withCompletion:v16];
  }

  else
  {
    if (v9)
    {
      *buf = 134217984;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Apply has failed %lld time(s)..Retrying", buf, 0xCu);
    }

    [(NerdController *)self sendControllerEvent:@"NeRDApplyFailed" eventDescription:@"Retrying"];
    v10 = [(NerdController *)self nerdFSM];
    [v10 postEvent:@"RetryApply"];
  }
}

void __37__NerdController_applyAttemptFailed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:@"Apply Failed"];
}

- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NerdController *)self nerdLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a4;
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In unknown state!..action: %{public}@ error:%{public}@", &v11, 0x16u);
  }

  return 8113;
}

- (void)initializeOOBMessenger
{
  v3 = [(NerdController *)self nerdLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting up OOBMessenger object", buf, 2u);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __40__NerdController_initializeOOBMessenger__block_invoke;
  v31[3] = &unk_100099428;
  v31[4] = self;
  v5 = objc_retainBlock(v31);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __40__NerdController_initializeOOBMessenger__block_invoke_865;
  v30[3] = &unk_100099900;
  v30[4] = self;
  v6 = objc_retainBlock(v30);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __40__NerdController_initializeOOBMessenger__block_invoke_867;
  v29[3] = &unk_1000995D0;
  v29[4] = self;
  v7 = objc_retainBlock(v29);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __40__NerdController_initializeOOBMessenger__block_invoke_868;
  v28[3] = &unk_1000995D0;
  v28[4] = self;
  v8 = objc_retainBlock(v28);
  v9 = [(NerdController *)self updateDescriptor];
  v10 = [v9 productVersion];

  if (v10)
  {
    v33 = @"NeRDSUInfoVersion";
    v11 = [(NerdController *)self updateDescriptor];
    v12 = [v11 productVersion];
    v34 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  }

  else
  {
    v13 = &__NSDictionary0__struct;
  }

  v14 = [(NerdController *)self oobMessenger];

  if (v14)
  {
    v15 = [(NerdController *)self nerdLogger];
    v16 = [v15 oslog];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stop existing OOBMessenger object", buf, 2u);
    }

    v17 = [(NerdController *)self oobMessenger];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __40__NerdController_initializeOOBMessenger__block_invoke_869;
    v22[3] = &unk_100099928;
    v22[4] = self;
    v24 = v6;
    v25 = v8;
    v23 = v13;
    v26 = v5;
    v27 = v7;
    [v17 stop:v22];
  }

  else
  {
    v18 = [[NeRDOOBMessaging alloc] initWithEventHandler:v6 completionHandler:v8 options:v13];
    [(NerdController *)self setOobMessenger:v18];

    v19 = [(NerdController *)self oobMessenger];
    [v19 setActivatedHandler:v5];

    v20 = [(NerdController *)self oobMessenger];
    [v20 setConnectionCompletionHandler:v7];

    v21 = [(NerdController *)self oobMessenger];
    [v21 start];
  }
}

void __40__NerdController_initializeOOBMessenger__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nerdLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OOBMessenger activated", v7, 2u);
  }

  v4 = [*(a1 + 32) lastOOBMessage];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 lastOOBMessage];
    [v5 sendOOBMessage:v6];
  }
}

void __40__NerdController_initializeOOBMessenger__block_invoke_865(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got event %{public}@", &v10, 0xCu);
  }

  v6 = [v3 objectForKeyedSubscript:@"NeRDOOBCommand"];
  if ([v6 isEqual:@"NeRDOOBCommandStatus"])
  {
    v7 = [*(a1 + 32) lastOOBMessage];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v8 lastOOBMessage];
      [v8 sendOOBMessage:v9];
    }
  }
}

void __40__NerdController_initializeOOBMessenger__block_invoke_867(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "oobMessenger connection ended %{public}@", &v6, 0xCu);
  }
}

void __40__NerdController_initializeOOBMessenger__block_invoke_868(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nerdLogger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v10 = 138543362;
      v11 = v3;
      v7 = "oobMessenger finished with error %{public}@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v10) = 0;
    v7 = "oobMessenger finished successfully";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }
}

void __40__NerdController_initializeOOBMessenger__block_invoke_869(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nerdLogger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v16 = 138543362;
      v17 = v3;
      v7 = "oobMessenger stopped with error %{public}@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v16) = 0;
    v7 = "previous oobMessenger stopped successfully";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = [[NeRDOOBMessaging alloc] initWithEventHandler:*(a1 + 48) completionHandler:*(a1 + 56) options:*(a1 + 40)];
  [*(a1 + 32) setOobMessenger:v10];

  v11 = *(a1 + 64);
  v12 = [*(a1 + 32) oobMessenger];
  [v12 setActivatedHandler:v11];

  v13 = *(a1 + 72);
  v14 = [*(a1 + 32) oobMessenger];
  [v14 setConnectionCompletionHandler:v13];

  v15 = [*(a1 + 32) oobMessenger];
  [v15 start];
}

- (void)sendOOBMessage:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NerdController *)self setLastOOBMessage:v6];
  v8 = [(NerdController *)self tapToManager];
  if ([v8 managerIsActive])
  {
    v9 = [(NerdController *)self tapToManager];
    v10 = [v9 connectionValid];

    if (v10)
    {
      v11 = [(NerdController *)self nerdLogger];
      v12 = [v11 oslog];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending oob message via ttr %{public}@", &v25, 0xCu);
      }

      v13 = [(NerdController *)self tapToManager];
LABEL_11:
      v18 = v13;
      [v13 sendMessage:v6 completion:v7];
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
  }

  v14 = [(NerdController *)self oobMessenger];
  v15 = [v14 managerIsActive];

  if (v15)
  {
    v16 = [(NerdController *)self nerdLogger];
    v17 = [v16 oslog];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138543362;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "sending oob message via oob %{public}@", &v25, 0xCu);
    }

    v13 = [(NerdController *)self oobMessenger];
    goto LABEL_11;
  }

  v19 = [(NerdController *)self tapToManager];
  if (v19)
  {

LABEL_15:
    v21 = [(NerdController *)self nerdLogger];
    v22 = [v21 oslog];

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v25 = 138543362;
    v26 = v6;
    v23 = "could not send message %{public}@";
    goto LABEL_17;
  }

  v20 = [(NerdController *)self oobMessenger];

  if (v20)
  {
    goto LABEL_15;
  }

  v24 = [(NerdController *)self nerdLogger];
  v22 = [v24 oslog];

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543362;
    v26 = v6;
    v23 = "no where to send message %{public}@";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, &v25, 0xCu);
  }

LABEL_18:

  if (v7)
  {
    v18 = [NSError errorWithDomain:@"NeRDControllerError" code:1 userInfo:0];
    v7[2](v7, v18);
    goto LABEL_20;
  }

LABEL_21:
}

- (void)sendOOBState:(id)a3 andProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 integerValue];
  if (v6 && v7)
  {
    v9 = [(NerdController *)self lastOOBStateReported];
    if ([v6 isEqual:v9])
    {
      v10 = [(NerdController *)self lastOOBProgressReported];

      if (v8 == v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v28[0] = @"NeRDState";
    v28[1] = @"NeRDProgress";
    v29[0] = v6;
    v29[1] = v7;
    v14 = v29;
    v15 = v28;
    v16 = 2;
LABEL_11:
    v17 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:v16];
    v13 = [NSMutableDictionary dictionaryWithDictionary:v17];

    v18 = [(NerdController *)self updateDescriptor];
    v19 = [v18 productVersion];

    if (v19)
    {
      v20 = [(NerdController *)self updateDescriptor];
      v21 = [v20 productVersion];
      [v13 setValue:v21 forKey:@"NeRDSUInfoVersion"];
    }

    goto LABEL_13;
  }

  if (!v6)
  {
    if (!v7)
    {
      v22 = [(NerdController *)self nerdLogger];
      v13 = [v22 oslog];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "not sending a message for nothing", &v23, 2u);
      }

      goto LABEL_14;
    }

    if (v8 == [(NerdController *)self lastOOBProgressReported])
    {
      goto LABEL_15;
    }

    v24 = @"NeRDProgress";
    v25 = v7;
    v14 = &v25;
    v15 = &v24;
    v16 = 1;
    goto LABEL_11;
  }

  v11 = [(NerdController *)self lastOOBStateReported];
  v12 = [v6 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v26 = @"NeRDState";
    v27 = v6;
    v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
LABEL_13:
    [(NerdController *)self sendOOBMessage:v13];
LABEL_14:
  }

LABEL_15:
  [(NerdController *)self setLastOOBStateReported:v6];
  [(NerdController *)self setLastOOBProgressReported:v8];
}

- (void)setupCompletedDoScan
{
  v3 = [NSNumber numberWithLongLong:0];
  [(NerdController *)self setNetworkAquisitionAttempt:v3];

  [(NerdController *)self setOkToProceedWithAutoPath:0];
  set_nvram_variable("recoveryos-initiated-update", "true_manual", v4, v5, v6, v7, v8, v9);
  [(NerdController *)self setStartedManualSR:1];
  v10 = [(NerdController *)self nerdFSM];
  [v10 postEvent:@"TriggerRecoveryWithSR"];
}

- (void)setupCompletedDoRecovery
{
  [(NerdController *)self setupCompletedClearScreen];
  v3 = [NSNumber numberWithLongLong:0];
  [(NerdController *)self setNetworkAquisitionAttempt:v3];

  v4 = [NSNumber numberWithLongLong:0];
  [(NerdController *)self setApplyAttempt:v4];

  v5 = [NSNumber numberWithLongLong:0];
  [(NerdController *)self setDownloadAttempt:v5];

  [(NerdController *)self setOkToProceedWithAutoPath:0];
  v6 = [(NerdController *)self persistedStateDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__NerdController_setupCompletedDoRecovery__block_invoke;
  block[3] = &unk_100099428;
  block[4] = self;
  dispatch_sync(v6, block);

  set_nvram_variable("recoveryos-initiated-update", "true_manual", v7, v8, v9, v10, v11, v12);
  [(NerdController *)self setStartedManualRecovery:1];
  v13 = [(NerdController *)self nerdFSM];
  [v13 postEvent:@"ProceedToNextUpdateStep"];
}

void __42__NerdController_setupCompletedDoRecovery__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedState];
  [v1 persistULL:0 forKey:@"NeRDDownloadCount"];
}

- (void)setupCompletedDoReboot
{
  [(NerdController *)self setupCompletedClearScreen];
  if (!delete_nvram_variable_and_force_sync(@"boot-command"))
  {
    v3 = [(NerdController *)self nerdLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to delete boot-command nvram", v6, 2u);
    }
  }

  v5 = [(NerdController *)self nerdFSM];
  [v5 postEvent:@"TriggerReboot"];
}

- (void)setupCompletedDoEACS
{
  [(NerdController *)self setupCompletedClearScreen];
  v3 = [(NerdController *)self nerdFSM];
  [v3 postEvent:@"TriggerEACS"];
}

- (void)startDownloadForSU:(id)a3
{
  v4 = a3;
  v5 = [(NerdController *)self nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "startDownloadForSU with options:%{public}@", &v12, 0xCu);
  }

  v7 = [v4 objectForKeyedSubscript:@"kNeRDSelectedSU"];
  v8 = [v7 intValue];

  if (v8 == 1)
  {
    v9 = [(NerdController *)self nerdLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "user chose the alternate descriptor, so make it the update descriptor", &v12, 2u);
    }

    v11 = [(NerdController *)self alternateUpdateDescriptor];
    [(NerdController *)self setUpdateDescriptor:v11];
  }

  [(NerdController *)self setAlternateUpdateDescriptor:0];
  [(NerdController *)self startUpdateHelper];
}

- (void)setupAndBeginTapToManager
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __43__NerdController_setupAndBeginTapToManager__block_invoke;
  v13[3] = &unk_100099978;
  v13[4] = self;
  v11[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __43__NerdController_setupAndBeginTapToManager__block_invoke_878;
  v12[3] = &unk_1000999A0;
  v12[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __43__NerdController_setupAndBeginTapToManager__block_invoke_880;
  v11[3] = &unk_1000999C8;
  v3 = [[NeRDTapToManager alloc] initManagerWithCompletion:v13 setupCompletion:v12 commandCallback:v11];
  [(NerdController *)self setTapToManager:v3];

  v4 = [(NerdController *)self tapToManager];
  [v4 setFakeUI:{-[NerdController fakeUI](self, "fakeUI")}];

  v5 = [(NerdController *)self bootedOSVersion];
  if (!v5)
  {
    v6 = [(NerdController *)self targetOSVersion];

    if (v6)
    {
      goto LABEL_4;
    }

    v8 = [(NerdController *)self nerdLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No bootedOS or targetOS version, can't start recovery", v10, 2u);
    }

    v5 = [(NerdController *)self tapToManager];
    [v5 setRecoveryDisabled:1];
  }

LABEL_4:
  [(NerdController *)self setTapToManagerNeedsReinitialization:0];
  v7 = [(NerdController *)self tapToManager];
  [v7 beginTapToSetup:{-[NerdController manuallyEntered](self, "manuallyEntered")}];
}

void __43__NerdController_setupAndBeginTapToManager__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Success";
    if (v3)
    {
      v6 = v3;
    }

    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got completion from NerdTapToManager. Outcome was %{public}@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) tapToManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __43__NerdController_setupAndBeginTapToManager__block_invoke_876;
  v9[3] = &unk_100099950;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v8 = v3;
  [v7 endTapToSetup:v9];
}

void __43__NerdController_setupAndBeginTapToManager__block_invoke_876(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) nerdLogger];
  v7 = [v6 oslog];

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *v21 = 138543362;
    *&v21[4] = v5;
    v9 = "TapToManager invalidation completed with error %{public}@";
    v10 = v7;
    v11 = 12;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *v21 = 0;
    v9 = "TapToManager invalidation completed";
    v10 = v7;
    v11 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, v21, v11);
LABEL_7:

  [*(a1 + 32) setTapToManagerNeedsReinitialization:1];
  v12 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v13 = [v12 nerdFSM];
    v14 = v13;
    v15 = @"ErrorGeneric";
LABEL_15:
    [v13 postEvent:v15, *v21];
LABEL_16:

    goto LABEL_17;
  }

  v16 = [v12 startedManualRecovery];
  v17 = *(a1 + 32);
  if ((v16 & 1) == 0)
  {
    v18 = [v17 nerdLogger];
    v19 = [v18 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "endTapToSetup reset manual mode", v21, 2u);
    }

    v13 = [*(a1 + 32) nerdFSM];
    v14 = v13;
    v15 = @"ResetManualMode";
    goto LABEL_15;
  }

  if (!a3)
  {
    v20 = [v17 nerdLogger];
    v14 = [v20 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ended TTR with unexpected state! file a bug", v21, 2u);
    }

    goto LABEL_16;
  }

  [v17 initializeOOBMessenger];
LABEL_17:
}

void __43__NerdController_setupAndBeginTapToManager__block_invoke_878(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) manuallyEntered];
  v5 = [*(a1 + 32) nerdLogger];
  v6 = [v5 oslog];

  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v8 = a2 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v7)
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setup completed but will wait for client command", v10, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = [*(a1 + 32) manuallyEntered];
      v10[0] = 67109376;
      v10[1] = v9;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setup completed, do recovery (manuallyEntered:%d, oldClient:%d)", v10, 0xEu);
    }

    [*(a1 + 32) setupCompletedDoRecovery];
  }
}

void __43__NerdController_setupAndBeginTapToManager__block_invoke_880(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      [v6 setupCompletedDoReboot];
      goto LABEL_19;
    }

    if (a2 == 4)
    {
      [v6 startDownloadForSU:v5];
      goto LABEL_19;
    }

LABEL_8:
    v7 = [v6 nerdLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown command %d", v14, 8u);
    }

    goto LABEL_19;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      [v6 setupCompletedDoEACS];
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v9 = [v6 tapToManager];
  v10 = [v9 supportsSlowRoll];

  v11 = [*(a1 + 32) nerdLogger];
  v12 = [v11 oslog];

  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Slow Roll supported, starting with a scan", v14, 2u);
    }

    [*(a1 + 32) setupCompletedDoScan];
  }

  else
  {
    if (v13)
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Slow Roll not supported, starting recovery", v14, 2u);
    }

    [*(a1 + 32) setupCompletedDoRecovery];
  }

LABEL_19:
}

- (void)beginTapToManager
{
  [(NerdController *)self setStartedManualRecovery:0];
  [(NerdController *)self setStartedManualSR:0];
  v3 = [(NerdController *)self tapToManager];
  if (v3 && (v4 = v3, v5 = [(NerdController *)self tapToManagerNeedsReinitialization], v4, !v5))
  {
    v8 = [(NerdController *)self tapToManager];
    v9 = [v8 useRedRingUI];

    v10 = [(NerdController *)self nerdLogger];
    v11 = [v10 oslog];

    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Respring red-ring UI path", v15, 2u);
      }

      v13 = [(NerdController *)self tapToManager];
      [v13 setupMangerToAwaitRedRingBypass];
    }

    else
    {
      if (v12)
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asking tapToManager to restart advertising recovery", v14, 2u);
      }

      v13 = [(NerdController *)self tapToManager];
      [v13 restartRecoveryAdvertisement];
    }
  }

  else
  {
    v6 = [(NerdController *)self nerdLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting up tapToManager object", buf, 2u);
    }

    [(NerdController *)self setTapToManager:0];
    [(NerdController *)self setupAndBeginTapToManager];
  }
}

- (int64_t)actionInitializeManualMode:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionInitializeManualMode.", buf, 2u);
  }

  v6 = [(NerdController *)self tapToManager];
  [v6 resetStateOnUpdateError];

  *buf = "applelogo";
  if ((setNeRDUIStepDisplayData(1, buf) & 1) == 0)
  {
    v7 = [(NerdController *)self nerdLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to display logo", v17, 2u);
    }
  }

  v9 = [(NerdController *)self coreUpdateMachine];

  v10 = [(NerdController *)self nerdLogger];
  v11 = [v10 oslog];

  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reached manual mode after failed auto NERD update", v17, 2u);
    }

    [(NerdController *)self setCoreUpdateMachine:0];
  }

  else
  {
    if (v12)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No NERD update detected", v17, 2u);
    }
  }

  v13 = [(NerdController *)self oobMessenger];

  if (v13)
  {
    v14 = [(NerdController *)self oobMessenger];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __45__NerdController_actionInitializeManualMode___block_invoke;
    v16[3] = &unk_1000995D0;
    v16[4] = self;
    [v14 stop:v16];
  }

  else
  {
    [(NerdController *)self beginTapToManager];
  }

  return 0;
}

- (int64_t)actionDoEACS:(id *)a3
{
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionDoEACS", buf, 2u);
  }

  v25 = kObliterationTypeKey;
  v26 = kObliterationTypeMarkStart;
  [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v6 = Mobile_Obliterate();
  if (!v6)
  {
    if (delete_nvram_variable_and_force_sync(@"boot-command"))
    {
      v17 = @"NeRDState";
      v18 = @"NeRDStateEACSSuccess";
      v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __31__NerdController_actionDoEACS___block_invoke_885;
      v15[3] = &unk_1000995D0;
      v15[4] = self;
      [(NerdController *)self sendOOBMessage:v7 withCompletion:v15];
      goto LABEL_12;
    }

    v8 = [(NerdController *)self nerdLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to delete boot-command nvram", buf, 2u);
    }

    v6 = 0xFFFFFFFFLL;
  }

  v10 = [(NerdController *)self nerdLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Mobile_Obliterate failed with %d", buf, 8u);
  }

  v21[0] = @"NeRDState";
  v21[1] = @"NeRDError";
  v22[0] = @"NeRDStateEACSFailed";
  v19[0] = @"NeRDErrorDomain";
  v19[1] = @"NeRDErrorCode";
  v20[0] = @"NeRDControllerEACSError";
  v7 = [NSNumber numberWithInt:v6];
  v20[1] = v7;
  v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __31__NerdController_actionDoEACS___block_invoke;
  v16[3] = &unk_1000995D0;
  v16[4] = self;
  [(NerdController *)self sendOOBMessage:v13 withCompletion:v16];

LABEL_12:
  return 0;
}

void __31__NerdController_actionDoEACS___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v6, 0xCu);
    }
  }

  [*(a1 + 32) postErrorEventWithDescription:@"Mobile_Obliterate failed"];
}

void __31__NerdController_actionDoEACS___block_invoke_885(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to send message: %{public}@", &v7, 0xCu);
    }
  }

  v6 = [*(a1 + 32) nerdFSM];
  [v6 postEvent:@"ProceedToNextUpdateStep"];
}

- (int64_t)actionCleanupAndReboot:(id *)a3
{
  [(NerdController *)self performCleanupOnTermination];
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In actionCleanupAndReboot..Saving logs before reboot", buf, 2u);
  }

  [(NerdController *)self stopSystemLogStream];
  +[NerdController saveSystemLogs];
  if ([(NerdController *)self runningInDebugMode])
  {
    v6 = [(NerdController *)self nerdLogger];
    v7 = [v6 oslog];

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      return 0;
    }

    *v23 = 0;
    v8 = "Running in debug mode..auto reboot disabled";
    v9 = v23;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    goto LABEL_7;
  }

  v10 = [(NerdController *)self stopBeforeReboot];
  v11 = [(NerdController *)self nerdLogger];
  v12 = [v11 oslog];

  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Stop before reboot is set..auto reboot disabled", v22, 2u);
    }

    v14 = +[NSFileManager defaultManager];
    v15 = [v14 createFileAtPath:@"/tmp/ok_to_reboot" contents:0 attributes:0];

    v16 = [(NerdController *)self nerdLogger];
    v7 = [v16 oslog];

    v17 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (!v17)
      {
        goto LABEL_7;
      }

      v20 = 0;
      v8 = "Successfully created /tmp/ok_to_reboot";
      v9 = &v20;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_7;
      }

      v21 = 0;
      v8 = "Failed to create /tmp/ok_to_reboot";
      v9 = &v21;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will reboot now", v19, 2u);
  }

  reboot3();
  return 0;
}

- (int)getFreeSpaceAvailableForUpdate:(unint64_t *)a3 deleteSystemPartition:(BOOL)a4
{
  v4 = a4;
  bzero(&v98, 0x878uLL);
  v90 = 0;
  bzero(v97, 0x400uLL);
  bzero(v96, 0x400uLL);
  if (!ramrod_probe_media(&v90, v7, v8, v9, v10, v11, v12, v13))
  {
    v23 = [(NerdController *)self nerdLogger];
    v24 = [v23 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v90;
      v25 = "Failed to probe media to get space available for update: %{public}@";
      v26 = v24;
      v27 = 12;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    }

LABEL_27:

    return 5;
  }

  if (a3)
  {
    set_partition_logging_function(_nerd_partition_logger);
    set_partition_execution_function(msu_execute_command_with_callback);
    set_partition_execution_logging_function(msu_partition_execution_logger);
    ramrod_get_system_partition_device_node(v97, 0x400uLL);
    ramrod_get_apfs_container_device_node(v96, 0x400uLL);
    v14 = [(NerdController *)self nerdLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "Unknown";
      if (v96[0])
      {
        v17 = v96;
      }

      else
      {
        v17 = "Unknown";
      }

      if (v97[0])
      {
        v16 = v97;
      }

      *buf = 136446466;
      *&buf[4] = v17;
      *&buf[12] = 2082;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "APFS container device node: '%{public}s' System partition device node: '%{public}s'", buf, 0x16u);
    }

    if (v96[0])
    {
      if (!v4)
      {
        goto LABEL_53;
      }

      v18 = [(NerdController *)self nerdLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unmounting system partition for deletion", buf, 2u);
      }

      if (unmount("/private/var/MobileSoftwareUpdate/mnt1", 0x80000))
      {
        if (*__error() != 22 && *__error() != 2)
        {
          v82 = [(NerdController *)self nerdLogger];
          v21 = [v82 oslog];

          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
LABEL_32:

            v35 = v97[0];
            v36 = [(NerdController *)self nerdLogger];
            v37 = [v36 oslog];

            v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
            if (v35)
            {
              if (v38)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Deleting system partition", buf, 2u);
              }

              v45 = delete_apfs_partition(0, 0, v39, v40, v41, v42, v43, v44);
              if (v45)
              {
                v46 = v45;
                v47 = [(NerdController *)self nerdLogger];
                v48 = [v47 oslog];

                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *&buf[4] = v46;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Failed to delete system partition(error: %d)", buf, 8u);
                }

                v49 = [(NerdController *)self nerdLogger];
                v50 = [v49 oslog];

                if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_52;
                }

                *buf = 0;
                v51 = "Skipped format of system partition";
                goto LABEL_50;
              }
            }

            else
            {
              if (v38)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Skipping deleting system partition since it does not exist", buf, 2u);
              }
            }

            v52 = [(NerdController *)self nerdLogger];
            v53 = [v52 oslog];

            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "ReFormatting system partition", buf, 2u);
            }

            v54 = format_partition(v96, "System", 0, 1, 0);
            v55 = [(NerdController *)self nerdLogger];
            v50 = [v55 oslog];

            v56 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
            if (v54)
            {
              if (v56)
              {
                v57 = strerror(v54);
                *buf = 67109378;
                *&buf[4] = v54;
                *&buf[8] = 2082;
                *&buf[10] = v57;
                v51 = "Failed to format system partition(error: %d : %{public}s)";
                v58 = v50;
                v59 = 18;
LABEL_51:
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, v51, buf, v59);
              }
            }

            else if (v56)
            {
              *buf = 0;
              v51 = "System partition successfully reformatted";
LABEL_50:
              v58 = v50;
              v59 = 2;
              goto LABEL_51;
            }

LABEL_52:

LABEL_53:
            v89 = 0;
            ramrod_mount_filesystem_no_fsck_opt_err(v97, "/private/var/MobileSoftwareUpdate/mnt1", 0, &v89);
            v60 = v89;
            v61 = [(NerdController *)self nerdLogger];
            v62 = [v61 oslog];

            v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
            if (v60)
            {
              if (v63)
              {
                *buf = 138543362;
                *&buf[4] = v89;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Failed to mount system partition %{public}@", buf, 0xCu);
              }

              return 5;
            }

            if (v63)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Successfully mounted system partition", buf, 2u);
            }

            statfs("/private/var/MobileSoftwareUpdate/mnt1", &v98);
            *a3 = v98.f_bavail * v98.f_bsize;
            v64 = [(NerdController *)self nerdLogger];
            v65 = [v64 oslog];

            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = *a3;
              v67 = vcvtd_n_f64_u64(*a3, 0x14uLL);
              *buf = 134218240;
              *&buf[4] = v66;
              *&buf[12] = 2048;
              *&buf[14] = v67;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Free space available for update on container: %llu bytes(%f MB)", buf, 0x16u);
            }

            memset(v88, 0, 12);
            *&buf[12] = 0;
            *&buf[16] = 0;
            *buf = 5;
            *&buf[8] = -2139095040;
            if (getattrlist("/private/var/MobileSoftwareUpdate/mnt1", buf, v88, 0xCuLL, 0))
            {
              v68 = [(NerdController *)self nerdLogger];
              v69 = [v68 oslog];

              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                v70 = *__error();
                *v91 = 67109120;
                LODWORD(v92) = v70;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "getattrlist(ATTR_VOL_SPACEUSED) to get filesystem used space failed: %d", v91, 8u);
              }

              v71 = v98.f_blocks * v98.f_bsize;
            }

            else
            {
              v71 = *(v88 + 4);
            }

            v72 = [(NerdController *)self nerdLogger];
            v73 = [v72 oslog];

            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              *v91 = 134218240;
              v92 = v71;
              v93 = 2048;
              v94 = vcvtd_n_f64_u64(v71, 0x14uLL);
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "System volume size is: %llu bytes(%f MB)", v91, 0x16u);
            }

            v74 = [(NerdController *)self nerdLogger];
            v75 = [v74 oslog];

            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *v91 = 0;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Unmounting system volume mounted by controller", v91, 2u);
            }

            if (unmount("/private/var/MobileSoftwareUpdate/mnt1", 0x80000))
            {
              if (*__error() != 22 && *__error() != 2)
              {
                v85 = [(NerdController *)self nerdLogger];
                v77 = [v85 oslog];

                if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_81;
                }

                v86 = __error();
                v87 = strerror(*v86);
                *v91 = 136446466;
                v92 = "/private/var/MobileSoftwareUpdate/mnt1";
                v93 = 2082;
                v94 = *&v87;
                v78 = "unable to unmount partition previously mounted at '%{public}s': %{public}s";
                v80 = v77;
                v81 = 22;
                goto LABEL_80;
              }

              v76 = [(NerdController *)self nerdLogger];
              v77 = [v76 oslog];

              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *v91 = 136446210;
                v92 = "/private/var/MobileSoftwareUpdate/mnt1";
                v78 = "Unable to find expected mounted system volume at '%{public}s' ";
LABEL_79:
                v80 = v77;
                v81 = 12;
LABEL_80:
                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, v78, v91, v81);
              }
            }

            else
            {
              v79 = [(NerdController *)self nerdLogger];
              v77 = [v79 oslog];

              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *v91 = 136446210;
                v92 = "/private/var/MobileSoftwareUpdate/mnt1";
                v78 = "System partition at %{public}s(previously mounted by controller) successfully unmounted";
                goto LABEL_79;
              }
            }

LABEL_81:

            return 0;
          }

          v83 = __error();
          v84 = strerror(*v83);
          *buf = 136446466;
          *&buf[4] = "/private/var/MobileSoftwareUpdate/mnt1";
          *&buf[12] = 2082;
          *&buf[14] = v84;
          v22 = "Failed to umount filesystem present at '%{public}s'..error:%{public}s ..Attempting to proceed anyways";
          v33 = v21;
          v34 = 22;
LABEL_31:
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v22, buf, v34);
          goto LABEL_32;
        }

        v20 = [(NerdController *)self nerdLogger];
        v21 = [v20 oslog];

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        *&buf[4] = "/private/var/MobileSoftwareUpdate/mnt1";
        v22 = "no filesystem mounted at '%{public}s'..OK to proceed";
      }

      else
      {
        v32 = [(NerdController *)self nerdLogger];
        v21 = [v32 oslog];

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        *&buf[4] = "/private/var/MobileSoftwareUpdate/mnt1";
        v22 = "Successfully unmounted filesystem previously mounted at %{public}s";
      }

      v33 = v21;
      v34 = 12;
      goto LABEL_31;
    }

    v31 = [(NerdController *)self nerdLogger];
    v24 = [v31 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "Unable to determine APFS container for main system";
      v26 = v24;
      v27 = 2;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v28 = [(NerdController *)self nerdLogger];
  v29 = [v28 oslog];

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Invalid argument passed to getFreeSpaceAvailableForUpdate", buf, 2u);
  }

  return 22;
}

- (void)adjustUpdateProgressUI:(double)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  __sprintf_chk(v8, 0, 0x32uLL, "%9.7lf", a3);
  v7[0] = "applelogo";
  v7[1] = v8;
  setNeRDUIStepDisplayData(4, v7);
  v5 = self;
  objc_sync_enter(v5);
  v6 = [NSNumber numberWithDouble:a3];
  [(NerdController *)v5 setUpdateProgress:v6];

  objc_sync_exit(v5);
  [(NerdController *)v5 dumpControllerState];
}

- (void)cleanSystemLogs
{
  v2 = [(NerdController *)self nerdLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting RecoveryOS logarchive files", buf, 2u);
  }

  v4 = [[NSString alloc] initWithFormat:@"%s/%s", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD"];
  v5 = +[NSFileManager defaultManager];
  [v5 enumeratorAtPath:v4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([v10 hasSuffix:@".logarchive"] & 1) != 0 || objc_msgSend(v10, "hasSuffix:", @".logarchive.zip"))
        {
          v11 = [v4 stringByAppendingPathComponent:v10];
          v17 = 0;
          [v5 removeItemAtPath:v11 error:&v17];
          v12 = v17;

          if (v12)
          {
            v13 = [(NerdController *)self nerdLogger];
            v14 = [v13 oslog];

            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v23 = v10;
              v24 = 2114;
              v25 = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to delete %{public}@ : %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }
}

+ (id)logTypeString:(unsigned __int8)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      return @"Default";
    }

    if (a3 == 1)
    {
      return @"Info";
    }
  }

  else
  {
    switch(a3)
    {
      case 2u:
        return @"Debug";
      case 0x10u:
        return @"Error";
      case 0x11u:
        return @"Fault";
    }
  }

  return @"Unknown";
}

- (void)startSystemLogStream
{
  v3 = +[NSDate date];
  v4 = objc_opt_new();
  [v4 setDateFormat:@"dd-MM-yyyy-hh-mm-ss"];
  v5 = [NSString alloc];
  v6 = [v4 stringFromDate:v3];
  v7 = [v5 initWithFormat:@"%s/%s/RecoveryOS-%@.log", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD", v6];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    [v8 createFileAtPath:v7 contents:0 attributes:0];

    v9 = [NSFileHandle fileHandleForWritingAtPath:v7];
    [(NerdController *)self setLiveStreamLogFileHandle:v9];

    v10 = [(NerdController *)self liveStreamLogFileHandle];
    v11 = v10 == 0;

    v12 = [(NerdController *)self nerdLogger];
    v13 = [v12 oslog];

    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!v11)
    {
      if (v14)
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = [v7 UTF8String];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving log stream at %{public}s", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy_;
      v44 = __Block_byref_object_dispose_;
      v45 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy_;
      v37 = __Block_byref_object_dispose_;
      v38 = 0;
      v15 = +[OSLogEventLiveStore liveLocalStore];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = __38__NerdController_startSystemLogStream__block_invoke;
      v32[3] = &unk_1000999F0;
      v32[4] = &v33;
      v32[5] = &buf;
      [v15 prepareWithCompletionHandler:v32];
      if (*(*(&buf + 1) + 40))
      {
        v16 = [(NerdController *)self nerdLogger];
        v17 = [v16 oslog];

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(*(&buf + 1) + 40) description];
          *v39 = 138543362;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error creating event source %{public}@", v39, 0xCu);
        }
      }

      else
      {
        v21 = [OSLogEventLiveStream alloc];
        v22 = [v21 initWithLiveSource:v34[5]];
        [(NerdController *)self setLiveStream:v22];

        v23 = [(NerdController *)self liveStream];
        LODWORD(v22) = v23 == 0;

        if (!v22)
        {
          objc_initWeak(v39, self);
          v24 = [(NerdController *)self liveStream];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = __38__NerdController_startSystemLogStream__block_invoke_929;
          v30[3] = &unk_100099A18;
          objc_copyWeak(&v31, v39);
          [v24 setEventHandler:v30];

          v25 = [(NerdController *)self liveStream];
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = __38__NerdController_startSystemLogStream__block_invoke_2;
          v28[3] = &unk_100099A40;
          objc_copyWeak(&v29, v39);
          [v25 setInvalidationHandler:v28];

          v26 = [(NerdController *)self liveStream];
          [v26 activate];

          objc_destroyWeak(&v29);
          objc_destroyWeak(&v31);
          objc_destroyWeak(v39);
LABEL_20:

          _Block_object_dispose(&v33, 8);
          _Block_object_dispose(&buf, 8);

          goto LABEL_21;
        }

        v27 = [(NerdController *)self nerdLogger];
        v17 = [v27 oslog];

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to create live stream", v39, 2u);
        }
      }

      goto LABEL_20;
    }

    if (v14)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to open file %@", &buf, 0xCu);
    }
  }

  else
  {
    v19 = [(NerdController *)self nerdLogger];
    v20 = [v19 oslog];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to allocate file name", &buf, 2u);
    }
  }

LABEL_21:
}

void __38__NerdController_startSystemLogStream__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 32;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __38__NerdController_startSystemLogStream__block_invoke_929(uint64_t a1, void *a2)
{
  v21 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v20 = [NSString alloc];
    v4 = [v21 date];
    v5 = [v21 subsystem];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = @"<unknown>";
    }

    v19 = v7;
    v8 = [v21 process];
    v9 = [v21 processIdentifier];
    v10 = [v21 threadIdentifier];
    v11 = [v21 category];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"<unknown>";
    }

    v14 = +[NerdController logTypeString:](NerdController, "logTypeString:", [v21 logType]);
    v15 = [v21 composedMessage];
    v16 = [v20 initWithFormat:@"%@ (%@) (%@) (%d) (%llu) [%@][%@]: %@\n", v4, v19, v8, v9, v10, v13, v14, v15];

    v17 = [WeakRetained liveStreamLogFileHandle];
    v18 = [v16 dataUsingEncoding:4];
    [v17 writeData:v18];
  }
}

void __38__NerdController_startSystemLogStream__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained nerdLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stream invalidated with reason: %lu", &v9, 0xCu);
    }

    v7 = [v4 liveStreamLogFileHandle];
    [v7 synchronizeFile];

    v8 = [v4 liveStreamLogFileHandle];
    [v8 closeFile];
  }
}

- (void)stopSystemLogStream
{
  v2 = [(NerdController *)self liveStream];
  [v2 invalidate];
}

+ (void)saveSystemLogs
{
  v2 = [NerdController copyStringRepresentationOfNVRamVariableValue:@"nerd-logging"];
  if ([v2 isEqual:@"debug"])
  {
    v3 = +[SUCoreLog sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saving crash logs", buf, 2u);
    }

    v5 = +[NSFileManager defaultManager];
    [v5 copyItemAtPath:@"/var/mobile/Library/Logs/CrashReporter" toPath:@"/var/MobileSoftwareUpdate/Controller/NeRD/CrashReporter" error:0];
  }

  v6 = +[NSDate date];
  v7 = objc_opt_new();
  [v7 setDateFormat:@"dd-MM-yyyy-hh-mm-ss"];
  v8 = [NSString alloc];
  v9 = [v7 stringFromDate:v6];
  v10 = [v8 initWithFormat:@"%s/%s/RecoveryOS-%@.logarchive", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD", v9];

  v11 = +[SUCoreLog sharedLogger];
  v12 = [v11 oslog];

  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      v14 = [v10 UTF8String];
      *buf = 136446210;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving log at %{public}s", buf, 0xCu);
    }

    [v10 UTF8String];
    v15 = v10;
    v34 = v15;
    Archive = OSLogCreateArchive();
    v17 = +[SUCoreLog sharedLogger];
    v18 = [v17 oslog];

    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (Archive)
    {
      if (v19)
      {
        *buf = 138543618;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = Archive;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to save system logs at %{public}@: rc: %d", buf, 0x12u);
      }

      goto LABEL_26;
    }

    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully saved system logs", buf, 2u);
    }

    v18 = [v15 stringByAppendingPathExtension:@"zip"];
    v20 = fopen([v18 UTF8String], "w+");
    if (!v20)
    {
      v30 = +[SUCoreLog sharedLogger];
      v31 = [v30 oslog];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *__error();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 1024;
        *&buf[14] = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed to create zip file at %{public}@, errno:%d", buf, 0x12u);
      }

      goto LABEL_26;
    }

    v21 = v20;
    v45 = 0u;
    v46 = 0u;
    v42 = 0;
    v44 = 0u;
    memset(buf, 0, sizeof(buf));
    v47 = 0;
    v43 = v20;
    v39[0] = kSZArchiverOptionCompressionOptions;
    v39[1] = kSZArchiverOptionZlibCompressionLevel;
    v40[0] = kSZArchiverCompressionOptionTryRecompress;
    v40[1] = &off_1000A7ED0;
    v39[2] = kSZArchiverOptionSkipPrescan;
    v39[3] = kSZArchiverOptionUncompressBloatedFiles;
    v40[2] = &__kCFBooleanFalse;
    v40[3] = &__kCFBooleanTrue;
    v39[4] = kSZArchiverOptionNoCache;
    v40[4] = &__kCFBooleanTrue;
    v22 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:5];
    [v15 UTF8String];
    StreamableZip = SZArchiverCreateStreamableZip();
    v24 = +[SUCoreLog sharedLogger];
    v25 = [v24 oslog];

    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (StreamableZip)
    {
      if (v26)
      {
        *v35 = 0;
        v27 = "Successfully zipped system logs";
        v28 = v25;
        v29 = 2;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, v35, v29);
      }
    }

    else if (v26)
    {
      v33 = *__error();
      *v35 = 138543618;
      v36 = v18;
      v37 = 1024;
      v38 = v33;
      v27 = "Failed to archive zip file at %{public}@, errno:%d";
      v28 = v25;
      v29 = 18;
      goto LABEL_24;
    }

    fclose(v21);
LABEL_26:

    v12 = v34;
    goto LABEL_27;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to create filename object to save logs", buf, 2u);
  }

LABEL_27:
}

void __32__NerdController_saveSystemLogs__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[SUCoreLog sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2082;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error while saving system logs at %{public}@(not necessarily fatal) : %{public}s", &v7, 0x16u);
  }
}

- (void)sendControllerEvent:(id)a3 eventDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [NSString alloc];
  if ([(NerdController *)self okToProceedWithAutoPath])
  {
    v10 = "Auto";
  }

  else
  {
    v10 = "Manual";
  }

  v11 = [(NerdController *)self updateAttempt];
  if (v11)
  {
    v12 = [(NerdController *)self updateAttempt];
    v13 = [v9 initWithFormat:@"%s_%@", v10, v12];
  }

  else
  {
    v13 = [v9 initWithFormat:@"%s_%@", v10, @"1"];
  }

  v14 = [(NerdController *)self uuid];

  if (v14)
  {
    [v8 setObject:v6 forKey:kSUCoreEventNameKey];
    v15 = [(NerdController *)self uuid];
    [v8 setObject:v15 forKey:kSUCoreEventUUIDKey];

    v16 = [(NerdController *)self previousOTAUUID];

    if (v16)
    {
      v17 = [(NerdController *)self previousOTAUUID];
      [v8 setObject:v17 forKey:@"preRecoveryClientId"];
    }

    v18 = [(NerdController *)self persistedStateDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __55__NerdController_sendControllerEvent_eventDescription___block_invoke;
    block[3] = &unk_100099400;
    block[4] = self;
    v19 = v8;
    v26 = v19;
    dispatch_sync(v18, block);

    if (v7)
    {
      [v19 setObject:v7 forKey:kSUCoreEventContextKey];
    }

    [v19 setObject:v13 forKey:@"NeRDUpdateAttempt"];
    v20 = [(NerdController *)self nerdLogger];
    v21 = [v20 oslog];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = v6;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending event: %{public}@ Description: %{public}@", buf, 0x16u);
    }

    v22 = [(NerdController *)self nerdEventReporter];
    [v22 sendEvent:v19];
  }

  else
  {
    v23 = [(NerdController *)self nerdLogger];
    v24 = [v23 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Called sendController event when uuid is not set..unable to create event object", buf, 2u);
    }
  }
}

void __55__NerdController_sendControllerEvent_eventDescription___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistedState];
  v9 = [v2 stringForKey:@"RecoveryReason"];

  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKey:@"RecoveryReason"];
  }

  v3 = [*(a1 + 32) persistedState];
  v4 = [v3 stringForKey:@"DeviceRecoveryReason"];

  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:@"DeviceRecoveryReason"];
  }

  v5 = [*(a1 + 32) persistedState];
  v6 = [v5 stringForKey:@"BootCommand"];

  if (v6)
  {
    [*(a1 + 40) setObject:v6 forKey:@"BootCommand"];
  }

  v7 = [*(a1 + 32) persistedState];
  v8 = [v7 stringForKey:@"PreviousOTAStatus"];

  if (v8)
  {
    [*(a1 + 40) setObject:v8 forKey:@"PreviousOTAStatus"];
  }
}

- (void)postErrorEventWithDescription:(id)a3
{
  v4 = a3;
  [(NerdController *)self setLastRecordedError:v4];
  v5 = [(NerdController *)self nerdLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NERD_ERR: %{public}@", &v8, 0xCu);
  }

  +[NerdController saveSystemLogs];
  v7 = [(NerdController *)self nerdFSM];
  [v7 postEvent:@"ErrorGeneric"];
}

- (void)statusChange:(id)a3 onEvent:(id)a4 inState:(id)a5 nextState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NerdController *)self nerdLogger];
  v15 = [v14 oslog];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v18 = v12;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "StatusChange: CurrentState:%{public}@ Event:%{public}@ nextState:%{public}@ Summary: %{public}@", buf, 0x2Au);
  }

  v16 = [[NSString alloc] initWithFormat:@"State: '%@' Event: '%@' NextState '%@'", v12, v11, v13];
  [(NerdController *)self setLastStateTransition:v16];
  [(NerdController *)self dumpControllerState];
}

- (void)handleDebugModeSignals:(int)a3
{
  if (a3 == 31)
  {
    v6 = [(NerdController *)self nerdLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NeRDDebug: Dumping state", &v30, 2u);
    }

    v8 = [(NerdController *)self nerdLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NerdController *)self updateDescriptor];
      v30 = 138543362;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NeRDDebug: Update Descriptor: %{public}@", &v30, 0xCu);
    }

    v11 = [(NerdController *)self nerdLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NerdController *)self uuid];
      v30 = 138543362;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NeRDDebug: Update UUID: %{public}@", &v30, 0xCu);
    }

    v14 = [(NerdController *)self nerdLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(NerdController *)self updatePolicy];
      v30 = 138543362;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NeRDDebug: Update Policy: %{public}@", &v30, 0xCu);
    }

    v17 = [(NerdController *)self nerdLogger];
    v18 = [v17 oslog];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(NerdController *)self updateAttempt];
      v30 = 138543362;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "NeRDDebug: Update Attempt: %{public}@", &v30, 0xCu);
    }

    v20 = [(NerdController *)self nerdLogger];
    v21 = [v20 oslog];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(NerdController *)self okToProceedWithAutoPath];
      v23 = "Manual";
      if (v22)
      {
        v23 = "Auto";
      }

      v30 = 136446210;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NeRDDebug: Mode : %{public}s", &v30, 0xCu);
    }

    v24 = [(NerdController *)self nerdLogger];
    v25 = [v24 oslog];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(NerdController *)self lastRecordedState];
      v30 = 138543362;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "NeRDDebug: State: %{public}@", &v30, 0xCu);
    }

    v27 = [(NerdController *)self nerdLogger];
    v28 = [v27 oslog];

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(NerdController *)self lastRecordedError];
      v30 = 138543362;
      v31 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NeRDDebug: Last Recorded Error: %{public}@", &v30, 0xCu);
    }

    [(NerdController *)self dumpControllerState];
  }

  else if (a3 == 30)
  {
    v4 = [(NerdController *)self nerdLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NeRD got SIGUSR1..asking it to wake up", &v30, 2u);
    }

    dispatch_semaphore_signal(debugModeResume);
  }
}

- (void)dumpControllerState
{
  if ([(NerdController *)self runningInDebugMode])
  {
    obj = self;
    objc_sync_enter(obj);
    v3 = [(NerdController *)obj lastStateTransition];
    v4 = [(NerdController *)obj stateDictionary];
    [v4 setObject:v3 forKeyedSubscript:@"LastStateTransition"];

    v5 = [(NerdController *)obj uuid];
    v6 = [(NerdController *)obj stateDictionary];
    [v6 setObject:v5 forKeyedSubscript:@"UpdateUUID"];

    v7 = [(NerdController *)obj updateAttempt];
    v8 = [(NerdController *)obj stateDictionary];
    [v8 setObject:v7 forKeyedSubscript:@"UpdateAttempt"];

    LODWORD(v8) = [(NerdController *)obj okToProceedWithAutoPath];
    v9 = [(NerdController *)obj stateDictionary];
    v10 = v9;
    if (v8)
    {
      v11 = @"Auto";
    }

    else
    {
      v11 = @"Manual";
    }

    [v9 setObject:v11 forKeyedSubscript:@"UpdateMode"];

    v12 = [(NerdController *)obj lastRecordedError];
    v13 = [(NerdController *)obj stateDictionary];
    [v13 setObject:v12 forKeyedSubscript:@"LastError"];

    v14 = [(NerdController *)obj lastRecordedState];
    v15 = [(NerdController *)obj stateDictionary];
    [v15 setObject:v14 forKeyedSubscript:@"StateDetails"];

    v16 = [(NerdController *)obj updateProgress];
    v17 = [(NerdController *)obj stateDictionary];
    [v17 setObject:v16 forKeyedSubscript:@"UpdateProgress"];

    v18 = [(NerdController *)obj stateDictionary];
    [v18 writeToFile:@"/tmp/nerdControllerState.plist" atomically:1];

    objc_sync_exit(obj);
  }
}

- (BOOL)rebootToRecovery
{
  v3 = [(NerdController *)self okToProceedWithAutoPath];
  v4 = [(NerdController *)self nerdLogger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to reboot from NeRD auto path..Setting auto-boot to false to reboot to recovery", v29, 2u);
    }

    v7 = "false";
  }

  else
  {
    if (v6)
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to reboot from the NeRD manual mode path..Setting auto-boot to true to try and reboot to the bootedOS", v29, 2u);
    }

    v7 = "true";
  }

  v14 = set_nvram_variable("auto-boot", v7, v8, v9, v10, v11, v12, v13);
  v15 = delete_nvram_variable_and_force_sync(@"boot-command");
  if (!v14 || !v15)
  {
    v26 = [(NerdController *)self nerdLogger];
    v23 = [v26 oslog];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      v25 = "Failed to set auto-boot/delete boot-command nvram";
      goto LABEL_25;
    }

LABEL_26:

    return 0;
  }

  [(NerdController *)self stopSystemLogStream];
  v16 = [(NerdController *)self stopBeforeReboot];
  v17 = [(NerdController *)self nerdLogger];
  v18 = [v17 oslog];

  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v19)
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Stop before reboot is set.. reboot disabled", v29, 2u);
    }

    v20 = +[NSFileManager defaultManager];
    v21 = [v20 createFileAtPath:@"/tmp/ok_to_reboot" contents:0 attributes:0];

    v22 = [(NerdController *)self nerdLogger];
    v23 = [v22 oslog];

    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v24)
      {
        *v29 = 0;
        v25 = "Successfully created /tmp/ok_to_reboot";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, v29, 2u);
        goto LABEL_26;
      }
    }

    else if (v24)
    {
      *v29 = 0;
      v25 = "Failed to create /tmp/ok_to_reboot";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v19)
  {
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Will reboot now", v29, 2u);
  }

  [(NerdController *)self performCleanupOnTermination];
  if (reboot3())
  {
    v27 = [(NerdController *)self nerdLogger];
    v23 = [v27 oslog];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      v25 = "Failed to reboot to recovery..";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  return 0;
}

@end