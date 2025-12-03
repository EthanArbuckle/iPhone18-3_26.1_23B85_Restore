@interface _NFHardwareManager
+ (id)sharedHardwareManager;
- (BOOL)_syncResumeSession:(id)session field:(id)field;
- (BOOL)canStop;
- (BOOL)configureExpressFelicaEntry:(int)entry;
- (BOOL)hasSession;
- (BOOL)isFirstInQueue;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)refreshSecureElementInfo;
- (NFRoutingConfig)lastKnownRoutingConfig;
- (_NFHardwareManager)init;
- (id)_updateAllPowerCounters;
- (id)combineFlashWriteCounters:(id)counters with:(id)with overflow:(BOOL)overflow;
- (id)openStackAndUpdateAllWriteCounters:(id *)counters;
- (id)powerCycleSE:(id)e;
- (id)secureElementDidExitRestrictedMode:(id)mode os:(int64_t)os reason:(unsigned int)reason;
- (id)setRoutingConfig:(id)config;
- (id)softResetSE:(id)e;
- (id)switchToSession:(id)session withToken:(id)token;
- (id)updateAllPowerCounters;
- (int64_t)nfcRadioEnabled:(id *)enabled showUIPopup:(BOOL)popup;
- (void)_sync_getFlashWriteCountersForConnection:(id)connection completion:(id)completion;
- (void)_sync_getPowerCountersForConnection:(id)connection completion:(id)completion;
- (void)actOnUserInitiatedSystemShutDown:(unsigned int)down completion:(id)completion;
- (void)areFeaturesSupported:(unint64_t)supported completion:(id)completion;
- (void)areSessionsAllowedWithCompletion:(id)completion;
- (void)cachedEmbeddedSecureElementSerialNumber:(id)number;
- (void)canResume:(unint64_t)resume status:(id)status;
- (void)cancelSinglePollExpressModeAssertionWithCompletion:(id)completion;
- (void)checkExpressPassCompatibility:(id)compatibility callback:(id)callback;
- (void)checkExpressPassCompatibilityDeprecated:(id)deprecated callback:(id)callback;
- (void)clientAppStateUpdate:(id)update appState:(unint64_t)state;
- (void)configureHeadlessFactoryMode:(BOOL)mode completion:(id)completion;
- (void)configureReaderModeRFForTransitPartner:(BOOL)partner transitPartner:(unsigned int)transitPartner completion:(id)completion;
- (void)controllerInfoWithCompletion:(id)completion;
- (void)currentInMetroStatus:(id)status;
- (void)dealloc;
- (void)dequeueSession:(id)session;
- (void)didCameraStateChange:(BOOL)change;
- (void)disableHeadlessMiniNVWithCompletion:(id)completion;
- (void)disableLPEMFeature:(unint64_t)feature completion:(id)completion;
- (void)dumpLPMDebugLogWithCompletion:(id)completion;
- (void)enableHeadlessTestMode:(unsigned __int16)mode completion:(id)completion;
- (void)enableRadio:(BOOL)radio completion:(id)completion;
- (void)expressModesInfoWithOption:(unsigned int)option completion:(id)completion;
- (void)getDieIDWithCompletion:(id)completion;
- (void)getFlashWriteCountersWithCompletion:(id)completion;
- (void)getHostCardEmulationLogWithCompletion:(id)completion;
- (void)getLPEMFTALoggingWithCompletion:(id)completion;
- (void)getPowerCountersWithCompletion:(id)completion;
- (void)getReaderProhibitTimer:(id)timer;
- (void)getTemperatureWithCompletion:(id)completion;
- (void)getUniqueFDRKeyWithCompletion:(id)completion;
- (void)handlMFWNotification:(id)notification;
- (void)handleAppletInactivityTimeout:(id)timeout atlData:(id)data caData:(id)caData;
- (void)handleEraseCounterExceeded;
- (void)handleExpressModeExited;
- (void)handleExpressModeStarted;
- (void)handleExpressModeTimeout;
- (void)handleFelicaStateEvent:(id)event appletAID:(id)d;
- (void)handleFieldNotification:(id)notification;
- (void)handleFieldReset;
- (void)handleFilteredFieldNotification:(id)notification;
- (void)handleForceExpressModeEndEvent;
- (void)handleHWRecoveryCompletion:(BOOL)completion;
- (void)handleHardwareReset:(const char *)reset;
- (void)handleHceTargetLost;
- (void)handleHostCardReaderDetected:(id)detected;
- (void)handleReaderBurnoutCleared;
- (void)handleReaderBurnoutTimer;
- (void)handleReaderModeProhibitTimerEvent:(unint64_t)event;
- (void)handleRemoteTagsDetected:(id)detected dropAndRestartDiscovery:(BOOL)discovery;
- (void)handleRestartDiscovery;
- (void)handleSecureElementEndOfOperation;
- (void)handleSecureElementEnteredRestrictedMode:(int)mode os:(int64_t)os;
- (void)handleSecureElementReaderModeEnded:(id)ended;
- (void)handleSecureElementReaderModeStarted:(id)started;
- (void)handleSecureElementRemoved:(int)removed withReason:(unsigned int)reason;
- (void)handleSecureElementTransactionData:(id)data appletIdentifier:(id)identifier;
- (void)handleSelectEvent:(id)event;
- (void)handleStackLoad;
- (void)handleStackUnload;
- (void)handleStepUpEvent:(id)event forApplet:(id)applet;
- (void)handleTemperatureChange:(double)change;
- (void)handleTimerExpiredEvent:(id)event;
- (void)handleTransactionEndEvent:(id)event atlData:(id)data caData:(id)caData;
- (void)handleTransactionStartEvent:(id)event atlData:(id)data caData:(id)caData;
- (void)headlessFactoryModeWithCompletion:(id)completion;
- (void)isCardSessionEligibleWithCompletion:(id)completion;
- (void)isHWSupportedWithCompletion:(id)completion;
- (void)markApplicationForDelete:(id)delete;
- (void)mustStop:(unint64_t)stop;
- (void)notifyReaderModeActivityEnd;
- (void)notifyReaderModeActivityStart;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openSinglePollExpressModeAssertion:(double)assertion completion:(id)completion;
- (void)postEventForPublisher:(id)publisher event:(const char *)event additionalData:(id)data;
- (void)postEventForPublisher:(id)publisher event:(const char *)event objectString:(id)string;
- (void)powerObserverSystemHasPoweredOn:(id)on;
- (void)powerObserverSystemWillSleep:(id)sleep;
- (void)preWarmWithCompletion:(id)completion;
- (void)preferencesDidChange;
- (void)prioritizeSession:(id)session;
- (void)pushSignedRF:(id)f completion:(id)completion;
- (void)queueCardFieldDetectSession:(id)session completion:(id)completion;
- (void)queueCardMigrationPaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueCardSession:(id)session sessionConfig:(id)config completion:(id)completion;
- (void)queueContactlessPaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueContactlessSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueCredentialSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueECommercePaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueFieldDetectSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueHostEmulationSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueInternalConfigurationSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueLPEMConfigSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueLoyaltyAndPaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueNdefTagSession:(id)session sessionAttribute:(id)attribute data:(id)data completion:(id)completion;
- (void)queuePeerPaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueReaderSession:(id)session sessionConfig:(id)config completion:(id)completion;
- (void)queueReaderSessionInternal:(id)internal sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueSecureElementAndHostEmulationSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueSecureElementLoggingSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueSecureElementManagerSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueSecureElementReaderSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueSecureTransactionServicesHybridSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueSecureTransactionServicesSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueSeshatSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueSession:(id)session;
- (void)queueTrustSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)queueUnifiedAccessSession:(id)session sessionAttribute:(id)attribute completion:(id)completion;
- (void)radioEnableStateWithCompletion:(id)completion;
- (void)reconfigureDynamicTransitRF:(unint64_t)f withOverride:(BOOL)override;
- (void)registerForCallbacks:(id)callbacks withUUID:(id)d completion:(id)completion;
- (void)releaseAssertion:(id)assertion waitOnComplete:(BOOL)complete completion:(id)completion;
- (void)releaseSuppressPresentmentAssertion:(id)assertion completion:(id)completion;
- (void)requestAssertion:(id)assertion waitOnComplete:(BOOL)complete completion:(id)completion;
- (void)requestSuppressPresentmentWithCompletion:(id)completion;
- (void)rfSettingsWithCompletion:(id)completion;
- (void)secureElementReturnedRestrictedMode:(id)mode os:(int64_t)os;
- (void)secureElementsWithCompletion:(id)completion;
- (void)setAntiRelayRID:(id)d completion:(id)completion;
- (void)setChipscope:(BOOL)chipscope completion:(id)completion;
- (void)setFieldDetectEnabled:(BOOL)enabled completion:(id)completion;
- (void)start;
- (void)stateInfoWithCompletion:(id)completion;
- (void)stop;
- (void)toggleGPIO:(unsigned __int16)o completion:(id)completion;
- (void)triggerCoreDumpWithCompletion:(id)completion;
- (void)triggerCrash:(unsigned __int16)crash completion:(id)completion;
- (void)triggerDelayedWake:(unsigned __int8)wake completion:(id)completion;
- (void)unregisterForCallbacks:(id)callbacks;
- (void)updateBackgroundTagReading:(unsigned int)reading params:(id)params completion:(id)completion;
- (void)updateSeInfo:(id)info;
- (void)waitForHWSupportedWithCompletion:(id)completion;
@end

@implementation _NFHardwareManager

+ (id)sharedHardwareManager
{
  if (qword_10035DA00 != -1)
  {
    dispatch_once(&qword_10035DA00, &stru_1003183E0);
  }

  v3 = qword_10035D9F8;

  return v3;
}

- (void)handleFieldReset
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000361C;
  block[3] = &unk_100315F30;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (NFRoutingConfig)lastKnownRoutingConfig
{
  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || (sub_10000431C(&driverWrapper->super.isa), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = sub_10004C224(NFRoutingConfig, 0);
  }

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = qword_10035DB88;
  v8 = 1;
  if (qword_10035DB88 == listener)
  {
    v8 = 2;
  }

  v135 = v8;
  listener = [[NFServiceWhitelistChecker alloc] initWithConnection:connectionCopy coreNFCConnection:qword_10035DB88 == listener];
  kdebug_trace();
  v10 = NFSharedSignpostLog();
  if (os_signpost_enabled(v10))
  {
    clientName = [listener clientName];
    *buf = 138412290;
    *&buf[4] = clientName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "XPC_CONNECT", "XPC connection from %@", buf, 0xCu);
  }

  if (v7 != listener && ([listener internalAccess] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v29 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      processIdentifier = [connectionCopy processIdentifier];
      clientName2 = [listener clientName];
      v36 = 43;
      if (!isMetaClass)
      {
        v36 = 45;
      }

      v29(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", v36, ClassName, Name, 137, processIdentifier, clientName2, "com.apple.nfcd.hwmanager");
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(self);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(self);
      v41 = sel_getName(a2);
      processIdentifier2 = [connectionCopy processIdentifier];
      clientName3 = [listener clientName];
      *buf = 67110658;
      *&buf[4] = v39;
      *&buf[8] = 2082;
      *&buf[10] = v40;
      *&buf[18] = 2082;
      *&buf[20] = v41;
      *&buf[28] = 1024;
      *&buf[30] = 137;
      *&buf[34] = 1024;
      *&buf[36] = processIdentifier2;
      *&buf[40] = 2114;
      *&buf[42] = clientName3;
      *&buf[50] = 2080;
      *&buf[52] = "com.apple.nfcd.hwmanager";
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", buf, 0x3Cu);
    }

    goto LABEL_27;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFLogGetLogger();
  if (v12)
  {
    v13 = v12;
    v14 = object_getClass(self);
    v15 = class_isMetaClass(v14);
    v16 = object_getClassName(self);
    v17 = sel_getName(a2);
    clientName4 = [listener clientName];
    v19 = 45;
    if (v15)
    {
      v19 = 43;
    }

    v13(6, "%c[%{public}s %{public}s]:%i Added connection from %{public}@ : %{public}@", v19, v16, v17, 141, clientName4, connectionCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = object_getClass(self);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    v23 = object_getClassName(self);
    v24 = sel_getName(a2);
    clientName5 = [listener clientName];
    *buf = 67110402;
    *&buf[4] = v22;
    *&buf[8] = 2082;
    *&buf[10] = v23;
    *&buf[18] = 2082;
    *&buf[20] = v24;
    *&buf[28] = 1024;
    *&buf[30] = 141;
    *&buf[34] = 2114;
    *&buf[36] = clientName5;
    *&buf[44] = 2114;
    *&buf[46] = connectionCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Added connection from %{public}@ : %{public}@", buf, 0x36u);
  }

  if (v7 == listener)
  {
    if (connectionCopy)
    {
      [connectionCopy auditToken];
      if (!self)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v140 = 0u;
      v141 = 0u;
      if (!self)
      {
LABEL_47:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v62 = NFLogGetLogger();
        if (v62)
        {
          v63 = v62;
          v64 = object_getClass(self);
          v65 = class_isMetaClass(v64);
          v66 = object_getClassName(self);
          v129 = sel_getName(a2);
          v67 = 45;
          if (v65)
          {
            v67 = 43;
          }

          v63(3, "%c[%{public}s %{public}s]:%i Client is not supported by CoreNFC", v67, v66, v129, 150);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v68 = object_getClass(self);
          if (class_isMetaClass(v68))
          {
            v69 = 43;
          }

          else
          {
            v69 = 45;
          }

          v70 = object_getClassName(self);
          v71 = sel_getName(a2);
          *buf = 67109890;
          *&buf[4] = v69;
          *&buf[8] = 2082;
          *&buf[10] = v70;
          *&buf[18] = 2082;
          *&buf[20] = v71;
          *&buf[28] = 1024;
          *&buf[30] = 150;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Client is not supported by CoreNFC", buf, 0x22u);
        }

LABEL_27:
        v44 = 0;
        goto LABEL_101;
      }
    }

    *buf = v140;
    *&buf[16] = v141;
    v45 = [LSBundleRecord bundleRecordForAuditToken:buf error:0];
    if (v45)
    {

      v46 = v45;
      if ([v46 developerType] != 1)
      {
        if ([v46 developerType] == 3)
        {
          v47 = [LSApplicationExtensionRecord alloc];
          v48 = [v46 URL];
          v142 = 0;
          v49 = [v47 initWithURL:v48 requireValid:1 error:&v142];
          v50 = v142;

          if (v49 && !v50)
          {
            v133 = v49;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v51 = NFLogGetLogger();
            if (v51)
            {
              v52 = v51;
              v53 = object_getClass(self);
              v54 = class_isMetaClass(v53);
              v55 = object_getClassName(self);
              v128 = sel_getName("_isValidClient:");
              v56 = 45;
              if (v54)
              {
                v56 = 43;
              }

              v52(6, "%c[%{public}s %{public}s]:%i Client is ExtensionKit extension", v56, v55, v128, 96);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v57 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = object_getClass(self);
              if (class_isMetaClass(v58))
              {
                v59 = 43;
              }

              else
              {
                v59 = 45;
              }

              v60 = object_getClassName(self);
              v61 = sel_getName("_isValidClient:");
              *buf = 67109890;
              *&buf[4] = v59;
              *&buf[8] = 2082;
              *&buf[10] = v60;
              *&buf[18] = 2082;
              *&buf[20] = v61;
              *&buf[28] = 1024;
              *&buf[30] = 96;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Client is ExtensionKit extension", buf, 0x22u);
            }

            goto LABEL_47;
          }

          if (v50 && [v50 code] != -10814)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v83 = NFLogGetLogger();
            v134 = v49;
            if (v83)
            {
              v84 = v83;
              v85 = object_getClass(self);
              v86 = class_isMetaClass(v85);
              v127 = object_getClassName(self);
              v131 = sel_getName("_isValidClient:");
              v87 = !v86;
              v49 = v134;
              v88 = 45;
              if (!v87)
              {
                v88 = 43;
              }

              v84(3, "%c[%{public}s %{public}s]:%i Record error=%{public}@", v88, v127, v131, 102, v50);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v89 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              v90 = object_getClass(self);
              if (class_isMetaClass(v90))
              {
                v91 = 43;
              }

              else
              {
                v91 = 45;
              }

              v92 = object_getClassName(self);
              v93 = sel_getName("_isValidClient:");
              *buf = 67110146;
              *&buf[4] = v91;
              *&buf[8] = 2082;
              *&buf[10] = v92;
              v49 = v134;
              *&buf[18] = 2082;
              *&buf[20] = v93;
              *&buf[28] = 1024;
              *&buf[30] = 102;
              *&buf[34] = 2114;
              *&buf[36] = v50;
              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Record error=%{public}@", buf, 0x2Cu);
            }
          }
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v94 = NFLogGetLogger();
        if (v94)
        {
          v95 = v94;
          v96 = object_getClass(self);
          v97 = class_isMetaClass(v96);
          v98 = object_getClassName(self);
          v132 = sel_getName("_isValidClient:");
          v99 = 45;
          if (v97)
          {
            v99 = 43;
          }

          v95(6, "%c[%{public}s %{public}s]:%i Valid CoreNFC client", v99, v98, v132, 107);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v100 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          v101 = object_getClass(self);
          if (class_isMetaClass(v101))
          {
            v102 = 43;
          }

          else
          {
            v102 = 45;
          }

          v103 = object_getClassName(self);
          v104 = sel_getName("_isValidClient:");
          *buf = 67109890;
          *&buf[4] = v102;
          *&buf[8] = 2082;
          *&buf[10] = v103;
          *&buf[18] = 2082;
          *&buf[20] = v104;
          *&buf[28] = 1024;
          *&buf[30] = 107;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Valid CoreNFC client", buf, 0x22u);
        }
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v72 = NFLogGetLogger();
      if (v72)
      {
        v73 = v72;
        v74 = object_getClass(self);
        v75 = class_isMetaClass(v74);
        v76 = object_getClassName(self);
        v130 = sel_getName("_isLaunchServiceBundle:record:");
        v77 = 45;
        if (v75)
        {
          v77 = 43;
        }

        v73(3, "%c[%{public}s %{public}s]:%i Non-bundle process", v77, v76, v130, 71);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v78 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = object_getClass(self);
        if (class_isMetaClass(v79))
        {
          v80 = 43;
        }

        else
        {
          v80 = 45;
        }

        v81 = object_getClassName(self);
        v82 = sel_getName("_isLaunchServiceBundle:record:");
        *buf = 67109890;
        *&buf[4] = v80;
        *&buf[8] = 2082;
        *&buf[10] = v81;
        *&buf[18] = 2082;
        *&buf[20] = v82;
        *&buf[28] = 1024;
        *&buf[30] = 71;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Non-bundle process", buf, 0x22u);
      }
    }

    v105 = +[NFCHardwareManagerCallbacks interface];
    [connectionCopy setRemoteObjectInterface:v105];

    v106 = +[NFCHardwareManagerInterface interface];
    [connectionCopy setExportedInterface:v106];

    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    sub_1001263B0(self, remoteObjectProxy);
    goto LABEL_90;
  }

  v26 = sub_10000692C();
  [connectionCopy setRemoteObjectInterface:v26];

  remoteObjectProxy = sub_100006984();
  [connectionCopy setExportedInterface:remoteObjectProxy];
LABEL_90:

  [connectionCopy setExportedObject:self];
  v107 = [NFXPCConnectionUserInfoDictionary alloc];
  clientName6 = [listener clientName];
  v37 = [v107 initWithServiceWhitelist:listener clientName:clientName6];

  v109 = +[NSDate now];
  [v37 setObject:v109 forKeyedSubscript:@"ConnectTime"];

  v110 = objc_opt_new();
  [v37 setObject:v110 forKeyedSubscript:@"ProxyObjects"];

  v111 = [NSNumber numberWithUnsignedInteger:v135];
  [v37 setObject:v111 forKeyedSubscript:@"serviceType"];

  LOBYTE(v140) = 0;
  v139 = 0;
  v112 = sub_100044E78(NFClientAppStateObserver, connectionCopy, &v139, &v140);
  v113 = v139;
  if ([v113 lengthOfBytesUsingEncoding:4])
  {
    [v37 setObject:v113 forKey:@"BundleIdentifier"];
  }

  if (v140 == 1)
  {
    v114 = [NSNumber numberWithBool:1];
    [v37 setObject:v114 forKey:@"RBSApp"];
  }

  [connectionCopy setUserInfo:v37];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_1000069EC;
  *&buf[32] = sub_100019640;
  v115 = connectionCopy;
  *&buf[40] = v115;
  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_100019648;
  v138[3] = &unk_1003157C0;
  v138[4] = self;
  v138[5] = buf;
  [v115 setInvalidationHandler:v138];
  v137[0] = _NSConcreteStackBlock;
  v137[1] = 3221225472;
  v137[2] = sub_1000196C0;
  v137[3] = &unk_1003157C0;
  v137[4] = self;
  v137[5] = buf;
  [v115 setInterruptionHandler:v137];
  if (self)
  {
    v117 = objc_getProperty(self, v116, 248, 1);
    [v115 _setQueue:v117];

    appStateObserver = self->_appStateObserver;
  }

  else
  {
    [v115 _setQueue:0];
    appStateObserver = 0;
  }

  v119 = appStateObserver;
  sub_100042E08(v119, v115);

  [v115 resume];
  if (self)
  {
    Property = objc_getProperty(self, v120, 176, 1);
  }

  else
  {
    Property = 0;
  }

  v122 = Property;
  objc_sync_enter(v122);
  if (self)
  {
    v124 = objc_getProperty(self, v123, 176, 1);
  }

  else
  {
    v124 = 0;
  }

  v125 = v124;
  [v125 addObject:v115];

  objc_sync_exit(v122);
  _Block_object_dispose(buf, 8);

  v44 = 1;
LABEL_101:

  return v44;
}

- (_NFHardwareManager)init
{
  v62.receiver = self;
  v62.super_class = _NFHardwareManager;
  v3 = [(_NFHardwareManager *)&v62 init];
  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    NFLogSetProcessNCIOnly();
    *(v3 + 171) = 0;
    *(v3 + 18) = xmmword_100297710;
    v5 = objc_opt_new();
    v6 = *(v3 + 2);
    *(v3 + 2) = v5;

    v7 = NFCreateWorkLoop();
    v8 = *(v3 + 31);
    *(v3 + 31) = v7;

    dispatch_queue_set_specific(*(v3 + 31), kNFLOG_DISPATCH_SPECIFIC_KEY, 0, 0);
    v9 = NFCreateWorkLoop();
    v10 = *(v3 + 30);
    *(v3 + 30) = v9;

    dispatch_queue_set_specific(*(v3 + 30), kNFLOG_DISPATCH_SPECIFIC_KEY, 0, 0);
    v11 = objc_opt_new();
    v12 = *(v3 + 22);
    *(v3 + 22) = v11;

    v13 = sub_100219FE8([NFDriverWrapper alloc], *(v3 + 30));
    v14 = *(v3 + 47);
    *(v3 + 47) = v13;

    v15 = *(v3 + 47);
    if (v15)
    {
      *(v15 + 208) = v3;
      v16 = *(v3 + 47);
    }

    else
    {
      v16 = 0;
    }

    *(v3 + 349) = 0;
    v17 = sub_100224BB8(v16, v3 + 349);
    v18 = [[_NFControllerManager alloc] initWithQueue:*(v3 + 30) driverWrapper:*(v3 + 47)];
    v19 = *(v3 + 1);
    *(v3 + 1) = v18;

    v20 = [[NFPowerObserver alloc] initWithDelegate:v3];
    v21 = *(v3 + 8);
    *(v3 + 8) = v20;

    v22 = sub_100042C70([NFClientAppStateObserver alloc], v3);
    v23 = *(v3 + 10);
    *(v3 + 10) = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    v25 = *(v3 + 20);
    *(v3 + 20) = v24;

    v26 = objc_alloc_init(NSMutableArray);
    v27 = *(v3 + 23);
    *(v3 + 23) = v26;

    v28 = objc_alloc_init(NSMutableArray);
    v29 = *(v3 + 24);
    *(v3 + 24) = v28;

    *(v3 + 12) = 0;
    *(v3 + 352) = 0;
    *(v3 + 358) = 0;
    *(v3 + 56) = 0;
    *(v3 + 83) = -1;
    objc_storeStrong(v3 + 51, *(v3 + 30));
    v30 = [[NFXPCEventPublisher alloc] initWithStreamName:@"com.apple.nfcd.homekit.field" queue:*(v3 + 51)];
    v31 = *(v3 + 14);
    *(v3 + 14) = v30;

    v32 = [[NFXPCEventPublisher alloc] initWithStreamName:@"com.apple.nfcd.xpc.sesd.events" queue:*(v3 + 51)];
    v33 = *(v3 + 50);
    *(v3 + 50) = v32;

    v34 = NFIsInternalBuild();
    v35 = 0;
    if (v34)
    {
      v35 = [v4 BOOLForKey:@"DisableFailForward"];
    }

    *(v3 + 361) = v35;
    objc_initWeak(&location, v3);
    v36 = [NFTimer alloc];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000DD7DC;
    v58[3] = &unk_1003161B0;
    objc_copyWeak(v60, &location);
    v37 = v3;
    v59 = v37;
    v60[1] = a2;
    v38 = [v36 initSleepTimerWithCallback:v58 queue:*(v3 + 30)];
    v39 = v37[17];
    v37[17] = v38;

    v57 = 0;
    v40 = sub_100015AE4(NFDriverWrapper, &v57);
    v41 = v57;
    if (v40)
    {
      v42 = [NSData NF_dataWithHexString:v41];
      v43 = v37[55];
      v37[55] = v42;

      if (!v37[55])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v45 = Logger;
          Class = object_getClass(v37);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v37);
          Name = sel_getName(a2);
          v48 = 45;
          if (isMetaClass)
          {
            v48 = 43;
          }

          v45(3, "%c[%{public}s %{public}s]:%i Serial from FDR is invalid; %{public}@", v48, ClassName, Name, 447, v41);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = object_getClass(v37);
          if (class_isMetaClass(v50))
          {
            v51 = 43;
          }

          else
          {
            v51 = 45;
          }

          v52 = object_getClassName(v37);
          v53 = sel_getName(a2);
          *buf = 67110146;
          v64 = v51;
          v65 = 2082;
          v66 = v52;
          v67 = 2082;
          v68 = v53;
          v69 = 1024;
          v70 = 447;
          v71 = 2114;
          v72 = v41;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Serial from FDR is invalid; %{public}@", buf, 0x2Cu);
        }
      }
    }

    objc_destroyWeak(v60);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  workQueue = self->_workQueue;
  self->_workQueue = 0;

  driverWrapper = self->_driverWrapper;
  if (driverWrapper)
  {
    driverWrapper->_delegate = 0;
  }

  sharedWalletPresentationService = self->_sharedWalletPresentationService;
  if (sharedWalletPresentationService)
  {
    [(NFWalletPresentationService *)sharedWalletPresentationService removeObserver:self forKeyPath:@"walletDomain"];
  }

  v6.receiver = self;
  v6.super_class = _NFHardwareManager;
  [(_NFHardwareManager *)&v6 dealloc];
}

- (void)start
{
  v4 = _os_activity_create(&_mh_execute_header, "_NFHardwareManager started", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v4, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Nfcd started", v10, ClassName, Name, 475);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *state = 67109890;
    *&state[4] = v13;
    *&state[8] = 2082;
    *&state[10] = v14;
    v27 = 2082;
    v28 = v15;
    v29 = 1024;
    v30 = 475;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Nfcd started", state, 0x22u);
  }

  kdebug_trace();
  v16 = NFSharedSignpostLog();
  if (os_signpost_enabled(v16))
  {
    *state = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWMANAGER_START", &unk_1002E8B7A, state, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isRunning)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v18 = sub_1000185C8(selfCopy, selfCopy->_xpcConnectionQueue);
    [v18 resume];
    v19 = sub_10001866C(selfCopy, selfCopy->_xpcConnectionQueue);
    [v19 resume];

    selfCopy->_isRunning = 1;
    block[5] = _NSConcreteStackBlock;
    block[6] = 3221225472;
    block[7] = sub_1000DE678;
    block[8] = &unk_100318408;
    block[9] = selfCopy;
    selfCopy->_stateCaptureHandle = os_state_add_handler();
    objc_sync_exit(selfCopy);

    v20 = selfCopy->_secureElementSessionQueue;
    objc_sync_enter(v20);
    sub_1000DE998(selfCopy, 0);
    objc_sync_exit(v20);

    v21 = sub_100210FEC();
    sub_100212EFC(v21, selfCopy, 1, selfCopy->_workQueue);

    v22 = +[NFPowerAssertion sharedPowerAssertion];
    [v22 setEnableDebug:NFIsInternalBuild()];

    workQueue = selfCopy->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DEE30;
    block[3] = &unk_100315F30;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);
  }
}

- (void)stop
{
  v4 = _os_activity_create(&_mh_execute_header, "_NFHardwareManger stopped", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v4, state);
  os_activity_scope_leave(state);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Nfcd stopping", v10, ClassName, Name, 573);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *state = 67109890;
    *&state[4] = v13;
    *&state[8] = 2082;
    *&state[10] = v14;
    v53 = 2082;
    v54 = v15;
    v55 = 1024;
    v56 = 573;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Nfcd stopping", state, 0x22u);
  }

  v16 = NFSharedSignpostLog();
  if (os_signpost_enabled(v16))
  {
    *state = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWMANAGER_STOP", &unk_1002E8B7A, state, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isRunning)
  {
    selfCopy->_isRunning = 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(selfCopy);
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(selfCopy);
      v46 = sel_getName("_unloadService");
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(6, "%c[%{public}s %{public}s]:%i Invalidating XPC", v23, v22, v46, 1630);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = object_getClass(selfCopy);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(selfCopy);
      v28 = sel_getName("_unloadService");
      *state = 67109890;
      *&state[4] = v26;
      *&state[8] = 2082;
      *&state[10] = v27;
      v53 = 2082;
      v54 = v28;
      v55 = 1024;
      v56 = 1630;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalidating XPC", state, 0x22u);
    }

    [qword_10035DB80 invalidate];
    [qword_10035DB80 setDelegate:0];
    v29 = qword_10035DB80;
    qword_10035DB80 = 0;

    [qword_10035DB88 invalidate];
    [qword_10035DB88 setDelegate:0];
    v30 = qword_10035DB88;
    qword_10035DB88 = 0;

    powerCountersTimer = selfCopy->_powerCountersTimer;
    if (powerCountersTimer)
    {
      [(NFTimer *)powerCountersTimer stopTimer];
    }

    sub_100207470(selfCopy->_keyBag);
    [(NFPowerObserver *)selfCopy->_powerObserver unregisterForEvents];
    objc_sync_exit(selfCopy);

    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v51 = 1;
    v49 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E1A90;
    block[3] = &unk_100318430;
    block[5] = v50;
    block[6] = &v49;
    block[4] = selfCopy;
    v32 = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(selfCopy->_workQueue, v32);
    v33 = dispatch_time(0, 5000000000);
    if (dispatch_block_wait(v32, v33))
    {
      dispatch_block_cancel(v32);
      v32[2](v32);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(selfCopy);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(selfCopy);
      v47 = sel_getName(a2);
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i Nfcd stopped", v39, v38, v47, 638);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = object_getClass(selfCopy);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(selfCopy);
      v44 = sel_getName(a2);
      *state = 67109890;
      *&state[4] = v42;
      *&state[8] = 2082;
      *&state[10] = v43;
      v53 = 2082;
      v54 = v44;
      v55 = 1024;
      v56 = 638;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Nfcd stopped", state, 0x22u);
    }

    _Block_object_dispose(v50, 8);
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

- (BOOL)refreshSecureElementInfo
{
  dispatch_assert_queue_V2(self->_workQueue);
  driverWrapper = self->_driverWrapper;
  v25 = 0;
  v5 = sub_100015150(driverWrapper, 1, &v25);
  v6 = v25;
  v7 = v25;
  if (v5)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 arrayForKey:@"BootHistory"];
    [v7 setBootHistory:v9];

    os_unfair_lock_lock(&self->_secureElementInfoLock);
    objc_storeStrong(&self->_secureElementInfo, v6);
    secureElementInfo = self->_secureElementInfo;
    handle = [(NFSecureElementWrapper *)self->_secureElementWrapper handle];
    [handle setInfo:secureElementInfo];

    os_unfair_lock_unlock(&self->_secureElementInfoLock);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Failed to get secure element info", v17, ClassName, Name, 1573);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(self);
      v22 = sel_getName(a2);
      *buf = 67109890;
      v27 = v20;
      v28 = 2082;
      v29 = v21;
      v30 = 2082;
      v31 = v22;
      v32 = 1024;
      v33 = 1573;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get secure element info", buf, 0x22u);
    }
  }

  return v5;
}

- (int64_t)nfcRadioEnabled:(id *)enabled showUIPopup:(BOOL)popup
{
  popupCopy = popup;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nfcRadioEnabled = selfCopy->_nfcRadioEnabled;
  if (nfcRadioEnabled)
  {
    if (!popupCopy)
    {
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i _nfcRadioEnabled = %d", v14, ClassName, Name, 1591, selfCopy->_nfcRadioEnabled);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(selfCopy);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(selfCopy);
      v19 = sel_getName(a2);
      v20 = selfCopy->_nfcRadioEnabled;
      *buf = 67110146;
      *&buf[4] = v17;
      *v38 = 2082;
      *&v38[2] = v18;
      *&v38[10] = 2082;
      *&v38[12] = v19;
      *&v38[20] = 1024;
      *&v38[22] = 1591;
      v39 = 1024;
      v40 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i _nfcRadioEnabled = %d", buf, 0x28u);
    }

    nfcRadioEnabled = selfCopy->_nfcRadioEnabled;
    if (!popupCopy)
    {
LABEL_18:
      objc_sync_exit(selfCopy);

      if (nfcRadioEnabled == 1)
      {
        return nfcRadioEnabled;
      }

      goto LABEL_19;
    }
  }

  if (nfcRadioEnabled == 1)
  {
    goto LABEL_18;
  }

  v21 = selfCopy;
  objc_sync_enter(v21);
  objc_initWeak(&location, v21);
  if (!v21->_radioDisabledNotificationPopup)
  {
    v21->_radioDisabledNotificationPopup = 1;
    v22 = objc_opt_new();
    *buf = _NSConcreteStackBlock;
    *v38 = 3221225472;
    *&v38[8] = sub_1000E7E30;
    *&v38[16] = &unk_100318788;
    objc_copyWeak(&v38[24], &location);
    [v22 requestUserSettingsNotificationWithCompletion:buf popupInterval:0.0];

    objc_destroyWeak(&v38[24]);
  }

  objc_destroyWeak(&location);
  objc_sync_exit(v21);

  objc_sync_exit(v21);
LABEL_19:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFLogGetLogger();
  if (v23)
  {
    v24 = v23;
    v25 = object_getClass(selfCopy);
    v26 = class_isMetaClass(v25);
    v34 = object_getClassName(selfCopy);
    v35 = sel_getName(a2);
    v27 = 45;
    if (v26)
    {
      v27 = 43;
    }

    v24(6, "%c[%{public}s %{public}s]:%i state = %d", v27, v34, v35, 1608, nfcRadioEnabled);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v28 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = object_getClass(selfCopy);
    if (class_isMetaClass(v29))
    {
      v30 = 43;
    }

    else
    {
      v30 = 45;
    }

    v31 = object_getClassName(selfCopy);
    v32 = sel_getName(a2);
    *buf = 67110146;
    *&buf[4] = v30;
    *v38 = 2082;
    *&v38[2] = v31;
    *&v38[10] = 2082;
    *&v38[12] = v32;
    *&v38[20] = 1024;
    *&v38[22] = 1608;
    v39 = 1024;
    v40 = nfcRadioEnabled;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i state = %d", buf, 0x28u);
  }

  return nfcRadioEnabled;
}

- (void)isHWSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100003384(self);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    +[NSXPCConnection currentConnection];
    v14 = v13 = a2;
    nF_clientName = [v14 NF_clientName];
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@ : HW state = %u", v16, ClassName, Name, 1742, nF_clientName, v6);

    a2 = v13;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    v22 = +[NSXPCConnection currentConnection];
    nF_clientName2 = [v22 NF_clientName];
    *buf = 67110402;
    v25 = v19;
    v26 = 2082;
    v27 = v20;
    v28 = 2082;
    v29 = v21;
    v30 = 1024;
    v31 = 1742;
    v32 = 2114;
    v33 = nF_clientName2;
    v34 = 1024;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ : HW state = %u", buf, 0x32u);
  }

  completionCopy[2](completionCopy, v6);
}

- (void)waitForHWSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v6 NF_clientName];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@", v14, ClassName, Name, 1771, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(self);
    v19 = sel_getName(a2);
    nF_clientName2 = [v6 NF_clientName];
    *buf = 67110146;
    v38 = v17;
    v39 = 2082;
    v40 = v18;
    v41 = 2082;
    v42 = v19;
    v43 = 1024;
    v44 = 1771;
    v45 = 2114;
    v46 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v21 = sub_100003384(self);
  v22 = v21;
  if (v21 == 4 || v21 == 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(self);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(self);
      v28 = sel_getName(a2);
      nF_clientName3 = [v6 NF_clientName];
      v30 = 45;
      if (v26)
      {
        v30 = 43;
      }

      v24(6, "%c[%{public}s %{public}s]:%i Processing %{public}@ : Known HW state = %u", v30, v27, v28, 1775, nF_clientName3, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = object_getClass(self);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(self);
      v35 = sel_getName(a2);
      nF_clientName4 = [v6 NF_clientName];
      *buf = 67110402;
      v38 = v33;
      v39 = 2082;
      v40 = v34;
      v41 = 2082;
      v42 = v35;
      v43 = 1024;
      v44 = 1775;
      v45 = 2114;
      v46 = nF_clientName4;
      v47 = 1024;
      v48 = v22;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@ : Known HW state = %u", buf, 0x32u);
    }

    completionCopy[2](completionCopy, v22);
  }

  else
  {
    sub_1000E925C(self, v6, 16, completionCopy);
  }
}

- (BOOL)hasSession
{
  v3 = self->_secureElementSessionQueue;
  objc_sync_enter(v3);
  if (self->_currentSecureElementSession)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_secureElementSessionQueue count]!= 0;
  }

  objc_sync_exit(v3);

  return v4;
}

- (id)secureElementDidExitRestrictedMode:(id)mode os:(int64_t)os reason:(unsigned int)reason
{
  modeCopy = mode;
  v8 = [modeCopy isEqual:self->_secureElementWrapper];
  if (v8)
  {
    v9 = @"embedded";
  }

  else
  {
    v9 = 0;
  }

  v10 = [(_NFHardwareManager *)self powerCycleSE:modeCopy];
  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = sub_10004BF2C();
    v14 = [(_NFHardwareManager *)self setRoutingConfig:v13];

    if (v14)
    {
      v15 = [NSError alloc];
      v16 = [NSString stringWithUTF8String:"nfcd"];
      v58 = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:"Stack Error"];
      v59 = v17;
      v18 = &v59;
      v19 = &v58;
    }

    else
    {
      if ([(_NFHardwareManager *)self refreshSecureElementInfo])
      {
        v20 = sub_100253E14(&self->_secureElementWrapper->super.isa);
        v11 = 0;
        goto LABEL_15;
      }

      v15 = [NSError alloc];
      v16 = [NSString stringWithUTF8String:"nfcd"];
      v56 = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:"Stack Error"];
      v57 = v17;
      v18 = &v57;
      v19 = &v56;
    }

    v21 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:1];
    v11 = [v15 initWithDomain:v16 code:15 userInfo:v21];
  }

LABEL_15:
  v22 = sub_100003548(&self->super.isa);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  allValues = [v22 allValues];
  v24 = [allValues countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v43 + 1) + 8 * i) secureElementWithIdentifier:v9 didChangeRestrictedMode:0];
      }

      v25 = [allValues countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v25);
  }

  if (v11)
  {
    self->_restrictedModeBroadcasted = 0;
    v28 = [NSString stringWithFormat:@"Failed to exit restricted mode. Returned with error %@", v11];
    sub_100199A24(NFBugCapture, @"Failed to exit restricted mode", v28, 0);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v30 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v34 = 45;
      if (isMetaClass)
      {
        v34 = 43;
      }

      v30(6, "%c[%{public}s %{public}s]:%i Device exited Restricted Mode and we are posting events", v34, ClassName, Name, 2729);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = object_getClass(self);
      if (class_isMetaClass(v36))
      {
        v37 = 43;
      }

      else
      {
        v37 = 45;
      }

      v38 = object_getClassName(self);
      v39 = sel_getName(a2);
      *buf = 67109890;
      v48 = v37;
      v49 = 2082;
      v50 = v38;
      v51 = 2082;
      v52 = v39;
      v53 = 1024;
      v54 = 2729;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Device exited Restricted Mode and we are posting events", buf, 0x22u);
    }

    [NFExceptionsCALogger postAnalyticsSERestrictedModeExited:sub_1000E1E20(self) exitReason:reason];
    self->_restrictedModeBroadcasted = 0;
  }

  return v11;
}

- (void)postEventForPublisher:(id)publisher event:(const char *)event objectString:(id)string
{
  publisherCopy = publisher;
  stringCopy = string;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v12 = Logger;
  if (publisherCopy)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v12(6, "%c[%{public}s %{public}s]:%i posting notification: %s", v15, ClassName, Name, 3044, event);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67110146;
      v31 = v18;
      v32 = 2082;
      v33 = object_getClassName(self);
      v34 = 2082;
      v35 = sel_getName(a2);
      v36 = 1024;
      v37 = 3044;
      v38 = 2080;
      eventCopy = event;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting notification: %s", buf, 0x2Cu);
    }

    v19 = [[NSString alloc] initWithUTF8String:event];
    v20 = +[NSDistributedNotificationCenter defaultCenter];
    [v20 postNotificationName:v19 object:stringCopy userInfo:0 options:3];

    if (stringCopy)
    {
      sub_100235448(publisherCopy, v19, stringCopy, 1);
    }

    else
    {
      sub_100235394(publisherCopy, v19, 1);
    }
  }

  else
  {
    if (Logger)
    {
      v21 = object_getClass(self);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(self);
      v29 = sel_getName(a2);
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v12(6, "%c[%{public}s %{public}s]:%i Invalid event publisher. ", v24, v23, v29, 3041);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      *buf = 67109890;
      v31 = v26;
      v32 = 2082;
      v33 = object_getClassName(self);
      v34 = 2082;
      v35 = sel_getName(a2);
      v36 = 1024;
      v37 = 3041;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid event publisher. ", buf, 0x22u);
    }
  }
}

- (void)postEventForPublisher:(id)publisher event:(const char *)event additionalData:(id)data
{
  publisherCopy = publisher;
  dataCopy = data;
  if (publisherCopy)
  {
    v11 = [[NSString alloc] initWithUTF8String:event];
    sel = a2;
    if ([dataCopy count])
    {
      v12 = [dataCopy mutableCopy];
      v13 = [dataCopy description];
    }

    else
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = &stru_10031EA18;
    }

    v22 = +[NSDistributedNotificationCenter defaultCenter];
    [v22 postNotificationName:v11 object:v13 userInfo:0 options:3];

    [v12 setObject:v11 forKeyedSubscript:@"xpcEventName"];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(sel);
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v24(6, "%c[%{public}s %{public}s]:%i XpcPayload %{public}@", v27, ClassName, Name, 3082, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = object_getClass(self);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      *buf = 67110146;
      v36 = v30;
      v37 = 2082;
      v38 = object_getClassName(self);
      v39 = 2082;
      v40 = sel_getName(sel);
      v41 = 1024;
      v42 = 3082;
      v43 = 2114;
      v44 = v12;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XpcPayload %{public}@", buf, 0x2Cu);
    }

    sub_100235634(publisherCopy, v12, 1);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v15 = v14;
      v16 = object_getClass(self);
      v17 = class_isMetaClass(v16);
      v18 = object_getClassName(self);
      v32 = sel_getName(a2);
      v19 = 45;
      if (v17)
      {
        v19 = 43;
      }

      v15(6, "%c[%{public}s %{public}s]:%i Invalid event publisher. ", v19, v18, v32, 3060);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v36 = v21;
      v37 = 2082;
      v38 = object_getClassName(self);
      v39 = 2082;
      v40 = sel_getName(a2);
      v41 = 1024;
      v42 = 3060;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid event publisher. ", buf, 0x22u);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  v12 = changeCopy;
  if (off_10035C9B8 == context)
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F1988;
    block[3] = &unk_100315F80;
    block[4] = self;
    v17 = a2;
    v16 = changeCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _NFHardwareManager;
    [(_NFHardwareManager *)&v14 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
  }
}

- (void)controllerInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F1BDC;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)expressModesInfoWithOption:(unsigned int)option completion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F1E18;
  block[3] = &unk_100318828;
  optionCopy = option;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)checkExpressPassCompatibilityDeprecated:(id)deprecated callback:(id)callback
{
  v22 = 0;
  callbackCopy = callback;
  v8 = sub_1002638D0(NFSecureElementWrapper, deprecated, &v22);
  v9 = v22;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i incompatibles: %{public}@", v14, ClassName, Name, 3203, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(self);
    v19 = sel_getName(a2);
    *buf = 67110146;
    v24 = v17;
    v25 = 2082;
    v26 = v18;
    v27 = 2082;
    v28 = v19;
    v29 = 1024;
    v30 = 3203;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i incompatibles: %{public}@", buf, 0x2Cu);
  }

  callbackCopy[2](callbackCopy, v8, v9);
}

- (void)checkExpressPassCompatibility:(id)compatibility callback:(id)callback
{
  v22 = 0;
  callbackCopy = callback;
  v8 = sub_100263CFC(NFSecureElementWrapper, compatibility, &v22);
  v9 = v22;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i incompatibles: %{public}@", v14, ClassName, Name, 3213, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(self);
    v19 = sel_getName(a2);
    *buf = 67110146;
    v24 = v17;
    v25 = 2082;
    v26 = v18;
    v27 = 2082;
    v28 = v19;
    v29 = 1024;
    v30 = 3213;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i incompatibles: %{public}@", buf, 0x2Cu);
  }

  callbackCopy[2](callbackCopy, v8, v9);
}

- (void)currentInMetroStatus:(id)status
{
  v20 = 0;
  statusCopy = status;
  v6 = sub_100264164(NFSecureElementWrapper, &v20);
  v7 = v20;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i currentInMetroStatus %d (error %@)", v13, ClassName, Name, 3223, v6, v7);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(self);
    v18 = sel_getName(a2);
    *buf = 67110402;
    v22 = v16;
    v23 = 2082;
    v24 = v17;
    v25 = 2082;
    v26 = v18;
    v27 = 1024;
    v28 = 3223;
    v29 = 1024;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i currentInMetroStatus %d (error %@)", buf, 0x32u);
  }

  statusCopy[2](statusCopy, v6, v7);
}

- (void)setAntiRelayRID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2CBC;
  block[3] = &unk_1003188A0;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)rfSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2EC8;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)getDieIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F3988;
  v10[3] = &unk_100316078;
  v10[4] = self;
  v11 = v6;
  v12 = completionCopy;
  v13 = a2;
  v8 = completionCopy;
  v9 = v6;
  dispatch_async(workQueue, v10);
}

- (void)getUniqueFDRKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F42E0;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)stateInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F4908;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)pushSignedRF:(id)f completion:(id)completion
{
  fCopy = f;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F5B54;
  block[3] = &unk_1003188A0;
  block[4] = self;
  v12 = fCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = fCopy;
  dispatch_async(workQueue, block);
}

- (void)setFieldDetectEnabled:(BOOL)enabled completion:(id)completion
{
  completionCopy = completion;
  v7 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F62EC;
  v11[3] = &unk_100318940;
  enabledCopy = enabled;
  v11[4] = self;
  v12 = v7;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = v7;
  dispatch_async(workQueue, v11);
}

- (void)registerForCallbacks:(id)callbacks withUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  callbacksCopy = callbacks;
  v10 = +[NSXPCConnection currentConnection];
  v57 = dCopy;
  if (self)
  {
    v55 = callbacksCopy;
    v54 = callbacksCopy;
    nF_whitelistChecker = [v10 NF_whitelistChecker];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName("_registerForCallbacks:connection:callbackUUID:");
      processIdentifier = [v10 processIdentifier];
      [nF_whitelistChecker clientName];
      v19 = v10;
      v21 = v20 = nF_whitelistChecker;
      v22 = 43;
      if (!isMetaClass)
      {
        v22 = 45;
      }

      v13(6, "%c[%{public}s %{public}s]:%i Client %d (%{public}@) registered callback [%@]", v22, ClassName, Name, 3535, processIdentifier, v21, v57);

      nF_whitelistChecker = v20;
      v10 = v19;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = object_getClass(self);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(self);
      v27 = sel_getName("_registerForCallbacks:connection:callbackUUID:");
      processIdentifier2 = [v10 processIdentifier];
      clientName = [nF_whitelistChecker clientName];
      *buf = 67110658;
      v63 = v25;
      v64 = 2082;
      v65 = v26;
      v66 = 2082;
      v67 = v27;
      v68 = 1024;
      v69 = 3535;
      v70 = 1024;
      v71 = processIdentifier2;
      v72 = 2114;
      v73 = clientName;
      v74 = 2112;
      v75 = v57;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Client %d (%{public}@) registered callback [%@]", buf, 0x3Cu);
    }

    uUIDString = [v57 UUIDString];
    v31 = self->_callbackHandlers;
    objc_sync_enter(v31);
    [(NSMutableDictionary *)self->_callbackHandlers setObject:v54 forKeyedSubscript:uUIDString];

    if (!self->_keepAliveTransaction)
    {
      v32 = v10;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(self);
        v36 = nF_whitelistChecker;
        v37 = class_isMetaClass(v35);
        v38 = object_getClassName(self);
        v53 = sel_getName("_registerForCallbacks:connection:callbackUUID:");
        v39 = !v37;
        nF_whitelistChecker = v36;
        v40 = 45;
        if (!v39)
        {
          v40 = 43;
        }

        v34(6, "%c[%{public}s %{public}s]:%i creating NFCD keep alive transaction", v40, v38, v53, 3544);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = object_getClass(self);
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        v44 = nF_whitelistChecker;
        v45 = object_getClassName(self);
        v46 = sel_getName("_registerForCallbacks:connection:callbackUUID:");
        *buf = 67109890;
        v63 = v43;
        v64 = 2082;
        v65 = v45;
        nF_whitelistChecker = v44;
        v66 = 2082;
        v67 = v46;
        v68 = 1024;
        v69 = 3544;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i creating NFCD keep alive transaction", buf, 0x22u);
      }

      v47 = os_transaction_create();
      keepAliveTransaction = self->_keepAliveTransaction;
      self->_keepAliveTransaction = v47;

      v10 = v32;
    }

    objc_sync_exit(v31);

    callbacksCopy = v55;
  }

  v49 = sub_100003384(self);
  completionCopy[2](completionCopy, v49);

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F6D50;
  block[3] = &unk_100318968;
  v59 = v10;
  v60 = v57;
  selfCopy = self;
  v51 = v57;
  v52 = v10;
  dispatch_async(workQueue, block);
}

- (void)unregisterForCallbacks:(id)callbacks
{
  callbacksCopy = callbacks;
  v5 = +[NSXPCConnection currentConnection];
  sub_1000E8904(self, v5, callbacksCopy);

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F6F5C;
  block[3] = &unk_100315F30;
  v9 = v5;
  v7 = v5;
  dispatch_async(workQueue, block);
}

- (void)secureElementsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100003384(self);
  os_unfair_lock_lock(&self->_secureElementInfoLock);
  if (self->_secureElementInfo)
  {
    secureElementInfo = self->_secureElementInfo;
    v6 = [NSArray arrayWithObjects:&secureElementInfo count:1];
    completionCopy[2](completionCopy, v6);
  }

  else if (v5 == 2 || v5 == 5)
  {
    workQueue = self->_workQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F70BC;
    v8[3] = &unk_100316700;
    v8[4] = self;
    v9 = completionCopy;
    dispatch_async(workQueue, v8);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }

  os_unfair_lock_unlock(&self->_secureElementInfoLock);
}

- (void)cachedEmbeddedSecureElementSerialNumber:(id)number
{
  numberCopy = number;
  if (self && (seSerialFromFDR = self->_seSerialFromFDR) != 0)
  {
    nF_asHexString = [(NSData *)seSerialFromFDR NF_asHexString];
    numberCopy[2](numberCopy, nF_asHexString, 0);
  }

  else
  {
    v16 = 0;
    v8 = sub_100015AE4(NFDriverWrapper, &v16);
    nF_asHexString = v16;
    if (v8)
    {
      numberCopy[2](numberCopy, nF_asHexString, 0);
    }

    else
    {
      v9 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v17[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"Not found"];
      v18[0] = v11;
      v18[1] = &off_1003315F0;
      v17[1] = @"Line";
      v17[2] = @"Method";
      v12 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v18[2] = v12;
      v17[3] = NSDebugDescriptionErrorKey;
      3635 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3635];
      v18[3] = 3635;
      v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
      v15 = [v9 initWithDomain:v10 code:65 userInfo:v14];
      (numberCopy)[2](numberCopy, nF_asHexString, v15);
    }
  }
}

- (void)triggerDelayedWake:(unsigned __int8)wake completion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F7478;
  block[3] = &unk_100318990;
  wakeCopy = wake;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)triggerCrash:(unsigned __int16)crash completion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F7F44;
  block[3] = &unk_100318A00;
  crashCopy = crash;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)triggerCoreDumpWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F89C0;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)toggleGPIO:(unsigned __int16)o completion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F94AC;
  block[3] = &unk_100318A00;
  oCopy = o;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)getHostCardEmulationLogWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F9CAC;
  block[3] = &unk_1003188A0;
  block[4] = self;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  dispatch_async(workQueue, block);
}

- (id)powerCycleSE:(id)e
{
  eCopy = e;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100006A8C;
  v47 = sub_1000E6B84;
  v48 = 0;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Power cycling SE :(", v11, ClassName, Name, 4234);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(self);
    v16 = sel_getName(a2);
    *buf = 67109890;
    v50 = v14;
    v51 = 2082;
    v52 = v15;
    v53 = 2082;
    v54 = v16;
    v55 = 1024;
    v56 = 4234;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Power cycling SE :(", buf, 0x22u);
  }

  v36 = _NSConcreteStackBlock;
  v37 = 3221225472;
  v38 = sub_1000FA6A0;
  v39 = &unk_100318C70;
  v17 = eCopy;
  v40 = v17;
  selfCopy = self;
  v42 = &v43;
  v18 = sub_10004C224(NFRoutingConfig, 0);
  v19 = sub_1000E6BE4(&self->super.isa, &v36, @"PowerCycleSE", v18);

  if ((v19 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v25 = sel_getName(a2);
      v26 = 45;
      if (v23)
      {
        v26 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Failed to powercycle SE: %{public}@", v26, v24, v25, 4250, v44[5], v36, v37, v38, v39, v40, selfCopy, v42);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(self);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      v30 = object_getClassName(self);
      v31 = sel_getName(a2);
      v32 = v44[5];
      *buf = 67110146;
      v50 = v29;
      v51 = 2082;
      v52 = v30;
      v53 = 2082;
      v54 = v31;
      v55 = 1024;
      v56 = 4250;
      v57 = 2114;
      v58 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to powercycle SE: %{public}@", buf, 0x2Cu);
    }
  }

  v33 = v44[5];

  _Block_object_dispose(&v43, 8);

  return v33;
}

- (void)openSinglePollExpressModeAssertion:(double)assertion completion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FA8A4;
  v8[3] = &unk_100316700;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workQueue, v8);
}

- (void)cancelSinglePollExpressModeAssertionWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FAB1C;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)radioEnableStateWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FAD94;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)enableRadio:(BOOL)radio completion:(id)completion
{
  completionCopy = completion;
  v8 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FAFE4;
  block[3] = &unk_100318AB8;
  block[4] = self;
  v13 = v8;
  v14 = completionCopy;
  v15 = a2;
  radioCopy = radio;
  v10 = v8;
  v11 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)getTemperatureWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FBC74;
  block[3] = &unk_100316050;
  block[4] = self;
  v9 = completionCopy;
  v10 = a2;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)getReaderProhibitTimer:(id)timer
{
  timerCopy = timer;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FC460;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = timerCopy;
  v6 = timerCopy;
  dispatch_async(workQueue, v7);
}

- (void)dumpLPMDebugLogWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FCC78;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)setChipscope:(BOOL)chipscope completion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FCFC0;
  block[3] = &unk_100318990;
  chipscopeCopy = chipscope;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)getLPEMFTALoggingWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FD488;
  v7[3] = &unk_100316700;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)requestAssertion:(id)assertion waitOnComplete:(BOOL)complete completion:(id)completion
{
  completionCopy = completion;
  assertionCopy = assertion;
  v10 = +[NSXPCConnection currentConnection];
  sub_10017AEE8(&self->super.isa, assertionCopy, v10, complete, completionCopy);
}

- (void)releaseAssertion:(id)assertion waitOnComplete:(BOOL)complete completion:(id)completion
{
  completionCopy = completion;
  assertionCopy = assertion;
  v10 = +[NSXPCConnection currentConnection];
  sub_10017CAB8(&self->super.isa, assertionCopy, v10, complete, completionCopy);
}

- (void)requestSuppressPresentmentWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  nF_whitelistChecker = [v6 NF_whitelistChecker];
  v8 = [_NFCardSession validateEntitlements:nF_whitelistChecker];

  if (v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      nF_clientName = [v6 NF_clientName];
      processIdentifier = [v6 processIdentifier];
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %{public}d)", v16, ClassName, Name, 4583, nF_clientName, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(self);
      v21 = sel_getName(a2);
      nF_clientName2 = [v6 NF_clientName];
      *buf = 67110402;
      *&buf[4] = v19;
      *&buf[8] = 2082;
      *&buf[10] = v20;
      *&buf[18] = 2082;
      *&buf[20] = v21;
      *&buf[28] = 1024;
      *&buf[30] = 4583;
      v29 = 2114;
      v30 = nF_clientName2;
      v31 = 1026;
      processIdentifier2 = [v6 processIdentifier];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %{public}d)", buf, 0x32u);
    }

    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000FDA58;
    v24[3] = &unk_100318AE0;
    v26 = completionCopy;
    v27 = a2;
    v24[4] = self;
    v25 = v6;
    [_NFCardSession isEligibleWithUserPrompt:1 auditToken:buf completion:v24];
  }
}

- (void)releaseSuppressPresentmentAssertion:(id)assertion completion:(id)completion
{
  assertionCopy = assertion;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  if (assertionCopy && ([assertionCopy assertionTime], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    sub_10017CAB8(&self->super.isa, assertionCopy, v9, 0, completionCopy);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Invalid assertion", v16, ClassName, Name, 4615);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67109890;
      v31 = v19;
      v32 = 2082;
      v33 = object_getClassName(self);
      v34 = 2082;
      v35 = sel_getName(a2);
      v36 = 1024;
      v37 = 4615;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid assertion", buf, 0x22u);
    }

    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v28[0] = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v29[0] = v22;
    v29[1] = &off_100331860;
    v28[1] = @"Line";
    v28[2] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v29[2] = v23;
    v28[3] = NSDebugDescriptionErrorKey;
    4616 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 4616];
    v29[3] = 4616;
    v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
    v26 = [v20 initWithDomain:v21 code:10 userInfo:v25];
    (*(completionCopy + 2))(completionCopy, v26);
  }
}

- (void)queueFieldDetectSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v10 NF_clientName];
    v18 = 45;
    if (isMetaClass)
    {
      v18 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i %{public}@", v18, ClassName, Name, 4630, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(self);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    v22 = object_getClassName(self);
    v23 = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    *buf = 67110146;
    v109 = v21;
    v110 = 2082;
    v111 = v22;
    v112 = 2082;
    v113 = v23;
    v114 = 1024;
    v115 = 4630;
    v116 = 2114;
    v117 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2)
  {
    v42 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    v124 = NSLocalizedDescriptionKey;
    v43 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v125 = v43;
    v44 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    v45 = v42;
    v46 = v27;
    v47 = 58;
LABEL_46:
    v75 = [v45 initWithDomain:v46 code:v47 userInfo:v44];
    completionCopy[2](completionCopy, 0, v75);

    goto LABEL_47;
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || !driverWrapper->_hasAntenna)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFLogGetLogger();
    if (v48)
    {
      v49 = v48;
      v50 = object_getClass(self);
      v51 = class_isMetaClass(v50);
      v52 = object_getClassName(self);
      v53 = sel_getName(a2);
      nF_clientName3 = [v10 NF_clientName];
      v55 = 45;
      if (v51)
      {
        v55 = 43;
      }

      v49(6, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", v55, v52, v53, 4638, nF_clientName3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = object_getClass(self);
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(self);
      v60 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      *buf = 67110146;
      v109 = v58;
      v110 = 2082;
      v111 = v59;
      v112 = 2082;
      v113 = v60;
      v114 = 1024;
      v115 = 4638;
      v116 = 2114;
      v117 = nF_clientName4;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", buf, 0x2Cu);
    }

    v62 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    v122 = NSLocalizedDescriptionKey;
    v43 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v123 = v43;
    v44 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    v45 = v62;
    v46 = v27;
    v47 = 14;
    goto LABEL_46;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:0]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v63 = NFLogGetLogger();
    if (v63)
    {
      v64 = v63;
      v65 = object_getClass(self);
      v66 = class_isMetaClass(v65);
      v67 = object_getClassName(self);
      v100 = sel_getName(a2);
      v68 = 45;
      if (v66)
      {
        v68 = 43;
      }

      v64(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v68, v67, v100, 4644);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v69 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = object_getClass(self);
      if (class_isMetaClass(v70))
      {
        v71 = 43;
      }

      else
      {
        v71 = 45;
      }

      v72 = object_getClassName(self);
      v73 = sel_getName(a2);
      *buf = 67109890;
      v109 = v71;
      v110 = 2082;
      v111 = v72;
      v112 = 2082;
      v113 = v73;
      v114 = 1024;
      v115 = 4644;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v74 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    v120 = NSLocalizedDescriptionKey;
    v43 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v121 = v43;
    v44 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v45 = v74;
    v46 = v27;
    v47 = 50;
    goto LABEL_46;
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v27 = [_NFFieldDetectSession validateEntitlements:nF_whitelistChecker];

  if (v27)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(self);
      v31 = class_isMetaClass(v30);
      v103 = object_getClassName(self);
      v32 = sel_getName(a2);
      nF_clientName5 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v34 = 45;
      if (v31)
      {
        v34 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v34, v103, v32, 4651, nF_clientName5, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = object_getClass(self);
      if (class_isMetaClass(v36))
      {
        v37 = 43;
      }

      else
      {
        v37 = 45;
      }

      v38 = object_getClassName(self);
      v39 = sel_getName(a2);
      nF_clientName6 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      v109 = v37;
      v110 = 2082;
      v111 = v38;
      v112 = 2082;
      v113 = v39;
      v114 = 1024;
      v115 = 4651;
      v116 = 2114;
      v117 = nF_clientName6;
      v118 = 1024;
      v119 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    completionCopy[2](completionCopy, 0, v27);
  }

  else
  {
    v76 = [[_NFFieldDetectSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
    v77 = v76;
    if (v76)
    {
      [(_NFSession *)v76 setQueue:self];
      [(_NFXPCSession *)v77 setConnection:v10];
      [(_NFSession *)v77 setUid:0xFFFFFFFFLL];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v78 = [attributeCopy objectForKey:@"session.fd.unfiltered"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v80 = [attributeCopy objectForKey:@"session.fd.unfiltered"];
          -[_NFFieldDetectSession setUnfiltered:](v77, "setUnfiltered:", [v80 BOOLValue]);
        }
      }

      v81 = self->_secureElementSessionQueue;
      objc_sync_enter(v81);
      nF_userInfo = [v10 NF_userInfo];
      v83 = [nF_userInfo objectForKeyedSubscript:@"ProxyObjects"];
      [v83 addObject:v77];

      objc_sync_exit(v81);
      (completionCopy)[2](completionCopy, v77, 0);
      sub_100095F8C(self, v77, 0, [v10 processIdentifier], 0);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFLogGetLogger();
      if (v84)
      {
        v85 = v84;
        v86 = object_getClass(self);
        v87 = class_isMetaClass(v86);
        v88 = object_getClassName(self);
        v101 = sel_getName(a2);
        v89 = 45;
        if (v87)
        {
          v89 = 43;
        }

        v85(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v89, v88, v101, 4658);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v90 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v91 = object_getClass(self);
        if (class_isMetaClass(v91))
        {
          v92 = 43;
        }

        else
        {
          v92 = 45;
        }

        v93 = object_getClassName(self);
        v94 = sel_getName(a2);
        *buf = 67109890;
        v109 = v92;
        v110 = 2082;
        v111 = v93;
        v112 = 2082;
        v113 = v94;
        v114 = 1024;
        v115 = 4658;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
      }

      v95 = [NSError alloc];
      v96 = [NSString stringWithUTF8String:"nfcd"];
      v106 = NSLocalizedDescriptionKey;
      v97 = [NSString stringWithUTF8String:"Unexpected Result"];
      v107 = v97;
      v98 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v99 = [v95 initWithDomain:v96 code:13 userInfo:v98];
      completionCopy[2](completionCopy, 0, v99);
    }

    v27 = 0;
  }

LABEL_47:
}

- (void)queueECommercePaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v16 = sessionCopy;
    Name = sel_getName(a2);
    nF_clientName = [v10 NF_clientName];
    v71 = Name;
    sessionCopy = v16;
    v19 = 45;
    if (isMetaClass)
    {
      v19 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i %{public}@", v19, ClassName, v71, 4692, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = object_getClass(self);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    v23 = object_getClassName(self);
    v24 = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    *buf = 67110146;
    v85 = v22;
    v86 = 2082;
    v87 = v23;
    v88 = 2082;
    v89 = v24;
    v90 = 1024;
    v91 = 4692;
    v92 = 2114;
    v93 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2 && sub_100003384(self) != 5)
  {
    v51 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    v96 = NSLocalizedDescriptionKey;
    v52 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v97 = v52;
    v53 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v54 = [v51 initWithDomain:v27 code:58 userInfo:v53];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v54);

LABEL_26:
    v50 = attributeCopy;
    goto LABEL_38;
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v27 = [_NFECommercePaymentSession validateEntitlements:nF_whitelistChecker];

  if (v27)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(self);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(self);
      v33 = sel_getName(a2);
      v34 = a2;
      v35 = sessionCopy;
      v36 = v33;
      nF_clientName3 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v72 = v36;
      sessionCopy = v35;
      a2 = v34;
      v38 = 45;
      if (v31)
      {
        v38 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v38, v32, v72, 4701, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      v85 = v41;
      v86 = 2082;
      v87 = v42;
      v88 = 2082;
      v89 = v43;
      v90 = 1024;
      v91 = 4701;
      v92 = 2114;
      v93 = nF_clientName4;
      v94 = 1024;
      v95 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v27);
    goto LABEL_26;
  }

  v47 = [(_NFXPCSession *)[_NFECommercePaymentSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v48 = v47;
  if (v47)
  {
    [(_NFSession *)v47 setQueue:self];
    [(_NFXPCSession *)v48 setConnection:v10];
    [(_NFSession *)v48 setUid:0xFFFFFFFFLL];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v48, [(_NFHardwareManager *)self isFirstInQueue], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FF550;
    block[3] = &unk_100318B08;
    block[4] = self;
    v78 = v48;
    v81 = a2;
    v79 = v10;
    v50 = attributeCopy;
    v80 = attributeCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v56 = v55;
      v57 = object_getClass(self);
      v58 = class_isMetaClass(v57);
      v59 = object_getClassName(self);
      v73 = sel_getName(a2);
      v60 = 45;
      if (v58)
      {
        v60 = 43;
      }

      v56(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v60, v59, v73, 4708);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = object_getClass(self);
      if (class_isMetaClass(v62))
      {
        v63 = 43;
      }

      else
      {
        v63 = 45;
      }

      v64 = object_getClassName(self);
      v65 = sel_getName(a2);
      *buf = 67109890;
      v85 = v63;
      v86 = 2082;
      v87 = v64;
      v88 = 2082;
      v89 = v65;
      v90 = 1024;
      v91 = 4708;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v66 = [NSError alloc];
    v67 = [NSString stringWithUTF8String:"nfcd"];
    v82 = NSLocalizedDescriptionKey;
    v68 = [NSString stringWithUTF8String:"Unexpected Result"];
    v83 = v68;
    v69 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v70 = [v66 initWithDomain:v67 code:13 userInfo:v69];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v70);

    v50 = attributeCopy;
  }

  v27 = 0;
LABEL_38:
}

- (void)queueCardMigrationPaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v16 = sessionCopy;
    Name = sel_getName(a2);
    nF_clientName = [v10 NF_clientName];
    v75 = Name;
    sessionCopy = v16;
    v19 = 45;
    if (isMetaClass)
    {
      v19 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i %{public}@", v19, ClassName, v75, 4759, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = object_getClass(self);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    v23 = object_getClassName(self);
    v24 = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    *buf = 67110146;
    v90 = v22;
    v91 = 2082;
    v92 = v23;
    v93 = 2082;
    v94 = v24;
    v95 = 1024;
    v96 = 4759;
    v97 = 2114;
    v98 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2 && sub_100003384(self) != 5)
  {
    v51 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    v101[0] = NSLocalizedDescriptionKey;
    v52 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v102[0] = v52;
    v102[1] = &off_1003318F0;
    v101[1] = @"Line";
    v101[2] = @"Method";
    v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v102[2] = v53;
    v101[3] = NSDebugDescriptionErrorKey;
    4762 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 4762];
    v102[3] = 4762;
    v55 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:4];
    v56 = [v51 initWithDomain:v27 code:58 userInfo:v55];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v56);

LABEL_26:
    v50 = attributeCopy;
    goto LABEL_38;
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v27 = [_NFCardMigrationPaymentSession validateEntitlements:nF_whitelistChecker];

  if (v27)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(self);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(self);
      v33 = sel_getName(a2);
      v34 = a2;
      v35 = sessionCopy;
      v36 = v33;
      nF_clientName3 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v76 = v36;
      sessionCopy = v35;
      a2 = v34;
      v38 = 45;
      if (v31)
      {
        v38 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v38, v32, v76, 4768, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      v90 = v41;
      v91 = 2082;
      v92 = v42;
      v93 = 2082;
      v94 = v43;
      v95 = 1024;
      v96 = 4768;
      v97 = 2114;
      v98 = nF_clientName4;
      v99 = 1024;
      v100 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v27);
    goto LABEL_26;
  }

  v47 = [(_NFXPCSession *)[_NFCardMigrationPaymentSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v48 = v47;
  if (v47)
  {
    [(_NFSession *)v47 setQueue:self];
    [(_NFXPCSession *)v48 setConnection:v10];
    [(_NFSession *)v48 setUid:0xFFFFFFFFLL];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v48, [(_NFHardwareManager *)self isFirstInQueue], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100100568;
    block[3] = &unk_100318B08;
    block[4] = self;
    v83 = v48;
    v86 = a2;
    v84 = v10;
    v50 = attributeCopy;
    v85 = attributeCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFLogGetLogger();
    if (v57)
    {
      v58 = v57;
      v59 = object_getClass(self);
      v60 = class_isMetaClass(v59);
      v61 = object_getClassName(self);
      v77 = sel_getName(a2);
      v62 = 45;
      if (v60)
      {
        v62 = 43;
      }

      v58(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v62, v61, v77, 4775);
    }

    v79 = sessionCopy;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v63 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = object_getClass(self);
      if (class_isMetaClass(v64))
      {
        v65 = 43;
      }

      else
      {
        v65 = 45;
      }

      v66 = object_getClassName(self);
      v67 = sel_getName(a2);
      *buf = 67109890;
      v90 = v65;
      v91 = 2082;
      v92 = v66;
      v93 = 2082;
      v94 = v67;
      v95 = 1024;
      v96 = 4775;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v68 = [NSError alloc];
    v69 = [NSString stringWithUTF8String:"nfcd"];
    v87[0] = NSLocalizedDescriptionKey;
    v70 = [NSString stringWithUTF8String:"Unexpected Result"];
    v88[0] = v70;
    v88[1] = &off_100331908;
    v87[1] = @"Line";
    v87[2] = @"Method";
    v71 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v88[2] = v71;
    v87[3] = NSDebugDescriptionErrorKey;
    4776 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 4776];
    v88[3] = 4776;
    v73 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:4];
    v74 = [v68 initWithDomain:v69 code:13 userInfo:v73];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v74);

    sessionCopy = v79;
    v50 = attributeCopy;
  }

  v27 = 0;
LABEL_38:
}

- (void)queueContactlessPaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v11 = a2;
  v114 = completionCopy;
  v12 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v18 = sessionCopy;
    Name = sel_getName(a2);
    nF_clientName = [v12 NF_clientName];
    v108 = Name;
    sessionCopy = v18;
    v21 = 45;
    if (isMetaClass)
    {
      v21 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i %{public}@", v21, ClassName, v108, 4826, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = object_getClass(self);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    v25 = object_getClassName(self);
    v26 = sel_getName(v11);
    nF_clientName2 = [v12 NF_clientName];
    *buf = 67110146;
    v129 = v24;
    v130 = 2082;
    v131 = v25;
    v132 = 2082;
    v133 = v26;
    v134 = 1024;
    v135 = 4826;
    v136 = 2114;
    v137 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v116 = v12;
  if (sub_100003384(self) != 2)
  {
    v47 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v140 = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v141 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
    v50 = [v47 initWithDomain:v29 code:58 userInfo:v49];
    v46 = v114;
    (*(v114 + 2))(v114, 0, 0, v50);

LABEL_49:
    v12 = v116;
    goto LABEL_50;
  }

  nF_whitelistChecker = [v12 NF_whitelistChecker];
  v29 = [(_NFContactlessSession *)_NFContactlessPaymentSession validateEntitlements:nF_whitelistChecker];

  if (v29)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(self);
      v33 = class_isMetaClass(v32);
      v113 = object_getClassName(self);
      v34 = sessionCopy;
      v35 = sel_getName(v11);
      nF_clientName3 = [v12 NF_clientName];
      processIdentifier = [v12 processIdentifier];
      v109 = v35;
      sessionCopy = v34;
      v37 = 45;
      if (v33)
      {
        v37 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v37, v113, v109, 4835, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(self);
      v40 = v11;
      if (class_isMetaClass(v39))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(v40);
      nF_clientName4 = [v12 NF_clientName];
      processIdentifier2 = [v116 processIdentifier];
      *buf = 67110402;
      v129 = v41;
      v130 = 2082;
      v131 = v42;
      v132 = 2082;
      v133 = v43;
      v134 = 1024;
      v135 = 4835;
      v136 = 2114;
      v137 = nF_clientName4;
      v138 = 1024;
      v139 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    v46 = v114;
    (*(v114 + 2))(v114, 0, 0, v29);
    goto LABEL_49;
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || !driverWrapper->_hasAntenna)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFLogGetLogger();
    if (v57)
    {
      v58 = v57;
      v59 = object_getClass(self);
      v60 = class_isMetaClass(v59);
      v61 = object_getClassName(self);
      v62 = sel_getName(v11);
      nF_clientName5 = [v12 NF_clientName];
      v64 = 45;
      if (v60)
      {
        v64 = 43;
      }

      v58(6, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", v64, v61, v62, 4841, nF_clientName5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v65 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = object_getClass(self);
      v67 = v11;
      if (class_isMetaClass(v66))
      {
        v68 = 43;
      }

      else
      {
        v68 = 45;
      }

      v69 = object_getClassName(self);
      v70 = sel_getName(v67);
      nF_clientName6 = [v12 NF_clientName];
      *buf = 67110146;
      v129 = v68;
      v130 = 2082;
      v131 = v69;
      v132 = 2082;
      v133 = v70;
      v134 = 1024;
      v135 = 4841;
      v136 = 2114;
      v137 = nF_clientName6;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", buf, 0x2Cu);
    }

    v72 = [NSError alloc];
    v73 = [NSString stringWithUTF8String:"nfcd"];
    v126 = NSLocalizedDescriptionKey;
    v74 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v127 = v74;
    v75 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    v76 = v72;
    v77 = v73;
    v78 = 14;
    goto LABEL_48;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v79 = NFLogGetLogger();
    if (v79)
    {
      v80 = v79;
      v81 = object_getClass(self);
      v82 = class_isMetaClass(v81);
      v83 = object_getClassName(self);
      v110 = sel_getName(v11);
      v84 = 45;
      if (v82)
      {
        v84 = 43;
      }

      v80(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v84, v83, v110, 4847);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v85 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v86 = object_getClass(self);
      if (class_isMetaClass(v86))
      {
        v87 = 43;
      }

      else
      {
        v87 = 45;
      }

      v88 = object_getClassName(self);
      v89 = sel_getName(v11);
      *buf = 67109890;
      v129 = v87;
      v130 = 2082;
      v131 = v88;
      v132 = 2082;
      v133 = v89;
      v134 = 1024;
      v135 = 4847;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v90 = [NSError alloc];
    v73 = [NSString stringWithUTF8String:"nfcd"];
    v124 = NSLocalizedDescriptionKey;
    v74 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v125 = v74;
    v75 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    v76 = v90;
    v77 = v73;
    v78 = 50;
LABEL_48:
    v91 = [v76 initWithDomain:v77 code:v78 userInfo:v75];
    v46 = v114;
    (*(v114 + 2))(v114, 0, 0, v91);

    v29 = 0;
    goto LABEL_49;
  }

  v52 = [(_NFXPCSession *)[_NFContactlessPaymentSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v53 = v52;
  if (v52)
  {
    [(_NFSession *)v52 setQueue:self];
    [(_NFXPCSession *)v53 setConnection:v12];
    [(_NFSession *)v53 setUid:0xFFFFFFFFLL];
    exportedInterface = [v12 exportedInterface];
    sub_10006066C(NFHardwareManagerInterface, exportedInterface);

    v55 = v11;
    v46 = v114;
    (*(v114 + 2))(v114, v53, [(_NFHardwareManager *)self isFirstInQueue], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100101884;
    block[3] = &unk_100318B08;
    block[4] = self;
    v118 = v53;
    v121 = v55;
    v119 = v12;
    v120 = attributeCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v92 = NFLogGetLogger();
    if (v92)
    {
      v93 = v92;
      v94 = object_getClass(self);
      v95 = class_isMetaClass(v94);
      v96 = object_getClassName(self);
      v111 = sel_getName(v11);
      v97 = 45;
      if (v95)
      {
        v97 = 43;
      }

      v93(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v97, v96, v111, 4855);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v98 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = object_getClass(self);
      if (class_isMetaClass(v99))
      {
        v100 = 43;
      }

      else
      {
        v100 = 45;
      }

      v101 = object_getClassName(self);
      v102 = sel_getName(v11);
      *buf = 67109890;
      v129 = v100;
      v130 = 2082;
      v131 = v101;
      v132 = 2082;
      v133 = v102;
      v134 = 1024;
      v135 = 4855;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v103 = [NSError alloc];
    v104 = [NSString stringWithUTF8String:"nfcd"];
    v122 = NSLocalizedDescriptionKey;
    v105 = [NSString stringWithUTF8String:"Unexpected Result"];
    v123 = v105;
    v106 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    v107 = [v103 initWithDomain:v104 code:13 userInfo:v106];
    v46 = v114;
    (*(v114 + 2))(v114, 0, 0, v107);

    v12 = v116;
  }

  v29 = 0;
LABEL_50:
}

- (void)queueContactlessSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v11 = a2;
  v113 = completionCopy;
  v12 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v18 = sessionCopy;
    Name = sel_getName(a2);
    nF_clientName = [v12 NF_clientName];
    v107 = Name;
    sessionCopy = v18;
    v21 = 45;
    if (isMetaClass)
    {
      v21 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i %{public}@", v21, ClassName, v107, 4909, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = object_getClass(self);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    v25 = object_getClassName(self);
    v26 = sel_getName(v11);
    nF_clientName2 = [v12 NF_clientName];
    *buf = 67110146;
    v128 = v24;
    v129 = 2082;
    v130 = v25;
    v131 = 2082;
    v132 = v26;
    v133 = 1024;
    v134 = 4909;
    v135 = 2114;
    v136 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v115 = v12;
  if (sub_100003384(self) != 2)
  {
    v47 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v139 = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v140 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
    v50 = [v47 initWithDomain:v29 code:58 userInfo:v49];
    v46 = v113;
    (*(v113 + 2))(v113, 0, 0, v50);

LABEL_49:
    v12 = v115;
    goto LABEL_50;
  }

  nF_whitelistChecker = [v12 NF_whitelistChecker];
  v29 = [_NFContactlessSession validateEntitlements:nF_whitelistChecker];

  if (v29)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(self);
      v33 = class_isMetaClass(v32);
      v112 = object_getClassName(self);
      v34 = sessionCopy;
      v35 = sel_getName(v11);
      nF_clientName3 = [v12 NF_clientName];
      processIdentifier = [v12 processIdentifier];
      v108 = v35;
      sessionCopy = v34;
      v37 = 45;
      if (v33)
      {
        v37 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v37, v112, v108, 4918, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(self);
      v40 = v11;
      if (class_isMetaClass(v39))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(v40);
      nF_clientName4 = [v12 NF_clientName];
      processIdentifier2 = [v115 processIdentifier];
      *buf = 67110402;
      v128 = v41;
      v129 = 2082;
      v130 = v42;
      v131 = 2082;
      v132 = v43;
      v133 = 1024;
      v134 = 4918;
      v135 = 2114;
      v136 = nF_clientName4;
      v137 = 1024;
      v138 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    v46 = v113;
    (*(v113 + 2))(v113, 0, 0, v29);
    goto LABEL_49;
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || !driverWrapper->_hasAntenna)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFLogGetLogger();
    if (v56)
    {
      v57 = v56;
      v58 = object_getClass(self);
      v59 = class_isMetaClass(v58);
      v60 = object_getClassName(self);
      v61 = sel_getName(v11);
      nF_clientName5 = [v12 NF_clientName];
      v63 = 45;
      if (v59)
      {
        v63 = 43;
      }

      v57(3, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", v63, v60, v61, 4924, nF_clientName5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v64 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = object_getClass(self);
      v66 = v11;
      if (class_isMetaClass(v65))
      {
        v67 = 43;
      }

      else
      {
        v67 = 45;
      }

      v68 = object_getClassName(self);
      v69 = sel_getName(v66);
      nF_clientName6 = [v12 NF_clientName];
      *buf = 67110146;
      v128 = v67;
      v129 = 2082;
      v130 = v68;
      v131 = 2082;
      v132 = v69;
      v133 = 1024;
      v134 = 4924;
      v135 = 2114;
      v136 = nF_clientName6;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", buf, 0x2Cu);
    }

    v71 = [NSError alloc];
    v72 = [NSString stringWithUTF8String:"nfcd"];
    v125 = NSLocalizedDescriptionKey;
    v73 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v126 = v73;
    v74 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    v75 = v71;
    v76 = v72;
    v77 = 14;
    goto LABEL_48;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v78 = NFLogGetLogger();
    if (v78)
    {
      v79 = v78;
      v80 = object_getClass(self);
      v81 = class_isMetaClass(v80);
      v82 = object_getClassName(self);
      v109 = sel_getName(v11);
      v83 = 45;
      if (v81)
      {
        v83 = 43;
      }

      v79(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v83, v82, v109, 4930);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v84 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v85 = object_getClass(self);
      if (class_isMetaClass(v85))
      {
        v86 = 43;
      }

      else
      {
        v86 = 45;
      }

      v87 = object_getClassName(self);
      v88 = sel_getName(v11);
      *buf = 67109890;
      v128 = v86;
      v129 = 2082;
      v130 = v87;
      v131 = 2082;
      v132 = v88;
      v133 = 1024;
      v134 = 4930;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v89 = [NSError alloc];
    v72 = [NSString stringWithUTF8String:"nfcd"];
    v123 = NSLocalizedDescriptionKey;
    v73 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v124 = v73;
    v74 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
    v75 = v89;
    v76 = v72;
    v77 = 50;
LABEL_48:
    v90 = [v75 initWithDomain:v76 code:v77 userInfo:v74];
    v46 = v113;
    (*(v113 + 2))(v113, 0, 0, v90);

    v29 = 0;
    goto LABEL_49;
  }

  v52 = [(_NFXPCSession *)[_NFContactlessSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v53 = v52;
  if (v52)
  {
    [(_NFSession *)v52 setQueue:self];
    [(_NFXPCSession *)v53 setConnection:v12];
    [(_NFSession *)v53 setUid:0xFFFFFFFFLL];
    v54 = v11;
    v46 = v113;
    (*(v113 + 2))(v113, v53, [(_NFHardwareManager *)self isFirstInQueue], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100102B9C;
    block[3] = &unk_100318B08;
    block[4] = self;
    v117 = v53;
    v120 = v54;
    v118 = v12;
    v119 = attributeCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v91 = NFLogGetLogger();
    if (v91)
    {
      v92 = v91;
      v93 = object_getClass(self);
      v94 = class_isMetaClass(v93);
      v95 = object_getClassName(self);
      v110 = sel_getName(v11);
      v96 = 45;
      if (v94)
      {
        v96 = 43;
      }

      v92(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v96, v95, v110, 4939);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v97 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v98 = object_getClass(self);
      if (class_isMetaClass(v98))
      {
        v99 = 43;
      }

      else
      {
        v99 = 45;
      }

      v100 = object_getClassName(self);
      v101 = sel_getName(v11);
      *buf = 67109890;
      v128 = v99;
      v129 = 2082;
      v130 = v100;
      v131 = 2082;
      v132 = v101;
      v133 = 1024;
      v134 = 4939;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v102 = [NSError alloc];
    v103 = [NSString stringWithUTF8String:"nfcd"];
    v121 = NSLocalizedDescriptionKey;
    v104 = [NSString stringWithUTF8String:"Unexpected Result"];
    v122 = v104;
    v105 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v106 = [v102 initWithDomain:v103 code:13 userInfo:v105];
    v46 = v113;
    (*(v113 + 2))(v113, 0, 0, v106);

    v12 = v115;
  }

  v29 = 0;
LABEL_50:
}

- (void)queueSecureElementManagerSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v11 = a2;
  v12 = completionCopy;
  v13 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v15 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v19 = sessionCopy;
    Name = sel_getName(a2);
    nF_clientName = [v13 NF_clientName];
    v84 = Name;
    sessionCopy = v19;
    v22 = 45;
    if (isMetaClass)
    {
      v22 = 43;
    }

    v15(6, "%c[%{public}s %{public}s]:%i %{public}@", v22, ClassName, v84, 4993, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = object_getClass(self);
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    v26 = object_getClassName(self);
    v27 = sel_getName(v11);
    nF_clientName2 = [v13 NF_clientName];
    *buf = 67110146;
    v99 = v25;
    v100 = 2082;
    v101 = v26;
    v102 = 2082;
    v103 = v27;
    v104 = 1024;
    v105 = 4993;
    v106 = 2114;
    v107 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2 && sub_100003384(self) != 5)
  {
    v64 = [NSError alloc];
    v30 = [NSString stringWithUTF8String:"nfcd"];
    v110 = NSLocalizedDescriptionKey;
    [NSString stringWithUTF8String:"Unresponsive hardware"];
    v66 = v65 = v12;
    v111 = v66;
    v67 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v68 = [v64 initWithDomain:v30 code:58 userInfo:v67];
    (*(v65 + 2))(v65, 0, 0, v68);

    v12 = v65;
LABEL_29:
    v56 = attributeCopy;
    goto LABEL_41;
  }

  nF_whitelistChecker = [v13 NF_whitelistChecker];
  v30 = [_NFSecureElementManagerSession validateEntitlements:nF_whitelistChecker];

  if (v30)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(self);
      v34 = class_isMetaClass(v33);
      v88 = object_getClassName(self);
      v35 = sel_getName(v11);
      v36 = v11;
      v37 = v12;
      v38 = sessionCopy;
      v39 = v35;
      nF_clientName3 = [v13 NF_clientName];
      processIdentifier = [v13 processIdentifier];
      v85 = v39;
      sessionCopy = v38;
      v12 = v37;
      v11 = v36;
      v41 = 45;
      if (v34)
      {
        v41 = 43;
      }

      v32(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v41, v88, v85, 5002, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(self);
      v44 = v11;
      if (class_isMetaClass(v43))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(self);
      v47 = sel_getName(v44);
      [v13 NF_clientName];
      v49 = v48 = v12;
      processIdentifier2 = [v13 processIdentifier];
      *buf = 67110402;
      v99 = v45;
      v100 = 2082;
      v101 = v46;
      v102 = 2082;
      v103 = v47;
      v104 = 1024;
      v105 = 5002;
      v106 = 2114;
      v107 = v49;
      v108 = 1024;
      v109 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);

      v12 = v48;
    }

    (*(v12 + 2))(v12, 0, 0, v30);
    goto LABEL_29;
  }

  nF_whitelistChecker2 = [v13 NF_whitelistChecker];
  allowBackgroundedSession = [nF_whitelistChecker2 allowBackgroundedSession];

  v53 = [[_NFSecureElementManagerSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue allowsBackgroundMode:allowBackgroundedSession];
  v54 = v53;
  if (v53)
  {
    v55 = v11;
    [(_NFSession *)v53 setQueue:self];
    [(_NFXPCSession *)v54 setConnection:v13];
    objc_opt_class();
    v56 = attributeCopy;
    if (objc_opt_isKindOfClass())
    {
      v57 = [attributeCopy objectForKey:@"session.high.priority"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v59 = [attributeCopy objectForKeyedSubscript:@"session.high.priority"];
        -[_NFSession setPriority:](v54, "setPriority:", [v59 BOOLValue]);
      }
    }

    [(_NFSession *)v54 setUid:0xFFFFFFFFLL];
    [(_NFSecureElementManagerSession *)v54 setDriverWrapper:self->_driverWrapper];
    exportedInterface = [v13 exportedInterface];
    sub_1000604EC(NFHardwareManagerInterface, exportedInterface);

    v61 = v12;
    (*(v12 + 2))(v12, v54, [(_NFHardwareManager *)self isFirstInQueue], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100103BA4;
    block[3] = &unk_100318B08;
    v91 = attributeCopy;
    selfCopy = self;
    v93 = v54;
    v95 = v55;
    v94 = v13;
    dispatch_async(workQueue, block);

    v63 = v91;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v69 = NFLogGetLogger();
    if (v69)
    {
      v70 = v69;
      v71 = object_getClass(self);
      v72 = class_isMetaClass(v71);
      v73 = object_getClassName(self);
      v86 = sel_getName(v11);
      v74 = 45;
      if (v72)
      {
        v74 = 43;
      }

      v70(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v74, v73, v86, 5012);
    }

    v61 = v12;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = object_getClass(self);
      if (class_isMetaClass(v76))
      {
        v77 = 43;
      }

      else
      {
        v77 = 45;
      }

      v78 = object_getClassName(self);
      v79 = sel_getName(v11);
      *buf = 67109890;
      v99 = v77;
      v100 = 2082;
      v101 = v78;
      v102 = 2082;
      v103 = v79;
      v104 = 1024;
      v105 = 5012;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v80 = [NSError alloc];
    v63 = [NSString stringWithUTF8String:"nfcd"];
    v96 = NSLocalizedDescriptionKey;
    v81 = [NSString stringWithUTF8String:"Unexpected Result"];
    v97 = v81;
    v82 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v83 = [v80 initWithDomain:v63 code:13 userInfo:v82];
    (*(v61 + 2))(v61, 0, 0, v83);

    v56 = attributeCopy;
  }

  v30 = 0;
  v12 = v61;
LABEL_41:
}

- (void)queueLoyaltyAndPaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v8 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v8 NF_clientName];
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i %{public}@", v16, ClassName, Name, 5066, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    nF_clientName2 = [v8 NF_clientName];
    *buf = 67110146;
    v123 = v19;
    v124 = 2082;
    v125 = v20;
    v126 = 2082;
    v127 = v21;
    v128 = 1024;
    v129 = 5066;
    v130 = 2114;
    v131 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2)
  {
    v41 = [NSError alloc];
    v24 = [NSString stringWithUTF8String:"nfcd"];
    v134 = NSLocalizedDescriptionKey;
    v42 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v135 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v44 = [v41 initWithDomain:v24 code:58 userInfo:v43];
    v40 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v44);

LABEL_52:
    v48 = attributeCopy;
    goto LABEL_53;
  }

  nF_whitelistChecker = [v8 NF_whitelistChecker];
  v24 = [_NFLoyaltyAndPaymentSession validateEntitlements:nF_whitelistChecker];

  if (v24)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(self);
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(self);
      v30 = sel_getName(a2);
      nF_clientName3 = [v8 NF_clientName];
      processIdentifier = [v8 processIdentifier];
      v32 = 45;
      if (v28)
      {
        v32 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v32, v29, v30, 5075, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(self);
      v37 = sel_getName(a2);
      nF_clientName4 = [v8 NF_clientName];
      processIdentifier2 = [v8 processIdentifier];
      *buf = 67110402;
      v123 = v35;
      v124 = 2082;
      v125 = v36;
      v126 = 2082;
      v127 = v37;
      v128 = 1024;
      v129 = 5075;
      v130 = 2114;
      v131 = nF_clientName4;
      v132 = 1024;
      v133 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    v40 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v24);
    goto LABEL_52;
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || !driverWrapper->_hasAntenna)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v55 = v54;
      v56 = object_getClass(self);
      v57 = class_isMetaClass(v56);
      v58 = object_getClassName(self);
      v59 = sel_getName(a2);
      nF_clientName5 = [v8 NF_clientName];
      v61 = 45;
      if (v57)
      {
        v61 = 43;
      }

      v55(6, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", v61, v58, v59, 5081, nF_clientName5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = object_getClass(self);
      if (class_isMetaClass(v63))
      {
        v64 = 43;
      }

      else
      {
        v64 = 45;
      }

      v65 = object_getClassName(self);
      v66 = sel_getName(a2);
      nF_clientName6 = [v8 NF_clientName];
      *buf = 67110146;
      v123 = v64;
      v124 = 2082;
      v125 = v65;
      v126 = 2082;
      v127 = v66;
      v128 = 1024;
      v129 = 5081;
      v130 = 2114;
      v131 = nF_clientName6;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", buf, 0x2Cu);
    }

    v68 = [NSError alloc];
    v69 = [NSString stringWithUTF8String:"nfcd"];
    v120 = NSLocalizedDescriptionKey;
    v70 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v121 = v70;
    v71 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v72 = v68;
    v73 = v69;
    v74 = 14;
    goto LABEL_51;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFLogGetLogger();
    if (v75)
    {
      v76 = v75;
      v77 = object_getClass(self);
      v78 = class_isMetaClass(v77);
      v79 = object_getClassName(self);
      v104 = sel_getName(a2);
      v80 = 45;
      if (v78)
      {
        v80 = 43;
      }

      v76(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v80, v79, v104, 5087);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v81 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = object_getClass(self);
      if (class_isMetaClass(v82))
      {
        v83 = 43;
      }

      else
      {
        v83 = 45;
      }

      v84 = object_getClassName(self);
      v85 = sel_getName(a2);
      *buf = 67109890;
      v123 = v83;
      v124 = 2082;
      v125 = v84;
      v126 = 2082;
      v127 = v85;
      v128 = 1024;
      v129 = 5087;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v86 = [NSError alloc];
    v69 = [NSString stringWithUTF8String:"nfcd"];
    v118 = NSLocalizedDescriptionKey;
    v70 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v119 = v70;
    v71 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    v72 = v86;
    v73 = v69;
    v74 = 50;
LABEL_51:
    v87 = [v72 initWithDomain:v73 code:v74 userInfo:v71];
    (*(completionCopy + 2))(completionCopy, 0, 0, v87);

    v40 = completionCopy;
    v24 = 0;
    goto LABEL_52;
  }

  v46 = [(_NFXPCSession *)[_NFLoyaltyAndPaymentSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v47 = v46;
  if (v46)
  {
    [(_NFSession *)v46 setQueue:self];
    [(_NFXPCSession *)v47 setConnection:v8];
    [(_NFSession *)v47 setUid:0xFFFFFFFFLL];
    objc_opt_class();
    v48 = attributeCopy;
    if (objc_opt_isKindOfClass())
    {
      v49 = [attributeCopy objectForKey:@"session.force.express.exit"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v51 = [attributeCopy objectForKeyedSubscript:@"session.force.express.exit"];
        -[_NFSession setForceExpressExit:](v47, "setForceExpressExit:", [v51 BOOLValue]);
      }
    }

    exportedInterface = [v8 exportedInterface];
    sub_10006066C(NFHardwareManagerInterface, exportedInterface);

    v40 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v47, [(_NFHardwareManager *)self isFirstInQueue], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100104BCC;
    block[3] = &unk_100318B08;
    block[4] = self;
    v112 = v47;
    v115 = a2;
    v113 = v8;
    v114 = attributeCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v88 = NFLogGetLogger();
    if (v88)
    {
      v89 = v88;
      v90 = object_getClass(self);
      v91 = class_isMetaClass(v90);
      v92 = object_getClassName(self);
      v105 = sel_getName(a2);
      v93 = 45;
      if (v91)
      {
        v93 = 43;
      }

      v89(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v93, v92, v105, 5096);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v94 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v95 = object_getClass(self);
      if (class_isMetaClass(v95))
      {
        v96 = 43;
      }

      else
      {
        v96 = 45;
      }

      v97 = object_getClassName(self);
      v98 = sel_getName(a2);
      *buf = 67109890;
      v123 = v96;
      v124 = 2082;
      v125 = v97;
      v126 = 2082;
      v127 = v98;
      v128 = 1024;
      v129 = 5096;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v99 = [NSError alloc];
    v100 = [NSString stringWithUTF8String:"nfcd"];
    v116 = NSLocalizedDescriptionKey;
    v101 = [NSString stringWithUTF8String:"Unexpected Result"];
    v117 = v101;
    v102 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v103 = [v99 initWithDomain:v100 code:13 userInfo:v102];
    (*(completionCopy + 2))(completionCopy, 0, 0, v103);

    v40 = completionCopy;
    v48 = attributeCopy;
  }

  v24 = 0;
LABEL_53:
}

- (void)queueReaderSession:(id)session sessionConfig:(id)config completion:(id)completion
{
  sessionCopy = session;
  configCopy = config;
  completionCopy = completion;
  v11 = +[NSXPCConnection currentConnection];
  if (configCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = [NSError alloc];
      nF_whitelistChecker = [NSString stringWithUTF8String:"nfcd"];
      v229 = NSLocalizedDescriptionKey;
      nF_serviceType = [NSString stringWithUTF8String:"Invalid Parameter"];
      v230 = nF_serviceType;
      v32 = [NSDictionary dictionaryWithObjects:&v230 forKeys:&v229 count:1];
      v38 = [v37 initWithDomain:nF_whitelistChecker code:10 userInfo:v32];
      (*(completionCopy + 2))(completionCopy, 0, 0, v38);

      goto LABEL_49;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v201 = sessionCopy;
  v202 = v11;
  if (Logger)
  {
    v13 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v11 NF_clientName];
    v19 = +[NFReaderSessionConfig sessionTypeString:](NFReaderSessionConfig, "sessionTypeString:", [configCopy sessionType]);
    v187 = Name;
    sessionCopy = v201;
    v20 = 45;
    if (isMetaClass)
    {
      v20 = 43;
    }

    v13(6, "%c[%{public}s %{public}s]:%i %{public}@, type:%{public}@", v20, ClassName, v187, 5196, nF_clientName, v19);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    nF_clientName2 = [v202 NF_clientName];
    v27 = +[NFReaderSessionConfig sessionTypeString:](NFReaderSessionConfig, "sessionTypeString:", [configCopy sessionType]);
    *buf = 67110402;
    *&buf[4] = v23;
    sessionCopy = v201;
    *&buf[8] = 2082;
    *&buf[10] = v24;
    *&buf[18] = 2082;
    *&buf[20] = v25;
    *&buf[28] = 1024;
    *&buf[30] = 5196;
    v219 = 2114;
    *v220 = nF_clientName2;
    *&v220[8] = 2114;
    *&v220[10] = v27;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@, type:%{public}@", buf, 0x36u);
  }

  v28 = sub_100003384(self);
  if ((v28 & 0xFFFFFFFD) == 1)
  {
    v29 = [NSError alloc];
    nF_whitelistChecker = [NSString stringWithUTF8String:"nfcd"];
    v227 = NSLocalizedDescriptionKey;
    nF_serviceType = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v228 = nF_serviceType;
    v32 = [NSDictionary dictionaryWithObjects:&v228 forKeys:&v227 count:1];
    v33 = v29;
    v34 = nF_whitelistChecker;
    v35 = 58;
LABEL_47:
    v69 = [v33 initWithDomain:v34 code:v35 userInfo:v32];
    (*(completionCopy + 2))(completionCopy, 0, 0, v69);

LABEL_48:
    v11 = v202;
    goto LABEL_49;
  }

  if (v28 == 4)
  {
    v36 = [NSError alloc];
    nF_whitelistChecker = [NSString stringWithUTF8String:"nfcd"];
    v225 = NSLocalizedDescriptionKey;
    nF_serviceType = [NSString stringWithUTF8String:"No NFC on device"];
    v226 = nF_serviceType;
    v32 = [NSDictionary dictionaryWithObjects:&v226 forKeys:&v225 count:1];
    v33 = v36;
    v34 = nF_whitelistChecker;
    v35 = 57;
    goto LABEL_47;
  }

  if (![(NFHardwareControllerInfo *)self->_controllerInfo hasReaderModeSupport])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFLogGetLogger();
    if (v57)
    {
      v58 = v57;
      v59 = object_getClass(self);
      v60 = class_isMetaClass(v59);
      v61 = object_getClassName(self);
      v188 = sel_getName(a2);
      v62 = 45;
      if (v60)
      {
        v62 = 43;
      }

      v58(3, "%c[%{public}s %{public}s]:%i ReaderMode Not Supported.", v62, v61, v188, 5208);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v63 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = object_getClass(self);
      if (class_isMetaClass(v64))
      {
        v65 = 43;
      }

      else
      {
        v65 = 45;
      }

      v66 = object_getClassName(self);
      v67 = sel_getName(a2);
      *buf = 67109890;
      *&buf[4] = v65;
      *&buf[8] = 2082;
      *&buf[10] = v66;
      *&buf[18] = 2082;
      *&buf[20] = v67;
      *&buf[28] = 1024;
      *&buf[30] = 5208;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ReaderMode Not Supported.", buf, 0x22u);
    }

    v68 = [NSError alloc];
    nF_whitelistChecker = [NSString stringWithUTF8String:"nfcd"];
    v223 = NSLocalizedDescriptionKey;
    nF_serviceType = [NSString stringWithUTF8String:"Feature Not Supported"];
    v224 = nF_serviceType;
    v32 = [NSDictionary dictionaryWithObjects:&v224 forKeys:&v223 count:1];
    v33 = v68;
    v34 = nF_whitelistChecker;
    v35 = 14;
    goto LABEL_47;
  }

  nF_whitelistChecker = [v202 NF_whitelistChecker];
  if (([nF_whitelistChecker externalReaderAccessAllow] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v70 = NFLogGetLogger();
    if (v70)
    {
      v71 = v70;
      v72 = object_getClass(self);
      v73 = class_isMetaClass(v72);
      v74 = object_getClassName(self);
      v75 = sel_getName(a2);
      processIdentifier = [v202 processIdentifier];
      clientName = [nF_whitelistChecker clientName];
      v78 = 45;
      if (v73)
      {
        v78 = 43;
      }

      v71(5, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) is missing the required entitlement.", v78, v74, v75, 5216, processIdentifier, clientName);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v79 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = object_getClass(self);
      if (class_isMetaClass(v80))
      {
        v81 = 43;
      }

      else
      {
        v81 = 45;
      }

      v82 = object_getClassName(self);
      v83 = sel_getName(a2);
      processIdentifier2 = [v202 processIdentifier];
      clientName2 = [nF_whitelistChecker clientName];
      *buf = 67110402;
      *&buf[4] = v81;
      *&buf[8] = 2082;
      *&buf[10] = v82;
      *&buf[18] = 2082;
      *&buf[20] = v83;
      *&buf[28] = 1024;
      *&buf[30] = 5216;
      v219 = 1024;
      *v220 = processIdentifier2;
      *&v220[4] = 2114;
      *&v220[6] = clientName2;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) is missing the required entitlement.", buf, 0x32u);
    }

    v86 = [NSError alloc];
    nF_serviceType = [NSString stringWithUTF8String:"nfcd"];
    v221 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Not entitled"];
    v222 = v32;
    v87 = [NSDictionary dictionaryWithObjects:&v222 forKeys:&v221 count:1];
    v88 = [v86 initWithDomain:nF_serviceType code:32 userInfo:v87];
    (*(completionCopy + 2))(completionCopy, 0, 0, v88);

    goto LABEL_70;
  }

  readerPurposeString = [nF_whitelistChecker readerPurposeString];
  v40 = [readerPurposeString length];

  if (!v40)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v89 = NFLogGetLogger();
    if (v89)
    {
      v90 = v89;
      v91 = object_getClass(self);
      v92 = class_isMetaClass(v91);
      v197 = object_getClassName(self);
      v93 = sel_getName(a2);
      processIdentifier3 = [v202 processIdentifier];
      clientName3 = [nF_whitelistChecker clientName];
      v96 = 43;
      if (!v92)
      {
        v96 = 45;
      }

      v90(5, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) is missing the required %{public}@ key.", v96, v197, v93, 5222, processIdentifier3, clientName3, NFReaderPurposeStringKey);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v97 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = object_getClass(self);
      if (class_isMetaClass(v98))
      {
        v99 = 43;
      }

      else
      {
        v99 = 45;
      }

      v100 = object_getClassName(self);
      v101 = sel_getName(a2);
      processIdentifier4 = [v202 processIdentifier];
      clientName4 = [nF_whitelistChecker clientName];
      *buf = 67110658;
      *&buf[4] = v99;
      *&buf[8] = 2082;
      *&buf[10] = v100;
      *&buf[18] = 2082;
      *&buf[20] = v101;
      *&buf[28] = 1024;
      *&buf[30] = 5222;
      v219 = 1024;
      *v220 = processIdentifier4;
      *&v220[4] = 2114;
      *&v220[6] = clientName4;
      *&v220[14] = 2114;
      *&v220[16] = NFReaderPurposeStringKey;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) is missing the required %{public}@ key.", buf, 0x3Cu);
    }

    v104 = [NSError alloc];
    nF_serviceType = [NSString stringWithUTF8String:"nfcd"];
    v216 = NSLocalizedDescriptionKey;
    v217 = @"This app has crashed because it attempted to access NFC NDEF reader without a usage description.  The app's Info.plist must contain an NFCReaderUsageDescription key with a string value explaining to the user how the app uses the NFC NDEF reader.";
    v32 = [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
    v105 = [v104 initWithDomain:nF_serviceType code:36 userInfo:v32];
    (*(completionCopy + 2))(completionCopy, 0, 0, v105);

    goto LABEL_70;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:1]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v106 = NFLogGetLogger();
    if (v106)
    {
      v107 = v106;
      v108 = object_getClass(self);
      v109 = class_isMetaClass(v108);
      v110 = object_getClassName(self);
      v189 = sel_getName(a2);
      v111 = 45;
      if (v109)
      {
        v111 = 43;
      }

      v107(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v111, v110, v189, 5229);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v112 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      v113 = object_getClass(self);
      if (class_isMetaClass(v113))
      {
        v114 = 43;
      }

      else
      {
        v114 = 45;
      }

      v115 = object_getClassName(self);
      v116 = sel_getName(a2);
      *buf = 67109890;
      *&buf[4] = v114;
      *&buf[8] = 2082;
      *&buf[10] = v115;
      *&buf[18] = 2082;
      *&buf[20] = v116;
      *&buf[28] = 1024;
      *&buf[30] = 5229;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v117 = [NSError alloc];
    nF_serviceType = [NSString stringWithUTF8String:"nfcd"];
    v214 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v215 = v32;
    v118 = [NSDictionary dictionaryWithObjects:&v215 forKeys:&v214 count:1];
    v119 = [v117 initWithDomain:nF_serviceType code:50 userInfo:v118];
    (*(completionCopy + 2))(completionCopy, 0, 0, v119);

    goto LABEL_92;
  }

  nF_serviceType = [v202 NF_serviceType];
  if (!nF_serviceType || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [nF_serviceType unsignedIntegerValue] != 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v120 = NFLogGetLogger();
    if (v120)
    {
      v121 = v120;
      v122 = object_getClass(self);
      v123 = class_isMetaClass(v122);
      v186 = object_getClassName(self);
      v190 = sel_getName(a2);
      v124 = 45;
      if (v123)
      {
        v124 = 43;
      }

      v121(4, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", v124, v186, v190, 5237, nF_serviceType);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v125 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      v126 = object_getClass(self);
      if (class_isMetaClass(v126))
      {
        v127 = 43;
      }

      else
      {
        v127 = 45;
      }

      v128 = object_getClassName(self);
      v129 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v127;
      *&buf[8] = 2082;
      *&buf[10] = v128;
      *&buf[18] = 2082;
      *&buf[20] = v129;
      *&buf[28] = 1024;
      *&buf[30] = 5237;
      v219 = 2114;
      *v220 = nF_serviceType;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", buf, 0x2Cu);
    }

    v130 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v212 = NSLocalizedDescriptionKey;
    v118 = [NSString stringWithUTF8String:"Invalid State"];
    v213 = v118;
    v131 = [NSDictionary dictionaryWithObjects:&v213 forKeys:&v212 count:1];
    v132 = v130;
    v133 = v32;
    v134 = 12;
    goto LABEL_91;
  }

  if ([configCopy sessionType] == 4)
  {
    vasPasses = [configCopy vasPasses];
    v42 = [vasPasses count];

    if (!v42)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v136 = NFLogGetLogger();
      if (v136)
      {
        v137 = v136;
        v138 = object_getClass(self);
        v139 = class_isMetaClass(v138);
        v140 = object_getClassName(self);
        v191 = sel_getName(a2);
        v141 = 45;
        if (v139)
        {
          v141 = 43;
        }

        v137(4, "%c[%{public}s %{public}s]:%i Missing VAS pass configuration", v141, v140, v191, 5244);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v142 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        v143 = object_getClass(self);
        if (class_isMetaClass(v143))
        {
          v144 = 43;
        }

        else
        {
          v144 = 45;
        }

        v145 = object_getClassName(self);
        v146 = sel_getName(a2);
        *buf = 67109890;
        *&buf[4] = v144;
        *&buf[8] = 2082;
        *&buf[10] = v145;
        *&buf[18] = 2082;
        *&buf[20] = v146;
        *&buf[28] = 1024;
        *&buf[30] = 5244;
        _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing VAS pass configuration", buf, 0x22u);
      }

      v147 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v210 = NSLocalizedDescriptionKey;
      v118 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v211 = v118;
      v131 = [NSDictionary dictionaryWithObjects:&v211 forKeys:&v210 count:1];
      v132 = v147;
      v133 = v32;
      v134 = 10;
LABEL_91:
      v135 = [v132 initWithDomain:v133 code:v134 userInfo:v131];
      (*(completionCopy + 2))(completionCopy, 0, 0, v135);

LABEL_92:
      goto LABEL_48;
    }
  }

  v43 = [(_NFSession *)_NFReaderSession validateEntitlements:nF_whitelistChecker];
  if (v43)
  {
    v32 = v43;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(self);
      v193 = class_isMetaClass(v46);
      v195 = object_getClassName(self);
      v47 = sel_getName(a2);
      nF_clientName3 = [v202 NF_clientName];
      processIdentifier5 = [v202 processIdentifier];
      v49 = 45;
      if (v193)
      {
        v49 = 43;
      }

      v45(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v49, v195, v47, 5252, nF_clientName3, processIdentifier5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = object_getClass(self);
      if (class_isMetaClass(v51))
      {
        v52 = 43;
      }

      else
      {
        v52 = 45;
      }

      v196 = v52;
      v53 = object_getClassName(self);
      v54 = sel_getName(a2);
      nF_clientName4 = [v202 NF_clientName];
      processIdentifier6 = [v202 processIdentifier];
      *buf = 67110402;
      *&buf[4] = v196;
      *&buf[8] = 2082;
      *&buf[10] = v53;
      *&buf[18] = 2082;
      *&buf[20] = v54;
      *&buf[28] = 1024;
      *&buf[30] = 5252;
      v219 = 2114;
      *v220 = nF_clientName4;
      *&v220[8] = 1024;
      *&v220[10] = processIdentifier6;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v32);
    goto LABEL_70;
  }

  if ([configCopy sessionType] != 5)
  {
    unsignedIntegerValue = [nF_serviceType unsignedIntegerValue];
    selfCopy2 = self;
    v150 = sessionCopy;
    v151 = configCopy;
    v152 = nF_whitelistChecker;
    v11 = v202;
LABEL_107:
    sub_100105460(selfCopy2, v150, v151, unsignedIntegerValue, v152, v11, completionCopy);
    v32 = 0;
    goto LABEL_49;
  }

  v11 = v202;
  if (v202)
  {
    [v202 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v153 = [_NFReaderSession isCNFCPaymentEligibleWithUserPrompt:1 auditToken:buf ignoreAuditToken:1];
  v32 = 0;
  if (v153 > 1)
  {
    if (v153 == 2)
    {
      v200 = [NSError alloc];
      v154 = [NSString stringWithUTF8String:"nfcd"];
      v206[0] = NSLocalizedDescriptionKey;
      v155 = [NSString stringWithUTF8String:"TCC access denied"];
      v207[0] = v155;
      v207[1] = &off_100331B48;
      v206[1] = @"Line";
      v206[2] = @"Method";
      v156 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v207[2] = v156;
      v206[3] = NSDebugDescriptionErrorKey;
      5281 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 5281];
      v207[3] = 5281;
      v158 = [NSDictionary dictionaryWithObjects:v207 forKeys:v206 count:4];
      v159 = v200;
      v160 = v154;
      v161 = 69;
    }

    else
    {
      if (v153 != 3)
      {
LABEL_70:
        sessionCopy = v201;
        v11 = v202;
        goto LABEL_49;
      }

      v198 = [NSError alloc];
      v154 = [NSString stringWithUTF8String:"nfcd"];
      v204[0] = NSLocalizedDescriptionKey;
      v155 = [NSString stringWithUTF8String:"Session ineligible"];
      v205[0] = v155;
      v205[1] = &off_100331B60;
      v204[1] = @"Line";
      v204[2] = @"Method";
      v156 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v205[2] = v156;
      v204[3] = NSDebugDescriptionErrorKey;
      5281 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 5284];
      v205[3] = 5281;
      v158 = [NSDictionary dictionaryWithObjects:v205 forKeys:v204 count:4];
      v159 = v198;
      v160 = v154;
      v161 = 70;
    }

    v185 = [v159 initWithDomain:v160 code:v161 userInfo:v158];
    (*(completionCopy + 2))(completionCopy, 0, 0, v185);

    v32 = 0;
    goto LABEL_70;
  }

  if (v153)
  {
    if (v153 != 1)
    {
      goto LABEL_49;
    }

    unsignedIntegerValue = [nF_serviceType unsignedIntegerValue];
    selfCopy2 = self;
    v150 = sessionCopy;
    v151 = configCopy;
    v152 = nF_whitelistChecker;
    goto LABEL_107;
  }

  v194 = configCopy;
  v199 = [NSError alloc];
  v162 = [NSString stringWithUTF8String:"nfcd"];
  v208[0] = NSLocalizedDescriptionKey;
  v163 = [NSString stringWithUTF8String:"Access not accepted"];
  v209[0] = v163;
  v209[1] = &off_100331B30;
  v208[1] = @"Line";
  v208[2] = @"Method";
  v164 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v209[2] = v164;
  v208[3] = NSDebugDescriptionErrorKey;
  5263 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 5263];
  v209[3] = 5263;
  v166 = [NSDictionary dictionaryWithObjects:v209 forKeys:v208 count:4];
  v167 = v162;
  v168 = [v199 initWithDomain:v162 code:74 userInfo:v166];
  (*(completionCopy + 2))(completionCopy, 0, 0, v168);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v169 = NFLogGetLogger();
  if (v169)
  {
    v170 = v169;
    v171 = object_getClass(self);
    v172 = class_isMetaClass(v171);
    v173 = object_getClassName(self);
    v174 = sel_getName(a2);
    bundleIdentifier = [nF_whitelistChecker bundleIdentifier];
    v176 = 45;
    if (v172)
    {
      v176 = 43;
    }

    v170(6, "%c[%{public}s %{public}s]:%i [PaymentReader] Prompting for bundle %@", v176, v173, v174, 5265, bundleIdentifier);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v177 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
  {
    v178 = object_getClass(self);
    if (class_isMetaClass(v178))
    {
      v179 = 43;
    }

    else
    {
      v179 = 45;
    }

    v180 = object_getClassName(self);
    v181 = sel_getName(a2);
    bundleIdentifier2 = [nF_whitelistChecker bundleIdentifier];
    *buf = 67110146;
    *&buf[4] = v179;
    *&buf[8] = 2082;
    *&buf[10] = v180;
    *&buf[18] = 2082;
    *&buf[20] = v181;
    *&buf[28] = 1024;
    *&buf[30] = 5265;
    v219 = 2112;
    *v220 = bundleIdentifier2;
    _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [PaymentReader] Prompting for bundle %@", buf, 0x2Cu);
  }

  v183 = objc_opt_new();
  bundleIdentifier3 = [nF_whitelistChecker bundleIdentifier];
  [v183 coreNFCShowPaymentSessionGoToSettingsPrompt:bundleIdentifier3];

  [v183 disconnect];
  v32 = 0;
  sessionCopy = v201;
  v11 = v202;
  configCopy = v194;
LABEL_49:
}

- (void)areFeaturesSupported:(unint64_t)supported completion:(id)completion
{
  completionCopy = completion;
  v8 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100106F98;
  block[3] = &unk_100318B30;
  v14 = completionCopy;
  supportedCopy = supported;
  block[4] = self;
  v13 = v8;
  v16 = a2;
  v10 = v8;
  v11 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)configureReaderModeRFForTransitPartner:(BOOL)partner transitPartner:(unsigned int)transitPartner completion:(id)completion
{
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001075EC;
  v13[3] = &unk_100318B58;
  partnerCopy = partner;
  transitPartnerCopy = transitPartner;
  v13[4] = self;
  v14 = v9;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = v9;
  dispatch_async(workQueue, v13);
}

- (void)queueReaderSessionInternal:(id)internal sessionAttribute:(id)attribute completion:(id)completion
{
  internalCopy = internal;
  attributeCopy = attribute;
  completionCopy = completion;
  v11 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v13 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    [v11 NF_clientName];
    v19 = v18 = internalCopy;
    v20 = 45;
    if (isMetaClass)
    {
      v20 = 43;
    }

    v13(6, "%c[%{public}s %{public}s]:%i %{public}@ %{public}@", v20, ClassName, Name, 5413, v19, attributeCopy);

    internalCopy = v18;
  }

  v138 = v11;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  v22 = attributeCopy;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = object_getClass(self);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    v25 = object_getClassName(self);
    v26 = sel_getName(a2);
    nF_clientName = [v138 NF_clientName];
    *buf = 67110402;
    v159 = v24;
    v160 = 2082;
    v161 = v25;
    v162 = 2082;
    v163 = v26;
    v164 = 1024;
    v165 = 5413;
    v166 = 2114;
    *v167 = nF_clientName;
    *&v167[8] = 2114;
    *&v167[10] = attributeCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ %{public}@", buf, 0x36u);
  }

  v28 = v138;
  nF_whitelistChecker = [v138 NF_whitelistChecker];
  v137 = nF_whitelistChecker;
  if (sub_100003384(self) != 2)
  {
    v50 = [NSError alloc];
    v51 = [NSString stringWithUTF8String:"nfcd"];
    v156 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v157 = v33;
    v52 = [NSDictionary dictionaryWithObjects:&v157 forKeys:&v156 count:1];
    v53 = v50;
    v54 = v51;
    v55 = 58;
LABEL_30:
    v57 = [v53 initWithDomain:v54 code:v55 userInfo:v52];
    v49 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v57);

    goto LABEL_31;
  }

  if (![(NFHardwareControllerInfo *)self->_controllerInfo hasReaderModeSupport])
  {
    v56 = [NSError alloc];
    v51 = [NSString stringWithUTF8String:"nfcd"];
    v154 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v155 = v33;
    v52 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
    v53 = v56;
    v54 = v51;
    v55 = 14;
    goto LABEL_30;
  }

  if (([nF_whitelistChecker readerInternalAccess] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFLogGetLogger();
    if (v58)
    {
      v59 = v58;
      v60 = object_getClass(self);
      v61 = class_isMetaClass(v60);
      v134 = object_getClassName(self);
      v62 = v22;
      v63 = internalCopy;
      v64 = sel_getName(a2);
      processIdentifier = [v138 processIdentifier];
      clientName = [nF_whitelistChecker clientName];
      v126 = v64;
      internalCopy = v63;
      v22 = v62;
      v67 = 45;
      if (v61)
      {
        v67 = 43;
      }

      v59(5, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) is missing the required entitlement.", v67, v134, v126, 5428, processIdentifier, clientName);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = object_getClass(self);
      if (class_isMetaClass(v69))
      {
        v70 = 43;
      }

      else
      {
        v70 = 45;
      }

      v71 = object_getClassName(self);
      v72 = sel_getName(a2);
      processIdentifier2 = [v138 processIdentifier];
      clientName2 = [v137 clientName];
      *buf = 67110402;
      v159 = v70;
      v160 = 2082;
      v161 = v71;
      v162 = 2082;
      v163 = v72;
      v164 = 1024;
      v165 = 5428;
      v166 = 1024;
      *v167 = processIdentifier2;
      *&v167[4] = 2114;
      *&v167[6] = clientName2;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) is missing the required entitlement.", buf, 0x32u);
    }

    v75 = [NSError alloc];
    v51 = [NSString stringWithUTF8String:"nfcd"];
    v152 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Not entitled"];
    v153 = v33;
    v76 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
    v77 = v75;
    v78 = v51;
    v79 = 32;
    goto LABEL_52;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, v22)]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v80 = NFLogGetLogger();
    if (v80)
    {
      v81 = v80;
      v82 = object_getClass(self);
      v83 = class_isMetaClass(v82);
      v84 = object_getClassName(self);
      v127 = sel_getName(a2);
      v85 = 45;
      if (v83)
      {
        v85 = 43;
      }

      v81(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v85, v84, v127, 5434);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v86 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = object_getClass(self);
      if (class_isMetaClass(v87))
      {
        v88 = 43;
      }

      else
      {
        v88 = 45;
      }

      v89 = object_getClassName(self);
      v90 = sel_getName(a2);
      *buf = 67109890;
      v159 = v88;
      v160 = 2082;
      v161 = v89;
      v162 = 2082;
      v163 = v90;
      v164 = 1024;
      v165 = 5434;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v91 = [NSError alloc];
    v51 = [NSString stringWithUTF8String:"nfcd"];
    v150 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v151 = v33;
    v76 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
    v77 = v91;
    v78 = v51;
    v79 = 50;
LABEL_52:
    v92 = [v77 initWithDomain:v78 code:v79 userInfo:v76];
    v49 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v92);

    v28 = v138;
    goto LABEL_31;
  }

  nF_serviceType = [v138 NF_serviceType];
  v132 = nF_serviceType;
  if (nF_serviceType && (v31 = nF_serviceType, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v31 unsignedIntegerValue] == 1)
  {
    v32 = [(_NFSession *)_NFReaderSession validateEntitlements:nF_whitelistChecker];
    if (v32)
    {
      v33 = v32;
      v34 = internalCopy;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(self);
        v38 = class_isMetaClass(v37);
        v133 = object_getClassName(self);
        v39 = sel_getName(a2);
        nF_clientName2 = [v138 NF_clientName];
        processIdentifier3 = [v138 processIdentifier];
        v41 = 45;
        if (v38)
        {
          v41 = 43;
        }

        v36(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v41, v133, v39, 5449, nF_clientName2, processIdentifier3);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = object_getClass(self);
        if (class_isMetaClass(v43))
        {
          v44 = 43;
        }

        else
        {
          v44 = 45;
        }

        v45 = object_getClassName(self);
        v46 = sel_getName(a2);
        nF_clientName3 = [v138 NF_clientName];
        processIdentifier4 = [v138 processIdentifier];
        *buf = 67110402;
        v159 = v44;
        v160 = 2082;
        v161 = v45;
        v162 = 2082;
        v163 = v46;
        v164 = 1024;
        v165 = 5449;
        v166 = 2114;
        *v167 = nF_clientName3;
        *&v167[8] = 1024;
        *&v167[10] = processIdentifier4;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
      }

      v49 = completionCopy;
      (*(completionCopy + 2))(completionCopy, 0, 0, v33);
      internalCopy = v34;
      v28 = v138;
    }

    else
    {
      v107 = [v22 NF_arrayForKey:@"session.suspendOnECP"];
      v135 = objc_opt_new();
      v131 = v107;
      if ([v107 count])
      {
        v130 = v22;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v108 = v107;
        v109 = [v108 countByEnumeratingWithState:&v141 objects:v147 count:16];
        if (v109)
        {
          v110 = v109;
          v111 = *v142;
          do
          {
            for (i = 0; i != v110; i = i + 1)
            {
              if (*v142 != v111)
              {
                objc_enumerationMutation(v108);
              }

              v113 = *(*(&v141 + 1) + 8 * i);
              if ([v113 length])
              {
                v145[0] = @"ECPData";
                v145[1] = @"IgnoreRFTechOnIsEqual";
                v146[0] = v113;
                v146[1] = &off_100331458;
                v114 = [NSDictionary dictionaryWithObjects:v146 forKeys:v145 count:2];
                v115 = [NFFieldNotification notificationWithDictionary:v114];

                if (v115)
                {
                  [v135 addObject:v115];
                }
              }
            }

            v110 = [v108 countByEnumeratingWithState:&v141 objects:v147 count:16];
          }

          while (v110);
        }

        v22 = v130;
        v28 = v138;
      }

      buf[0] = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v116 = [v22 objectForKey:@"session.show.corenfc.ui"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v49 = completionCopy;
        if (isKindOfClass)
        {
          v118 = [v22 objectForKeyedSubscript:@"session.show.corenfc.ui"];
          if ([v118 BOOLValue])
          {
            v119 = 3;
          }

          else
          {
            v119 = 0;
          }
        }

        else
        {
          v119 = 0;
        }
      }

      else
      {
        v119 = 0;
        v49 = completionCopy;
      }

      v120 = [NFReaderSessionConfig sessionConfigWithUIMode:v119 sessionType:0 initialScanText:0 vasPass:0];
      v140 = 0;
      v33 = sub_1000ED4AC(self, internalCopy, v120, [v132 unsignedIntegerValue], v137, v28, buf, &v140);
      v121 = v140;
      v122 = v121;
      if (!v33)
      {
        [(_NFSession *)v121 setSuspendOnFieldList:v135];
      }

      exportedInterface = [v28 exportedInterface];
      sub_1000605EC(NFHardwareManagerInterface, exportedInterface);

      (v49)[2](v49, v122, buf[0], v33);
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100108D74;
      block[3] = &unk_100315F30;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v93 = NFLogGetLogger();
    if (v93)
    {
      v94 = v93;
      v95 = object_getClass(self);
      v96 = class_isMetaClass(v95);
      v125 = object_getClassName(self);
      v128 = sel_getName(a2);
      v97 = 45;
      if (v96)
      {
        v97 = 43;
      }

      v94(4, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", v97, v125, v128, 5442, v132);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v98 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = object_getClass(self);
      if (class_isMetaClass(v99))
      {
        v100 = 43;
      }

      else
      {
        v100 = 45;
      }

      v101 = object_getClassName(self);
      v102 = sel_getName(a2);
      *buf = 67110146;
      v159 = v100;
      v160 = 2082;
      v161 = v101;
      v162 = 2082;
      v163 = v102;
      v164 = 1024;
      v165 = 5442;
      v166 = 2114;
      *v167 = v132;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", buf, 0x2Cu);
    }

    v103 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v148 = NSLocalizedDescriptionKey;
    v104 = [NSString stringWithUTF8String:"Invalid State"];
    v149 = v104;
    v105 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
    v106 = [v103 initWithDomain:v33 code:12 userInfo:v105];
    v49 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v106);
  }

  v51 = v132;
LABEL_31:
}

- (void)queueSeshatSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v7 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v7 NF_clientName];
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i %{public}@", v15, ClassName, Name, 5516, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    nF_clientName2 = [v7 NF_clientName];
    *buf = 67110146;
    v78 = v18;
    v79 = 2082;
    v80 = v19;
    v81 = 2082;
    v82 = v20;
    v83 = 1024;
    v84 = 5516;
    v85 = 2114;
    v86 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) == 2 || sub_100003384(self) == 5)
  {
    nF_whitelistChecker = [v7 NF_whitelistChecker];
    v23 = [_NFSeshatSession validateEntitlements:nF_whitelistChecker];

    if (v23)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(self);
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(self);
        v29 = sel_getName(a2);
        nF_clientName3 = [v7 NF_clientName];
        processIdentifier = [v7 processIdentifier];
        v31 = 45;
        if (v27)
        {
          v31 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v31, v28, v29, 5525, nF_clientName3, processIdentifier);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = object_getClass(self);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        v35 = object_getClassName(self);
        v36 = sel_getName(a2);
        nF_clientName4 = [v7 NF_clientName];
        processIdentifier2 = [v7 processIdentifier];
        *buf = 67110402;
        v78 = v34;
        v79 = 2082;
        v80 = v35;
        v81 = 2082;
        v82 = v36;
        v83 = 1024;
        v84 = 5525;
        v85 = 2114;
        v86 = nF_clientName4;
        v87 = 1024;
        v88 = processIdentifier2;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
      }

      v39 = completionCopy;
      (*(completionCopy + 2))(completionCopy, 0, v23);
    }

    else
    {
      v40 = [(_NFXPCSession *)[_NFSeshatSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
      v41 = v40;
      if (v40)
      {
        [(_NFSession *)v40 setQueue:self];
        [(_NFXPCSession *)v41 setConnection:v7];
        [(_NFSession *)v41 setUid:0xFFFFFFFFLL];
        [(_NFSeshatSession *)v41 setDriverWrapper:self->_driverWrapper];
        v42 = self->_secureElementSessionQueue;
        objc_sync_enter(v42);
        nF_userInfo = [v7 NF_userInfo];
        v44 = [nF_userInfo objectForKeyedSubscript:@"ProxyObjects"];
        [v44 addObject:v41];

        if (!self->_currentSecureElementSession && ![(NSMutableArray *)self->_secureElementSessionQueue count])
        {
          sub_1000DE998(self, 1);
        }

        [(NSMutableArray *)self->_secureElementSessionQueue insertObject:v41 atIndex:0];
        objc_sync_exit(v42);

        exportedInterface = [v7 exportedInterface];
        sub_10006056C(NFHardwareManagerInterface, exportedInterface);

        v39 = completionCopy;
        (*(completionCopy + 2))(completionCopy, v41, 0);
        workQueue = self->_workQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100109604;
        block[3] = &unk_100315F30;
        block[4] = self;
        dispatch_async(workQueue, block);
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v51 = NFLogGetLogger();
        if (v51)
        {
          v52 = v51;
          v53 = object_getClass(self);
          v54 = class_isMetaClass(v53);
          v55 = object_getClassName(self);
          v69 = sel_getName(a2);
          v56 = 45;
          if (v54)
          {
            v56 = 43;
          }

          v52(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v56, v55, v69, 5532);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v57 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = object_getClass(self);
          if (class_isMetaClass(v58))
          {
            v59 = 43;
          }

          else
          {
            v59 = 45;
          }

          v60 = object_getClassName(self);
          v61 = sel_getName(a2);
          *buf = 67109890;
          v78 = v59;
          v79 = 2082;
          v80 = v60;
          v81 = 2082;
          v82 = v61;
          v83 = 1024;
          v84 = 5532;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
        }

        v62 = [NSError alloc];
        v63 = [NSString stringWithUTF8String:"nfcd"];
        v75[0] = NSLocalizedDescriptionKey;
        v64 = [NSString stringWithUTF8String:"Unexpected Result"];
        v76[0] = v64;
        v76[1] = &off_100331BA8;
        v75[1] = @"Line";
        v75[2] = @"Method";
        v65 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v76[2] = v65;
        v75[3] = NSDebugDescriptionErrorKey;
        5533 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 5533];
        v76[3] = 5533;
        v67 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:4];
        v68 = [v62 initWithDomain:v63 code:13 userInfo:v67];
        v39 = completionCopy;
        (*(completionCopy + 2))(completionCopy, 0, v68);
      }

      v23 = 0;
    }
  }

  else
  {
    v47 = [NSError alloc];
    v23 = [NSString stringWithUTF8String:"nfcd"];
    v89 = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v90 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v50 = [v47 initWithDomain:v23 code:58 userInfo:v49];
    v39 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, v50);
  }
}

- (void)areSessionsAllowedWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001096DC;
  v10[3] = &unk_1003165E8;
  v12 = completionCopy;
  v13 = a2;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  v9 = completionCopy;
  dispatch_async(workQueue, v10);
}

- (void)queuePeerPaymentSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v16 = sessionCopy;
    Name = sel_getName(a2);
    nF_clientName = [v10 NF_clientName];
    v71 = Name;
    sessionCopy = v16;
    v19 = 45;
    if (isMetaClass)
    {
      v19 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i %{public}@", v19, ClassName, v71, 5595, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = object_getClass(self);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    v23 = object_getClassName(self);
    v24 = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    *buf = 67110146;
    v85 = v22;
    v86 = 2082;
    v87 = v23;
    v88 = 2082;
    v89 = v24;
    v90 = 1024;
    v91 = 5595;
    v92 = 2114;
    v93 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2 && sub_100003384(self) != 5)
  {
    v51 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    v96 = NSLocalizedDescriptionKey;
    v52 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v97 = v52;
    v53 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v54 = [v51 initWithDomain:v27 code:58 userInfo:v53];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v54);

LABEL_26:
    v50 = attributeCopy;
    goto LABEL_38;
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v27 = [_NFPeerPaymentSession validateEntitlements:nF_whitelistChecker];

  if (v27)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(self);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(self);
      v33 = sel_getName(a2);
      v34 = a2;
      v35 = sessionCopy;
      v36 = v33;
      nF_clientName3 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v72 = v36;
      sessionCopy = v35;
      a2 = v34;
      v38 = 45;
      if (v31)
      {
        v38 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v38, v32, v72, 5604, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      v85 = v41;
      v86 = 2082;
      v87 = v42;
      v88 = 2082;
      v89 = v43;
      v90 = 1024;
      v91 = 5604;
      v92 = 2114;
      v93 = nF_clientName4;
      v94 = 1024;
      v95 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v27);
    goto LABEL_26;
  }

  v47 = [(_NFXPCSession *)[_NFPeerPaymentSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v48 = v47;
  if (v47)
  {
    [(_NFSession *)v47 setQueue:self];
    [(_NFXPCSession *)v48 setConnection:v10];
    [(_NFSession *)v48 setUid:0xFFFFFFFFLL];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v48, [(_NFHardwareManager *)self isFirstInQueue], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010A12C;
    block[3] = &unk_100318B08;
    block[4] = self;
    v78 = v48;
    v81 = a2;
    v79 = v10;
    v50 = attributeCopy;
    v80 = attributeCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v56 = v55;
      v57 = object_getClass(self);
      v58 = class_isMetaClass(v57);
      v59 = object_getClassName(self);
      v73 = sel_getName(a2);
      v60 = 45;
      if (v58)
      {
        v60 = 43;
      }

      v56(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v60, v59, v73, 5611);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = object_getClass(self);
      if (class_isMetaClass(v62))
      {
        v63 = 43;
      }

      else
      {
        v63 = 45;
      }

      v64 = object_getClassName(self);
      v65 = sel_getName(a2);
      *buf = 67109890;
      v85 = v63;
      v86 = 2082;
      v87 = v64;
      v88 = 2082;
      v89 = v65;
      v90 = 1024;
      v91 = 5611;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v66 = [NSError alloc];
    v67 = [NSString stringWithUTF8String:"nfcd"];
    v82 = NSLocalizedDescriptionKey;
    v68 = [NSString stringWithUTF8String:"Unexpected Result"];
    v83 = v68;
    v69 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v70 = [v66 initWithDomain:v67 code:13 userInfo:v69];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v70);

    v50 = attributeCopy;
  }

  v27 = 0;
LABEL_38:
}

- (void)queueTrustSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v16 = sessionCopy;
    Name = sel_getName(a2);
    nF_clientName = [v10 NF_clientName];
    v62 = Name;
    sessionCopy = v16;
    v19 = 45;
    if (isMetaClass)
    {
      v19 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i %{public}@", v19, ClassName, v62, 5662, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = object_getClass(self);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    v23 = object_getClassName(self);
    v24 = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    *buf = 67110146;
    v75 = v22;
    v76 = 2082;
    v77 = v23;
    v78 = 2082;
    v79 = v24;
    v80 = 1024;
    v81 = 5662;
    v82 = 2114;
    v83 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2 && sub_100003384(self) != 5)
  {
    v53 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    v86 = NSLocalizedDescriptionKey;
    v54 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v87 = v54;
    v55 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v56 = [v53 initWithDomain:v27 code:58 userInfo:v55];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v56);

LABEL_26:
    v52 = attributeCopy;
    goto LABEL_29;
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v27 = [_NFTrustSession validateEntitlements:nF_whitelistChecker];

  if (v27)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(self);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(self);
      v33 = sel_getName(a2);
      v34 = a2;
      v35 = sessionCopy;
      v36 = v33;
      nF_clientName3 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v63 = v36;
      sessionCopy = v35;
      a2 = v34;
      v38 = 45;
      if (v31)
      {
        v38 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v38, v32, v63, 5671, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      v75 = v41;
      v76 = 2082;
      v77 = v42;
      v78 = 2082;
      v79 = v43;
      v80 = 1024;
      v81 = 5671;
      v82 = 2114;
      v83 = nF_clientName4;
      v84 = 1024;
      v85 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v27);
    goto LABEL_26;
  }

  v47 = [[_NFTrustSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v48 = v47;
  if (v47)
  {
    [(_NFSession *)v47 setQueue:self];
    [(_NFXPCSession *)v48 setConnection:v10];
    nF_whitelistChecker2 = [v10 NF_whitelistChecker];
    applicationIdentifier = [nF_whitelistChecker2 applicationIdentifier];
    [(_NFTrustSession *)v48 setApplicationIdentifier:applicationIdentifier];

    [(_NFSession *)v48 setUid:0xFFFFFFFFLL];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v48, [(_NFHardwareManager *)self isFirstInQueue], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010AF1C;
    block[3] = &unk_100318B08;
    block[4] = self;
    v68 = v48;
    v71 = a2;
    v69 = v10;
    v52 = attributeCopy;
    v70 = attributeCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v57 = [NSError alloc];
    v58 = [NSString stringWithUTF8String:"nfcd"];
    v72 = NSLocalizedDescriptionKey;
    v59 = [NSString stringWithUTF8String:"Unknown Error"];
    v73 = v59;
    v60 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v61 = [v57 initWithDomain:v58 code:6 userInfo:v60];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v61);

    v52 = attributeCopy;
  }

  v27 = 0;
LABEL_29:
}

- (void)queueNdefTagSession:(id)session sessionAttribute:(id)attribute data:(id)data completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  dataCopy = data;
  completionCopy = completion;
  v12 = +[NSXPCConnection currentConnection];
  kdebug_trace();
  v13 = NFSharedSignpostLog();
  if (os_signpost_enabled(v13))
  {
    nF_clientName = [v12 NF_clientName];
    *buf = 138412290;
    *v93 = nF_clientName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_REQUESTED", "Tag session requested from %@", buf, 0xCu);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v16 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName2 = [v12 NF_clientName];
    v22 = 45;
    if (isMetaClass)
    {
      v22 = 43;
    }

    v16(6, "%c[%{public}s %{public}s]:%i %{public}@", v22, ClassName, Name, 5738, nF_clientName2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = object_getClass(self);
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    v26 = object_getClassName(self);
    v27 = sel_getName(a2);
    nF_clientName3 = [v12 NF_clientName];
    *buf = 67110146;
    *v93 = v25;
    *&v93[4] = 2082;
    *&v93[6] = v26;
    v94 = 2082;
    v95 = v27;
    v96 = 1024;
    v97 = 5738;
    v98 = 2114;
    v99 = nF_clientName3;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2)
  {
    v46 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v106 = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v107 = v47;
    v48 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v49 = v46;
    v50 = v31;
    v51 = 58;
LABEL_48:
    v79 = [v49 initWithDomain:v50 code:v51 userInfo:v48];
    (*(completionCopy + 2))(completionCopy, 0, 0, v79);

LABEL_49:
    v81 = dataCopy;
    v80 = sessionCopy;
    goto LABEL_50;
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || !driverWrapper->_hasAntenna)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = object_getClass(self);
      v55 = class_isMetaClass(v54);
      v56 = object_getClassName(self);
      v57 = sel_getName(a2);
      nF_clientName4 = [v12 NF_clientName];
      v59 = 45;
      if (v55)
      {
        v59 = 43;
      }

      v53(3, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", v59, v56, v57, 5746, nF_clientName4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v60 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = object_getClass(self);
      if (class_isMetaClass(v61))
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      v63 = object_getClassName(self);
      v64 = sel_getName(a2);
      nF_clientName5 = [v12 NF_clientName];
      *buf = 67110146;
      *v93 = v62;
      *&v93[4] = 2082;
      *&v93[6] = v63;
      v94 = 2082;
      v95 = v64;
      v96 = 1024;
      v97 = 5746;
      v98 = 2114;
      v99 = nF_clientName5;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", buf, 0x2Cu);
    }

    v66 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v104 = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v105 = v47;
    v48 = [NSDictionary dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    v49 = v66;
    v50 = v31;
    v51 = 14;
    goto LABEL_48;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(self);
      v70 = class_isMetaClass(v69);
      v71 = object_getClassName(self);
      v85 = sel_getName(a2);
      v72 = 45;
      if (v70)
      {
        v72 = 43;
      }

      v68(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v72, v71, v85, 5752);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v73 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = object_getClass(self);
      if (class_isMetaClass(v74))
      {
        v75 = 43;
      }

      else
      {
        v75 = 45;
      }

      v76 = object_getClassName(self);
      v77 = sel_getName(a2);
      *buf = 67109890;
      *v93 = v75;
      *&v93[4] = 2082;
      *&v93[6] = v76;
      v94 = 2082;
      v95 = v77;
      v96 = 1024;
      v97 = 5752;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v78 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v102 = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v103 = v47;
    v48 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    v49 = v78;
    v50 = v31;
    v51 = 50;
    goto LABEL_48;
  }

  nF_whitelistChecker = [v12 NF_whitelistChecker];
  v31 = [_NFTagSession validateEntitlements:nF_whitelistChecker];

  if (v31)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v33 = v32;
      v34 = object_getClass(self);
      v35 = class_isMetaClass(v34);
      v87 = object_getClassName(self);
      v36 = sel_getName(a2);
      nF_clientName6 = [v12 NF_clientName];
      processIdentifier = [v12 processIdentifier];
      v38 = 45;
      if (v35)
      {
        v38 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v38, v87, v36, 5760, nF_clientName6, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      nF_clientName7 = [v12 NF_clientName];
      processIdentifier2 = [v12 processIdentifier];
      *buf = 67110402;
      *v93 = v41;
      *&v93[4] = 2082;
      *&v93[6] = v42;
      v94 = 2082;
      v95 = v43;
      v96 = 1024;
      v97 = 5760;
      v98 = 2114;
      v99 = nF_clientName7;
      v100 = 1024;
      v101 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v31);
    goto LABEL_49;
  }

  v80 = sessionCopy;
  v82 = [(_NFXPCSession *)[_NFTagSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  [(_NFSession *)v82 setQueue:self];
  [(_NFXPCSession *)v82 setConnection:v12];
  v81 = dataCopy;
  if (dataCopy)
  {
    [(_NFTagSession *)v82 setInitialPayload:dataCopy];
  }

  [(_NFSession *)v82 setUid:0xFFFFFFFFLL];
  buf[0] = 0;
  v83 = sub_1001DC138(self, v82, v12, attributeCopy, buf);
  if (v83)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v83);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v82, buf[0], 0);
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010C038;
    block[3] = &unk_100315F30;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  v31 = 0;
LABEL_50:
}

- (void)queueHostEmulationSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v181 = objc_opt_new();
  v10 = +[NSXPCConnection currentConnection];
  kdebug_trace();
  v11 = NFSharedSignpostLog();
  if (os_signpost_enabled(v11))
  {
    nF_clientName = [v10 NF_clientName];
    *buf = 138412290;
    *v202 = nF_clientName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_REQUESTED", "HCE session requested from %@", buf, 0xCu);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v180 = v10;
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    v20 = 45;
    if (isMetaClass)
    {
      v20 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i %{public}@ %{public}@", v20, ClassName, Name, 5817, nF_clientName2, attributeCopy);

    v10 = v180;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    nF_clientName3 = [v10 NF_clientName];
    *buf = 67110402;
    *v202 = v23;
    *&v202[4] = 2082;
    *&v202[6] = v24;
    v203 = 2082;
    v204 = v25;
    v205 = 1024;
    v206 = 5817;
    v207 = 2114;
    v208 = nF_clientName3;
    v209 = 2114;
    v210 = attributeCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ %{public}@", buf, 0x36u);
  }

  if (sub_100003384(self) != 2)
  {
    v47 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v199 = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v200 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v200 forKeys:&v199 count:1];
    v50 = v47;
    v51 = v29;
    v52 = 58;
LABEL_48:
    v80 = [v50 initWithDomain:v51 code:v52 userInfo:v49];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v80);

    goto LABEL_49;
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || !driverWrapper->_hasAntenna)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFLogGetLogger();
    if (v53)
    {
      v54 = v53;
      v55 = object_getClass(self);
      v56 = class_isMetaClass(v55);
      v57 = object_getClassName(self);
      v58 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      v60 = 45;
      if (v56)
      {
        v60 = 43;
      }

      v54(3, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", v60, v57, v58, 5825, nF_clientName4);

      v10 = v180;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = object_getClass(self);
      if (class_isMetaClass(v62))
      {
        v63 = 43;
      }

      else
      {
        v63 = 45;
      }

      v64 = object_getClassName(self);
      v65 = sel_getName(a2);
      nF_clientName5 = [v10 NF_clientName];
      *buf = 67110146;
      *v202 = v63;
      *&v202[4] = 2082;
      *&v202[6] = v64;
      v203 = 2082;
      v204 = v65;
      v205 = 1024;
      v206 = 5825;
      v207 = 2114;
      v208 = nF_clientName5;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", buf, 0x2Cu);
    }

    v67 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v197 = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v198 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v198 forKeys:&v197 count:1];
    v50 = v67;
    v51 = v29;
    v52 = 14;
    goto LABEL_48;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(self);
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(self);
      v156 = sel_getName(a2);
      v73 = 45;
      if (v71)
      {
        v73 = 43;
      }

      v69(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v73, v72, v156, 5831);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = object_getClass(self);
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      v77 = object_getClassName(self);
      v78 = sel_getName(a2);
      *buf = 67109890;
      *v202 = v76;
      *&v202[4] = 2082;
      *&v202[6] = v77;
      v203 = 2082;
      v204 = v78;
      v205 = 1024;
      v206 = 5831;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v79 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v195 = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v196 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v196 forKeys:&v195 count:1];
    v50 = v79;
    v51 = v29;
    v52 = 50;
    goto LABEL_48;
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v29 = [_NFHCESession validateEntitlements:nF_whitelistChecker];

  if (v29)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(self);
      v33 = class_isMetaClass(v32);
      v34 = object_getClassName(self);
      v35 = sel_getName(a2);
      [v180 NF_clientName];
      v37 = v36 = attributeCopy;
      processIdentifier = [v180 processIdentifier];
      v38 = 45;
      if (v33)
      {
        v38 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v38, v34, v35, 5839, v37, processIdentifier);

      attributeCopy = v36;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      nF_clientName6 = [v180 NF_clientName];
      processIdentifier2 = [v180 processIdentifier];
      *buf = 67110402;
      *v202 = v41;
      *&v202[4] = 2082;
      *&v202[6] = v42;
      v203 = 2082;
      v204 = v43;
      v205 = 1024;
      v206 = 5839;
      v207 = 2114;
      v208 = nF_clientName6;
      v209 = 1024;
      LODWORD(v210) = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v29);
    goto LABEL_49;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v104 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 0;
    v176 = 0;
    v102 = 0;
    v101 = 0;
    v100 = 0;
    v99 = 0;
    v169 = 0;
    v105 = v180;
    goto LABEL_88;
  }

  v81 = [attributeCopy NF_arrayForKey:@"StartOnECP"];
  v169 = v81;
  if (![v81 count])
  {
    goto LABEL_74;
  }

  v163 = attributeCopy;
  v175 = sessionCopy;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v82 = v81;
  v83 = [v82 countByEnumeratingWithState:&v186 objects:v194 count:16];
  if (!v83)
  {
    goto LABEL_73;
  }

  v84 = v83;
  v85 = *v187;
  do
  {
    for (i = 0; i != v84; i = i + 1)
    {
      if (*v187 != v85)
      {
        objc_enumerationMutation(v82);
      }

      v87 = *(*(&v186 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v87 length])
        {
          continue;
        }

        v192[0] = @"ECPData";
        v192[1] = @"IgnoreRFTechOnIsEqual";
        v193[0] = v87;
        v193[1] = &off_100331458;
        v88 = [NSDictionary dictionaryWithObjects:v193 forKeys:v192 count:2];
        v89 = [NFFieldNotification notificationWithDictionary:v88];

        if (v89)
        {
          [v181 addObject:v89];
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v90 = NFLogGetLogger();
        if (v90)
        {
          v91 = v90;
          v92 = object_getClass(self);
          v93 = class_isMetaClass(v92);
          v154 = object_getClassName(self);
          v157 = sel_getName(a2);
          v94 = 45;
          if (v93)
          {
            v94 = 43;
          }

          v91(3, "%c[%{public}s %{public}s]:%i Invalid ECP data: %{public}@", v94, v154, v157, 5849, v87);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v89 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          v95 = object_getClass(self);
          if (class_isMetaClass(v95))
          {
            v96 = 43;
          }

          else
          {
            v96 = 45;
          }

          v97 = object_getClassName(self);
          v98 = sel_getName(a2);
          *buf = 67110146;
          *v202 = v96;
          *&v202[4] = 2082;
          *&v202[6] = v97;
          v203 = 2082;
          v204 = v98;
          v205 = 1024;
          v206 = 5849;
          v207 = 2114;
          v208 = v87;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid ECP data: %{public}@", buf, 0x2Cu);
        }
      }
    }

    v84 = [v82 countByEnumeratingWithState:&v186 objects:v194 count:16];
  }

  while (v84);
LABEL_73:

  sessionCopy = v175;
  attributeCopy = v163;
LABEL_74:
  v174 = [attributeCopy NF_numberForKey:@"EmulationOnSessionStart"];
  v99 = [attributeCopy NF_numberForKey:@"ReadOnReaderConnected"];
  v173 = [attributeCopy NF_numberForKey:@"SuspendOnDisconnect"];
  v100 = [attributeCopy NF_numberForKey:@"BackgroundTagReadingECP"];
  v101 = [attributeCopy NF_numberForKey:@"ListenOnAllField"];
  v102 = [attributeCopy NF_numberForKey:@"FDRestartOnMatchingECPTermInfo"];
  v176 = [attributeCopy NF_dataForKey:@"ECPBroadcast"];
  v172 = [attributeCopy NF_numberForKey:@"disableAutostartOnField"];
  v103 = [attributeCopy NF_dataForKey:@"bkgTagReadECPOverride"];
  v104 = v103;
  v105 = v180;
  if (v103 && (![v103 length] || objc_msgSend(v104, "length") >= 0x15))
  {
    v178 = v104;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v106 = NFLogGetLogger();
    if (v106)
    {
      v107 = v106;
      v108 = object_getClass(self);
      v161 = v102;
      v109 = v101;
      v110 = v100;
      v111 = class_isMetaClass(v108);
      v166 = v99;
      v112 = object_getClassName(self);
      v158 = sel_getName(a2);
      v113 = !v111;
      v100 = v110;
      v101 = v109;
      v102 = v161;
      v114 = 45;
      if (!v113)
      {
        v114 = 43;
      }

      v155 = v112;
      v99 = v166;
      v107(3, "%c[%{public}s %{public}s]:%i Invalid override; dropping", v114, v155, v158, 5875);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v115 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      v116 = object_getClass(self);
      v170 = v101;
      v117 = v99;
      if (class_isMetaClass(v116))
      {
        v118 = 43;
      }

      else
      {
        v118 = 45;
      }

      v119 = v100;
      v120 = object_getClassName(self);
      v121 = sel_getName(a2);
      *buf = 67109890;
      *v202 = v118;
      v99 = v117;
      v101 = v170;
      *&v202[4] = 2082;
      *&v202[6] = v120;
      v100 = v119;
      v203 = 2082;
      v204 = v121;
      v205 = 1024;
      v206 = 5875;
      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid override; dropping", buf, 0x22u);
    }

    v104 = 0;
  }

LABEL_88:
  v179 = v104;
  v122 = [(_NFXPCSession *)[_NFHCESession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v123 = v122;
  v171 = v101;
  if (v122)
  {
    [(_NFSession *)v122 setQueue:self];
    [(_NFXPCSession *)v123 setConnection:v105];
    -[_NFHCESession setReadOnConnected:](v123, "setReadOnConnected:", [v99 BOOLValue]);
    if ([v181 count])
    {
      v124 = v181;
    }

    else
    {
      v124 = 0;
    }

    [(_NFSession *)v123 setStartOnFieldList:v124];
    -[_NFHCESession setEmulationOnSessionStart:](v123, "setEmulationOnSessionStart:", [v174 BOOLValue]);
    -[_NFHCESession setSuspendOnDisconnect:](v123, "setSuspendOnDisconnect:", [v173 BOOLValue]);
    [(_NFSession *)v123 setBackgroundTagReadEcpOption:0];
    if ([v100 BOOLValue])
    {
      if (v104)
      {
        v125 = 2;
      }

      else
      {
        v125 = 1;
      }

      [(_NFSession *)v123 setBackgroundTagReadEcpOption:v125];
      [(_NFSession *)v123 setBackgroundTagReadCustomECP:v104];
    }

    -[_NFHCESession setDisableAutoStartOnField:](v123, "setDisableAutoStartOnField:", [v172 BOOLValue]);
    if ([v101 BOOLValue])
    {
      [(_NFSession *)v123 setFieldHandlingInSuspension:[(_NFSession *)v123 fieldHandlingInSuspension]| 1];
    }

    if ([v102 BOOLValue])
    {
      [(_NFSession *)v123 setFieldHandlingInSuspension:[(_NFSession *)v123 fieldHandlingInSuspension]| 2];
    }

    if ([v176 length])
    {
      v164 = v100;
      v126 = [attributeCopy NF_arrayForKey:@"ECPBroadcastFieldMatch"];
      v167 = v99;
      if (v126)
      {
        v127 = sub_1000F16A4(self, v126);
      }

      else
      {
        v127 = 0;
      }

      v162 = v102;
      v144 = [attributeCopy NF_numberForKey:@"ECPBroadcastInterval"];
      v145 = [attributeCopy NF_numberForKey:@"ECPBroadcastPollDuration"];
      v146 = v145;
      if (v145)
      {
        unsignedLongValue = [v145 unsignedLongValue];
      }

      else
      {
        unsignedLongValue = 0;
      }

      if (v144)
      {
        unsignedLongValue2 = [v144 unsignedLongValue];
      }

      else
      {
        unsignedLongValue2 = 3000;
      }

      v149 = sub_10007FF38(NFHCEBroadcastECPConfig, v176, unsignedLongValue, unsignedLongValue2, v127);
      [(_NFHCESession *)v123 setEcpBroadcastConfig:v149];

      v100 = v164;
      v105 = v180;
      v99 = v167;
      v102 = v162;
    }

    [(_NFSession *)v123 setUid:0xFFFFFFFFLL];
    buf[0] = 0;
    v150 = sub_1001DC138(self, v123, v105, attributeCopy, buf);
    v46 = completionCopy;
    if (v150)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v150);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v123, buf[0], 0);
      v151 = v100;
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10010D3FC;
      block[3] = &unk_100315F80;
      block[4] = self;
      v184 = v181;
      v185 = a2;
      v153 = workQueue;
      v100 = v151;
      dispatch_async(v153, block);
    }
  }

  else
  {
    v165 = v100;
    v168 = v99;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v128 = NFLogGetLogger();
    if (v128)
    {
      v129 = v128;
      v130 = object_getClass(self);
      v131 = class_isMetaClass(v130);
      v132 = object_getClassName(self);
      v159 = sel_getName(a2);
      v133 = 45;
      if (v131)
      {
        v133 = 43;
      }

      v129(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v133, v132, v159, 5883);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v134 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      v135 = object_getClass(self);
      if (class_isMetaClass(v135))
      {
        v136 = 43;
      }

      else
      {
        v136 = 45;
      }

      v137 = object_getClassName(self);
      v138 = sel_getName(a2);
      *buf = 67109890;
      *v202 = v136;
      *&v202[4] = 2082;
      *&v202[6] = v137;
      v203 = 2082;
      v204 = v138;
      v205 = 1024;
      v206 = 5883;
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v139 = [NSError alloc];
    v140 = [NSString stringWithUTF8String:"nfcd"];
    v190 = NSLocalizedDescriptionKey;
    v141 = [NSString stringWithUTF8String:"Unexpected Result"];
    v191 = v141;
    v142 = [NSDictionary dictionaryWithObjects:&v191 forKeys:&v190 count:1];
    v143 = [v139 initWithDomain:v140 code:13 userInfo:v142];
    v46 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v143);

    v100 = v165;
    v99 = v168;
  }

  v29 = 0;
LABEL_49:
}

- (void)queueSecureElementAndHostEmulationSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  kdebug_trace();
  v11 = NFSharedSignpostLog();
  if (os_signpost_enabled(v11))
  {
    nF_clientName = [v10 NF_clientName];
    *buf = 138412290;
    *v110 = nF_clientName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_REQUESTED", "SE+HCE session requested from %@", buf, 0xCu);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    v20 = 45;
    if (isMetaClass)
    {
      v20 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i %{public}@", v20, ClassName, Name, 5988, nF_clientName2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    nF_clientName3 = [v10 NF_clientName];
    *buf = 67110146;
    *v110 = v23;
    *&v110[4] = 2082;
    *&v110[6] = v24;
    v111 = 2082;
    v112 = v25;
    v113 = 1024;
    v114 = 5988;
    v115 = 2114;
    v116 = nF_clientName3;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2)
  {
    v44 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v123 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v124 = v45;
    v46 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
    v47 = v44;
    v48 = v29;
    v49 = 58;
LABEL_48:
    v77 = [v47 initWithDomain:v48 code:v49 userInfo:v46];
    (*(completionCopy + 2))(completionCopy, 0, 0, v77);

LABEL_49:
    v78 = attributeCopy;
    goto LABEL_50;
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || !driverWrapper->_hasAntenna)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(self);
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(self);
      v55 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      v57 = 45;
      if (v53)
      {
        v57 = 43;
      }

      v51(3, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", v57, v54, v55, 5996, nF_clientName4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = object_getClass(self);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(self);
      v62 = sel_getName(a2);
      nF_clientName5 = [v10 NF_clientName];
      *buf = 67110146;
      *v110 = v60;
      *&v110[4] = 2082;
      *&v110[6] = v61;
      v111 = 2082;
      v112 = v62;
      v113 = 1024;
      v114 = 5996;
      v115 = 2114;
      v116 = nF_clientName5;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", buf, 0x2Cu);
    }

    v64 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v121 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v122 = v45;
    v46 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v47 = v64;
    v48 = v29;
    v49 = 14;
    goto LABEL_48;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v65 = NFLogGetLogger();
    if (v65)
    {
      v66 = v65;
      v67 = object_getClass(self);
      v68 = class_isMetaClass(v67);
      v69 = object_getClassName(self);
      v100 = sel_getName(a2);
      v70 = 45;
      if (v68)
      {
        v70 = 43;
      }

      v66(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v70, v69, v100, 6002);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v71 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = object_getClass(self);
      if (class_isMetaClass(v72))
      {
        v73 = 43;
      }

      else
      {
        v73 = 45;
      }

      v74 = object_getClassName(self);
      v75 = sel_getName(a2);
      *buf = 67109890;
      *v110 = v73;
      *&v110[4] = 2082;
      *&v110[6] = v74;
      v111 = 2082;
      v112 = v75;
      v113 = 1024;
      v114 = 6002;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v76 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v119 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v120 = v45;
    v46 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    v47 = v76;
    v48 = v29;
    v49 = 50;
    goto LABEL_48;
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v29 = [_NFSecureElementAndHostCardEmulationSession validateEntitlements:nF_whitelistChecker];

  if (v29)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(self);
      v33 = class_isMetaClass(v32);
      v103 = object_getClassName(self);
      v34 = sel_getName(a2);
      nF_clientName6 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v36 = 45;
      if (v33)
      {
        v36 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v36, v103, v34, 6010, nF_clientName6, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(self);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(self);
      v41 = sel_getName(a2);
      nF_clientName7 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      *v110 = v39;
      *&v110[4] = 2082;
      *&v110[6] = v40;
      v111 = 2082;
      v112 = v41;
      v113 = 1024;
      v114 = 6010;
      v115 = 2114;
      v116 = nF_clientName7;
      v117 = 1024;
      v118 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v29);
    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = [attributeCopy NF_numberForKey:@"EmulationOnSessionStart"];
  }

  else
  {
    v79 = 0;
  }

  v80 = [(_NFXPCSession *)[_NFSecureElementAndHostCardEmulationSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v81 = v80;
  if (v80)
  {
    [(_NFSession *)v80 setQueue:self];
    [(_NFXPCSession *)v81 setConnection:v10];
    -[_NFHCESession setEmulationOnSessionStart:](v81, "setEmulationOnSessionStart:", [v79 BOOLValue]);
    [(_NFSession *)v81 setUid:0xFFFFFFFFLL];
    buf[0] = 0;
    v78 = attributeCopy;
    v82 = sub_1001DC138(self, v81, v10, attributeCopy, buf);
    if (v82)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v82);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v81, buf[0], 0);
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10010E23C;
      block[3] = &unk_100315F30;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v83 = NFLogGetLogger();
    if (v83)
    {
      v84 = v83;
      v85 = object_getClass(self);
      v86 = class_isMetaClass(v85);
      v87 = object_getClassName(self);
      v101 = sel_getName(a2);
      v88 = 45;
      if (v86)
      {
        v88 = 43;
      }

      v84(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v88, v87, v101, 6021);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v89 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v90 = object_getClass(self);
      if (class_isMetaClass(v90))
      {
        v91 = 43;
      }

      else
      {
        v91 = 45;
      }

      v92 = object_getClassName(self);
      v93 = sel_getName(a2);
      *buf = 67109890;
      *v110 = v91;
      *&v110[4] = 2082;
      *&v110[6] = v92;
      v111 = 2082;
      v112 = v93;
      v113 = 1024;
      v114 = 6021;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v94 = [NSError alloc];
    v95 = [NSString stringWithUTF8String:"nfcd"];
    v107 = NSLocalizedDescriptionKey;
    v96 = [NSString stringWithUTF8String:"Unexpected Result"];
    v108 = v96;
    v97 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    v98 = [v94 initWithDomain:v95 code:13 userInfo:v97];
    (*(completionCopy + 2))(completionCopy, 0, 0, v98);

    v78 = attributeCopy;
  }

  v29 = 0;
LABEL_50:
}

- (void)queueSecureElementReaderSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  kdebug_trace();
  v11 = NFSharedSignpostLog();
  if (os_signpost_enabled(v11))
  {
    nF_clientName = [v10 NF_clientName];
    *buf = 138412290;
    *v109 = nF_clientName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_REQUESTED", "SE+Reader session requested from %@", buf, 0xCu);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    v20 = 45;
    if (isMetaClass)
    {
      v20 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i %{public}@", v20, ClassName, Name, 6064, nF_clientName2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    nF_clientName3 = [v10 NF_clientName];
    *buf = 67110146;
    *v109 = v23;
    *&v109[4] = 2082;
    *&v109[6] = v24;
    v110 = 2082;
    v111 = v25;
    v112 = 1024;
    v113 = 6064;
    v114 = 2114;
    v115 = nF_clientName3;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2)
  {
    v44 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v122 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v123 = v45;
    v46 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    v47 = v44;
    v48 = v29;
    v49 = 58;
LABEL_48:
    v77 = [v47 initWithDomain:v48 code:v49 userInfo:v46];
    (*(completionCopy + 2))(completionCopy, 0, 0, v77);

    goto LABEL_49;
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || !driverWrapper->_hasAntenna)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(self);
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(self);
      v55 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      v57 = 45;
      if (v53)
      {
        v57 = 43;
      }

      v51(3, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", v57, v54, v55, 6072, nF_clientName4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v58 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = object_getClass(self);
      if (class_isMetaClass(v59))
      {
        v60 = 43;
      }

      else
      {
        v60 = 45;
      }

      v61 = object_getClassName(self);
      v62 = sel_getName(a2);
      nF_clientName5 = [v10 NF_clientName];
      *buf = 67110146;
      *v109 = v60;
      *&v109[4] = 2082;
      *&v109[6] = v61;
      v110 = 2082;
      v111 = v62;
      v112 = 1024;
      v113 = 6072;
      v114 = 2114;
      v115 = nF_clientName5;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i API not supported on this platform, client = %{public}@", buf, 0x2Cu);
    }

    v64 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v120 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v121 = v45;
    v46 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v47 = v64;
    v48 = v29;
    v49 = 14;
    goto LABEL_48;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v65 = NFLogGetLogger();
    if (v65)
    {
      v66 = v65;
      v67 = object_getClass(self);
      v68 = class_isMetaClass(v67);
      v69 = object_getClassName(self);
      v99 = sel_getName(a2);
      v70 = 45;
      if (v68)
      {
        v70 = 43;
      }

      v66(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v70, v69, v99, 6078);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v71 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = object_getClass(self);
      if (class_isMetaClass(v72))
      {
        v73 = 43;
      }

      else
      {
        v73 = 45;
      }

      v74 = object_getClassName(self);
      v75 = sel_getName(a2);
      *buf = 67109890;
      *v109 = v73;
      *&v109[4] = 2082;
      *&v109[6] = v74;
      v110 = 2082;
      v111 = v75;
      v112 = 1024;
      v113 = 6078;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v76 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v118 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v119 = v45;
    v46 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    v47 = v76;
    v48 = v29;
    v49 = 50;
    goto LABEL_48;
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v29 = [_NFSecureElementReaderSession validateEntitlements:nF_whitelistChecker];

  if (v29)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFLogGetLogger();
    if (v30)
    {
      v31 = v30;
      v32 = object_getClass(self);
      v33 = class_isMetaClass(v32);
      v102 = object_getClassName(self);
      v34 = sel_getName(a2);
      nF_clientName6 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v36 = 45;
      if (v33)
      {
        v36 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v36, v102, v34, 6086, nF_clientName6, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(self);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(self);
      v41 = sel_getName(a2);
      nF_clientName7 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      *v109 = v39;
      *&v109[4] = 2082;
      *&v109[6] = v40;
      v110 = 2082;
      v111 = v41;
      v112 = 1024;
      v113 = 6086;
      v114 = 2114;
      v115 = nF_clientName7;
      v116 = 1024;
      v117 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v29);
  }

  else
  {
    v78 = [(_NFXPCSession *)[_NFSecureElementReaderSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
    v79 = v78;
    if (v78)
    {
      [(_NFSession *)v78 setQueue:self];
      [(_NFXPCSession *)v79 setConnection:v10];
      [(_NFSession *)v79 setUid:0xFFFFFFFFLL];
      [(_NFSecureElementReaderSession *)v79 setDriverWrapper:self->_driverWrapper];
      v80 = sub_1001AE20C();
      [(_NFSecureElementReaderSession *)v79 setPowerConsumptionReporter:v80];

      buf[0] = 0;
      v81 = sub_1001DC138(self, v79, v10, attributeCopy, buf);
      if (v81)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, v81);
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, v79, buf[0], 0);
        workQueue = self->_workQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10010EE24;
        block[3] = &unk_100315F30;
        block[4] = self;
        dispatch_async(workQueue, block);
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFLogGetLogger();
      if (v82)
      {
        v83 = v82;
        v84 = object_getClass(self);
        v85 = class_isMetaClass(v84);
        v86 = object_getClassName(self);
        v100 = sel_getName(a2);
        v87 = 45;
        if (v85)
        {
          v87 = 43;
        }

        v83(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v87, v86, v100, 6093);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v88 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = object_getClass(self);
        if (class_isMetaClass(v89))
        {
          v90 = 43;
        }

        else
        {
          v90 = 45;
        }

        v91 = object_getClassName(self);
        v92 = sel_getName(a2);
        *buf = 67109890;
        *v109 = v90;
        *&v109[4] = 2082;
        *&v109[6] = v91;
        v110 = 2082;
        v111 = v92;
        v112 = 1024;
        v113 = 6093;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
      }

      v93 = [NSError alloc];
      v94 = [NSString stringWithUTF8String:"nfcd"];
      v106 = NSLocalizedDescriptionKey;
      v95 = [NSString stringWithUTF8String:"Unexpected Result"];
      v107 = v95;
      v96 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v97 = [v93 initWithDomain:v94 code:13 userInfo:v96];
      (*(completionCopy + 2))(completionCopy, 0, 0, v97);
    }

    v29 = 0;
  }

LABEL_49:
}

- (void)queueSecureTransactionServicesSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v12 = +[NSXPCConnection currentConnection];
  if (sub_100003384(self) != 2)
  {
    v34 = [NSError alloc];
    v14 = [NSString stringWithUTF8String:"nfcd"];
    v127 = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v128 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
    v37 = [v34 initWithDomain:v14 code:58 userInfo:v36];
    (*(completionCopy + 2))(completionCopy, 0, 0, v37);

    goto LABEL_62;
  }

  nF_whitelistChecker = [v12 NF_whitelistChecker];
  v14 = [_NFSecureTransactionServicesHandoverSession validateEntitlements:nF_whitelistChecker];

  if (!v14)
  {
    if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]== 1)
    {
      sel = a2;
      objc_opt_class();
      v101 = attributeCopy;
      v103 = v12;
      if (objc_opt_isKindOfClass())
      {
        v38 = [attributeCopy objectForKeyedSubscript:@"session.sts.handover.role"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v40 = [attributeCopy objectForKeyedSubscript:@"session.sts.handover.role"];
          unsignedIntegerValue = [v40 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = -1;
        }

        v58 = [attributeCopy objectForKeyedSubscript:@"session.sts.handover.type"];
        objc_opt_class();
        v59 = objc_opt_isKindOfClass();

        if (v59)
        {
          v60 = [attributeCopy objectForKeyedSubscript:@"session.sts.handover.type"];
          unsignedIntegerValue2 = [v60 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = 0;
        }
      }

      else
      {
        unsignedIntegerValue2 = 0;
        unsignedIntegerValue = -1;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v62 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        v66 = sessionCopy;
        Name = sel_getName(sel);
        nF_clientName = [v103 NF_clientName];
        v98 = Name;
        sessionCopy = v66;
        v69 = 43;
        if (!isMetaClass)
        {
          v69 = 45;
        }

        v62(6, "%c[%{public}s %{public}s]:%i %{public}@, role=0x%lx, type=0x%lx", v69, ClassName, v98, 6161, nF_clientName, unsignedIntegerValue, unsignedIntegerValue2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = object_getClass(self);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(self);
        v74 = sel_getName(sel);
        nF_clientName2 = [v103 NF_clientName];
        *buf = 67110658;
        v112 = v72;
        v113 = 2082;
        v114 = v73;
        v115 = 2082;
        v116 = v74;
        v117 = 1024;
        v118 = 6161;
        v119 = 2114;
        v120 = nF_clientName2;
        v121 = 2048;
        v122 = unsignedIntegerValue;
        v123 = 2048;
        v124 = unsignedIntegerValue2;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@, role=0x%lx, type=0x%lx", buf, 0x40u);
      }

      objc_opt_self();
      attributeCopy = v101;
      if (unsignedIntegerValue <= 4 && unsignedIntegerValue2)
      {
        v76 = sub_10004CA40([_NFSecureTransactionServicesHandoverSession alloc], sessionCopy, unsignedIntegerValue, unsignedIntegerValue2, self->_driverWrapper, self->_workQueue);
        v12 = v103;
        [v76 setConnection:v103];
        [v76 setQueue:self];
        [v76 setUid:0xFFFFFFFFLL];
        v78 = sub_1001AE20C();
        if (v76)
        {
          objc_setProperty_atomic(v76, v77, v78, 192);
        }

        exportedInterface = [v103 exportedInterface];
        sub_100060754(NFHardwareManagerInterface, exportedInterface);

        buf[0] = 0;
        v80 = sub_1001DC138(self, v76, v103, v101, buf);
        if (v80)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0, v80);
        }

        else
        {
          (*(completionCopy + 2))(completionCopy, v76, buf[0], 0);
          workQueue = self->_workQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10010F958;
          block[3] = &unk_100315F30;
          block[4] = self;
          dispatch_async(workQueue, block);
        }

        goto LABEL_61;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v81 = NFLogGetLogger();
      v12 = v103;
      if (v81)
      {
        v82 = v81;
        v83 = object_getClass(self);
        v84 = class_isMetaClass(v83);
        v85 = object_getClassName(self);
        v99 = sel_getName(sel);
        v86 = 45;
        if (v84)
        {
          v86 = 43;
        }

        v82(3, "%c[%{public}s %{public}s]:%i Role or type mismatch", v86, v85, v99, 6164);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v87 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v88 = object_getClass(self);
        if (class_isMetaClass(v88))
        {
          v89 = 43;
        }

        else
        {
          v89 = 45;
        }

        v90 = object_getClassName(self);
        v91 = sel_getName(sel);
        *buf = 67109890;
        v112 = v89;
        v113 = 2082;
        v114 = v90;
        v115 = 2082;
        v116 = v91;
        v117 = 1024;
        v118 = 6164;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Role or type mismatch", buf, 0x22u);
      }

      v92 = [NSError alloc];
      v52 = [NSString stringWithUTF8String:"nfcd"];
      v109 = NSLocalizedDescriptionKey;
      v53 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v110 = v53;
      v54 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v55 = v92;
      v56 = v52;
      v57 = 10;
    }

    else
    {
      v41 = a2;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(self);
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(self);
        v97 = sel_getName(v41);
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v47, v46, v97, 6145);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = object_getClass(self);
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        *buf = 67109890;
        v112 = v50;
        v113 = 2082;
        v114 = object_getClassName(self);
        v115 = 2082;
        v116 = sel_getName(v41);
        v117 = 1024;
        v118 = 6145;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
      }

      v51 = [NSError alloc];
      v52 = [NSString stringWithUTF8String:"nfcd"];
      v125 = NSLocalizedDescriptionKey;
      v53 = [NSString stringWithUTF8String:"NFC radio disabled"];
      v126 = v53;
      v54 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v55 = v51;
      v56 = v52;
      v57 = 50;
    }

    v93 = [v55 initWithDomain:v56 code:v57 userInfo:v54];
    (*(completionCopy + 2))(completionCopy, 0, 0, v93);

LABEL_61:
    v14 = 0;
    goto LABEL_62;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(self);
    v18 = class_isMetaClass(v17);
    v104 = completionCopy;
    selfCopy = self;
    v19 = attributeCopy;
    v20 = sessionCopy;
    v21 = object_getClassName(self);
    v22 = a2;
    v23 = sel_getName(a2);
    nF_clientName3 = [v12 NF_clientName];
    processIdentifier = [v12 processIdentifier];
    v96 = v23;
    a2 = v22;
    v25 = 45;
    if (v18)
    {
      v25 = 43;
    }

    v95 = v21;
    sessionCopy = v20;
    attributeCopy = v19;
    completionCopy = v104;
    self = selfCopy;
    v16(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v25, v95, v96, 6139, nF_clientName3, processIdentifier);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = object_getClass(self);
    if (class_isMetaClass(v27))
    {
      v28 = 43;
    }

    else
    {
      v28 = 45;
    }

    v29 = object_getClassName(self);
    v30 = a2;
    v31 = v29;
    v32 = sel_getName(v30);
    nF_clientName4 = [v12 NF_clientName];
    *buf = 67110402;
    v112 = v28;
    v113 = 2082;
    v114 = v31;
    v115 = 2082;
    v116 = v32;
    v117 = 1024;
    v118 = 6139;
    v119 = 2114;
    v120 = nF_clientName4;
    v121 = 1024;
    LODWORD(v122) = [v12 processIdentifier];
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0, v14);
LABEL_62:
}

- (void)queueSecureTransactionServicesHybridSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v12 = +[NSXPCConnection currentConnection];
  if (sub_100003384(self) != 2)
  {
    v35 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v130 = NSLocalizedDescriptionKey;
    v36 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v131 = v36;
    v37 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    v38 = [v35 initWithDomain:v15 code:58 userInfo:v37];
    (*(completionCopy + 2))(completionCopy, 0, 0, v38);

    goto LABEL_61;
  }

  p_cache = &OBJC_METACLASS___NFCoreTelephonyConnection.cache;
  nF_whitelistChecker = [v12 NF_whitelistChecker];
  v15 = [_NFSecureTransactionServicesHandoverHybridSession validateEntitlements:nF_whitelistChecker];

  if (!v15)
  {
    if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]== 1)
    {
      sela = a2;
      objc_opt_class();
      v106 = v12;
      if (objc_opt_isKindOfClass())
      {
        v39 = [attributeCopy objectForKeyedSubscript:@"session.sts.handover.role"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v41 = [attributeCopy objectForKeyedSubscript:@"session.sts.handover.role"];
          unsignedIntegerValue = [v41 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = -1;
        }

        v60 = [attributeCopy objectForKeyedSubscript:@"session.sts.handover.type"];
        objc_opt_class();
        v61 = objc_opt_isKindOfClass();

        if (v61)
        {
          v62 = [attributeCopy objectForKeyedSubscript:@"session.sts.handover.type"];
          unsignedIntegerValue2 = [v62 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = 0;
        }

        p_cache = (&OBJC_METACLASS___NFCoreTelephonyConnection + 16);
      }

      else
      {
        unsignedIntegerValue2 = 0;
        unsignedIntegerValue = -1;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v64 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        selfCopy = self;
        v69 = completionCopy;
        v70 = attributeCopy;
        v71 = sessionCopy;
        Name = sel_getName(sela);
        nF_clientName = [v106 NF_clientName];
        v103 = Name;
        sessionCopy = v71;
        attributeCopy = v70;
        completionCopy = v69;
        self = selfCopy;
        v74 = 43;
        if (!isMetaClass)
        {
          v74 = 45;
        }

        v100 = ClassName;
        p_cache = (&OBJC_METACLASS___NFCoreTelephonyConnection + 16);
        v64(6, "%c[%{public}s %{public}s]:%i %{public}@, role=0x%lx, type=0x%lx", v74, v100, v103, 6234, nF_clientName, unsignedIntegerValue, unsignedIntegerValue2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v75 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = object_getClass(self);
        if (class_isMetaClass(v76))
        {
          v77 = 43;
        }

        else
        {
          v77 = 45;
        }

        v78 = object_getClassName(self);
        v79 = sel_getName(sela);
        nF_clientName2 = [v106 NF_clientName];
        *buf = 67110658;
        v115 = v77;
        v116 = 2082;
        v117 = v78;
        v118 = 2082;
        v119 = v79;
        p_cache = &OBJC_METACLASS___NFCoreTelephonyConnection.cache;
        v120 = 1024;
        v121 = 6234;
        v122 = 2114;
        v123 = nF_clientName2;
        v124 = 2048;
        v125 = unsignedIntegerValue;
        v126 = 2048;
        v127 = unsignedIntegerValue2;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@, role=0x%lx, type=0x%lx", buf, 0x40u);
      }

      if ([p_cache + 278 isRoleValid:unsignedIntegerValue] && unsignedIntegerValue2)
      {
        v81 = [objc_alloc((p_cache + 278)) initWithRemoteObject:sessionCopy role:unsignedIntegerValue type:unsignedIntegerValue2 driverWrapper:self->_driverWrapper workQueue:self->_workQueue];
        v12 = v106;
        [v81 setConnection:v106];
        [v81 setQueue:self];
        [v81 setUid:0xFFFFFFFFLL];
        v82 = sub_1001AE20C();
        [v81 setPowerConsumptionReporter:v82];

        exportedInterface = [v106 exportedInterface];
        sub_100060754(NFHardwareManagerInterface, exportedInterface);

        buf[0] = 0;
        v84 = sub_1001DC138(self, v81, v106, attributeCopy, buf);
        if (v84)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0, v84);
        }

        else
        {
          (*(completionCopy + 2))(completionCopy, v81, buf[0], 0);
          workQueue = self->_workQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001104A0;
          block[3] = &unk_100315F30;
          block[4] = self;
          dispatch_async(workQueue, block);
        }

        goto LABEL_60;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFLogGetLogger();
      v12 = v106;
      if (v85)
      {
        v86 = v85;
        v87 = object_getClass(self);
        v88 = class_isMetaClass(v87);
        v89 = object_getClassName(self);
        v104 = sel_getName(sela);
        v90 = 45;
        if (v88)
        {
          v90 = 43;
        }

        v86(3, "%c[%{public}s %{public}s]:%i Role or type mismatch", v90, v89, v104, 6237);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v91 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v92 = object_getClass(self);
        if (class_isMetaClass(v92))
        {
          v93 = 43;
        }

        else
        {
          v93 = 45;
        }

        v94 = object_getClassName(self);
        v95 = sel_getName(sela);
        *buf = 67109890;
        v115 = v93;
        v116 = 2082;
        v117 = v94;
        v118 = 2082;
        v119 = v95;
        v120 = 1024;
        v121 = 6237;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Role or type mismatch", buf, 0x22u);
      }

      v96 = [NSError alloc];
      v53 = [NSString stringWithUTF8String:"nfcd"];
      v112 = NSLocalizedDescriptionKey;
      v54 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v113 = v54;
      v55 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
      v56 = v96;
      v57 = v53;
      v58 = 10;
    }

    else
    {
      v42 = a2;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(self);
        v46 = class_isMetaClass(v45);
        v47 = object_getClassName(self);
        v102 = sel_getName(v42);
        v48 = 45;
        if (v46)
        {
          v48 = 43;
        }

        v44(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v48, v47, v102, 6218);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = object_getClass(self);
        if (class_isMetaClass(v50))
        {
          v51 = 43;
        }

        else
        {
          v51 = 45;
        }

        *buf = 67109890;
        v115 = v51;
        v116 = 2082;
        v117 = object_getClassName(self);
        v118 = 2082;
        v119 = sel_getName(v42);
        v120 = 1024;
        v121 = 6218;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
      }

      v52 = [NSError alloc];
      v53 = [NSString stringWithUTF8String:"nfcd"];
      v128 = NSLocalizedDescriptionKey;
      v54 = [NSString stringWithUTF8String:"NFC radio disabled"];
      v129 = v54;
      v55 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];
      v56 = v52;
      v57 = v53;
      v58 = 50;
    }

    v97 = [v56 initWithDomain:v57 code:v58 userInfo:v55];
    (*(completionCopy + 2))(completionCopy, 0, 0, v97);

LABEL_60:
    v15 = 0;
    goto LABEL_61;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(self);
    v19 = class_isMetaClass(v18);
    sel = completionCopy;
    selfCopy2 = self;
    v20 = attributeCopy;
    v21 = sessionCopy;
    v22 = object_getClassName(self);
    v23 = a2;
    v24 = sel_getName(a2);
    nF_clientName3 = [v12 NF_clientName];
    processIdentifier = [v12 processIdentifier];
    v101 = v24;
    a2 = v23;
    v26 = 45;
    if (v19)
    {
      v26 = 43;
    }

    v99 = v22;
    sessionCopy = v21;
    attributeCopy = v20;
    completionCopy = sel;
    self = selfCopy2;
    v17(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v26, v99, v101, 6212, nF_clientName3, processIdentifier);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v27 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = object_getClass(self);
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    v30 = object_getClassName(self);
    v31 = a2;
    v32 = v30;
    v33 = sel_getName(v31);
    nF_clientName4 = [v12 NF_clientName];
    *buf = 67110402;
    v115 = v29;
    v116 = 2082;
    v117 = v32;
    v118 = 2082;
    v119 = v33;
    v120 = 1024;
    v121 = 6212;
    v122 = 2114;
    v123 = nF_clientName4;
    v124 = 1024;
    LODWORD(v125) = [v12 processIdentifier];
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0, v15);
LABEL_61:
}

- (void)queueUnifiedAccessSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v12 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  sel = a2;
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v18 = sessionCopy;
    Name = sel_getName(a2);
    nF_clientName = [v12 NF_clientName];
    v94 = Name;
    sessionCopy = v18;
    v21 = 45;
    if (isMetaClass)
    {
      v21 = 43;
    }

    v14(6, "%c[%{public}s %{public}s]:%i %{public}@", v21, ClassName, v94, 6279, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = object_getClass(self);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    v25 = object_getClassName(self);
    v26 = sel_getName(sel);
    nF_clientName2 = [v12 NF_clientName];
    *buf = 67110146;
    v114 = v24;
    v115 = 2082;
    v116 = v25;
    v117 = 2082;
    v118 = v26;
    v119 = 1024;
    v120 = 6279;
    v121 = 2114;
    v122 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) == 2)
  {
    nF_whitelistChecker = [v12 NF_whitelistChecker];
    v29 = [_NFUnifiedAccessSession validateEntitlements:nF_whitelistChecker];

    if (v29)
    {
      v100 = v12;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(self);
        v33 = class_isMetaClass(v32);
        v99 = object_getClassName(self);
        v34 = completionCopy;
        v35 = attributeCopy;
        v36 = sessionCopy;
        v37 = sel_getName(sel);
        nF_clientName3 = [v100 NF_clientName];
        processIdentifier = [v100 processIdentifier];
        v95 = v37;
        sessionCopy = v36;
        attributeCopy = v35;
        completionCopy = v34;
        v39 = 45;
        if (v33)
        {
          v39 = 43;
        }

        v31(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v39, v99, v95, 6288, nF_clientName3, processIdentifier);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = object_getClass(self);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        v43 = object_getClassName(self);
        v44 = sel_getName(sel);
        [v100 NF_clientName];
        v46 = v45 = attributeCopy;
        processIdentifier2 = [v100 processIdentifier];
        *buf = 67110402;
        v114 = v42;
        v115 = 2082;
        v116 = v43;
        v117 = 2082;
        v118 = v44;
        v119 = 1024;
        v120 = 6288;
        v121 = 2114;
        v122 = v46;
        v123 = 1024;
        v124 = processIdentifier2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);

        attributeCopy = v45;
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, v29);
      v12 = v100;
    }

    else if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:sub_1000F15E0(self, attributeCopy)]== 1)
    {
      v53 = [[_NFUnifiedAccessSession alloc] initWithRemoteObject:sessionCopy driverWrapper:self->_driverWrapper workQueue:self->_workQueue];
      v54 = v53;
      if (v53)
      {
        [(_NFSession *)v53 setQueue:self];
        [(_NFXPCSession *)v54 setConnection:v12];
        [(_NFSession *)v54 setUid:0xFFFFFFFFLL];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = [attributeCopy objectForKeyedSubscript:@"session.force.express.exit"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v57 = [attributeCopy objectForKeyedSubscript:@"session.force.express.exit"];
            -[_NFSession setForceExpressExit:](v54, "setForceExpressExit:", [v57 BOOLValue]);
          }
        }

        exportedInterface = [v12 exportedInterface];
        sub_10006066C(NFHardwareManagerInterface, exportedInterface);

        (*(completionCopy + 2))(completionCopy, v54, [(_NFHardwareManager *)self isFirstInQueue], 0);
        workQueue = self->_workQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100110F40;
        block[3] = &unk_100318BA8;
        v103 = v54;
        selfCopy = self;
        v105 = v12;
        v60 = attributeCopy;
        v106 = attributeCopy;
        v107 = sel;
        v108 = 0;
        dispatch_async(workQueue, block);

        v61 = v103;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFLogGetLogger();
        if (v79)
        {
          v80 = v79;
          v81 = object_getClass(self);
          v82 = class_isMetaClass(v81);
          v83 = object_getClassName(self);
          v97 = sel_getName(sel);
          v84 = 45;
          if (v82)
          {
            v84 = 43;
          }

          v80(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v84, v83, v97, 6303);
        }

        v60 = attributeCopy;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v85 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = object_getClass(self);
          if (class_isMetaClass(v86))
          {
            v87 = 43;
          }

          else
          {
            v87 = 45;
          }

          v88 = object_getClassName(self);
          v89 = sel_getName(sel);
          *buf = 67109890;
          v114 = v87;
          v115 = 2082;
          v116 = v88;
          v117 = 2082;
          v118 = v89;
          v119 = 1024;
          v120 = 6303;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
        }

        v90 = [NSError alloc];
        v61 = [NSString stringWithUTF8String:"nfcd"];
        v109 = NSLocalizedDescriptionKey;
        v91 = [NSString stringWithUTF8String:"Unexpected Result"];
        v110 = v91;
        v92 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        v93 = [v90 initWithDomain:v61 code:13 userInfo:v92];
        (*(completionCopy + 2))(completionCopy, 0, 0, v93);
      }

      v29 = 0;
      attributeCopy = v60;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v63 = v62;
        v64 = object_getClass(self);
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(self);
        v96 = sel_getName(sel);
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v67, v66, v96, 6294);
      }

      v68 = attributeCopy;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v69 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = object_getClass(self);
        if (class_isMetaClass(v70))
        {
          v71 = 43;
        }

        else
        {
          v71 = 45;
        }

        v72 = object_getClassName(self);
        v73 = sel_getName(sel);
        *buf = 67109890;
        v114 = v71;
        v115 = 2082;
        v116 = v72;
        v117 = 2082;
        v118 = v73;
        v119 = 1024;
        v120 = 6294;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
      }

      v74 = [NSError alloc];
      v75 = [NSString stringWithUTF8String:"nfcd"];
      v111 = NSLocalizedDescriptionKey;
      v76 = [NSString stringWithUTF8String:"NFC radio disabled"];
      v112 = v76;
      v77 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      v78 = [v74 initWithDomain:v75 code:50 userInfo:v77];
      (*(completionCopy + 2))(completionCopy, 0, 0, v78);

      v29 = 0;
      attributeCopy = v68;
    }
  }

  else
  {
    v48 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v125 = NSLocalizedDescriptionKey;
    [NSString stringWithUTF8String:"Unresponsive hardware"];
    v50 = v49 = attributeCopy;
    v126 = v50;
    v51 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    v52 = [v48 initWithDomain:v29 code:58 userInfo:v51];
    (*(completionCopy + 2))(completionCopy, 0, 0, v52);

    attributeCopy = v49;
  }
}

- (void)queueSecureElementLoggingSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v9 NF_clientName];
    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@", v17, ClassName, Name, 6352, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = object_getClass(self);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    v21 = object_getClassName(self);
    v22 = sel_getName(a2);
    nF_clientName2 = [v9 NF_clientName];
    *buf = 67110146;
    v75 = v20;
    v76 = 2082;
    v77 = v21;
    v78 = 2082;
    v79 = v22;
    v80 = 1024;
    v81 = 6352;
    v82 = 2114;
    v83 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (sub_100003384(self) != 2 && sub_100003384(self) != 5)
  {
    v44 = [NSError alloc];
    v25 = [NSString stringWithUTF8String:"nfcd"];
    v86 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v87 = v45;
    v46 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v47 = [v44 initWithDomain:v25 code:58 userInfo:v46];
    (*(completionCopy + 2))(completionCopy, 0, 0, v47);

LABEL_27:
    v42 = attributeCopy;
    goto LABEL_41;
  }

  nF_whitelistChecker = [v9 NF_whitelistChecker];
  v25 = [_NFSecureElementLoggingSession validateEntitlements:nF_whitelistChecker];

  if (v25)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v27 = v26;
      v28 = object_getClass(self);
      v29 = class_isMetaClass(v28);
      v67 = object_getClassName(self);
      v30 = sel_getName(a2);
      nF_clientName3 = [v9 NF_clientName];
      processIdentifier = [v9 processIdentifier];
      v32 = 45;
      if (v29)
      {
        v32 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v32, v67, v30, 6361, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      v36 = object_getClassName(self);
      v37 = sel_getName(a2);
      nF_clientName4 = [v9 NF_clientName];
      processIdentifier2 = [v9 processIdentifier];
      *buf = 67110402;
      v75 = v35;
      v76 = 2082;
      v77 = v36;
      v78 = 2082;
      v79 = v37;
      v80 = 1024;
      v81 = 6361;
      v82 = 2114;
      v83 = nF_clientName4;
      v84 = 1024;
      v85 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v25);
    goto LABEL_27;
  }

  v40 = [(_NFXPCSession *)[_NFSecureElementLoggingSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
  v41 = v40;
  if (v40)
  {
    [(_NFSession *)v40 setQueue:self];
    [(_NFXPCSession *)v41 setConnection:v9];
    [(_NFSession *)v41 setUid:0xFFFFFFFFLL];
    [(_NFSecureElementLoggingSession *)v41 setDriverWrapper:self->_driverWrapper];
    buf[0] = 0;
    v42 = attributeCopy;
    v43 = sub_1001DC138(self, v41, v9, attributeCopy, buf);
    if (v43)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v43);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v41, buf[0], 0);
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100111A98;
      block[3] = &unk_100315F30;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFLogGetLogger();
    if (v48)
    {
      v49 = v48;
      v50 = object_getClass(self);
      v51 = class_isMetaClass(v50);
      v52 = object_getClassName(self);
      v65 = sel_getName(a2);
      v53 = 45;
      if (v51)
      {
        v53 = 43;
      }

      v49(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v53, v52, v65, 6368);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = object_getClass(self);
      if (class_isMetaClass(v55))
      {
        v56 = 43;
      }

      else
      {
        v56 = 45;
      }

      v57 = object_getClassName(self);
      v58 = sel_getName(a2);
      *buf = 67109890;
      v75 = v56;
      v76 = 2082;
      v77 = v57;
      v78 = 2082;
      v79 = v58;
      v80 = 1024;
      v81 = 6368;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v59 = [NSError alloc];
    v60 = [NSString stringWithUTF8String:"nfcd"];
    v72 = NSLocalizedDescriptionKey;
    v61 = [NSString stringWithUTF8String:"Unexpected Result"];
    v73 = v61;
    v62 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v63 = [v59 initWithDomain:v60 code:13 userInfo:v62];
    (*(completionCopy + 2))(completionCopy, 0, 0, v63);

    v42 = attributeCopy;
  }

  v25 = 0;
LABEL_41:
}

- (void)queueLPEMConfigSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v10 NF_clientName];
    v18 = 45;
    if (isMetaClass)
    {
      v18 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i %{public}@", v18, ClassName, Name, 6404, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(self);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    v22 = object_getClassName(self);
    v23 = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    *buf = 67110146;
    v52 = v21;
    v53 = 2082;
    v54 = v22;
    v55 = 2082;
    v56 = v23;
    v57 = 1024;
    v58 = 6404;
    v59 = 2114;
    v60 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v26 = [_NFLPEMConfigSession validateEntitlements:nF_whitelistChecker];

  if (v26)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(self);
      v30 = class_isMetaClass(v29);
      v47 = object_getClassName(self);
      v31 = sel_getName(a2);
      nF_clientName3 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v33 = 45;
      if (v30)
      {
        v33 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v33, v47, v31, 6408, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(self);
      v38 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      v52 = v36;
      v53 = 2082;
      v54 = v37;
      v55 = 2082;
      v56 = v38;
      v57 = 1024;
      v58 = 6408;
      v59 = 2114;
      v60 = nF_clientName4;
      v61 = 1024;
      v62 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v26);
    v42 = attributeCopy;
    v41 = sessionCopy;
  }

  else
  {
    v41 = sessionCopy;
    v43 = [(_NFXPCSession *)[_NFLPEMConfigSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
    [(_NFSession *)v43 setQueue:self];
    [(_NFXPCSession *)v43 setConnection:v10];
    [(_NFSession *)v43 setUid:0xFFFFFFFFLL];
    [(_NFLPEMConfigSession *)v43 setDriverWrapper:self->_driverWrapper];
    buf[0] = 0;
    v42 = attributeCopy;
    v44 = sub_1001DC138(self, v43, v10, attributeCopy, buf);
    if (v44)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v44);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v43, buf[0], 0);
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100111FAC;
      block[3] = &unk_100315F30;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }
}

- (void)queueCredentialSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v11 = +[NSXPCConnection currentConnection];
  v62 = -1;
  v12 = sub_1001DB5E0(self, v11, 1, &v62);
  if (v12)
  {
    v13 = v12;
LABEL_14:
    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
    goto LABEL_15;
  }

  nF_whitelistChecker = [v11 NF_whitelistChecker];
  v13 = [_NFCredentialSession validateEntitlements:nF_whitelistChecker];

  if (v13)
  {
    sel = a2;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(self);
      v18 = attributeCopy;
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(sel);
      nF_clientName = [v11 NF_clientName];
      processIdentifier = [v11 processIdentifier];
      v23 = !isMetaClass;
      attributeCopy = v18;
      v24 = 45;
      if (!v23)
      {
        v24 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i Session not allowed from %@ (pid %d)", v24, ClassName, Name, 6462, nF_clientName, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(self);
      v27 = attributeCopy;
      if (class_isMetaClass(v26))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(self);
      v30 = sel_getName(sel);
      nF_clientName2 = [v11 NF_clientName];
      processIdentifier2 = [v11 processIdentifier];
      *buf = 67110402;
      v66 = v28;
      attributeCopy = v27;
      v67 = 2082;
      v68 = v29;
      v69 = 2082;
      v70 = v30;
      v71 = 1024;
      v72 = 6462;
      v73 = 2112;
      v74 = nF_clientName2;
      v75 = 1024;
      v76 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %@ (pid %d)", buf, 0x32u);
    }

    goto LABEL_14;
  }

  v33 = [_NFCredentialSession alloc];
  v34 = sub_100007D90(&self->super.isa);
  v13 = [(_NFXPCSession *)v33 initWithRemoteObject:sessionCopy workQueue:v34];

  if (v13)
  {
    [v13 setQueue:self];
    [v13 setConnection:v11];
    driverWrapper = [(_NFHardwareManager *)self driverWrapper];
    objc_storeStrong(v13 + 23, driverWrapper);

    [v13 setUid:v62];
    buf[0] = 0;
    v36 = sub_1001DC138(self, v13, v11, attributeCopy, buf);
    if (v36)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v36);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v13, buf[0], 0);
      v55 = sub_100007D90(&self->super.isa);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100112654;
      block[3] = &unk_100315F30;
      block[4] = self;
      dispatch_async(v55, block);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(self);
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(self);
      v56 = sel_getName(a2);
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v42, v41, v56, 6471);
    }

    sela = attributeCopy;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(self);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(self);
      v47 = sel_getName(a2);
      *buf = 67109890;
      v66 = v45;
      v67 = 2082;
      v68 = v46;
      v69 = 2082;
      v70 = v47;
      v71 = 1024;
      v72 = 6471;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v48 = [NSError alloc];
    v49 = [NSString stringWithUTF8String:"nfcd"];
    v63[0] = NSLocalizedDescriptionKey;
    v50 = [NSString stringWithUTF8String:"Unexpected Result"];
    v64[0] = v50;
    v64[1] = &off_100331CC8;
    v63[1] = @"Line";
    v63[2] = @"Method";
    v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v64[2] = v51;
    v63[3] = NSDebugDescriptionErrorKey;
    6472 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 6472];
    v64[3] = 6472;
    v53 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:4];
    v54 = [v48 initWithDomain:v49 code:13 userInfo:v53];
    (*(completionCopy + 2))(completionCopy, 0, 0, v54);

    v13 = 0;
    attributeCopy = sela;
  }

LABEL_15:
}

- (void)queueCardSession:(id)session sessionConfig:(id)config completion:(id)completion
{
  sessionCopy = session;
  configCopy = config;
  completionCopy = completion;
  v12 = +[NSXPCConnection currentConnection];
  v83 = -1;
  v13 = sub_1001DB5E0(self, v12, 0, &v83);
  if (v13)
  {
    nF_serviceType = v13;
    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
    goto LABEL_43;
  }

  driverWrapper = [(_NFHardwareManager *)self driverWrapper];
  if (!driverWrapper || (v16 = driverWrapper[173], driverWrapper, (v16 & 1) == 0))
  {
    v31 = [NSError alloc];
    nF_serviceType = [NSString stringWithUTF8String:"nfcd"];
    v93[0] = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v94[0] = v32;
    v94[1] = &off_100331CE0;
    v93[1] = @"Line";
    v93[2] = @"Method";
    v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v94[2] = v33;
    v93[3] = NSDebugDescriptionErrorKey;
    6516 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 6516];
    v94[3] = 6516;
    v35 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:4];
    v36 = [v31 initWithDomain:nF_serviceType code:14 userInfo:v35];
    (*(completionCopy + 2))(completionCopy, 0, 0, v36);

LABEL_31:
    goto LABEL_43;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:1]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v38 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v42 = 45;
      if (isMetaClass)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v42, ClassName, Name, 6521);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(self);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(self);
      v47 = sel_getName(a2);
      *buf = 67109890;
      *&buf[4] = v45;
      *&buf[8] = 2082;
      *&buf[10] = v46;
      *&buf[18] = 2082;
      *&buf[20] = v47;
      *&buf[28] = 1024;
      *&buf[30] = 6521;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v48 = [NSError alloc];
    nF_serviceType = [NSString stringWithUTF8String:"nfcd"];
    v91 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v92 = v32;
    v49 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v50 = [v48 initWithDomain:nF_serviceType code:50 userInfo:v49];
    (*(completionCopy + 2))(completionCopy, 0, 0, v50);

    goto LABEL_31;
  }

  nF_serviceType = [v12 NF_serviceType];
  if (nF_serviceType && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [nF_serviceType unsignedIntegerValue] == 2)
  {
    nF_whitelistChecker = [v12 NF_whitelistChecker];
    v18 = [_NFCardSession validateEntitlements:nF_whitelistChecker];

    if (v18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v20 = v19;
        v21 = object_getClass(self);
        v71 = class_isMetaClass(v21);
        v72 = object_getClassName(self);
        v70 = sel_getName(a2);
        nF_clientName = [v12 NF_clientName];
        processIdentifier = [v12 processIdentifier];
        v23 = 45;
        if (v71)
        {
          v23 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %{public}d)", v23, v72, v70, 6537, nF_clientName, processIdentifier);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(self);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v73 = v26;
        v27 = object_getClassName(self);
        v28 = sel_getName(a2);
        nF_clientName2 = [v12 NF_clientName];
        processIdentifier2 = [v12 processIdentifier];
        *buf = 67110402;
        *&buf[4] = v73;
        *&buf[8] = 2082;
        *&buf[10] = v27;
        *&buf[18] = 2082;
        *&buf[20] = v28;
        *&buf[28] = 1024;
        *&buf[30] = 6537;
        v85 = 2114;
        v86 = nF_clientName2;
        v87 = 1026;
        v88 = processIdentifier2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %{public}d)", buf, 0x32u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, v18);
    }

    else
    {
      nF_whitelistChecker2 = [v12 NF_whitelistChecker];
      if (v12)
      {
        [v12 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_100112FC8;
      v74[3] = &unk_100318BD0;
      v80 = completionCopy;
      v81 = a2;
      v74[4] = self;
      v75 = configCopy;
      v76 = nF_whitelistChecker2;
      v77 = sessionCopy;
      v78 = v12;
      v82 = v83;
      v79 = nF_serviceType;
      v18 = nF_whitelistChecker2;
      [_NFCardSession isEligibleWithUserPrompt:1 auditToken:buf completion:v74];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(self);
      v54 = class_isMetaClass(v53);
      v55 = object_getClassName(self);
      v68 = sel_getName(a2);
      v56 = 45;
      if (v54)
      {
        v56 = 43;
      }

      v52(4, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", v56, v55, v68, 6528, nF_serviceType);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = object_getClass(self);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(self);
      v61 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v59;
      *&buf[8] = 2082;
      *&buf[10] = v60;
      *&buf[18] = 2082;
      *&buf[20] = v61;
      *&buf[28] = 1024;
      *&buf[30] = 6528;
      v85 = 2114;
      v86 = nF_serviceType;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", buf, 0x2Cu);
    }

    v62 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v89 = NSLocalizedDescriptionKey;
    v63 = [NSString stringWithUTF8String:"Invalid State"];
    v90 = v63;
    v64 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v65 = [v62 initWithDomain:v18 code:12 userInfo:v64];
    (*(completionCopy + 2))(completionCopy, 0, 0, v65);
  }

LABEL_43:
}

- (void)queueCardFieldDetectSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  v78 = -1;
  v10 = sub_1001DB5E0(self, v9, 0, &v78);
  if (v10)
  {
    nF_serviceType = v10;
    completionCopy[2](completionCopy, 0, v10);
    goto LABEL_43;
  }

  driverWrapper = [(_NFHardwareManager *)self driverWrapper];
  if (!driverWrapper || (v13 = driverWrapper[173], driverWrapper, (v13 & 1) == 0))
  {
    v29 = [NSError alloc];
    nF_serviceType = [NSString stringWithUTF8String:"nfcd"];
    v88[0] = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v89[0] = v30;
    v89[1] = &off_100331D58;
    v88[1] = @"Line";
    v88[2] = @"Method";
    v31 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v89[2] = v31;
    v88[3] = NSDebugDescriptionErrorKey;
    6607 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 6607];
    v89[3] = 6607;
    v33 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:4];
    v34 = [v29 initWithDomain:nF_serviceType code:14 userInfo:v33];
    completionCopy[2](completionCopy, 0, v34);

LABEL_31:
    goto LABEL_43;
  }

  if ([(_NFHardwareManager *)self nfcRadioEnabled:0 showUIPopup:1]!= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v36 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v40 = 45;
      if (isMetaClass)
      {
        v40 = 43;
      }

      v36(3, "%c[%{public}s %{public}s]:%i NFC radio is disabled", v40, ClassName, Name, 6612);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = object_getClass(self);
      if (class_isMetaClass(v42))
      {
        v43 = 43;
      }

      else
      {
        v43 = 45;
      }

      v44 = object_getClassName(self);
      v45 = sel_getName(a2);
      *buf = 67109890;
      *&buf[4] = v43;
      *&buf[8] = 2082;
      *&buf[10] = v44;
      *&buf[18] = 2082;
      *&buf[20] = v45;
      *&buf[28] = 1024;
      *&buf[30] = 6612;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFC radio is disabled", buf, 0x22u);
    }

    v46 = [NSError alloc];
    nF_serviceType = [NSString stringWithUTF8String:"nfcd"];
    v86 = NSLocalizedDescriptionKey;
    v30 = [NSString stringWithUTF8String:"NFC radio disabled"];
    v87 = v30;
    v47 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v48 = [v46 initWithDomain:nF_serviceType code:50 userInfo:v47];
    completionCopy[2](completionCopy, 0, v48);

    goto LABEL_31;
  }

  nF_serviceType = [v9 NF_serviceType];
  if (nF_serviceType && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [nF_serviceType unsignedIntegerValue] == 2)
  {
    nF_whitelistChecker = [v9 NF_whitelistChecker];
    v15 = [_NFCardSession validateEntitlements:nF_whitelistChecker];

    if (v15)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v17 = v16;
        v18 = object_getClass(self);
        v68 = class_isMetaClass(v18);
        v69 = object_getClassName(self);
        v19 = sel_getName(a2);
        nF_clientName = [v9 NF_clientName];
        processIdentifier = [v9 processIdentifier];
        v21 = 45;
        if (v68)
        {
          v21 = 43;
        }

        v17(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %{public}d)", v21, v69, v19, 6628, nF_clientName, processIdentifier);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = object_getClass(self);
        if (class_isMetaClass(v23))
        {
          v24 = 43;
        }

        else
        {
          v24 = 45;
        }

        v25 = object_getClassName(self);
        v26 = sel_getName(a2);
        nF_clientName2 = [v9 NF_clientName];
        processIdentifier2 = [v9 processIdentifier];
        *buf = 67110402;
        *&buf[4] = v24;
        *&buf[8] = 2082;
        *&buf[10] = v25;
        *&buf[18] = 2082;
        *&buf[20] = v26;
        *&buf[28] = 1024;
        *&buf[30] = 6628;
        v80 = 2114;
        v81 = nF_clientName2;
        v82 = 1026;
        v83 = processIdentifier2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %{public}d)", buf, 0x32u);
      }

      completionCopy[2](completionCopy, 0, v15);
    }

    else
    {
      processIdentifier3 = [v9 processIdentifier];
      if (v9)
      {
        [v9 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_100114100;
      v70[3] = &unk_100318BF8;
      v74 = completionCopy;
      v75 = a2;
      v70[4] = self;
      v71 = sessionCopy;
      v72 = v9;
      v76 = v78;
      v73 = nF_serviceType;
      v77 = processIdentifier3;
      [_NFCardSession isEligibleWithUserPrompt:1 auditToken:buf completion:v70];

      v15 = v74;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFLogGetLogger();
    if (v49)
    {
      v50 = v49;
      v51 = object_getClass(self);
      v52 = class_isMetaClass(v51);
      v64 = object_getClassName(self);
      v66 = sel_getName(a2);
      v53 = 45;
      if (v52)
      {
        v53 = 43;
      }

      v50(4, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", v53, v64, v66, 6619, nF_serviceType);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = object_getClass(self);
      if (class_isMetaClass(v55))
      {
        v56 = 43;
      }

      else
      {
        v56 = 45;
      }

      v57 = object_getClassName(self);
      v58 = sel_getName(a2);
      *buf = 67110146;
      *&buf[4] = v56;
      *&buf[8] = 2082;
      *&buf[10] = v57;
      *&buf[18] = 2082;
      *&buf[20] = v58;
      *&buf[28] = 1024;
      *&buf[30] = 6619;
      v80 = 2114;
      v81 = nF_serviceType;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", buf, 0x2Cu);
    }

    v59 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v84 = NSLocalizedDescriptionKey;
    v60 = [NSString stringWithUTF8String:"Invalid State"];
    v85 = v60;
    v61 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v62 = [v59 initWithDomain:v15 code:12 userInfo:v61];
    completionCopy[2](completionCopy, 0, v62);
  }

LABEL_43:
}

- (void)isCardSessionEligibleWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  nF_serviceType = [v6 NF_serviceType];
  if (nF_serviceType && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [nF_serviceType unsignedIntegerValue] == 2)
  {
    nF_whitelistChecker = [v6 NF_whitelistChecker];
    v9 = [_NFCardSession validateEntitlements:nF_whitelistChecker];

    if (v9)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        nF_clientName = [v6 NF_clientName];
        processIdentifier = [v6 processIdentifier];
        v16 = 45;
        if (isMetaClass)
        {
          v16 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %{public}d)", v16, ClassName, Name, 6685, nF_clientName, processIdentifier);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = object_getClass(self);
        if (class_isMetaClass(v18))
        {
          v19 = 43;
        }

        else
        {
          v19 = 45;
        }

        v20 = object_getClassName(self);
        v21 = sel_getName(a2);
        nF_clientName2 = [v6 NF_clientName];
        *buf = 67110402;
        *&buf[4] = v19;
        *&buf[8] = 2082;
        *&buf[10] = v20;
        *&buf[18] = 2082;
        *&buf[20] = v21;
        *&buf[28] = 1024;
        *&buf[30] = 6685;
        v43 = 2114;
        v44 = nF_clientName2;
        v45 = 1026;
        processIdentifier2 = [v6 processIdentifier];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %{public}d)", buf, 0x32u);
      }

      completionCopy[2](completionCopy, 3, v9);
    }

    else
    {
      if (v6)
      {
        [v6 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100114D84;
      v39[3] = &unk_100318C20;
      v39[4] = self;
      v41 = a2;
      v40 = completionCopy;
      [_NFCardSession isEligibleWithUserPrompt:0 auditToken:buf completion:v39];

      v9 = 0;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(self);
      v26 = class_isMetaClass(v25);
      v35 = object_getClassName(self);
      v36 = sel_getName(a2);
      v27 = 45;
      if (v26)
      {
        v27 = 43;
      }

      v24(4, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", v27, v35, v36, 6676, nF_serviceType);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = object_getClass(self);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      *buf = 67110146;
      *&buf[4] = v30;
      *&buf[8] = 2082;
      *&buf[10] = object_getClassName(self);
      *&buf[18] = 2082;
      *&buf[20] = sel_getName(a2);
      *&buf[28] = 1024;
      *&buf[30] = 6676;
      v43 = 2114;
      v44 = nF_serviceType;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid service type: %{public}@", buf, 0x2Cu);
    }

    v31 = [NSError alloc];
    v9 = [NSString stringWithUTF8String:"nfcd"];
    v47 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Invalid State"];
    v48 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v34 = [v31 initWithDomain:v9 code:12 userInfo:v33];
    completionCopy[2](completionCopy, 3, v34);
  }
}

- (void)queueInternalConfigurationSession:(id)session sessionAttribute:(id)attribute completion:(id)completion
{
  sessionCopy = session;
  attributeCopy = attribute;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [v10 NF_clientName];
    v18 = 45;
    if (isMetaClass)
    {
      v18 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i %{public}@", v18, ClassName, Name, 6756, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(self);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    v22 = object_getClassName(self);
    v23 = sel_getName(a2);
    nF_clientName2 = [v10 NF_clientName];
    *buf = 67110146;
    v52 = v21;
    v53 = 2082;
    v54 = v22;
    v55 = 2082;
    v56 = v23;
    v57 = 1024;
    v58 = 6756;
    v59 = 2114;
    v60 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  nF_whitelistChecker = [v10 NF_whitelistChecker];
  v26 = [_NFInternalConfigurationSession validateEntitlements:nF_whitelistChecker];

  if (v26)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(self);
      v30 = class_isMetaClass(v29);
      v47 = object_getClassName(self);
      v31 = sel_getName(a2);
      nF_clientName3 = [v10 NF_clientName];
      processIdentifier = [v10 processIdentifier];
      v33 = 45;
      if (v30)
      {
        v33 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", v33, v47, v31, 6760, nF_clientName3, processIdentifier);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(self);
      v38 = sel_getName(a2);
      nF_clientName4 = [v10 NF_clientName];
      processIdentifier2 = [v10 processIdentifier];
      *buf = 67110402;
      v52 = v36;
      v53 = 2082;
      v54 = v37;
      v55 = 2082;
      v56 = v38;
      v57 = 1024;
      v58 = 6760;
      v59 = 2114;
      v60 = nF_clientName4;
      v61 = 1024;
      v62 = processIdentifier2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session not allowed from %{public}@ (pid %d)", buf, 0x32u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v26);
    v42 = attributeCopy;
    v41 = sessionCopy;
  }

  else
  {
    v41 = sessionCopy;
    v43 = [(_NFXPCSession *)[_NFInternalConfigurationSession alloc] initWithRemoteObject:sessionCopy workQueue:self->_workQueue];
    [(_NFSession *)v43 setQueue:self];
    [(_NFXPCSession *)v43 setConnection:v10];
    [(_NFSession *)v43 setUid:0xFFFFFFFFLL];
    [(_NFInternalConfigurationSession *)v43 setDriverWrapper:self->_driverWrapper];
    buf[0] = 0;
    v42 = attributeCopy;
    v44 = sub_1001DC138(self, v43, v10, attributeCopy, buf);
    if (v44)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v44);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v43, buf[0], 0);
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100115438;
      block[3] = &unk_100315F30;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }
}

- (void)preWarmWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115510;
  block[3] = &unk_1003188A0;
  block[4] = self;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  dispatch_async(workQueue, block);
}

- (void)updateBackgroundTagReading:(unsigned int)reading params:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  v10 = +[NSXPCConnection currentConnection];
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115E94;
  block[3] = &unk_100318C48;
  readingCopy = reading;
  block[4] = self;
  v16 = paramsCopy;
  v17 = v10;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = v10;
  v14 = paramsCopy;
  dispatch_async(workQueue, block);
}

- (void)actOnUserInitiatedSystemShutDown:(unsigned int)down completion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100116898;
  block[3] = &unk_100318828;
  downCopy = down;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)handleRestartDiscovery
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i handleRestartDiscovery", v9, ClassName, Name, 7115);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v17 = v12;
    v18 = 2082;
    v19 = object_getClassName(self);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 7115;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i handleRestartDiscovery", buf, 0x22u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001174B4;
  block[3] = &unk_100315F58;
  block[4] = self;
  block[5] = a2;
  dispatch_async(workQueue, block);
}

- (void)handleHardwareReset:(const char *)reset
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001177B0;
  v4[3] = &unk_100315F58;
  v4[4] = self;
  v4[5] = reset;
  dispatch_async(workQueue, v4);
}

- (void)handleStackLoad
{
  v4 = NFGetProductType();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i ptype = %d", v9, ClassName, Name, 7139, v4);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67110146;
    v71 = v12;
    v72 = 2082;
    v73 = object_getClassName(self);
    v74 = 2082;
    v75 = sel_getName(a2);
    v76 = 1024;
    v77 = 7139;
    v78 = 1024;
    v79 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ptype = %d", buf, 0x28u);
  }

  driverWrapper = self->_driverWrapper;
  v69 = 0;
  v14 = sub_10021E6CC(driverWrapper, &v69);
  v15 = v69;
  v16 = v15;
  if (v14)
  {
    v17 = v15;
    p_super = &self->_controllerInfo->super;
    self->_controllerInfo = v17;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(self);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(self);
      v65 = sel_getName(a2);
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Failed to get controller info", v24, v23, v65, 7142);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    p_super = NFSharedLogGetLogger();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(self);
      v28 = sel_getName(a2);
      *buf = 67109890;
      v71 = v26;
      v72 = 2082;
      v73 = v27;
      v74 = 2082;
      v75 = v28;
      v76 = 1024;
      v77 = 7142;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get controller info", buf, 0x22u);
    }
  }

  if ([(NFHardwareControllerInfo *)self->_controllerInfo hasAntenna])
  {
    v29 = sub_1001AB908(NFPowerTrackingConsumer, [(NFHardwareControllerInfo *)self->_controllerInfo siliconName]);
    v30 = v29;
    if (v29)
    {
      *(v29 + 16) = 1;
    }

    v31 = sub_1001AE20C();
    sub_1001AE198(v31, v30);

    v32 = self->_driverWrapper;
    v33 = sub_1001AE20C();
    sub_100224618(v32, v33);
  }

  if (self->_secureElementWrapper)
  {
    v34 = sub_10004BF2C();
    v35 = [(_NFHardwareManager *)self setRoutingConfig:v34];

    if (v35)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFLogGetLogger();
      if (v36)
      {
        v37 = v36;
        v38 = object_getClass(self);
        v39 = class_isMetaClass(v38);
        v40 = object_getClassName(self);
        v66 = sel_getName(a2);
        v41 = 45;
        if (v39)
        {
          v41 = 43;
        }

        v37(3, "%c[%{public}s %{public}s]:%i Failed to set routing mode", v41, v40, v66, 7158);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = object_getClass(self);
        if (class_isMetaClass(v43))
        {
          v44 = 43;
        }

        else
        {
          v44 = 45;
        }

        v45 = object_getClassName(self);
        v46 = sel_getName(a2);
        *buf = 67109890;
        v71 = v44;
        v72 = 2082;
        v73 = v45;
        v74 = 2082;
        v75 = v46;
        v76 = 1024;
        v77 = 7158;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set routing mode", buf, 0x22u);
      }
    }

    else
    {
      [(_NFHardwareManager *)self refreshSecureElementInfo];
      v42 = sub_10004C144();
      v47 = [(_NFHardwareManager *)self setRoutingConfig:v42];
    }
  }

  [(_NFControllerManager *)self->_controllerManager initSETransactionsStates];
  v48 = self->_driverWrapper;
  if (v48 && v48->_hwState == 1)
  {
    sub_10002E704(self->_expressModeManager);
  }

  if (self->_prefObserver)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFLogGetLogger();
    if (v49)
    {
      v50 = v49;
      v51 = object_getClass(self);
      v52 = class_isMetaClass(v51);
      v53 = object_getClassName(self);
      v67 = sel_getName(a2);
      v54 = 45;
      if (v52)
      {
        v54 = 43;
      }

      v50(3, "%c[%{public}s %{public}s]:%i Error ! prefs observer still present", v54, v53, v67, 7172);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = object_getClass(self);
      if (class_isMetaClass(v56))
      {
        v57 = 43;
      }

      else
      {
        v57 = 45;
      }

      v58 = object_getClassName(self);
      v59 = sel_getName(a2);
      *buf = 67109890;
      v71 = v57;
      v72 = 2082;
      v73 = v58;
      v74 = 2082;
      v75 = v59;
      v76 = 1024;
      v77 = 7172;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error ! prefs observer still present", buf, 0x22u);
    }

    [(NFPreferenceObserver *)self->_prefObserver stop];
  }

  v60 = objc_opt_new();
  prefObserver = self->_prefObserver;
  self->_prefObserver = v60;

  v62 = self->_prefObserver;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100117EB4;
  v68[3] = &unk_100315F30;
  v68[4] = self;
  [(NFPreferenceObserver *)v62 start:v68];
}

- (void)handleHWRecoveryCompletion:(BOOL)completion
{
  if (completion)
  {
    v4 = sub_100003384(self);

    sub_1000E0EB4(&self->super.isa, v4);
  }
}

- (void)handleStackUnload
{
  sub_10002F394(&self->_expressModeManager->super.isa);
  sub_100031C70(self->_expressModeManager);
  [(NFPreferenceObserver *)self->_prefObserver stop];
  prefObserver = self->_prefObserver;
  self->_prefObserver = 0;

  v4 = sub_10020D030(self);
}

- (void)handleExpressModeStarted
{
  sub_100005420(self);
  v4 = objc_opt_new();
  [(NFSecureElementWrapper *)self->_secureElementWrapper setActiveApplet:v4];

  v5 = +[NFPowerAssertion sharedPowerAssertion];
  [v5 holdPowerAssertion:@"ExpressMode" behaviourWhenSleepStarted:0];

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: nfcd", v11, ClassName, Name, 7213);
  }

  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    *v78 = v14;
    *&v78[4] = 2082;
    *&v78[6] = object_getClassName(self);
    *&v78[14] = 2082;
    *&v78[16] = sel_getName(a2);
    v79 = 1024;
    v80 = 7213;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode activated: nfcd", buf, 0x22u);
  }

  lastKnownRoutingConfig = [(_NFHardwareManager *)self lastKnownRoutingConfig];
  wantsExpress = [lastKnownRoutingConfig wantsExpress];

  if (wantsExpress)
  {
    kdebug_trace();
    v17 = NFSharedSignpostLog();
    if (os_signpost_enabled(v17))
    {
      v18 = sub_10002BB54(self->_expressModeManager);
      *buf = 138412290;
      *v78 = v18;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_ENTERED", "Express type %@", buf, 0xCu);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(self);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(self);
      v68 = sel_getName(a2);
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(6, "%c[%{public}s %{public}s]:%i express mode started", v24, v23, v68, 7226);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(self);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(self);
      v29 = sel_getName(a2);
      *buf = 67109890;
      *v78 = v27;
      *&v78[4] = 2082;
      *&v78[6] = v28;
      *&v78[14] = 2082;
      *&v78[16] = v29;
      v79 = 1024;
      v80 = 7226;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i express mode started", buf, 0x22u);
    }

    currentSecureElementSession = self->_currentSecureElementSession;
    if (objc_opt_respondsToSelector())
    {
      self->_inSessionExpressSessionID = [(_NFSession *)self->_currentSecureElementSession sessionID];
      [(_NFSession *)self->_currentSecureElementSession handleExpressModeStarted];
      if (![(_NFSession *)self->_currentSecureElementSession isMemberOfClass:objc_opt_class()])
      {
        return;
      }

      v31 = sub_10002BB54(self->_expressModeManager);
      sub_1000E7BDC(self, "com.apple.stockholm.express.enter", v31);
    }

    else
    {
      self->_inSessionExpressSessionID = -1;
      v43 = sub_10002BB54(self->_expressModeManager);
      sub_1000E7BDC(self, "com.apple.stockholm.express.enter", v43);

      v44 = NFSharedSignpostLog();
      if (os_signpost_enabled(v44))
      {
        v45 = sub_10002BB54(self->_expressModeManager);
        *buf = 136315394;
        *v78 = "com.apple.stockholm.express.enter";
        *&v78[8] = 2112;
        *&v78[10] = v45;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_MODE_ENTERED_NOTIFICATION", "%s, type: %@", buf, 0x16u);
      }

      v31 = objc_opt_new();
      v46 = sub_10021E074(self->_driverWrapper);
      if ([v46 notificationType] == 3)
      {
        v47 = v46;
        tciArray = [v47 tciArray];
        if (tciArray)
        {
          v49 = tciArray;
          tciArray2 = [v47 tciArray];
          v51 = [tciArray2 count];

          if (v51)
          {
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            tciArray3 = [v47 tciArray];
            v53 = [tciArray3 countByEnumeratingWithState:&v70 objects:v76 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = *v71;
              do
              {
                for (i = 0; i != v54; i = i + 1)
                {
                  if (*v71 != v55)
                  {
                    objc_enumerationMutation(tciArray3);
                  }

                  v57 = *(*(&v70 + 1) + 8 * i);
                  if ([v31 length])
                  {
                    [v31 appendString:{@", "}];
                  }

                  nF_asHexString = [v57 NF_asHexString];
                  [v31 appendString:nF_asHexString];
                }

                v54 = [tciArray3 countByEnumeratingWithState:&v70 objects:v76 count:16];
              }

              while (v54);
            }

            sub_1000E7BDC(self, "com.apple.stockholm.express.field.ecp2.tci", v31);
            v59 = NFSharedSignpostLog();
            if (os_signpost_enabled(v59))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_MOD_ECP2_FIELD_TCI_NOTIFICATION", "com.apple.stockholm.express.field.ecp2.tci", buf, 2u);
            }
          }
        }
      }

      v60 = [NSMutableDictionary alloc];
      v74[0] = @"xpcEventName";
      v74[1] = @"Type";
      v75[0] = @"com.apple.stockholm.express.enterV2";
      v61 = sub_10002BB54(self->_expressModeManager);
      v75[1] = v61;
      v62 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
      v63 = [v60 initWithDictionary:v62];

      if ([v31 length])
      {
        [v63 setObject:v31 forKeyedSubscript:@"Ecp2TCI"];
      }

      v64 = +[NFSecureXPCEventPublisherManager sharedManager];
      wallet = [v64 wallet];
      v66 = wallet;
      if (wallet)
      {
        sub_100235634(wallet, v63, 1);
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v33 = v32;
      v34 = object_getClass(self);
      v35 = class_isMetaClass(v34);
      v36 = object_getClassName(self);
      v69 = sel_getName(a2);
      v37 = 45;
      if (v35)
      {
        v37 = 43;
      }

      v33(4, "%c[%{public}s %{public}s]:%i Routing no longer in express mode; dropping signal", v37, v36, v69, 7216);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(self);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(self);
      v42 = sel_getName(a2);
      *buf = 67109890;
      *v78 = v40;
      *&v78[4] = 2082;
      *&v78[6] = v41;
      *&v78[14] = 2082;
      *&v78[16] = v42;
      v79 = 1024;
      v80 = 7216;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Routing no longer in express mode; dropping signal", buf, 0x22u);
    }

    sub_100007EE0(self->_expressModeManager);
    v31 = +[NFPowerAssertion sharedPowerAssertion];
    [v31 releasePowerAssertion:@"ExpressMode"];
  }
}

- (void)handleExpressModeExited
{
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: nfcd", v9, ClassName, Name, 7283);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v61 = v12;
    v62 = 2082;
    v63 = object_getClassName(self);
    v64 = 2082;
    v65 = sel_getName(a2);
    v66 = 1024;
    v67 = 7283;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: nfcd", buf, 0x22u);
  }

  kdebug_trace();
  v13 = NFSharedSignpostLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_EXITED", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v15 = v14;
    v16 = object_getClass(self);
    v17 = class_isMetaClass(v16);
    v18 = object_getClassName(self);
    v57 = sel_getName(a2);
    v19 = 45;
    if (v17)
    {
      v19 = 43;
    }

    v15(6, "%c[%{public}s %{public}s]:%i express mode exited", v19, v18, v57, 7288);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = object_getClass(self);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    v23 = object_getClassName(self);
    v24 = sel_getName(a2);
    *buf = 67109890;
    v61 = v22;
    v62 = 2082;
    v63 = v23;
    v64 = 2082;
    v65 = v24;
    v66 = 1024;
    v67 = 7288;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i express mode exited", buf, 0x22u);
  }

  currentSecureElementSession = self->_currentSecureElementSession;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    sub_1000E7BDC(self, "com.apple.stockholm.express.exit", 0);
    v27 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v27))
    {
LABEL_28:

      goto LABEL_40;
    }

    *buf = 0;
LABEL_27:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_MODE_EXITED_NOTIFICATION", "com.apple.stockholm.express.exit", buf, 2u);
    goto LABEL_28;
  }

  inSessionExpressSessionID = self->_inSessionExpressSessionID;
  if (inSessionExpressSessionID == [(_NFSession *)self->_currentSecureElementSession sessionID])
  {
    [(_NFSession *)self->_currentSecureElementSession handleExpressModeExited];
    if ([(_NFSession *)self->_currentSecureElementSession isMemberOfClass:objc_opt_class()])
    {
      sub_1000E7BDC(self, "com.apple.stockholm.express.exit", 0);
    }

    goto LABEL_40;
  }

  v28 = self->_inSessionExpressSessionID;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  v30 = v29;
  if (v28 == -1)
  {
    if (v29)
    {
      v45 = object_getClass(self);
      v46 = class_isMetaClass(v45);
      v47 = object_getClassName(self);
      v48 = sel_getName(a2);
      v49 = 45;
      if (v46)
      {
        v49 = 43;
      }

      v30(6, "%c[%{public}s %{public}s]:%i in session but express started before (%d)", v49, v47, v48, 7302, self->_inSessionExpressSessionID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = object_getClass(self);
      if (class_isMetaClass(v51))
      {
        v52 = 43;
      }

      else
      {
        v52 = 45;
      }

      v53 = object_getClassName(self);
      v54 = sel_getName(a2);
      v55 = self->_inSessionExpressSessionID;
      *buf = 67110146;
      v61 = v52;
      v62 = 2082;
      v63 = v53;
      v64 = 2082;
      v65 = v54;
      v66 = 1024;
      v67 = 7302;
      v68 = 1024;
      v69 = v55;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i in session but express started before (%d)", buf, 0x28u);
    }

    sub_1000E7BDC(self, "com.apple.stockholm.express.exit", 0);
    v27 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v27))
    {
      goto LABEL_28;
    }

    *buf = 0;
    goto LABEL_27;
  }

  if (v29)
  {
    v31 = object_getClass(self);
    v32 = class_isMetaClass(v31);
    v33 = object_getClassName(self);
    v34 = sel_getName(a2);
    v58 = self->_inSessionExpressSessionID;
    sessionID = [(_NFSession *)self->_currentSecureElementSession sessionID];
    v35 = 45;
    if (v32)
    {
      v35 = 43;
    }

    v30(5, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d) - dropping", v35, v33, v34, 7307, v58, sessionID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = object_getClass(self);
    if (class_isMetaClass(v37))
    {
      v38 = 43;
    }

    else
    {
      v38 = 45;
    }

    v39 = object_getClassName(self);
    v40 = sel_getName(a2);
    v41 = self->_inSessionExpressSessionID;
    sessionID2 = [(_NFSession *)self->_currentSecureElementSession sessionID];
    *buf = 67110402;
    v61 = v38;
    v62 = 2082;
    v63 = v39;
    v64 = 2082;
    v65 = v40;
    v66 = 1024;
    v67 = 7307;
    v68 = 1024;
    v69 = v41;
    v70 = 1024;
    v71 = sessionID2;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d) - dropping", buf, 0x2Eu);
  }

LABEL_40:
  [(_NFHardwareManager *)self maybeStartNextSession];
  sub_10003F008(self->_expressModeManager, 2.0);
  v43 = +[NFPowerAssertion sharedPowerAssertion];
  [v43 releasePowerAssertion:@"ExpressMode"];

  self->_inSessionExpressSessionID = -1;
  if (self->_systemWillSleep)
  {
    v44 = NFSharedSignpostLog();
    if (os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleExpressModeExited: allowing to sleep", &unk_1002E8B7A, buf, 2u);
    }

    [(NFPowerObserver *)self->_powerObserver allowSleep];
  }
}

- (void)handleExpressModeTimeout
{
  kdebug_trace();
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_TIMEOUT", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Express mode timer fired", v10, ClassName, Name, 7341);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *buf = 67109890;
    v49 = v13;
    v50 = 2082;
    v51 = v14;
    v52 = 2082;
    v53 = v15;
    v54 = 1024;
    v55 = 7341;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express mode timer fired", buf, 0x22u);
  }

  currentSecureElementSession = self->_currentSecureElementSession;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    sub_1000E7BDC(self, "com.apple.stockholm.express.transaction.timeout", 0);
    v18 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v18))
    {
LABEL_19:

      return;
    }

    *buf = 0;
LABEL_18:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_TRANSIT_TIMEOUT_NOTIFICATION", "com.apple.stockholm.express.transaction.timeout", buf, 2u);
    goto LABEL_19;
  }

  inSessionExpressSessionID = self->_inSessionExpressSessionID;
  if (inSessionExpressSessionID == [(_NFSession *)self->_currentSecureElementSession sessionID])
  {
    [(_NFSession *)self->_currentSecureElementSession handleExpressModeTimeout];
    if ([(_NFSession *)self->_currentSecureElementSession isMemberOfClass:objc_opt_class()])
    {
      sub_1000E7BDC(self, "com.apple.stockholm.express.transaction.timeout", 0);
    }

    return;
  }

  v19 = self->_inSessionExpressSessionID;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFLogGetLogger();
  v21 = v20;
  if (v19 == -1)
  {
    if (v20)
    {
      v34 = object_getClass(self);
      v35 = class_isMetaClass(v34);
      v36 = object_getClassName(self);
      v37 = sel_getName(a2);
      v38 = 45;
      if (v35)
      {
        v38 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i in session but express started before (%d)", v38, v36, v37, 7355, self->_inSessionExpressSessionID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(a2);
      v44 = self->_inSessionExpressSessionID;
      *buf = 67110146;
      v49 = v41;
      v50 = 2082;
      v51 = v42;
      v52 = 2082;
      v53 = v43;
      v54 = 1024;
      v55 = 7355;
      v56 = 1024;
      v57 = v44;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i in session but express started before (%d)", buf, 0x28u);
    }

    sub_1000E7BDC(self, "com.apple.stockholm.express.transaction.timeout", 0);
    v18 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v18))
    {
      goto LABEL_19;
    }

    *buf = 0;
    goto LABEL_18;
  }

  if (v20)
  {
    v22 = object_getClass(self);
    v23 = class_isMetaClass(v22);
    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    v46 = self->_inSessionExpressSessionID;
    sessionID = [(_NFSession *)self->_currentSecureElementSession sessionID];
    v26 = 45;
    if (v23)
    {
      v26 = 43;
    }

    v21(5, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d)", v26, v24, v25, 7360, v46, sessionID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v27 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = object_getClass(self);
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    v30 = object_getClassName(self);
    v31 = sel_getName(a2);
    v32 = self->_inSessionExpressSessionID;
    sessionID2 = [(_NFSession *)self->_currentSecureElementSession sessionID];
    *buf = 67110402;
    v49 = v29;
    v50 = 2082;
    v51 = v30;
    v52 = 2082;
    v53 = v31;
    v54 = 1024;
    v55 = 7360;
    v56 = 1024;
    v57 = v32;
    v58 = 1024;
    v59 = sessionID2;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d)", buf, 0x2Eu);
  }
}

- (void)handleAppletInactivityTimeout:(id)timeout atlData:(id)data caData:(id)caData
{
  timeoutCopy = timeout;
  dataCopy = data;
  caDataCopy = caData;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v13 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v13(6, "%c[%{public}s %{public}s]:%i Applet Inactivity Timeout : %{public}@", v16, ClassName, Name, 7371, timeoutCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    *buf = 67110146;
    *v66 = v19;
    *&v66[4] = 2082;
    *&v66[6] = object_getClassName(self);
    *&v66[14] = 2082;
    *&v66[16] = sel_getName(a2);
    v67 = 1024;
    v68 = 7371;
    v69 = 2114;
    v70[0] = timeoutCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet Inactivity Timeout : %{public}@", buf, 0x2Cu);
  }

  if (timeoutCopy)
  {
    v20 = [timeoutCopy objectForKeyedSubscript:@"applet"];
  }

  else
  {
    v20 = 0;
  }

  currentSecureElementSession = self->_currentSecureElementSession;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    identifier = [v20 identifier];
    sub_1000E7BDC(self, "com.apple.stockholm.express.transaction.timeout", identifier);

    v28 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v28))
    {
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    identifier2 = [v20 identifier];
    *buf = 136315394;
    *v66 = "com.apple.stockholm.express.transaction.timeout";
    *&v66[8] = 2112;
    *&v66[10] = identifier2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_APPLET_INACTIVITY_TIMEOUT_NOTIFICATION", "%s, aid: %@", buf, 0x16u);

    goto LABEL_22;
  }

  expressModeManager = self->_expressModeManager;
  if (!expressModeManager || !expressModeManager->_expressModeInProgress || (inSessionExpressSessionID = self->_inSessionExpressSessionID, inSessionExpressSessionID == [(_NFSession *)self->_currentSecureElementSession sessionID]))
  {
    v24 = self->_currentSecureElementSession;
    v25 = [timeoutCopy objectForKeyedSubscript:@"result"];
    [(_NFSession *)v24 handleAppletInactivityTimeout:v25];

    if ([(_NFSession *)self->_currentSecureElementSession isMemberOfClass:objc_opt_class()])
    {
      identifier3 = [v20 identifier];
      sub_1000E7BDC(self, "com.apple.stockholm.express.transaction.timeout", identifier3);

      sub_1000A5CEC(NFUnifiedAccessTransactionCALogger, dataCopy);
      if (!caDataCopy)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_23:
    if (!caDataCopy)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v34 = self->_inSessionExpressSessionID;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v35 = NFLogGetLogger();
  v36 = v35;
  if (v34 == -1)
  {
    if (v35)
    {
      v47 = object_getClass(self);
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(self);
      v50 = sel_getName(a2);
      v51 = 45;
      if (v48)
      {
        v51 = 43;
      }

      v36(6, "%c[%{public}s %{public}s]:%i in session but express started before (sessionID:%d)", v51, v49, v50, 7393, self->_inSessionExpressSessionID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = object_getClass(self);
      if (class_isMetaClass(v53))
      {
        v54 = 43;
      }

      else
      {
        v54 = 45;
      }

      v55 = object_getClassName(self);
      v56 = sel_getName(a2);
      v57 = self->_inSessionExpressSessionID;
      *buf = 67110146;
      *v66 = v54;
      *&v66[4] = 2082;
      *&v66[6] = v55;
      *&v66[14] = 2082;
      *&v66[16] = v56;
      v67 = 1024;
      v68 = 7393;
      v69 = 1024;
      LODWORD(v70[0]) = v57;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i in session but express started before (sessionID:%d)", buf, 0x28u);
    }

    identifier4 = [v20 identifier];
    sub_1000E7BDC(self, "com.apple.stockholm.express.transaction.timeout", identifier4);

    v28 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v28))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v35)
  {
    v37 = object_getClass(self);
    v63 = class_isMetaClass(v37);
    v64 = object_getClassName(self);
    v38 = sel_getName(a2);
    v61 = self->_inSessionExpressSessionID;
    sessionID = [(_NFSession *)self->_currentSecureElementSession sessionID];
    v39 = 45;
    if (v63)
    {
      v39 = 43;
    }

    v36(5, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d)", v39, v64, v38, 7399, v61, sessionID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v40 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = object_getClass(self);
    if (class_isMetaClass(v41))
    {
      v42 = 43;
    }

    else
    {
      v42 = 45;
    }

    v43 = object_getClassName(self);
    v44 = sel_getName(a2);
    v45 = self->_inSessionExpressSessionID;
    sessionID2 = [(_NFSession *)self->_currentSecureElementSession sessionID];
    *buf = 67110402;
    *v66 = v42;
    *&v66[4] = 2082;
    *&v66[6] = v43;
    *&v66[14] = 2082;
    *&v66[16] = v44;
    v67 = 1024;
    v68 = 7399;
    v69 = 1024;
    LODWORD(v70[0]) = v45;
    WORD2(v70[0]) = 1024;
    *(v70 + 6) = sessionID2;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d)", buf, 0x2Eu);
  }

  if (caDataCopy)
  {
LABEL_24:
    lastKnownRoutingConfig = [(_NFHardwareManager *)self lastKnownRoutingConfig];
    embeddedMode = [lastKnownRoutingConfig embeddedMode];

    if (embeddedMode != 1)
    {
      v32 = self->_expressModeManager;
      if (v32)
      {
        if (v32->_expressModeInProgress)
        {
          identifier5 = [v20 identifier];
          LOBYTE(v32) = sub_1000354C4(v32, identifier5);
        }

        else
        {
          LOBYTE(v32) = 0;
        }
      }

      sub_10024EB60(NFHciTransactionEventCALogger, caDataCopy, dataCopy, v32, 1);
    }
  }

LABEL_30:
}

- (void)handleForceExpressModeEndEvent
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Switching to NFSecureElementRoutingModeNone", v9, ClassName, Name, 7446);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v42 = v12;
    v43 = 2082;
    v44 = object_getClassName(self);
    v45 = 2082;
    v46 = sel_getName(a2);
    v47 = 1024;
    v48 = 7446;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Switching to NFSecureElementRoutingModeNone", buf, 0x22u);
  }

  v13 = sub_10021A4A0(self->_driverWrapper, @"Force Express End Event", 1uLL);
  if (v13)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v15 = v14;
      v16 = object_getClass(self);
      v17 = class_isMetaClass(v16);
      v37 = object_getClassName(self);
      v39 = sel_getName(a2);
      v18 = 45;
      if (v17)
      {
        v18 = 43;
      }

      v15(4, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v18, v37, v39, 7449, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      *buf = 67110146;
      v42 = v21;
      v43 = 2082;
      v44 = v22;
      v45 = 2082;
      v46 = v23;
      v47 = 1024;
      v48 = 7449;
      v49 = 2112;
      v50 = v13;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }
  }

  else
  {
    v24 = sub_10004C144();
    v25 = [(_NFHardwareManager *)self setRoutingConfig:v24];

    if (v25)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFLogGetLogger();
      if (v26)
      {
        v27 = v26;
        v28 = object_getClass(self);
        v29 = class_isMetaClass(v28);
        v30 = object_getClassName(self);
        v40 = sel_getName(a2);
        v31 = 45;
        if (v29)
        {
          v31 = 43;
        }

        v27(4, "%c[%{public}s %{public}s]:%i Unable to switch to NFSecureElementRoutingModeNone", v31, v30, v40, 7454);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = object_getClass(self);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        v35 = object_getClassName(self);
        v36 = sel_getName(a2);
        *buf = 67109890;
        v42 = v34;
        v43 = 2082;
        v44 = v35;
        v45 = 2082;
        v46 = v36;
        v47 = 1024;
        v48 = 7454;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to switch to NFSecureElementRoutingModeNone", buf, 0x22u);
      }
    }

    sub_10021CC94(self->_driverWrapper, @"Force Express End Event");
  }
}

- (id)softResetSE:(id)e
{
  eCopy = e;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_100006A8C;
  v50 = sub_1000E6B84;
  v51 = 0;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Soft reset of SE :(", v11, ClassName, Name, 7473);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(self);
    v16 = sel_getName(a2);
    *buf = 67109890;
    v53 = v14;
    v54 = 2082;
    v55 = v15;
    v56 = 2082;
    v57 = v16;
    v58 = 1024;
    v59 = 7473;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Soft reset of SE :(", buf, 0x22u);
  }

  if ([eCopy isEqual:self->_secureElementWrapper])
  {
    v17 = sub_10004BF60(NFRoutingConfig, 0);
    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_10011A804;
    v42 = &unk_100318C70;
    v45 = &v46;
    selfCopy = self;
    v44 = eCopy;
    if ((sub_1000E6BE4(&self->super.isa, &v39, @"SoftResetSE", v17) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v19 = v18;
        v20 = object_getClass(self);
        v21 = class_isMetaClass(v20);
        v22 = object_getClassName(self);
        v23 = sel_getName(a2);
        v24 = 45;
        if (v21)
        {
          v24 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Failed to soft reset SE: %{public}@", v24, v22, v23, 7487, v47[5], v39, v40, v41, v42, selfCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = object_getClass(self);
        if (class_isMetaClass(v26))
        {
          v27 = 43;
        }

        else
        {
          v27 = 45;
        }

        v28 = object_getClassName(self);
        v29 = sel_getName(a2);
        v30 = v47[5];
        *buf = 67110146;
        v53 = v27;
        v54 = 2082;
        v55 = v28;
        v56 = 2082;
        v57 = v29;
        v58 = 1024;
        v59 = 7487;
        v60 = 2114;
        v61 = v30;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to soft reset SE: %{public}@", buf, 0x2Cu);
      }
    }

    v31 = v47[5];
  }

  else
  {
    v32 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v62[0] = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"SE not available"];
    v63[0] = v33;
    v63[1] = &off_100331E30;
    v62[1] = @"Line";
    v62[2] = @"Method";
    v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v63[2] = v34;
    v62[3] = NSDebugDescriptionErrorKey;
    7478 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 7478];
    v63[3] = 7478;
    v36 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
    v31 = [v32 initWithDomain:v17 code:35 userInfo:v36];
  }

  _Block_object_dispose(&v46, 8);

  return v31;
}

- (void)handleFilteredFieldNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B074;
  block[3] = &unk_100315F80;
  v9 = notificationCopy;
  v10 = a2;
  block[4] = self;
  v7 = notificationCopy;
  dispatch_async(workQueue, block);
}

- (void)handleFieldNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B8CC;
  block[3] = &unk_100315F80;
  v9 = notificationCopy;
  v10 = a2;
  block[4] = self;
  v7 = notificationCopy;
  dispatch_async(workQueue, block);
}

- (void)handleSecureElementEndOfOperation
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011C580;
  block[3] = &unk_100315F30;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleSecureElementEnteredRestrictedMode:(int)mode os:(int64_t)os
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011C654;
  block[3] = &unk_100318D10;
  modeCopy = mode;
  block[4] = self;
  block[5] = os;
  dispatch_async(workQueue, block);
}

- (void)handleSelectEvent:(id)event
{
  eventCopy = event;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011CCA0;
  block[3] = &unk_100315F80;
  v9 = eventCopy;
  v10 = a2;
  block[4] = self;
  v7 = eventCopy;
  dispatch_async(workQueue, block);
}

- (void)handleTemperatureChange:(double)change
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011CF14;
  v4[3] = &unk_100315F58;
  v4[4] = self;
  *&v4[5] = change;
  dispatch_async(workQueue, v4);
}

- (void)handleEraseCounterExceeded
{
  lastKnownRoutingConfig = [(_NFHardwareManager *)self lastKnownRoutingConfig];
  if (!lastKnownRoutingConfig)
  {
    lastKnownRoutingConfig = [(_NFHardwareManager *)self defaultRoutingConfig:3];
  }

  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011D0F8;
  v6[3] = &unk_100318738;
  v6[4] = self;
  v5 = [_NFBuiltinSession createSession:@"Erase Counter" workQueue:workQueue routing:lastKnownRoutingConfig sessionQueuer:self didStartWork:v6];
}

- (void)handlMFWNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011D270;
  block[3] = &unk_100315F80;
  v9 = notificationCopy;
  v10 = a2;
  block[4] = self;
  v7 = notificationCopy;
  dispatch_async(workQueue, block);
}

- (void)handleSecureElementReaderModeStarted:(id)started
{
  startedCopy = started;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011D514;
  block[3] = &unk_100315F80;
  v9 = startedCopy;
  v10 = a2;
  block[4] = self;
  v7 = startedCopy;
  dispatch_async(workQueue, block);
}

- (void)handleSecureElementReaderModeEnded:(id)ended
{
  endedCopy = ended;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011D7B8;
  block[3] = &unk_100315F80;
  v9 = endedCopy;
  v10 = a2;
  block[4] = self;
  v7 = endedCopy;
  dispatch_async(workQueue, block);
}

- (void)handleReaderModeProhibitTimerEvent:(unint64_t)event
{
  if ((event & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    block[5] = v3;
    block[6] = v4;
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011DA38;
    block[3] = &unk_100315F30;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)handleSecureElementTransactionData:(id)data appletIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  workQueue = self->_workQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011DC08;
  v12[3] = &unk_100315FD0;
  v12[4] = self;
  v13 = dataCopy;
  v14 = identifierCopy;
  v15 = a2;
  v10 = identifierCopy;
  v11 = dataCopy;
  dispatch_async(workQueue, v12);
}

- (void)handleTimerExpiredEvent:(id)event
{
  eventCopy = event;
  currentSecureElementSession = self->_currentSecureElementSession;
  if (objc_opt_respondsToSelector())
  {
    [(_NFSession *)self->_currentSecureElementSession handleTimerExpiredEvent:eventCopy];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v8(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v13, ClassName, Name, 7914, self->_currentSecureElementSession);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(self);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(self);
      v18 = sel_getName(a2);
      v19 = self->_currentSecureElementSession;
      *buf = 67110146;
      v21 = v16;
      v22 = 2082;
      v23 = v17;
      v24 = 2082;
      v25 = v18;
      v26 = 1024;
      v27 = 7914;
      v28 = 2114;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
    }
  }
}

- (void)handleTransactionStartEvent:(id)event atlData:(id)data caData:(id)caData
{
  eventCopy = event;
  dataCopy = data;
  caDataCopy = caData;
  expressModeManager = self->_expressModeManager;
  if (expressModeManager && expressModeManager->_expressModeInProgress && !expressModeManager->_didPerformExpressTransaction)
  {
    kdebug_trace();
    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_TX_START", &unk_1002E8B7A, buf, 2u);
    }
  }

  keyIdentifier = [eventCopy keyIdentifier];

  if (keyIdentifier)
  {
    v15 = [NSString alloc];
    appletIdentifier = [eventCopy appletIdentifier];
    keyIdentifier2 = [eventCopy keyIdentifier];
    appletIdentifier2 = [v15 initWithFormat:@"%@:%@", appletIdentifier, keyIdentifier2];
  }

  else
  {
    appletIdentifier2 = [eventCopy appletIdentifier];
  }

  currentSecureElementSession = self->_currentSecureElementSession;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!self->_currentSecureElementSession)
    {
LABEL_32:
      sub_10011DFD8(self, eventCopy, appletIdentifier2);
      goto LABEL_33;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v29 = 45;
      if (isMetaClass)
      {
        v29 = 43;
      }

      v24(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v29, ClassName, Name, 7973, self->_currentSecureElementSession);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_31:

      goto LABEL_32;
    }

    v31 = object_getClass(self);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(self);
    v34 = sel_getName(a2);
    v35 = self->_currentSecureElementSession;
    *buf = 67110146;
    v79 = v32;
    v80 = 2082;
    v81 = v33;
    v82 = 2082;
    v83 = v34;
    v84 = 1024;
    v85 = 7973;
    v86 = 2114;
    v87[0] = v35;
    v36 = "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@";
    v37 = v30;
    v38 = OS_LOG_TYPE_ERROR;
    v39 = 44;
LABEL_30:
    _os_log_impl(&_mh_execute_header, v37, v38, v36, buf, v39);
    goto LABEL_31;
  }

  v20 = self->_expressModeManager;
  if (!v20 || !v20->_expressModeInProgress || (inSessionExpressSessionID = self->_inSessionExpressSessionID, inSessionExpressSessionID == [(_NFSession *)self->_currentSecureElementSession sessionID]))
  {
    [(_NFSession *)self->_currentSecureElementSession handleTransactionStartEvent:eventCopy atlData:dataCopy];
    if ([(_NFSession *)self->_currentSecureElementSession isMemberOfClass:objc_opt_class()])
    {
      v22 = self->_expressModeManager;
      if (v22)
      {
        if (v22->_expressModeInProgress && !v22->_didPerformExpressTransaction)
        {
          sub_1000E7BDC(self, "com.apple.stockholm.express.transaction.start", appletIdentifier2);
          if (!dataCopy)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }
    }

LABEL_33:
    if (!dataCopy)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v51 = self->_inSessionExpressSessionID;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v52 = NFLogGetLogger();
  v53 = v52;
  if (v51 == -1)
  {
    if (v52)
    {
      v65 = object_getClass(self);
      v66 = class_isMetaClass(v65);
      v67 = object_getClassName(self);
      v68 = sel_getName(a2);
      v69 = 45;
      if (v66)
      {
        v69 = 43;
      }

      v53(6, "%c[%{public}s %{public}s]:%i in session but express started before (%d)", v69, v67, v68, 7964, self->_inSessionExpressSessionID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v70 = object_getClass(self);
    if (class_isMetaClass(v70))
    {
      v71 = 43;
    }

    else
    {
      v71 = 45;
    }

    v72 = object_getClassName(self);
    v73 = sel_getName(a2);
    v74 = self->_inSessionExpressSessionID;
    *buf = 67110146;
    v79 = v71;
    v80 = 2082;
    v81 = v72;
    v82 = 2082;
    v83 = v73;
    v84 = 1024;
    v85 = 7964;
    v86 = 1024;
    LODWORD(v87[0]) = v74;
    v36 = "%c[%{public}s %{public}s]:%i in session but express started before (%d)";
    v37 = v30;
    v38 = OS_LOG_TYPE_DEFAULT;
    v39 = 40;
    goto LABEL_30;
  }

  if (v52)
  {
    v54 = object_getClass(self);
    v55 = class_isMetaClass(v54);
    v77 = object_getClassName(self);
    v56 = sel_getName(a2);
    v75 = self->_inSessionExpressSessionID;
    sessionID = [(_NFSession *)self->_currentSecureElementSession sessionID];
    v57 = 45;
    if (v55)
    {
      v57 = 43;
    }

    v53(5, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d) - drop", v57, v77, v56, 7968, v75, sessionID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v58 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = object_getClass(self);
    if (class_isMetaClass(v59))
    {
      v60 = 43;
    }

    else
    {
      v60 = 45;
    }

    v61 = object_getClassName(self);
    v62 = sel_getName(a2);
    v63 = self->_inSessionExpressSessionID;
    sessionID2 = [(_NFSession *)self->_currentSecureElementSession sessionID];
    *buf = 67110402;
    v79 = v60;
    v80 = 2082;
    v81 = v61;
    v82 = 2082;
    v83 = v62;
    v84 = 1024;
    v85 = 7968;
    v86 = 1024;
    LODWORD(v87[0]) = v63;
    WORD2(v87[0]) = 1024;
    *(v87 + 6) = sessionID2;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d) - drop", buf, 0x2Eu);
  }

  if (dataCopy)
  {
LABEL_34:
    v40 = [dataCopy objectForKey:@"RequiresPowerCycle"];
    bOOLValue = [v40 BOOLValue];

    if (bOOLValue)
    {
      self->_powerCycleAfterThisSession = 1;
    }
  }

LABEL_36:
  if (caDataCopy)
  {
    lastKnownRoutingConfig = [(_NFHardwareManager *)self lastKnownRoutingConfig];
    embeddedMode = [lastKnownRoutingConfig embeddedMode];

    if (embeddedMode != 1)
    {
      v44 = self->_expressModeManager;
      if (v44)
      {
        if (v44->_expressModeInProgress)
        {
          appletIdentifier3 = [eventCopy appletIdentifier];
          LOBYTE(v44) = sub_1000354C4(v44, appletIdentifier3);
        }

        else
        {
          LOBYTE(v44) = 0;
        }
      }

      v46 = sub_10021E074(self->_driverWrapper);
      v47 = v46;
      if (v46 && [v46 notificationType] == 3)
      {
        v48 = [caDataCopy mutableCopy];
        v49 = v47;
        v50 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v49 terminalSubType] | (objc_msgSend(v49, "terminalType") << 8));
        [v48 setObject:v50 forKeyedSubscript:@"terminalType"];

        if (dataCopy)
        {
          sub_10024EB60(NFHciTransactionEventCALogger, v48, dataCopy, v44, 1);
        }
      }

      else if (dataCopy)
      {
        sub_10024EB60(NFHciTransactionEventCALogger, caDataCopy, dataCopy, v44, 1);
      }
    }
  }
}

- (void)handleTransactionEndEvent:(id)event atlData:(id)data caData:(id)caData
{
  eventCopy = event;
  dataCopy = data;
  caDataCopy = caData;
  lastKnownRoutingConfig = [(_NFHardwareManager *)self lastKnownRoutingConfig];
  embeddedMode = [lastKnownRoutingConfig embeddedMode];

  expressModeManager = self->_expressModeManager;
  if (expressModeManager && expressModeManager->_expressModeInProgress && !expressModeManager->_didPerformExpressTransaction)
  {
    kdebug_trace();
    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EXPRESS_TX_END", &unk_1002E8B7A, buf, 2u);
    }
  }

  v14 = [dataCopy objectForKeyedSubscript:@"appletIdentifier"];
  v15 = [dataCopy objectForKeyedSubscript:@"endPointIdentifier"];
  v16 = [dataCopy objectForKeyedSubscript:@"readerIdentifier"];
  v130 = sub_100032938(self->_expressModeManager, v14);
  v131 = v15;
  v129 = v16;
  v127 = caDataCopy;
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = [NSData NF_dataWithHexString:v14];
    v18 = sub_10001A63C(v17);

    v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
    v16 = v129;
    v122 = v19 == 2;
    v125 = [(_NFControllerManager *)self->_controllerManager isUnifiedAccessForHome:v14 passConfig:v130];
  }

  else
  {
    v125 = 0;
    v122 = 0;
  }

  v132 = objc_opt_new();
  if (dataCopy)
  {
    if (v125)
    {
      v20 = [dataCopy objectForKeyedSubscript:@"endPointIdentifier"];

      if (v20)
      {
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v132 setObject:v15 forKeyedSubscript:@"endPointIdentifier"];
          }
        }

        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v132 setObject:v14 forKeyedSubscript:@"appletIdentifier"];
          }
        }

        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v132 setObject:v16 forKeyedSubscript:@"readerIdentifier"];
          }
        }

        if (eventCopy)
        {
          if ([eventCopy didError])
          {
            v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [eventCopy didError]);
            [v132 setObject:v21 forKeyedSubscript:@"didError"];
          }

          else
          {
            [v132 setObject:&off_1003313E0 forKeyedSubscript:@"didError"];
          }
        }

        v22 = self->_expressModeManager;
        if (v22)
        {
          LOBYTE(v22) = v22->_isStepUp;
        }

        v23 = [NSNumber numberWithBool:v22 & 1];
        [v132 setObject:v23 forKeyedSubscript:@"isStepUp"];
      }
    }
  }

  if ([eventCopy didError])
  {
    if ([eventCopy result] == 61444)
    {
      v24 = "com.apple.stockholm.express.transaction.end.incompatible";
    }

    else if ([eventCopy result] == 61446)
    {
      v24 = "com.apple.stockholm.express.transaction.end.keypairingmode";
    }

    else
    {
      result = [eventCopy result];
      v24 = "com.apple.stockholm.express.transaction.end.failed";
      if (result == 61445)
      {
        v24 = "com.apple.stockholm.express.transaction.notfound";
      }
    }
  }

  else
  {
    v24 = "com.apple.stockholm.express.transaction.end";
  }

  v121 = v24;
  keyIdentifier = [eventCopy keyIdentifier];

  if (keyIdentifier)
  {
    v26 = [NSString alloc];
    appletIdentifier = [eventCopy appletIdentifier];
    keyIdentifier2 = [eventCopy keyIdentifier];
    appletIdentifier2 = [v26 initWithFormat:@"%@:%@", appletIdentifier, keyIdentifier2];
  }

  else
  {
    appletIdentifier2 = [eventCopy appletIdentifier];
  }

  parsedInfo = [eventCopy parsedInfo];
  if (parsedInfo)
  {
    v30 = parsedInfo;
    parsedInfo2 = [eventCopy parsedInfo];
    v32 = [parsedInfo2 objectForKeyedSubscript:@"PairingModeBrandCode"];

    if (v32)
    {
      parsedInfo3 = [eventCopy parsedInfo];
      v34 = [parsedInfo3 objectForKeyedSubscript:@"PairingModeBrandCode"];
      [0 setObject:v34 forKeyedSubscript:@"PairingModeBrandCode"];
    }
  }

  v35 = [NSMutableDictionary dictionaryWithDictionary:dataCopy];
  v36 = [[NSData alloc] initWithBytes:&unk_100297764 length:9];
  nF_asHexString = [v36 NF_asHexString];
  v38 = [v14 hasPrefix:nF_asHexString];

  if (v38)
  {
    v39 = [NSNumber numberWithUnsignedInt:sub_1000A5614(NFUnifiedAccessTransactionCALogger, v130, dataCopy)];
    [v35 setObject:v39 forKeyedSubscript:@"keyType"];

    if ([eventCopy didError])
    {
      v40 = [dataCopy objectForKeyedSubscript:@"command"];
      unsignedIntValue = [v40 unsignedIntValue];

      if (unsignedIntValue == 22)
      {
        v42 = [dataCopy objectForKeyedSubscript:@"informative"];

        if (v42)
        {
          v43 = [dataCopy objectForKeyedSubscript:@"command"];
          [0 setObject:v43 forKeyedSubscript:@"command"];

          v44 = [dataCopy objectForKeyedSubscript:@"informative"];
          [0 setObject:v44 forKeyedSubscript:@"informative"];
        }
      }
    }
  }

  currentSecureElementSession = self->_currentSecureElementSession;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (self->_currentSecureElementSession)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v51 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v56 = 45;
        if (isMetaClass)
        {
          v56 = 43;
        }

        v51(6, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v56, ClassName, Name, 8233, self->_currentSecureElementSession);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = object_getClass(self);
        if (class_isMetaClass(v58))
        {
          v59 = 43;
        }

        else
        {
          v59 = 45;
        }

        v60 = object_getClassName(self);
        v61 = sel_getName(a2);
        v62 = self->_currentSecureElementSession;
        *buf = 67110146;
        v134 = v59;
        v135 = 2082;
        v136 = v60;
        v137 = 2082;
        v138 = v61;
        v139 = 1024;
        v140 = 8233;
        v141 = 2114;
        *v142 = v62;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
      }
    }

    if (self->_inSessionExpressSessionID != -1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = object_getClass(self);
        v66 = class_isMetaClass(v65);
        v67 = object_getClassName(self);
        v68 = sel_getName(a2);
        v69 = 45;
        if (v66)
        {
          v69 = 43;
        }

        v64(6, "%c[%{public}s %{public}s]:%i in-session express (ID:%d) but session got closed", v69, v67, v68, 8238, self->_inSessionExpressSessionID);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }

      v71 = object_getClass(self);
      if (class_isMetaClass(v71))
      {
        v72 = 43;
      }

      else
      {
        v72 = 45;
      }

      v73 = object_getClassName(self);
      v74 = sel_getName(a2);
      inSessionExpressSessionID = self->_inSessionExpressSessionID;
      *buf = 67110146;
      v134 = v72;
      v135 = 2082;
      v136 = v73;
      v137 = 2082;
      v138 = v74;
      v139 = 1024;
      v140 = 8238;
      v141 = 1024;
      *v142 = inSessionExpressSessionID;
      v76 = "%c[%{public}s %{public}s]:%i in-session express (ID:%d) but session got closed";
      v77 = v70;
      v78 = 40;
      goto LABEL_75;
    }

    sub_10011EAE0(self, eventCopy, v35, appletIdentifier2, v121, v122);
    if (!v125)
    {
      goto LABEL_107;
    }

    v79 = &off_100331E60;
LABEL_81:
    [v132 setObject:v79 forKeyedSubscript:@"TxType"];
    v80 = +[NFSecureXPCEventPublisherManager sharedManager];
    homed = [v80 homed];
    [(_NFHardwareManager *)self postEventForPublisher:homed event:"com.apple.stockholm.forHome.transaction.end" additionalData:v132];

    goto LABEL_107;
  }

  v46 = self->_expressModeManager;
  if (!v46 || !v46->_expressModeInProgress || (v47 = self->_inSessionExpressSessionID, v47 == [(_NFSession *)self->_currentSecureElementSession sessionID]))
  {
    caDataCopy = v127;
    if ([(_NFSession *)self->_currentSecureElementSession isMemberOfClass:objc_opt_class()])
    {
      v48 = self->_expressModeManager;
      if (v48 && v48->_expressModeInProgress && !v48->_didPerformExpressTransaction)
      {
        sub_1000F0B88(self, v121, appletIdentifier2);
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      if (v122)
      {
        v97 = [v35 objectForKeyedSubscript:@"EventType"];
        if (v35)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v97 isEqualToString:@"EndEvent"])
            {
              if (v125)
              {
                [NSNumber numberWithUnsignedInt:v49];
                v98 = v126 = v49;
                [v132 setObject:v98 forKeyedSubscript:@"TxType"];

                v99 = +[NFSecureXPCEventPublisherManager sharedManager];
                homed2 = [v99 homed];
                [(_NFHardwareManager *)self postEventForPublisher:homed2 event:"com.apple.stockholm.forHome.transaction.end" additionalData:v132];

                v49 = v126;
              }

              sub_1000A3C44(NFUnifiedAccessTransactionCALogger, v35, v49, 0);
            }
          }
        }

        v101 = NFSharedSignpostLog();
        if (os_signpost_enabled(v101))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v101, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AtlEvent", "AtlEndEventComplete", buf, 2u);
        }
      }
    }

    [(_NFSession *)self->_currentSecureElementSession handleTransactionEndEvent:eventCopy atlData:dataCopy];
    goto LABEL_107;
  }

  v83 = self->_inSessionExpressSessionID;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v84 = NFLogGetLogger();
  v85 = v84;
  if (v83 != -1)
  {
    if (v84)
    {
      v86 = object_getClass(self);
      v87 = class_isMetaClass(v86);
      v88 = object_getClassName(self);
      v89 = sel_getName(a2);
      v119 = self->_inSessionExpressSessionID;
      sessionID = [(_NFSession *)self->_currentSecureElementSession sessionID];
      v90 = 45;
      if (v87)
      {
        v90 = 43;
      }

      v85(5, "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d)", v90, v88, v89, 8228, v119, sessionID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v70 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_76;
    }

    v91 = object_getClass(self);
    if (class_isMetaClass(v91))
    {
      v92 = 43;
    }

    else
    {
      v92 = 45;
    }

    v93 = object_getClassName(self);
    v94 = sel_getName(a2);
    v95 = self->_inSessionExpressSessionID;
    sessionID2 = [(_NFSession *)self->_currentSecureElementSession sessionID];
    *buf = 67110402;
    v134 = v92;
    v135 = 2082;
    v136 = v93;
    v137 = 2082;
    v138 = v94;
    v139 = 1024;
    v140 = 8228;
    v141 = 1024;
    *v142 = v95;
    *&v142[4] = 1024;
    *&v142[6] = sessionID2;
    v76 = "%c[%{public}s %{public}s]:%i in-session express but wrong session ID (%d vs %d)";
    v77 = v70;
    v78 = 46;
LABEL_75:
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, v76, buf, v78);
LABEL_76:

    caDataCopy = v127;
    goto LABEL_107;
  }

  if (v84)
  {
    v108 = object_getClass(self);
    v109 = class_isMetaClass(v108);
    v110 = object_getClassName(self);
    v111 = sel_getName(a2);
    v112 = 45;
    if (v109)
    {
      v112 = 43;
    }

    v85(6, "%c[%{public}s %{public}s]:%i in session but express started before (%d)", v112, v110, v111, 8205, self->_inSessionExpressSessionID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v113 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    v114 = object_getClass(self);
    if (class_isMetaClass(v114))
    {
      v115 = 43;
    }

    else
    {
      v115 = 45;
    }

    v116 = object_getClassName(self);
    v117 = sel_getName(a2);
    v118 = self->_inSessionExpressSessionID;
    *buf = 67110146;
    v134 = v115;
    v135 = 2082;
    v136 = v116;
    v137 = 2082;
    v138 = v117;
    v139 = 1024;
    v140 = 8205;
    v141 = 1024;
    *v142 = v118;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i in session but express started before (%d)", buf, 0x28u);
  }

  sub_10011EAE0(self, eventCopy, v35, appletIdentifier2, v121, v122);
  caDataCopy = v127;
  if (v125)
  {
    v79 = &off_100331E48;
    goto LABEL_81;
  }

LABEL_107:
  if (caDataCopy && embeddedMode != 1)
  {
    v102 = sub_100034A8C(self->_expressModeManager, v14, v131);
    v103 = [caDataCopy mutableCopy];
    v104 = v103;
    if (v102)
    {
      [v103 addEntriesFromDictionary:v102];
    }

    v105 = self->_expressModeManager;
    appletIdentifier3 = [eventCopy appletIdentifier];
    v107 = sub_1000354C4(v105, appletIdentifier3);
    sub_10024EB60(NFHciTransactionEventCALogger, v104, dataCopy, v107, 0);
  }
}

- (void)handleFelicaStateEvent:(id)event appletAID:(id)d
{
  eventCopy = event;
  dCopy = d;
  currentSecureElementSession = self->_currentSecureElementSession;
  if (objc_opt_respondsToSelector())
  {
    [(_NFSession *)self->_currentSecureElementSession handleFelicaStateEvent:eventCopy appletAID:dCopy];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v11(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v16, ClassName, Name, 8280, self->_currentSecureElementSession);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(self);
      v21 = sel_getName(a2);
      v22 = self->_currentSecureElementSession;
      *buf = 67110146;
      v24 = v19;
      v25 = 2082;
      v26 = v20;
      v27 = 2082;
      v28 = v21;
      v29 = 1024;
      v30 = 8280;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
    }
  }
}

- (void)handleStepUpEvent:(id)event forApplet:(id)applet
{
  eventCopy = event;
  appletCopy = applet;
  currentSecureElementSession = self->_currentSecureElementSession;
  if (objc_opt_respondsToSelector())
  {
    expressModeManager = self->_expressModeManager;
    v11 = 5;
    if (expressModeManager)
    {
      if (expressModeManager->_expressModeInProgress)
      {
        v11 = 6;
      }

      else
      {
        v11 = 5;
      }
    }

    [(_NFSession *)self->_currentSecureElementSession handleStepUpEvent:eventCopy transactionType:v11 forApplet:appletCopy];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v13(4, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", v18, ClassName, Name, 8292, self->_currentSecureElementSession);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      v24 = self->_currentSecureElementSession;
      *buf = 67110146;
      v26 = v21;
      v27 = 2082;
      v28 = v22;
      v29 = 2082;
      v30 = v23;
      v31 = 1024;
      v32 = 8292;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected active session: %{public}@", buf, 0x2Cu);
    }
  }
}

- (void)handleHostCardReaderDetected:(id)detected
{
  detectedCopy = detected;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i ", v11, ClassName, Name, 8312);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v21 = v14;
    v22 = 2082;
    v23 = object_getClassName(self);
    v24 = 2082;
    v25 = sel_getName(a2);
    v26 = 1024;
    v27 = 8312;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100120448;
  block[3] = &unk_100315FA8;
  block[4] = self;
  v19 = detectedCopy;
  v16 = detectedCopy;
  dispatch_async(workQueue, block);
}

- (void)handleRemoteTagsDetected:(id)detected dropAndRestartDiscovery:(BOOL)discovery
{
  detectedCopy = detected;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012057C;
  v10[3] = &unk_100318D38;
  discoveryCopy = discovery;
  v11 = detectedCopy;
  v12 = a2;
  v10[4] = self;
  v9 = detectedCopy;
  dispatch_async(workQueue, v10);
}

- (void)handleReaderBurnoutTimer
{
  dispatch_assert_queue_V2(self->_workQueue);
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "READER_MODE_BURNOUT", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Reader mode must stop", v10, ClassName, Name, 8344);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *buf = 67109890;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    v25 = 1024;
    v26 = 8344;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader mode must stop", buf, 0x22u);
  }

  if (self->_currentSecureElementSession)
  {
    if (objc_opt_respondsToSelector())
    {
      [(_NFSession *)self->_currentSecureElementSession handleReaderBurnoutTimer];
    }
  }

  else
  {
    [(NFBackgroundTagReadingManager *)self->_backgroundTagReadingManager stop];
    v16 = [(_NFHardwareManager *)self defaultRoutingConfig:3];
    v17 = [(_NFHardwareManager *)self setRoutingConfig:v16];
  }
}

- (void)handleReaderBurnoutCleared
{
  dispatch_assert_queue_V2(self->_workQueue);
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "READER_MODE_BURNOUT_CLEARED", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Reader mode can resume", v10, ClassName, Name, 8363);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(self);
    v15 = sel_getName(a2);
    *buf = 67109890;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 1024;
    v25 = 8363;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader mode can resume", buf, 0x22u);
  }

  if (self->_currentSecureElementSession)
  {
    if (objc_opt_respondsToSelector())
    {
      [(_NFSession *)self->_currentSecureElementSession handleReaderBurnoutCleared];
    }
  }

  else
  {
    v16 = +[NSDistributedNotificationCenter defaultCenter];
    [v16 postNotificationName:@"com.apple.nfcd.burnout.cleared" object:0 userInfo:0 options:3];

    [(_NFHardwareManager *)self maybeStartNextSession];
  }
}

- (void)handleSecureElementRemoved:(int)removed withReason:(unsigned int)reason
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100120DA4;
  block[3] = &unk_100318D10;
  block[4] = self;
  block[5] = a2;
  removedCopy = removed;
  dispatch_async(workQueue, block);
}

- (BOOL)canStop
{
  if (!sub_10017DE14(self, a2))
  {
    if (self->_didPreWarmHardware)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v15 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v19 = 45;
        if (isMetaClass)
        {
          v19 = 43;
        }

        v15(6, "%c[%{public}s %{public}s]:%i Can't stop - Prewarm is started.", v19, ClassName, Name, 8521);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v65 = v21;
      v66 = 2082;
      v67 = object_getClassName(self);
      v68 = 2082;
      v69 = sel_getName(a2);
      v70 = 1024;
      v71 = 8521;
      v13 = "%c[%{public}s %{public}s]:%i Can't stop - Prewarm is started.";
      goto LABEL_21;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22 = selfCopy->_currentSecureElementSession;
    objc_sync_exit(selfCopy);

    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
LABEL_27:
      v23 = 1;
      goto LABEL_24;
    }

    clientName = [(_NFSession *)v22 clientName];
    v27 = [clientName isEqualToString:@"seld"];

    if (v27)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(selfCopy);
        v31 = class_isMetaClass(v30);
        v32 = object_getClassName(selfCopy);
        v61 = sel_getName(a2);
        v33 = 45;
        if (v31)
        {
          v33 = 43;
        }

        v29(6, "%c[%{public}s %{public}s]:%i Can't stop - long session in progress", v33, v32, v61, 8539);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v34 = object_getClass(selfCopy);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      *buf = 67109890;
      v65 = v35;
      v66 = 2082;
      v67 = object_getClassName(selfCopy);
      v68 = 2082;
      v69 = sel_getName(a2);
      v70 = 1024;
      v71 = 8539;
      v36 = "%c[%{public}s %{public}s]:%i Can't stop - long session in progress";
    }

    else
    {
      clientName2 = [(_NFSession *)v22 clientName];
      v38 = [clientName2 isEqualToString:@"seserviced"];

      if (v38)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFLogGetLogger();
        if (v39)
        {
          v40 = v39;
          v41 = object_getClass(selfCopy);
          v42 = class_isMetaClass(v41);
          v43 = object_getClassName(selfCopy);
          v62 = sel_getName(a2);
          v44 = 45;
          if (v42)
          {
            v44 = 43;
          }

          v40(6, "%c[%{public}s %{public}s]:%i Can't stop - long session in progress", v44, v43, v62, 8543);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v10 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v45 = object_getClass(selfCopy);
        if (class_isMetaClass(v45))
        {
          v46 = 43;
        }

        else
        {
          v46 = 45;
        }

        *buf = 67109890;
        v65 = v46;
        v66 = 2082;
        v67 = object_getClassName(selfCopy);
        v68 = 2082;
        v69 = sel_getName(a2);
        v70 = 1024;
        v71 = 8543;
        v36 = "%c[%{public}s %{public}s]:%i Can't stop - long session in progress";
      }

      else
      {
        v47 = +[NSDate now];
        dequeueDate = [(_NFSession *)v22 dequeueDate];
        [v47 timeIntervalSinceDate:dequeueDate];
        v50 = v49;

        if (v50 <= 30.0)
        {
          goto LABEL_27;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v51 = NFLogGetLogger();
        if (v51)
        {
          v52 = v51;
          v53 = object_getClass(selfCopy);
          v54 = class_isMetaClass(v53);
          v55 = object_getClassName(selfCopy);
          v63 = sel_getName(a2);
          v56 = 45;
          if (v54)
          {
            v56 = 43;
          }

          v52(6, "%c[%{public}s %{public}s]:%i Can't stop - session in progress for a while", v56, v55, v63, 8550);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v10 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v57 = object_getClass(selfCopy);
        if (class_isMetaClass(v57))
        {
          v58 = 43;
        }

        else
        {
          v58 = 45;
        }

        *buf = 67109890;
        v65 = v58;
        v66 = 2082;
        v67 = object_getClassName(selfCopy);
        v68 = 2082;
        v69 = sel_getName(a2);
        v70 = 1024;
        v71 = 8550;
        v36 = "%c[%{public}s %{public}s]:%i Can't stop - session in progress for a while";
      }
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v36, buf, 0x22u);
    goto LABEL_23;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v4 = NFLogGetLogger();
  if (v4)
  {
    v5 = v4;
    v6 = object_getClass(self);
    v7 = class_isMetaClass(v6);
    v8 = object_getClassName(self);
    v59 = sel_getName(a2);
    v9 = 45;
    if (v7)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Can't stop - Dont reset assertion taken.", v9, v8, v59, 8512);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_22;
  }

  v11 = object_getClass(self);
  if (class_isMetaClass(v11))
  {
    v12 = 43;
  }

  else
  {
    v12 = 45;
  }

  *buf = 67109890;
  v65 = v12;
  v66 = 2082;
  v67 = object_getClassName(self);
  v68 = 2082;
  v69 = sel_getName(a2);
  v70 = 1024;
  v71 = 8512;
  v13 = "%c[%{public}s %{public}s]:%i Can't stop - Dont reset assertion taken.";
LABEL_21:
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v13, buf, 0x22u);
LABEL_22:
  v22 = 0;
LABEL_23:

  v23 = 0;
LABEL_24:

  return v23;
}

- (void)mustStop:(unint64_t)stop
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Primary must stop", v10, ClassName, Name, 8561);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    v18 = v13;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 8561;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Primary must stop", buf, 0x22u);
  }

  v14 = NFSharedSignpostLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWRecovery", "must stop", buf, 2u);
  }

  self->_recoveryRequested = 1;
  sub_1000936E0(self, 0);
  sub_1001EA438(self);
  expressModeManager = self->_expressModeManager;
  if (expressModeManager && (expressModeManager->_controlState == 1 || expressModeManager->_factoryTestMode))
  {
    sub_10021CC94(self->_driverWrapper, @"Enable Express");
  }

  if (self->_didPreWarmHardware)
  {
    sub_10021CC94(self->_driverWrapper, @"Prewarm");
  }

  sub_10022573C(&self->_driverWrapper->super.isa);
  sub_10019C158(self);
  [(_NFHardwareManager *)self maybeStartNextSession];
}

- (void)canResume:(unint64_t)resume status:(id)status
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v12 = 45;
    if (isMetaClass)
    {
      v12 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i ", v12, ClassName, Name, 8588);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = object_getClass(self);
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    *buf = 67109890;
    v43 = v15;
    v44 = 2082;
    v45 = object_getClassName(self);
    v46 = 2082;
    v47 = sel_getName(a2);
    v48 = 1024;
    v49 = 8588;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v16 = NFSharedSignpostLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWRecovery", "can resume", buf, 2u);
  }

  if (status)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(self);
      v20 = class_isMetaClass(v19);
      v21 = object_getClassName(self);
      v22 = sel_getName(a2);
      v23 = sub_10021E530(&self->_driverWrapper->super.isa);
      v24 = 45;
      if (v20)
      {
        v24 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Failed to restore - sessions are : %{public}@", v24, v21, v22, 8592, v23);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(self);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(self);
      v29 = sel_getName(a2);
      v30 = sub_10021E530(&self->_driverWrapper->super.isa);
      *buf = 67110146;
      v43 = v27;
      v44 = 2082;
      v45 = v28;
      v46 = 2082;
      v47 = v29;
      v48 = 1024;
      v49 = 8592;
      v50 = 2114;
      v51 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore - sessions are : %{public}@", buf, 0x2Cu);
    }

    self->_recoveryRequested = 0;
    [(NFBackgroundTagReadingManager *)self->_backgroundTagReadingManager start];
    if (self->_didPreWarmHardware)
    {
      v31 = sub_10021A4A0(self->_driverWrapper, @"Prewarm", 0);
      if (v31)
      {
        self->_didPreWarmHardware = 0;
      }
    }
  }

  else
  {
    self->_recoveryRequested = 0;
    [(NFBackgroundTagReadingManager *)self->_backgroundTagReadingManager start];
    v32 = sub_100003384(self);
    v33 = v32;
    if (v32 == 3)
    {
      sub_1000DEF84(self, 1);
    }

    else if (v32 == 5)
    {
      driverWrapper = self->_driverWrapper;
      if (driverWrapper)
      {
        driverWrapper->_isInDlMode = 0;
      }

      sub_1000E3290(&self->super.isa, @"Recovery");
      sub_1000E3F30(self);
      sub_10021CC94(self->_driverWrapper, @"Recovery");
    }

    else if (v32 != 2)
    {
      v40 = +[NSAssertionHandler currentHandler];
      [v40 handleFailureInMethod:a2 object:self file:@"_NFHardwareManager.m" lineNumber:8619 description:{@"Unexpected state %u", v33}];
    }

    v35 = sub_100003384(self);
    if (v33 != v35)
    {
      sub_1000E0EB4(&self->super.isa, v35);
    }

    if (v35 == 2)
    {
      sub_1000E1108(self);
      v36 = NFSharedSignpostLog();
      if (os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWRecovery", "end", buf, 2u);
      }
    }

    expressModeManager = self->_expressModeManager;
    if (expressModeManager && (expressModeManager->_controlState == 1 || expressModeManager->_factoryTestMode))
    {
      v38 = sub_10021A4A0(self->_driverWrapper, @"Enable Express", 1uLL);
    }

    sub_10019C0A0(self);
    if (self->_didPreWarmHardware)
    {
      v39 = sub_10021A4A0(self->_driverWrapper, @"Prewarm", 0);
      if (v39)
      {
        self->_didPreWarmHardware = 0;
      }
    }

    [(_NFHardwareManager *)self maybeStartNextSession];
  }
}

- (void)handleHceTargetLost
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100122850;
  block[3] = &unk_100315F30;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)secureElementReturnedRestrictedMode:(id)mode os:(int64_t)os
{
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100122944;
  v5[3] = &unk_100315F58;
  v5[4] = self;
  v5[5] = os;
  dispatch_async(workQueue, v5);
}

- (void)updateSeInfo:(id)info
{
  sub_100007EE0(self->_expressModeManager);
  v5 = sub_10004BF60(NFRoutingConfig, 0);
  v6 = [(_NFHardwareManager *)self setRoutingConfig:v5];

  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Failed to set routing mode", v12, ClassName, Name, 8690);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(self);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67109890;
      v18 = v15;
      v19 = 2082;
      v20 = object_getClassName(self);
      v21 = 2082;
      v22 = sel_getName(a2);
      v23 = 1024;
      v24 = 8690;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set routing mode", buf, 0x22u);
    }
  }

  else
  {
    [(_NFHardwareManager *)self refreshSecureElementInfo];
  }
}

- (void)markApplicationForDelete:(id)delete
{
  deleteCopy = delete;
  v4 = sub_10001F6E4();
  sub_10001D234(v4, deleteCopy);
}

- (void)powerObserverSystemWillSleep:(id)sleep
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 8705);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    v20 = v13;
    v21 = 2082;
    v22 = object_getClassName(self);
    v23 = 2082;
    v24 = sel_getName(a2);
    v25 = 1024;
    v26 = 8705;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v14 = NFSharedSignpostLog();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "powerObserverSystemWillSleep:", &unk_1002E8B7A, buf, 2u);
  }

  v15 = self->_secureElementSessionQueue;
  objc_sync_enter(v15);
  self->_systemWillSleep = 1;
  objc_sync_exit(v15);

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100122DD8;
  block[3] = &unk_100315F58;
  block[4] = self;
  block[5] = a2;
  dispatch_async_and_wait(workQueue, block);
}

- (void)powerObserverSystemHasPoweredOn:(id)on
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 8789);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    v18 = v13;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 8789;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100123C44;
  block[3] = &unk_100315F58;
  block[4] = self;
  block[5] = a2;
  dispatch_async(workQueue, block);
}

- (void)clientAppStateUpdate:(id)update appState:(unint64_t)state
{
  updateCopy = update;
  firstObject = [updateCopy firstObject];
  nF_clientName = [firstObject NF_clientName];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %{public}@, appState=%lu", v15, ClassName, Name, 8849, nF_clientName, state);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    *buf = 67110402;
    *v32 = v18;
    *&v32[4] = 2082;
    *&v32[6] = object_getClassName(self);
    *&v32[14] = 2082;
    *&v32[16] = sel_getName(a2);
    v33 = 1024;
    v34 = 8849;
    v35 = 2114;
    v36 = nF_clientName;
    v37 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@, appState=%lu", buf, 0x36u);
  }

  [firstObject processIdentifier];
  kdebug_trace();
  v19 = NFSharedSignpostLog();
  if (os_signpost_enabled(v19))
  {
    *buf = 138412546;
    *v32 = nF_clientName;
    *&v32[8] = 2048;
    *&v32[10] = state;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLIENT_APP_SUSPENDED", "client app %@ state update=%lu", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100124294;
  block[3] = &unk_100318D60;
  block[4] = self;
  v26 = firstObject;
  stateCopy2 = state;
  v30 = a2;
  v27 = nF_clientName;
  v28 = updateCopy;
  v20 = updateCopy;
  v21 = nF_clientName;
  v22 = firstObject;
  v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(self->_workQueue, v23);
}

- (void)preferencesDidChange
{
  workQueue = self->_workQueue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100124E60;
  v3[3] = &unk_100315F58;
  v3[4] = self;
  v3[5] = a2;
  dispatch_async(workQueue, v3);
}

- (void)reconfigureDynamicTransitRF:(unint64_t)f withOverride:(BOOL)override
{
  overrideCopy = override;
  v8 = sub_10003B984(&self->_expressModeManager->super.isa);
  expressModeManager = self->_expressModeManager;
  if (expressModeManager)
  {
    dynamicTransitConfiguration = expressModeManager->_dynamicTransitConfiguration;
  }

  else
  {
    dynamicTransitConfiguration = 0;
  }

  if ([(NFHardwareControllerInfo *)self->_controllerInfo hasAntenna]&& ([(NFHardwareControllerInfo *)self->_controllerInfo siliconName]== 8 || [(NFHardwareControllerInfo *)self->_controllerInfo siliconName]>= 0xA))
  {
    if (overrideCopy)
    {
      v11 = dynamicTransitConfiguration != f;
      v12 = f == 2;
    }

    else
    {
      v13 = dynamicTransitConfiguration != 2;
      if (!v8)
      {
        v13 = dynamicTransitConfiguration != 1;
      }

      v12 = v13 ? v8 & (v8 ^ (dynamicTransitConfiguration == 2)) : 0;
      v11 = v13 ? v8 ^ (dynamicTransitConfiguration == 2) : 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      if (overrideCopy)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      if (v11)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      if (v12)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v35 = v20;
      v23 = 43;
      if (!isMetaClass)
      {
        v23 = 45;
      }

      v15(6, "%c[%{public}s %{public}s]:%i RF override : %{public}@, update : %{public}@, alternate FDT : %{public}@", v23, ClassName, Name, 9374, v35, v21, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(self);
      v28 = sel_getName(a2);
      *buf = 67110658;
      v29 = @"YES";
      if (overrideCopy)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v37 = v26;
      if (v11)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v38 = 2082;
      if (!v12)
      {
        v29 = @"NO";
      }

      v39 = v27;
      v40 = 2082;
      v41 = v28;
      v42 = 1024;
      v43 = 9374;
      v44 = 2114;
      v45 = v30;
      v46 = 2114;
      v47 = v31;
      v48 = 2114;
      v49 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i RF override : %{public}@, update : %{public}@, alternate FDT : %{public}@", buf, 0x40u);
    }

    if (v11)
    {
      if ([(NFHardwareControllerInfo *)self->_controllerInfo hasAntenna]&& [(NFHardwareControllerInfo *)self->_controllerInfo siliconName]>= 8)
      {
        if (!overrideCopy)
        {
          return;
        }

        v32 = sub_1001E129C(self->_driverWrapper);
      }

      v33 = self->_expressModeManager;
      if (v33)
      {
        v34 = 1;
        if (v12)
        {
          v34 = 2;
        }

        v33->_dynamicTransitConfiguration = v34;
      }
    }
  }
}

- (id)setRoutingConfig:(id)config
{
  configCopy = config;
  fieldDetectType = [configCopy fieldDetectType];
  v7 = NFSharedSignpostLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 138412290;
    *v48 = configCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetRoutingConfig", "begin; config = %@", buf, 0xCu);
  }

  if (![configCopy wantsExpress])
  {
    goto LABEL_37;
  }

  lastKnownRoutingConfig = [(_NFHardwareManager *)self lastKnownRoutingConfig];
  v9 = sub_10004B630(configCopy, lastKnownRoutingConfig);

  if ((v9 & 1) == 0)
  {
    [(_NFHardwareManager *)self reconfigureDynamicTransitRF:1 withOverride:0];
    driverWrapper = self->_driverWrapper;
    expressModeManager = self->_expressModeManager;
    if (expressModeManager)
    {
      if (expressModeManager->_factoryTestMode)
      {
        if (expressModeManager->_testModeECP2)
        {
          modeConfig = 16;
        }

        else
        {
          modeConfig = 4;
        }

        if (!driverWrapper)
        {
          goto LABEL_14;
        }
      }

      else
      {
        modeConfig = expressModeManager->_modeConfig;
        if (!driverWrapper)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      modeConfig = 0;
      if (!driverWrapper)
      {
        goto LABEL_14;
      }
    }

    sub_1002208E4(driverWrapper, modeConfig, 0);
  }

LABEL_14:
  v13 = [configCopy embeddedMode] == 2 || objc_msgSend(configCopy, "embeddedMode") == 1;
  handle = [(NFSecureElementWrapper *)self->_secureElementWrapper handle];
  info = [handle info];
  restrictedMode = [info restrictedMode];

  if (restrictedMode)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v18 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v22 = 45;
      if (isMetaClass)
      {
        v22 = 43;
      }

      v18(4, "%c[%{public}s %{public}s]:%i Bypassing express mode due to SE in restricted mode", v22, ClassName, Name, 9440);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(self);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(self);
      v27 = sel_getName(a2);
      *buf = 67109890;
      *v48 = v25;
      *&v48[4] = 2082;
      *&v48[6] = v26;
      v49 = 2082;
      v50 = v27;
      v51 = 1024;
      v52 = 9440;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Bypassing express mode due to SE in restricted mode", buf, 0x22u);
    }

    v28 = 0;
    v29 = 1;
  }

  else if (v13)
  {
    v28 = sub_1000365C8(self->_expressModeManager);
    v29 = !v28;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v30 = sub_100033654(self->_expressModeManager);
  v31 = v30;
  if ((v29 & 1) != 0 || !v30)
  {
    if ((v29 | v30) == 1)
    {
      goto LABEL_36;
    }
  }

  else if ([configCopy hostMode] != 2)
  {
    v31 = 1;
LABEL_36:
    wantsLPCD = [configCopy wantsLPCD];
    v33 = sub_100006544(self->_expressModeManager);
    lpcdEcpFrame = [configCopy lpcdEcpFrame];
    v35 = sub_10004C2B0(NFRoutingConfig, wantsLPCD, v28, v33, v31, fieldDetectType, lpcdEcpFrame);

    configCopy = v35;
  }

LABEL_37:
  if ([configCopy cardEmulationType] || !objc_msgSend(configCopy, "contactlessOnAny"))
  {
    v41 = sub_10012535C(self, configCopy);
    v38 = NFSharedSignpostLog();
    if (os_signpost_enabled(v38))
    {
      v42 = "Failed";
      if (!v41)
      {
        v42 = "Success";
      }

      *buf = 136315138;
      *v48 = v42;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetRoutingConfig", "%s", buf, 0xCu);
    }
  }

  else
  {
    v36 = +[NSAssertionHandler currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"_NFHardwareManager.m" lineNumber:9482 description:{@"Unexpected config: %@", configCopy}];

    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v45 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Unexpected Result"];
    v46 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v41 = [v37 initWithDomain:v38 code:13 userInfo:v40];
  }

  return v41;
}

- (void)notifyReaderModeActivityEnd
{
  if (self->_readerUserNotified)
  {
    sub_1000F0974(self, "com.apple.stockholm.reader.cardLost");
    self->_readerUserNotified = 0;
  }
}

- (void)notifyReaderModeActivityStart
{
  if (!self->_readerUserNotified)
  {
    sub_1000F0974(self, "com.apple.stockholm.reader.cardDetected");
    self->_readerUserNotified = 1;
  }
}

- (BOOL)configureExpressFelicaEntry:(int)entry
{
  selfCopy = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100126004;
  v6[3] = &unk_100318D88;
  entryCopy = entry;
  v6[4] = self;
  v6[5] = a2;
  v4 = sub_10004C224(NFRoutingConfig, 0);
  LOBYTE(selfCopy) = sub_1000E6BE4(&selfCopy->super.isa, v6, @"Configure ExpressFelica entry", v4);

  return selfCopy;
}

- (void)didCameraStateChange:(BOOL)change
{
  changeCopy = change;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v7 = Logger;
  if (changeCopy)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Request assertion", v11, ClassName, Name, 563);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(self);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v25 = v14;
      v26 = 2082;
      v27 = object_getClassName(self);
      v28 = 2082;
      v29 = sel_getName(a2);
      v30 = 1024;
      v31 = 563;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Request assertion", buf, 0x22u);
    }

    sub_10017D968(self, @"NFCameraStateMonitor");
  }

  else
  {
    if (Logger)
    {
      v15 = object_getClass(self);
      v16 = class_isMetaClass(v15);
      v17 = object_getClassName(self);
      v23 = sel_getName(a2);
      v18 = 45;
      if (v16)
      {
        v18 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Release assertion", v18, v17, v23, 566);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v25 = v21;
      v26 = 2082;
      v27 = object_getClassName(self);
      v28 = 2082;
      v29 = sel_getName(a2);
      v30 = 1024;
      v31 = 566;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Release assertion", buf, 0x22u);
    }

    sub_10017DD1C(self, @"NFCameraStateMonitor");
  }
}

- (void)disableLPEMFeature:(unint64_t)feature completion:(id)completion
{
  completionCopy = completion;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100006AFC;
  v15[4] = sub_10019C2DC;
  v16 = +[NSXPCConnection currentConnection];
  v8 = sub_100007D90(&self->super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019C2E4;
  block[3] = &unk_10031B080;
  block[4] = self;
  v11 = completionCopy;
  v13 = a2;
  featureCopy = feature;
  v12 = v15;
  v9 = completionCopy;
  dispatch_async(v8, block);

  _Block_object_dispose(v15, 8);
}

- (void)enableHeadlessTestMode:(unsigned __int16)mode completion:(id)completion
{
  completionCopy = completion;
  v7 = sub_100007D90(&self->super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019E714;
  block[3] = &unk_100318A00;
  modeCopy = mode;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

- (void)configureHeadlessFactoryMode:(BOOL)mode completion:(id)completion
{
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100006AFC;
  v13[4] = sub_10019C2DC;
  v14 = +[NSXPCConnection currentConnection];
  v7 = sub_100007D90(&self->super.isa);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019F01C;
  v9[3] = &unk_10031B0F8;
  modeCopy = mode;
  v10 = completionCopy;
  v11 = v13;
  v9[4] = self;
  v8 = completionCopy;
  dispatch_async(v7, v9);

  _Block_object_dispose(v13, 8);
}

- (void)headlessFactoryModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100006AFC;
  v10[4] = sub_10019C2DC;
  v11 = +[NSXPCConnection currentConnection];
  v5 = sub_100007D90(&self->super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A002C;
  block[3] = &unk_10031B120;
  v8 = completionCopy;
  v9 = v10;
  block[4] = self;
  v6 = completionCopy;
  dispatch_async(v5, block);

  _Block_object_dispose(v10, 8);
}

- (void)disableHeadlessMiniNVWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100006AFC;
  v10[4] = sub_10019C2DC;
  v11 = +[NSXPCConnection currentConnection];
  v5 = sub_100007D90(&self->super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0CBC;
  block[3] = &unk_10031B120;
  v8 = completionCopy;
  v9 = v10;
  block[4] = self;
  v6 = completionCopy;
  dispatch_async(v5, block);

  _Block_object_dispose(v10, 8);
}

- (BOOL)isFirstInQueue
{
  if (self)
  {
    v4 = self->_currentSecureElementSession;
    v5 = v4 == 0;
    if (v4)
    {
      v2 = self->_currentSecureElementSession;
      if (![(_NFSession *)v2 isEnding])
      {
        v6 = 0;
LABEL_7:

        goto LABEL_8;
      }
    }

    secureElementSessionQueue = self->_secureElementSessionQueue;
  }

  else
  {
    v4 = 0;
    secureElementSessionQueue = 0;
    v5 = 1;
  }

  v8 = secureElementSessionQueue;
  v6 = [(NSMutableArray *)v8 count]== 0;

  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

- (BOOL)_syncResumeSession:(id)session field:(id)field
{
  sessionCopy = session;
  fieldCopy = field;
  if (self)
  {
    suspendedSessionQueue = self->_suspendedSessionQueue;
  }

  else
  {
    suspendedSessionQueue = 0;
  }

  v10 = suspendedSessionQueue;
  v11 = [(NSMutableArray *)v10 indexOfObject:sessionCopy];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v13(6, "%c[%{public}s %{public}s]:%i %{public}@ is not in suspended state", v16, ClassName, Name, 457, sessionCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67110146;
      v51 = v19;
      v52 = 2082;
      v53 = object_getClassName(self);
      v54 = 2082;
      v55 = sel_getName(a2);
      v56 = 1024;
      v57 = 457;
      v58 = 2114;
      v59 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ is not in suspended state", buf, 0x2Cu);
    }

    goto LABEL_36;
  }

  isSessionSEOnly = [sessionCopy isSessionSEOnly];
  driverWrapper = [(_NFHardwareManager *)self driverWrapper];
  v17 = sub_10021A4A0(driverWrapper, @"Session", isSessionSEOnly ^ 1);

  if (v17)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(self);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(self);
      v49 = sel_getName(a2);
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Error - failed to restart parent session", v27, v26, v49, 489);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = object_getClass(self);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      *buf = 67109890;
      v51 = v30;
      v52 = 2082;
      v53 = object_getClassName(self);
      v54 = 2082;
      v55 = sel_getName(a2);
      v56 = 1024;
      v57 = 489;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error - failed to restart parent session", buf, 0x22u);
    }

    driverWrapper2 = [(_NFHardwareManager *)self driverWrapper];
    v32 = driverWrapper2;
    if (driverWrapper2)
    {
      v33 = *(driverWrapper2 + 8);
      NFDriverSimulateCrash();
    }

    goto LABEL_36;
  }

  if (self)
  {
    v34 = self->_suspendedSessionQueue;
    [(NSMutableArray *)v34 removeObjectAtIndex:v11];

    sub_1001263C0(self, sessionCopy);
    currentSecureElementSession = self->_currentSecureElementSession;
  }

  else
  {
    [0 removeObjectAtIndex:v11];
    sub_1001263C0(0, sessionCopy);
    currentSecureElementSession = 0;
  }

  v36 = currentSecureElementSession;
  v37 = [(_NFSession *)v36 initialRoutingConfigWithField:fieldCopy];
  v38 = [(_NFHardwareManager *)self setRoutingConfig:v37];

  if (([sessionCopy resume] & 1) == 0)
  {
    if (self)
    {
      v42 = self->_secureElementSessionQueue;
      v43 = self->_currentSecureElementSession;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v44 = v43;
    [(NSMutableArray *)v42 insertObject:v44 atIndex:0];

    sub_1001263C0(self, 0);
    driverWrapper3 = [(_NFHardwareManager *)self driverWrapper];
    sub_10021CC94(driverWrapper3, @"Session");

    v17 = 0;
LABEL_36:
    v41 = 0;
    goto LABEL_37;
  }

  sub_1000E9F50(self);
  sub_1001DD8CC(self);
  if (self)
  {
    secureElementSessionQueue = self->_secureElementSessionQueue;
  }

  else
  {
    secureElementSessionQueue = 0;
  }

  v40 = secureElementSessionQueue;
  v17 = [(NSMutableArray *)v40 count];

  if (v17)
  {
    v17 = 0;
    v41 = 1;
  }

  else
  {
    v41 = 1;
    sub_1000DE998(self, 1);
  }

LABEL_37:

  return v41;
}

- (void)dequeueSession:(id)session
{
  sessionCopy = session;
  v4 = sub_100007D90(&self->super.isa);
  dispatch_assert_queue_V2(v4);

  sub_1000EE388(&self->super.isa, sessionCopy, 1);
}

- (void)queueSession:(id)session
{
  sessionCopy = session;
  v5 = sub_100007D90(&self->super.isa);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DFE3C;
  v7[3] = &unk_100315FA8;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(v5, v7);
}

- (void)prioritizeSession:(id)session
{
  sessionCopy = session;
  if (self)
  {
    secureElementSessionQueue = self->_secureElementSessionQueue;
  }

  else
  {
    secureElementSessionQueue = 0;
  }

  v7 = secureElementSessionQueue;
  objc_sync_enter(v7);
  if (self)
  {
    currentSecureElementSession = self->_currentSecureElementSession;
  }

  else
  {
    currentSecureElementSession = 0;
  }

  v9 = currentSecureElementSession;

  if (v9 == sessionCopy)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v32 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v36 = 45;
      if (isMetaClass)
      {
        v36 = 43;
      }

      v32(6, "%c[%{public}s %{public}s]:%i Session already running", v36, ClassName, Name, 588);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v37 = object_getClass(self);
      if (class_isMetaClass(v37))
      {
        v38 = 43;
      }

      else
      {
        v38 = 45;
      }

      *buf = 67109890;
      v51 = v38;
      v52 = 2082;
      v53 = object_getClassName(self);
      v54 = 2082;
      v55 = sel_getName(a2);
      v56 = 1024;
      v57 = 588;
      v39 = "%c[%{public}s %{public}s]:%i Session already running";
      v40 = v30;
      v41 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_44;
    }
  }

  else
  {
    if (self)
    {
      v10 = self->_secureElementSessionQueue;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [(NSMutableArray *)v11 containsObject:sessionCopy];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFLogGetLogger();
    v14 = v13;
    if (v12)
    {
      if (v13)
      {
        v15 = object_getClass(self);
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        v17 = object_getClassName(self);
        v18 = sel_getName(a2);
        if (self)
        {
          v19 = self->_secureElementSessionQueue;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        v14(6, "%c[%{public}s %{public}s]:%i Prioritizing session from %d to 0", v16, v17, v18, 597, [(NSMutableArray *)v20 indexOfObject:sessionCopy]);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = object_getClass(self);
        if (class_isMetaClass(v22))
        {
          v23 = 43;
        }

        else
        {
          v23 = 45;
        }

        v24 = object_getClassName(self);
        v25 = sel_getName(a2);
        if (self)
        {
          v26 = self->_secureElementSessionQueue;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        *buf = 67110146;
        v51 = v23;
        v52 = 2082;
        v53 = v24;
        v54 = 2082;
        v55 = v25;
        v56 = 1024;
        v57 = 597;
        v58 = 1024;
        v59 = [(NSMutableArray *)v27 indexOfObject:sessionCopy];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Prioritizing session from %d to 0", buf, 0x28u);
      }

      if (self)
      {
        v28 = self->_secureElementSessionQueue;
        [(NSMutableArray *)v28 removeObject:sessionCopy];

        v29 = self->_secureElementSessionQueue;
      }

      else
      {
        [0 removeObject:sessionCopy];
        v29 = 0;
      }

      v30 = v29;
      [v30 insertObject:sessionCopy atIndex:0];
      goto LABEL_45;
    }

    if (v13)
    {
      v42 = object_getClass(self);
      v43 = class_isMetaClass(v42);
      v44 = object_getClassName(self);
      v49 = sel_getName(a2);
      v45 = 45;
      if (v43)
      {
        v45 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Session not queued !", v45, v44, v49, 593);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v46 = object_getClass(self);
      if (class_isMetaClass(v46))
      {
        v47 = 43;
      }

      else
      {
        v47 = 45;
      }

      *buf = 67109890;
      v51 = v47;
      v52 = 2082;
      v53 = object_getClassName(self);
      v54 = 2082;
      v55 = sel_getName(a2);
      v56 = 1024;
      v57 = 593;
      v39 = "%c[%{public}s %{public}s]:%i Session not queued !";
      v40 = v30;
      v41 = OS_LOG_TYPE_ERROR;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v40, v41, v39, buf, 0x22u);
    }
  }

LABEL_45:

  objc_sync_exit(v7);
}

- (id)switchToSession:(id)session withToken:(id)token
{
  sessionCopy = session;
  tokenCopy = token;
  if (self)
  {
    secureElementSessionQueue = self->_secureElementSessionQueue;
  }

  else
  {
    secureElementSessionQueue = 0;
  }

  obj = secureElementSessionQueue;
  objc_sync_enter(obj);
  if (self)
  {
    currentSecureElementSession = self->_currentSecureElementSession;
  }

  else
  {
    currentSecureElementSession = 0;
  }

  v10 = currentSecureElementSession;
  token = [(_NFSession *)v10 token];
  v12 = [token isEqualToData:tokenCopy];

  if (v12)
  {
    if (self)
    {
      v13 = self->_secureElementSessionQueue;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [(NSMutableArray *)v14 containsObject:sessionCopy];

    v84 = sessionCopy;
    if (v15)
    {
      if (self)
      {
        v16 = self->_currentSecureElementSession;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        sessionUID = [sessionCopy sessionUID];
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v19(6, "%c[%{public}s %{public}s]:%i Assigning parent token %{public}@ to %{public}@", v25, ClassName, Name, 620, tokenCopy, sessionUID);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = object_getClass(self);
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        v29 = object_getClassName(self);
        v30 = sel_getName(a2);
        sessionUID2 = [v84 sessionUID];
        *buf = 67110402;
        v90 = v28;
        sessionCopy = v84;
        v91 = 2082;
        v92 = v29;
        v93 = 2082;
        v94 = v30;
        v95 = 1024;
        v96 = 620;
        v97 = 2114;
        v98 = tokenCopy;
        v99 = 2114;
        v100 = sessionUID2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assigning parent token %{public}@ to %{public}@", buf, 0x36u);
      }

      [sessionCopy setParentToken:tokenCopy];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v33 = v32;
        v34 = object_getClass(self);
        v35 = class_isMetaClass(v34);
        v36 = object_getClassName(self);
        v37 = sel_getName(a2);
        sessionUID3 = [(_NFSession *)v17 sessionUID];
        sessionUID4 = [sessionCopy sessionUID];
        v40 = 45;
        if (v35)
        {
          v40 = 43;
        }

        v33(6, "%c[%{public}s %{public}s]:%i Switching from %{public}@ to %{public}@", v40, v36, v37, 623, sessionUID3, sessionUID4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = object_getClass(self);
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        v44 = object_getClassName(self);
        v45 = sel_getName(a2);
        a2 = [(_NFSession *)v17 sessionUID];
        sessionUID5 = [v84 sessionUID];
        *buf = 67110402;
        v90 = v43;
        v91 = 2082;
        v92 = v44;
        v93 = 2082;
        v94 = v45;
        v95 = 1024;
        v96 = 623;
        v97 = 2114;
        v98 = a2;
        v99 = 2114;
        v100 = sessionUID5;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Switching from %{public}@ to %{public}@", buf, 0x36u);
      }

      if (self)
      {
        v47 = self->_secureElementSessionQueue;
        sessionCopy = v84;
        [(NSMutableArray *)v47 removeObject:v84];

        v48 = self->_secureElementSessionQueue;
      }

      else
      {
        sessionCopy = v84;
        [0 removeObject:v84];
        v48 = 0;
      }

      v49 = v48;
      [(NSMutableArray *)v49 insertObject:sessionCopy atIndex:0];

      sub_1001263C0(self, 0);
      if (self)
      {
        suspendedSessionQueue = self->_suspendedSessionQueue;
      }

      else
      {
        suspendedSessionQueue = 0;
      }

      v51 = suspendedSessionQueue;
      [(NSMutableArray *)v51 addObject:v17];

      v87[0] = @"ReasonCode";
      v87[1] = @"Token";
      v88[0] = &off_100335760;
      v88[1] = tokenCopy;
      v52 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
      [(_NFSession *)v17 suspendWithInfo:v52];
      v53 = 1;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFLogGetLogger();
      if (v66)
      {
        v67 = v66;
        v68 = object_getClass(self);
        v69 = class_isMetaClass(v68);
        v70 = object_getClassName(self);
        v83 = sel_getName(a2);
        v71 = 45;
        if (v69)
        {
          v71 = 43;
        }

        v67(3, "%c[%{public}s %{public}s]:%i Session isn't queued !", v71, v70, v83, 615);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v72 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v73 = object_getClass(self);
        if (class_isMetaClass(v73))
        {
          v74 = 43;
        }

        else
        {
          v74 = 45;
        }

        *buf = 67109890;
        v90 = v74;
        v91 = 2082;
        v92 = object_getClassName(self);
        v93 = 2082;
        v94 = sel_getName(a2);
        v95 = 1024;
        v96 = 615;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session isn't queued !", buf, 0x22u);
      }

      v75 = [NSError alloc];
      v17 = [NSString stringWithUTF8String:"nfcd"];
      v101[0] = NSLocalizedDescriptionKey;
      v52 = [NSString stringWithUTF8String:"Invalid State"];
      v102[0] = v52;
      v102[1] = &off_100335748;
      v101[1] = @"Line";
      v101[2] = @"Method";
      v76 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v102[2] = v76;
      v101[3] = NSDebugDescriptionErrorKey;
      v77 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 616];
      v102[3] = v77;
      v78 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:4];
      a2 = [v75 initWithDomain:v17 code:12 userInfo:v78];

      v53 = 0;
      sessionCopy = v84;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v55 = v54;
      v56 = object_getClass(self);
      v57 = class_isMetaClass(v56);
      v81 = object_getClassName(self);
      v82 = sel_getName(a2);
      v58 = 45;
      if (v57)
      {
        v58 = 43;
      }

      v55(3, "%c[%{public}s %{public}s]:%i Current session token doesn't match %{public}@", v58, v81, v82, 610, tokenCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = object_getClass(self);
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      *buf = 67110146;
      v90 = v61;
      v91 = 2082;
      v92 = object_getClassName(self);
      v93 = 2082;
      v94 = sel_getName(a2);
      v95 = 1024;
      v96 = 610;
      v97 = 2114;
      v98 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Current session token doesn't match %{public}@", buf, 0x2Cu);
    }

    v62 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v103[0] = NSLocalizedDescriptionKey;
    v52 = [NSString stringWithUTF8String:"Invalid State"];
    v104[0] = v52;
    v104[1] = &off_100335730;
    v103[1] = @"Line";
    v103[2] = @"Method";
    v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v104[2] = v63;
    v103[3] = NSDebugDescriptionErrorKey;
    v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 611];
    v104[3] = v64;
    v65 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
    a2 = [v62 initWithDomain:v17 code:12 userInfo:v65];

    v53 = 0;
  }

  objc_sync_exit(obj);
  if (v53)
  {
    [(_NFHardwareManager *)self maybeStartNextSession];
    driverWrapper = [(_NFHardwareManager *)self driverWrapper];
    sub_10021CC94(driverWrapper, @"Session");

    a2 = 0;
  }

  return a2;
}

- (id)_updateAllPowerCounters
{
  driverWrapper = [(_NFHardwareManager *)self driverWrapper];
  v39 = 0;
  v4 = sub_1001E78F8(driverWrapper, &v39);
  v32 = v39;

  if (v4)
  {
    if ([v4 code] != 45)
    {
      v28 = v4;
      goto LABEL_39;
    }

    if (!self)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (!self)
    {
LABEL_43:
      Property = 0;
      v8 = 1;
      goto LABEL_10;
    }

    if (self->_lpcdFalseDetectLoggingEnabled && [v32 count])
    {
      v6 = [v32 objectForKeyedSubscript:@"lpcdFalseDetectCount"];
      -[_NFHardwareManager logLPCDFalseDetects:](self, "logLPCDFalseDetects:", [v6 intValue]);
    }
  }

  Property = objc_getProperty(self, v5, 176, 1);
  v8 = 0;
LABEL_10:
  v30 = Property;
  objc_sync_enter(v30);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_getProperty(self, v9, 176, 1);
  }

  obj = v10;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v34)
  {
    v33 = *v36;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        nF_userInfo = [v12 NF_userInfo];
        v14 = [nF_userInfo objectForKeyedSubscript:@"powerCounters"];

        if (v14)
        {
          controllerInfo = [(_NFHardwareManager *)self controllerInfo];
          if ([controllerInfo siliconName] == 14)
          {
            v16 = 1;
          }

          else
          {
            controllerInfo2 = [(_NFHardwareManager *)self controllerInfo];
            if ([controllerInfo2 siliconName] == 15)
            {
              v16 = 1;
            }

            else
            {
              controllerInfo3 = [(_NFHardwareManager *)self controllerInfo];
              if ([controllerInfo3 siliconName] == 16)
              {
                v16 = 1;
              }

              else
              {
                controllerInfo4 = [(_NFHardwareManager *)self controllerInfo];
                v16 = [controllerInfo4 siliconName] == 17;
              }
            }
          }

          secureElementInfo = [(_NFHardwareManager *)self secureElementInfo];
          sequenceCounter = [secureElementInfo sequenceCounter];
          unsignedIntValue = [sequenceCounter unsignedIntValue];

          driverWrapper2 = [(_NFHardwareManager *)self driverWrapper];
          if (v4)
          {
            v24 = [v4 code] == 45;
          }

          else
          {
            v24 = 0;
          }

          v25 = unsignedIntValue < 0x212 && v16;
          v26 = sub_1001E88BC(driverWrapper2, v14, v32, v24, v25);

          if (v26)
          {
            nF_userInfo2 = [v12 NF_userInfo];
            [nF_userInfo2 setObject:v26 forKeyedSubscript:@"powerCounters"];
          }
        }
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v34);
  }

  objc_sync_exit(v30);
  v28 = 0;
LABEL_39:

  return v28;
}

- (id)updateAllPowerCounters
{
  if (self && self->_systemWillSleep)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Cannot fetch power counters when device is going to sleep", v9, ClassName, Name, 94);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(self);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      *buf = 67109890;
      v70 = v12;
      v71 = 2082;
      v72 = object_getClassName(self);
      v73 = 2082;
      v74 = sel_getName(a2);
      v75 = 1024;
      v76 = 94;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Cannot fetch power counters when device is going to sleep", buf, 0x22u);
    }

    v13 = [NSError alloc];
    driverWrapper2 = [NSString stringWithUTF8String:"nfcd"];
    v79[0] = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithUTF8String:"Busy"];
    v80[0] = v15;
    v80[1] = &off_100335DD8;
    v79[1] = @"Line";
    v79[2] = @"Method";
    v16 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v80[2] = v16;
    v79[3] = NSDebugDescriptionErrorKey;
    v17 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 95];
    v80[3] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
    v19 = [v13 initWithDomain:driverWrapper2 code:2 userInfo:v18];

LABEL_39:
    goto LABEL_40;
  }

  driverWrapper = [(_NFHardwareManager *)self driverWrapper];
  driverWrapper2 = sub_10021A4A0(driverWrapper, @"Power Counters", 1uLL);

  if (driverWrapper2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v59 = object_getClassName(self);
      v61 = sel_getName(a2);
      v25 = 45;
      if (v24)
      {
        v25 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v25, v59, v61, 100, driverWrapper2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      *buf = 67110146;
      v70 = v28;
      v71 = 2082;
      v72 = object_getClassName(self);
      v73 = 2082;
      v74 = sel_getName(a2);
      v75 = 1024;
      v76 = 100;
      v77 = 2112;
      v78 = driverWrapper2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    v29 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    code = [driverWrapper2 code];
    v67[0] = NSLocalizedDescriptionKey;
    if ([driverWrapper2 code] > 75)
    {
      code2 = 76;
    }

    else
    {
      code2 = [driverWrapper2 code];
    }

    v49 = [NSString stringWithUTF8String:(&off_10031BC90)[code2]];
    v68[0] = v49;
    v68[1] = driverWrapper2;
    v67[1] = NSUnderlyingErrorKey;
    v67[2] = @"Line";
    v68[2] = &off_100335DF0;
    v67[3] = @"Method";
    v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v68[3] = v50;
    v67[4] = NSDebugDescriptionErrorKey;
    v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 101];
    v68[4] = v51;
    v52 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:5];
    v19 = [v29 initWithDomain:v15 code:code userInfo:v52];

    goto LABEL_39;
  }

  expressModeManager = [(_NFHardwareManager *)self expressModeManager];
  if (expressModeManager)
  {
    v33 = expressModeManager[181];

    if (v33 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFLogGetLogger();
      if (v34)
      {
        v35 = v34;
        v36 = object_getClass(self);
        v37 = class_isMetaClass(v36);
        v38 = object_getClassName(self);
        v62 = sel_getName(a2);
        v39 = 45;
        if (v37)
        {
          v39 = 43;
        }

        v35(5, "%c[%{public}s %{public}s]:%i Cannot fetch power counters when express mode is active", v39, v38, v62, 106);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = object_getClass(self);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        *buf = 67109890;
        v70 = v42;
        v71 = 2082;
        v72 = object_getClassName(self);
        v73 = 2082;
        v74 = sel_getName(a2);
        v75 = 1024;
        v76 = 106;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cannot fetch power counters when express mode is active", buf, 0x22u);
      }

      v43 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v65[0] = NSLocalizedDescriptionKey;
      v45 = [NSString stringWithUTF8String:"Busy"];
      v66[0] = v45;
      v66[1] = &off_100335E08;
      v65[1] = @"Line";
      v65[2] = @"Method";
      v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v66[2] = v46;
      v65[3] = NSDebugDescriptionErrorKey;
      v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 107];
      v66[3] = v47;
      v48 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:4];
      v19 = [v43 initWithDomain:v44 code:2 userInfo:v48];
      goto LABEL_49;
    }
  }

  _updateAllPowerCounters = [(_NFHardwareManager *)self _updateAllPowerCounters];
  if (_updateAllPowerCounters)
  {
    v55 = _updateAllPowerCounters;
    v56 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v55 code];
    v63[0] = NSLocalizedDescriptionKey;
    if ([v55 code] > 75)
    {
      code4 = 76;
    }

    else
    {
      code4 = [v55 code];
    }

    v45 = [NSString stringWithUTF8String:(&off_10031BC90)[code4]];
    v64[0] = v45;
    v64[1] = v55;
    v63[1] = NSUnderlyingErrorKey;
    v63[2] = @"Line";
    v64[2] = &off_100335E20;
    v63[3] = @"Method";
    v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v64[3] = v46;
    v63[4] = NSDebugDescriptionErrorKey;
    v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 111];
    v64[4] = v47;
    v48 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:5];
    v19 = [v56 initWithDomain:v44 code:code3 userInfo:v48];

LABEL_49:
    goto LABEL_50;
  }

  v19 = 0;
LABEL_50:
  driverWrapper2 = [(_NFHardwareManager *)self driverWrapper];
  sub_10021CC94(driverWrapper2, @"Power Counters");
LABEL_40:

  return v19;
}

- (void)getPowerCountersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_100007D90(&self->super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020CC20;
  block[3] = &unk_1003188A0;
  block[4] = self;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)_sync_getPowerCountersForConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  if (sub_100003384(self) == 2)
  {
    nF_userInfo = [connectionCopy NF_userInfo];
    v9 = [nF_userInfo objectForKeyedSubscript:@"powerCounters"];

    if (!v9)
    {
      v10 = objc_opt_new();
      nF_userInfo2 = [connectionCopy NF_userInfo];
      [nF_userInfo2 setObject:v10 forKeyedSubscript:@"powerCounters"];
    }

    updateAllPowerCounters = [(_NFHardwareManager *)self updateAllPowerCounters];
    if (updateAllPowerCounters)
    {
      v13 = 0;
    }

    else
    {
      nF_userInfo3 = [connectionCopy NF_userInfo];
      v13 = [nF_userInfo3 objectForKeyedSubscript:@"powerCounters"];

      v19 = objc_opt_new();
      nF_userInfo4 = [connectionCopy NF_userInfo];
      [nF_userInfo4 setObject:v19 forKeyedSubscript:@"powerCounters"];
    }

    completionCopy[2](completionCopy, updateAllPowerCounters, v13);
  }

  else
  {
    v14 = [NSError alloc];
    updateAllPowerCounters = [NSString stringWithUTF8String:"nfcd"];
    v21 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v22 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v17 = [v14 initWithDomain:updateAllPowerCounters code:58 userInfo:v16];
    completionCopy[2](completionCopy, v17, 0);
  }
}

- (id)combineFlashWriteCounters:(id)counters with:(id)with overflow:(BOOL)overflow
{
  overflowCopy = overflow;
  countersCopy = counters;
  withCopy = with;
  v9 = +[NSMutableDictionary dictionary];
  if ([countersCopy count])
  {
    v10 = [countersCopy objectForKeyedSubscript:@"NFCC Write Counters"];
    intValue = [v10 intValue];
    v12 = [withCopy objectForKeyedSubscript:@"NFCC Write Counters"];
    intValue2 = [v12 intValue];

    v14 = [NSNumber numberWithUnsignedInt:intValue2 + intValue];
    [v9 setObject:v14 forKeyedSubscript:@"NFCC Write Counters"];

    if (overflowCopy)
    {
      v15 = [NSNumber numberWithBool:1];
      [v9 setObject:v15 forKeyedSubscript:@"NFCC Write Counters Overflow"];
    }

    v16 = [v9 copy];
  }

  else
  {
    if (overflowCopy)
    {
      [v9 addEntriesFromDictionary:withCopy];
      v17 = [NSNumber numberWithBool:1];
      [v9 setObject:v17 forKeyedSubscript:@"NFCC Write Counters Overflow"];

      v18 = v9;
    }

    else
    {
      v18 = withCopy;
    }

    v16 = [NSDictionary dictionaryWithDictionary:v18];
  }

  v19 = v16;

  return v19;
}

- (id)openStackAndUpdateAllWriteCounters:(id *)counters
{
  if (self && self->_systemWillSleep)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Cannot fetch write counters when device is going to sleep", v11, ClassName, Name, 265);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(self);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v80 = v14;
      v81 = 2082;
      v82 = object_getClassName(self);
      v83 = 2082;
      v84 = sel_getName(a2);
      v85 = 1024;
      v86 = 265;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Cannot fetch write counters when device is going to sleep", buf, 0x22u);
    }

    if (!counters)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_54;
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v89[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Busy"];
    v90[0] = v17;
    v90[1] = &off_100335E68;
    v89[1] = @"Line";
    v89[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v90[2] = v18;
    v89[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 266];
    v90[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];
    *counters = [v15 initWithDomain:v16 code:2 userInfo:v20];

    v21 = 0;
    v22 = 0;
LABEL_53:
    counters = 0;
    goto LABEL_54;
  }

  driverWrapper = [(_NFHardwareManager *)self driverWrapper];
  v22 = sub_10021A4A0(driverWrapper, @"Write Counters", 1uLL);

  if (v22)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(self);
      v27 = class_isMetaClass(v26);
      v68 = object_getClassName(self);
      v70 = sel_getName(a2);
      v28 = 45;
      if (v27)
      {
        v28 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v28, v68, v70, 272, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(self);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      *buf = 67110146;
      v80 = v31;
      v81 = 2082;
      v82 = object_getClassName(self);
      v83 = 2082;
      v84 = sel_getName(a2);
      v85 = 1024;
      v86 = 272;
      v87 = 2112;
      v88 = v22;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    if (!counters)
    {
      v21 = 0;
      goto LABEL_54;
    }

    v32 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    code = [v22 code];
    v77[0] = NSLocalizedDescriptionKey;
    if ([v22 code] > 75)
    {
      code2 = 76;
    }

    else
    {
      code2 = [v22 code];
    }

    v53 = [NSString stringWithUTF8String:(&off_10031BC90)[code2]];
    v78[0] = v53;
    v78[1] = v22;
    v77[1] = NSUnderlyingErrorKey;
    v77[2] = @"Line";
    v78[2] = &off_100335E80;
    v77[3] = @"Method";
    v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v78[3] = v54;
    v77[4] = NSDebugDescriptionErrorKey;
    v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 273];
    v78[4] = v55;
    v56 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:5];
    *counters = [v32 initWithDomain:v33 code:code userInfo:v56];

    v21 = 0;
    goto LABEL_53;
  }

  expressModeManager = [(_NFHardwareManager *)self expressModeManager];
  if (expressModeManager && (v37 = expressModeManager[181], expressModeManager, v37 == 1))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(self);
      v41 = class_isMetaClass(v40);
      v42 = object_getClassName(self);
      v71 = sel_getName(a2);
      v43 = 45;
      if (v41)
      {
        v43 = 43;
      }

      v39(5, "%c[%{public}s %{public}s]:%i Cannot fetch write counters when express mode is active", v43, v42, v71, 279);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = object_getClass(self);
      if (class_isMetaClass(v45))
      {
        v46 = 43;
      }

      else
      {
        v46 = 45;
      }

      *buf = 67109890;
      v80 = v46;
      v81 = 2082;
      v82 = object_getClassName(self);
      v83 = 2082;
      v84 = sel_getName(a2);
      v85 = 1024;
      v86 = 279;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cannot fetch write counters when express mode is active", buf, 0x22u);
    }

    v47 = [NSError alloc];
    driverWrapper2 = [NSString stringWithUTF8String:"nfcd"];
    v75[0] = NSLocalizedDescriptionKey;
    v49 = [NSString stringWithUTF8String:"Busy"];
    v76[0] = v49;
    v76[1] = &off_100335E98;
    v75[1] = @"Line";
    v75[2] = @"Method";
    v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v76[2] = v50;
    v75[3] = NSDebugDescriptionErrorKey;
    v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 280];
    v76[3] = v51;
    v52 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:4];
    v22 = [v47 initWithDomain:driverWrapper2 code:2 userInfo:v52];

    v21 = 0;
  }

  else
  {
    v57 = sub_10020D030(self);
    driverWrapper2 = [(_NFHardwareManager *)self driverWrapper];
    v72 = 0;
    v22 = sub_1001E9340(driverWrapper2, &v72);
    v21 = v72;
  }

  driverWrapper3 = [(_NFHardwareManager *)self driverWrapper];
  sub_10021CC94(driverWrapper3, @"Write Counters");

  if (v22)
  {
    if (!counters)
    {
      goto LABEL_54;
    }

    v59 = [NSError alloc];
    v60 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v22 code];
    v73[0] = NSLocalizedDescriptionKey;
    if ([v22 code] > 75)
    {
      code4 = 76;
    }

    else
    {
      code4 = [v22 code];
    }

    v63 = [NSString stringWithUTF8String:(&off_10031BC90)[code4]];
    v74[0] = v63;
    v74[1] = v22;
    v73[1] = NSUnderlyingErrorKey;
    v73[2] = @"Line";
    v74[2] = &off_100335EB0;
    v73[3] = @"Method";
    v64 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v74[3] = v64;
    v73[4] = NSDebugDescriptionErrorKey;
    v65 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 289];
    v74[4] = v65;
    v66 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:5];
    *counters = [v59 initWithDomain:v60 code:code3 userInfo:v66];

    goto LABEL_53;
  }

  if (counters)
  {
    *counters = 0;
  }

  v21 = v21;
  v22 = 0;
  counters = v21;
LABEL_54:

  return counters;
}

- (void)getFlashWriteCountersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_100007D90(&self->super.isa);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020E0B0;
  block[3] = &unk_1003188A0;
  block[4] = self;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)_sync_getFlashWriteCountersForConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    nF_clientName = [connectionCopy NF_clientName];
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i %{public}@ requesting write counters", v16, ClassName, Name, 309, nF_clientName);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    nF_clientName2 = [connectionCopy NF_clientName];
    *buf = 67110146;
    v40 = v19;
    v41 = 2082;
    v42 = v20;
    v43 = 2082;
    v44 = v21;
    v45 = 1024;
    v46 = 309;
    v47 = 2114;
    v48 = nF_clientName2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ requesting write counters", buf, 0x2Cu);
  }

  if (sub_100003384(self) == 2)
  {
    nF_userInfo = [connectionCopy NF_userInfo];
    v24 = [nF_userInfo objectForKeyedSubscript:@"flashWriteCounters"];

    if (!v24)
    {
      v25 = +[NSDictionary dictionary];
      nF_userInfo2 = [connectionCopy NF_userInfo];
      [nF_userInfo2 setObject:v25 forKeyedSubscript:@"flashWriteCounters"];
    }

    v27 = objc_opt_new();
    v36 = 0;
    v28 = [(_NFHardwareManager *)self openStackAndUpdateAllWriteCounters:&v36];
    v29 = v36;
    if (!v29)
    {
      nF_userInfo3 = [connectionCopy NF_userInfo];
      v31 = [nF_userInfo3 objectForKeyedSubscript:@"flashWriteCounters"];
      [v27 addEntriesFromDictionary:v31];

      v32 = +[NSDictionary dictionary];
      nF_userInfo4 = [connectionCopy NF_userInfo];
      [nF_userInfo4 setObject:v32 forKeyedSubscript:@"flashWriteCounters"];

      if ([v28 count])
      {
        [v27 setObject:v28 forKeyedSubscript:@"NFCC Page Erase Counters"];
      }
    }

    completionCopy[2](completionCopy, v29, v27);
  }

  else
  {
    v34 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    v37 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v38 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v35 = [v34 initWithDomain:v29 code:58 userInfo:v28];
    completionCopy[2](completionCopy, v35, 0);
  }
}

@end