@interface SOSAccount
+ (id)accountFromDER:(const char *)a3 end:(const char *)a4 factory:(SOSDataSourceFactory *)a5 error:(id *)a6;
+ (id)accountFromData:(id)a3 factory:(SOSDataSourceFactory *)a4 error:(id *)a5;
+ (id)urlForSOSAccountSettings;
+ (unsigned)ghostBustGetRampSettings;
+ (void)performOnQuietAccountQueue:(id)a3;
- (BOOL)SOSMonitorModeSOSIsActive;
- (BOOL)_onQueueEnsureInBackupRings:(__CFString *)a3;
- (BOOL)ensureFactoryCircles;
- (BOOL)ghostBustCheckDate;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInCircle:(__CFError *)a3;
- (BOOL)sosEvaluateIfNeeded;
- (BOOL)syncWaitAndFlush:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 canSendMetrics:(BOOL)a6 error:(__CFError *)a7;
- (NSString)peerID;
- (SOSAccount)initWithGestalt:(__CFDictionary *)a3 factory:(SOSDataSourceFactory *)a4;
- (__OpaqueSOSFullPeerInfo)fullPeerInfo;
- (__OpaqueSOSPeerInfo)peerInfo;
- (id)SOSMonitorModeSOSIsActiveDescription;
- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5;
- (id)accountStatusInternal;
- (id)encodedData:(id *)a3;
- (id)ghostBustGetDate;
- (id)performBackup;
- (id)performRingUpdate;
- (int)getCircleStatus:(__CFError *)a3;
- (int)getPublicKeyStatusForKey:(int)a3 error:(id *)a4;
- (void)SOSMonitorModeDisableSOS;
- (void)SOSMonitorModeEnableSOS;
- (void)SOSMonitorModeSOSIsActiveWithCallback:(id)a3;
- (void)_onQueueRecordRetiredPeersInCircle;
- (void)accountStatus:(id)a3;
- (void)addBackupFlag;
- (void)addRingUpdateFlag;
- (void)assertStashedAccountCredential:(id)a3;
- (void)circleHash:(id)a3;
- (void)circleJoiningBlob:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 canSendMetrics:(BOOL)a6 applicant:(id)a7 complete:(id)a8;
- (void)dealloc;
- (void)ensureOctagonPeerKeys;
- (void)flattenToSaveBlock;
- (void)getWatchdogParameters:(id)a3;
- (void)ghostBust:(unsigned int)a3 complete:(id)a4;
- (void)ghostBustFollowup;
- (void)ghostBustInfo:(id)a3;
- (void)ghostBustSchedule;
- (void)iCloudIdentityStatus:(id)a3;
- (void)iCloudIdentityStatus_internal:(id)a3;
- (void)importInitialSyncCredentials:(id)a3 complete:(id)a4;
- (void)initialSyncCredentials:(unsigned int)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 canSendMetrics:(BOOL)a7 complete:(id)a8;
- (void)joinCircleWithBlob:(id)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 canSendMetrics:(BOOL)a7 version:(int)a8 complete:(id)a9;
- (void)kvsPerformanceCounters:(id)a3;
- (void)myPeerInfo:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 canSendMetrics:(BOOL)a6 complete:(id)a7;
- (void)performTransaction:(BOOL)a3 action:(id)a4;
- (void)rateLimitingPerformanceCounters:(id)a3;
- (void)removeV0Peers:(id)a3;
- (void)rpcTriggerBackup:(id)a3 complete:(id)a4;
- (void)rpcTriggerRingUpdate:(id)a3;
- (void)rpcTriggerSync:(id)a3 complete:(id)a4;
- (void)setAccountKey:(__SecKey *)a3;
- (void)setAccountPrivateKey:(__SecKey *)a3;
- (void)setBypass:(BOOL)a3 reply:(id)a4;
- (void)setPeerPublicKey:(__SecKey *)a3;
- (void)setPreviousAccountKey:(__SecKey *)a3;
- (void)setPublicKeyStatus:(int)a3 forKey:(int)a4;
- (void)setWatchdogParmeters:(id)a3 complete:(id)a4;
- (void)setupStateMachine;
- (void)sosEnableValidityCheck;
- (void)startStateMachine;
- (void)stashAccountCredential:(id)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 canSendMetrics:(BOOL)a7 complete:(id)a8;
- (void)stashedCredentialPublicKey:(id)a3;
- (void)triggerBackupForPeers:(id)a3;
- (void)triggerRingUpdate;
- (void)triggerRingUpdateNow:(id)a3;
- (void)userPublicKey:(id)a3;
@end

@implementation SOSAccount

- (id)_onqueueNextStateMachineTransition:(id)a3 flags:(id)a4 pendingFlags:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(SOSAccount *)self stateMachineQueue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100006274("sos-sm");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Entering state: %@ [flags: %@]", &v16, 0x16u);
  }

  if ([v7 isEqualToString:@"ready"])
  {
    if ([v8 _onqueueContains:@"trigger_backup"])
    {
      [v8 _onqueueRemoveFlag:@"trigger_backup"];
      v11 = @"perform-backup-flag";
      v12 = @"perform_backup";
LABEL_11:
      v13 = [OctagonStateTransitionOperation named:v11 entering:v12];
      goto LABEL_12;
    }

    if ([v8 _onqueueContains:@"trigger_ring_update"])
    {
      [v8 _onqueueRemoveFlag:@"trigger_ring_update"];
      v11 = @"perform-ring-update-flag";
      v12 = @"perform_ring_update";
      goto LABEL_11;
    }
  }

  else if (([v7 isEqualToString:@"error"] & 1) == 0)
  {
    if ([v7 isEqualToString:@"perform_ring_update"])
    {
      v13 = [(SOSAccount *)self performRingUpdate];
LABEL_12:
      v14 = v13;
      goto LABEL_16;
    }

    if ([v7 isEqualToString:@"perform_backup"])
    {
      v13 = [(SOSAccount *)self performBackup];
      goto LABEL_12;
    }
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (id)performRingUpdate
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100204128;
  v4[3] = &unk_100345338;
  objc_copyWeak(&v5, &location);
  v2 = [OctagonStateTransitionOperation named:@"perform-ring-update" intending:@"ready" errorState:@"error" withBlockTakingSelf:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)performBackup
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100204B9C;
  v4[3] = &unk_100345338;
  objc_copyWeak(&v5, &location);
  v2 = [OctagonStateTransitionOperation named:@"perform-backup-state" intending:@"ready" errorState:@"error" withBlockTakingSelf:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)triggerRingUpdate
{
  if (![(SOSAccount *)self consolidateKeyInterest])
  {
    objc_initWeak(&location, self);
    v3 = [(SOSAccount *)self stateMachineQueue];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100204E44;
    v4[3] = &unk_1003452E8;
    objc_copyWeak(&v5, &location);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)triggerRingUpdateNow:(id)a3
{
  v4 = a3;
  [(SOSAccount *)self setForceSyncForRecoveryRing:1];
  v5 = [(SOSAccount *)self stateMachine];
  if ([v5 isPaused])
  {
    v6 = [(SOSAccount *)self stateMachine];
    v7 = [v6 currentState];
    v8 = [v7 isEqualToString:@"ready"];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = [(SOSAccount *)self stateMachine];
  v10 = [v9 waitForState:@"ready" wait:10000000000];

LABEL_6:
  v22 = @"perform_ring_update";
  v20 = @"ready";
  v11 = +[OctagonStateTransitionPathStep success];
  v21 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v14 = [OctagonStateTransitionPath pathFromDictionary:v13];

  v15 = [(SOSAccount *)self stateMachine];
  v19 = @"ready";
  v16 = [NSArray arrayWithObjects:&v19 count:1];
  v17 = [NSSet setWithArray:v16];
  v18 = [v15 doWatchedStateMachineRPC:@"rpc-perform-rings" sourceStates:v17 path:v14 reply:v4];
}

- (void)triggerBackupForPeers:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = v5;
  if (v4)
  {
    [v5 addObjectsFromArray:v4];
  }

  objc_initWeak(&location, self);
  v7 = [(SOSAccount *)self stateMachineQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002052E4;
  v10[3] = &unk_100345310;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)addRingUpdateFlag
{
  v4 = [[OctagonPendingFlag alloc] initWithFlag:@"trigger_ring_update" conditions:1];
  v3 = [(SOSAccount *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)addBackupFlag
{
  v4 = [[OctagonPendingFlag alloc] initWithFlag:@"trigger_backup" conditions:1];
  v3 = [(SOSAccount *)self stateMachine];
  [v3 handlePendingFlag:v4];
}

- (void)setupStateMachine
{
  objc_initWeak(&location, self);
  v4 = [CKKSPBFileStorage alloc];
  v5 = [objc_opt_class() urlForSOSAccountSettings];
  v6 = [(CKKSPBFileStorage *)v4 initWithStoragePath:v5 storageClass:objc_opt_class()];
  [(SOSAccount *)self setAccountConfiguration:v6];

  v7 = [(SOSAccount *)self stateMachine];

  if (v7)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SOSAccount.m" lineNumber:3371 description:@"can't bootstrap more than once"];
  }

  v8 = dispatch_queue_create("SOS-statemachine", 0);
  [(SOSAccount *)self setStateMachineQueue:v8];

  v9 = [OctagonStateMachine alloc];
  if (qword_10039E350 != -1)
  {
    dispatch_once(&qword_10039E350, &stru_100345468);
  }

  v10 = qword_10039E348;
  if (qword_10039E360 != -1)
  {
    dispatch_once(&qword_10039E360, &stru_100345488);
  }

  v11 = qword_10039E358;
  v12 = [(SOSAccount *)self stateMachineQueue];
  v13 = +[CKKSLockStateTracker globalTracker];
  v14 = [(OctagonStateMachine *)v9 initWithName:@"sosaccount" states:v10 flags:v11 initialState:@"ready" queue:v12 stateEngine:self unexpectedStateErrorDomain:@"com.apple.security.sosaccount.state" lockStateTracker:v13 reachabilityTracker:0];
  [(SOSAccount *)self setStateMachine:v14];

  v15 = [CKKSNearFutureScheduler alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1002059A4;
  v26[3] = &unk_1003452E8;
  objc_copyWeak(&v27, &location);
  v16 = [(CKKSNearFutureScheduler *)v15 initWithName:@"performBackups" initialDelay:5000000000 exponentialBackoff:120000000000 maximumDelay:1 keepProcessAlive:0 dependencyDescriptionCode:v26 block:2.0];
  [(SOSAccount *)self setPerformBackups:v16];

  v17 = [CKKSNearFutureScheduler alloc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1002059E4;
  v24[3] = &unk_1003452E8;
  objc_copyWeak(&v25, &location);
  v18 = [(CKKSNearFutureScheduler *)v17 initWithName:@"performRingUpdates" initialDelay:1000000000 exponentialBackoff:10000000000 maximumDelay:1 keepProcessAlive:0 dependencyDescriptionCode:v24 block:2.0];
  [(SOSAccount *)self setPerformRingUpdates:v18];

  v19 = [(SOSAccount *)self accountConfiguration];
  v20 = [v19 storage];

  v21 = [v20 pendingBackupPeers];
  v22 = [v21 count];

  if (v22)
  {
    [(SOSAccount *)self addBackupFlag];
  }

  if ([v20 ringUpdateFlag])
  {
    [(SOSAccount *)self addRingUpdateFlag];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_onQueueRecordRetiredPeersInCircle
{
  v3 = [(SOSAccount *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(SOSAccount *)self isInCircle:0])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v4 = [(SOSAccount *)self trust];
    v5 = [(SOSAccount *)self circle_transport];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100205CD4;
    v7[3] = &unk_1003451A0;
    v6 = v4;
    v8 = v6;
    v9 = self;
    v10 = &v11;
    [v6 modifyCircle:v5 err:0 action:v7];

    if (*(v12 + 24) == 1)
    {
      sub_10021398C(self);
    }

    _Block_object_dispose(&v11, 8);
  }
}

- (int)getPublicKeyStatusForKey:(int)a3 error:(id *)a4
{
  valuePtr = -1;
  v5 = @"kSOSBackupKeyStatus";
  if (a3 != 1)
  {
    v5 = 0;
  }

  if (a3 == 2)
  {
    v6 = @"kSOSRecoveryKeyStatus";
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v9 = sub_10020649C(self, v6);
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberCFIndexType, &valuePtr);
      if (a3 == 1)
      {
        [(SOSAccount *)self peerInfo];
        if ((SOSPeerInfoHasBackupKey() & 1) == 0)
        {
          return 0;
        }
      }

      else if (a3 == 2)
      {
        v10 = sub_10022BC48(kCFAllocatorDefault, self, 0);
        if (!v10)
        {
          return 0;
        }

LABEL_51:
        CFRelease(v10);
      }

      return valuePtr;
    }

    valuePtr = 0;
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        valuePtr = -1;
        if (a4)
        {
          *a4 = [NSError errorWithDomain:kSOSErrorDomain code:9 userInfo:0];
        }

        return valuePtr;
      }

      v12 = self;
      cf = 0;
      v13 = sub_10022BC48(kCFAllocatorDefault, v12, 0);
      if (!v13)
      {

        goto LABEL_49;
      }

      v14 = v13;
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-tomb", kSOSViewiCloudIdentity);
      v16 = [(SOSAccount *)v12 trust];
      v17 = [v16 copyRing:v15 err:&cf];

      if (v15)
      {
        CFRelease(v15);
      }

      if (v17)
      {
        v18 = sub_10022B78C(v17, &cf);
        if (v18 && (v19 = SOSBackupSliceKeyBagCreateFromData()) != 0)
        {
          v20 = v19;
          v21 = SOSBKSBPrefixedKeyIsInKeyBag();
          CFRelease(v20);
        }

        else
        {
          v21 = 0;
        }

        CFRelease(v17);
      }

      else
      {
        v21 = 0;
        v18 = 0;
      }

      CFRelease(v14);
      if (cf)
      {
        v22 = sub_100006274("backup");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v38 = v18;
          v39 = 2112;
          v40 = 0;
          v41 = 2112;
          v42 = cf;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to find BKSB: %@, %@ (%@)", buf, 0x20u);
        }

        v23 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v23);

          if (v21)
          {
            return 2;
          }

LABEL_49:
          v10 = sub_10022BC48(kCFAllocatorDefault, v12, 0);
          if (!v10)
          {
            return valuePtr;
          }

          valuePtr = 1;
          goto LABEL_51;
        }
      }

      if (!v21)
      {
        goto LABEL_49;
      }

      return 2;
    }

    v24 = self;
    v25 = v24;
    if (!v24 || ((v26 = kSOSViewiCloudIdentity, v27 = [(SOSAccount *)v24 peerInfo], v26) ? (v28 = v27 == 0) : (v28 = 1), v28))
    {
      sub_1000103CC(-50, 0, @"NULL account/peerInfo or viewName parameter");

      goto LABEL_55;
    }

    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-tomb", v26);
    v30 = sub_10021C248(v25, v29);
    v31 = v30;
    if (v30)
    {
      v32 = sub_10022BA3C(v30);
      [(SOSAccount *)v25 peerInfo];
      v33 = SOSBKSBPeerBackupKeyIsInKeyBag();
      if (!v29)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0;
      if (!v29)
      {
LABEL_41:
        if (v31)
        {
          CFRelease(v31);
        }

        if (v32)
        {
          CFRelease(v32);

          if (v33)
          {
            return 2;
          }
        }

        else
        {

          if (v33)
          {
            return 2;
          }
        }

LABEL_55:
        [(SOSAccount *)v25 peerInfo];
        if (!SOSPeerInfoHasBackupKey())
        {
          return valuePtr;
        }

        return 1;
      }
    }

    CFRelease(v29);
    goto LABEL_41;
  }

  if (a4)
  {
    *a4 = [NSError errorWithDomain:kSOSErrorDomain code:9 userInfo:0];
  }

  return -1;
}

- (void)setPublicKeyStatus:(int)a3 forKey:(int)a4
{
  valuePtr = a3;
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  v7 = @"kSOSBackupKeyStatus";
  if (a4 != 1)
  {
    v7 = 0;
  }

  if (a4 == 2)
  {
    v8 = @"kSOSRecoveryKeyStatus";
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    sub_100228C18(self, v8, v6, 0);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

- (BOOL)_onQueueEnsureInBackupRings:(__CFString *)a3
{
  v5 = [(SOSAccount *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = self;
  if (!v6 || !a3)
  {
    sub_1000103CC(-50, 0, @"NULL account or viewName parameter");
    goto LABEL_27;
  }

  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-tomb", a3);
  if (!v7)
  {
LABEL_27:

    return 0;
  }

  v8 = v7;
  v9 = sub_10021C248(v6, v7);
  if (!v9)
  {
    CFRelease(v8);
    goto LABEL_27;
  }

  v10 = v9;
  v11 = sub_10022BC48(kCFAllocatorDefault, v6, 0);
  v12 = sub_10022BA3C(v10);
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
  v15 = [(SOSAccount *)v6 trust];
  [v15 trustedCircle];
  [(SOSAccount *)v6 accountKey];
  v21[6] = _NSConcreteStackBlock;
  v21[7] = 3221225472;
  v21[8] = sub_100213BC4;
  v21[9] = &unk_100346890;
  v21[10] = Mutable;
  v21[11] = MutableForSOSPeerInfosByID;
  SOSCircleForEachBackupCapablePeerForView();

  v16 = sub_100258F04(v10);
  v17 = CFEqual(Mutable, v16);
  if (v12 && SOSBSKBAllPeersBackupKeysAreInKeyBag())
  {
    v18 = SOSBSKBHasThisRecoveryKey() ^ 1;
  }

  else
  {
    v18 = 1;
  }

  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  CFRelease(v8);
  CFRelease(v10);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (MutableForSOSPeerInfosByID)
  {
    CFRelease(MutableForSOSPeerInfosByID);

    if ((v19 & 1) == 0)
    {
      return 0;
    }

LABEL_24:
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100206858;
    v21[3] = &unk_100345528;
    v21[4] = v6;
    v21[5] = a3;
    return sub_100212DD4(v6, a3, 0, v21);
  }

  if (v19)
  {
    goto LABEL_24;
  }

  return 0;
}

- (BOOL)isInCircle:(__CFError *)a3
{
  v3 = [(SOSAccount *)self getCircleStatus:?];
  if (v3)
  {
    SOSErrorCreate();
  }

  return v3 == 0;
}

- (int)getCircleStatus:(__CFError *)a3
{
  v5 = [(SOSAccount *)self trust];
  v6 = [v5 getCircleStatusOnly:a3];

  if (sub_100218428(self))
  {
    return v6;
  }

  result = -1;
  if (a3 && !v6)
  {
    v8 = *a3;
    if (*a3)
    {
      *a3 = 0;
      CFRelease(v8);
    }

    SOSCreateError();
    return -1;
  }

  return result;
}

- (void)flattenToSaveBlock
{
  v3 = [(SOSAccount *)self saveBlock];

  if (v3)
  {
    v7 = 0;
    v4 = [(SOSAccount *)self encodedData:&v7];
    v5 = v7;
    v6 = [(SOSAccount *)self saveBlock];
    (v6)[2](v6, v4, v5);
  }
}

- (BOOL)sosEvaluateIfNeeded
{
  if (qword_10039E118 != -1)
  {
    dispatch_once(&qword_10039E118, &stru_1003420D8);
  }

  v3 = byte_10039E110;
  v4 = sub_100006274("SOSMonitorMode");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sosEvaluateIfNeeded - SOS Compatibility Mode enabled, checking mode", buf, 2u);
    }

    v6 = [OTSOSActualAdapter sosEnabled]_0();
    v7 = sub_100006274("SOSMonitorMode");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sosEvaluateIfNeeded - Turning on SOS for Compatibility mode", v24, 2u);
      }

      [(SOSAccount *)self SOSMonitorModeEnableSOS];
    }

    else
    {
      if (v8)
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sosEvaluateIfNeeded - Turning off SOS for Compatibility mode", v23, 2u);
      }

      [(SOSAccount *)self SOSMonitorModeDisableSOS];
    }

    v13 = @"SOSCompatMode";
    goto LABEL_30;
  }

  if (v5)
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sosEvaluateIfNeeded - checking circle", v22, 2u);
  }

  if (![(SOSAccount *)self accountKeyIsTrusted])
  {
    if (![(SOSAccount *)self SOSMonitorModeSOSIsActive])
    {
      return [(SOSAccount *)self SOSMonitorModeSOSIsActive];
    }

    v14 = sub_100006274("SOSMonitorMode");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v15 = "SOS is in monitor mode since the account key isn't trusted";
      v16 = &v21;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
    }

LABEL_29:

    [(SOSAccount *)self SOSMonitorModeDisableSOS];
    v13 = @"SOSMonitorMode";
LABEL_30:
    v17 = +[SOSAnalytics logger];
    [v17 logSuccessForEventNamed:v13];

    return [(SOSAccount *)self SOSMonitorModeSOSIsActive];
  }

  v9 = [(SOSAccount *)self trust];
  [v9 trustedCircle];
  [(SOSAccount *)self accountKey];
  IsLegacy = SOSCircleIsLegacy();

  v11 = [(SOSAccount *)self SOSMonitorModeSOSIsActive];
  if (!IsLegacy)
  {
    if (!v11)
    {
      return [(SOSAccount *)self SOSMonitorModeSOSIsActive];
    }

    v14 = sub_100006274("SOSMonitorMode");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v15 = "Putting SOS into monitor mode due to circle change";
      v16 = &v19;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if ((v11 & 1) == 0)
  {
    v12 = sub_100006274("SOSMonitorMode");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Putting SOS into active mode for circle change", v20, 2u);
    }

    [(SOSAccount *)self SOSMonitorModeEnableSOS];
    v13 = @"SOSLegacyMode";
    goto LABEL_30;
  }

  return [(SOSAccount *)self SOSMonitorModeSOSIsActive];
}

- (id)SOSMonitorModeSOSIsActiveDescription
{
  if ([(SOSAccount *)self SOSMonitorModeSOSIsActive])
  {
    v2 = @"[SOS is active]";
  }

  else
  {
    v2 = @"[SOS is monitoring]";
  }

  return v2;
}

- (BOOL)SOSMonitorModeSOSIsActive
{
  [(SOSAccount *)self sosEnableValidityCheck];
  v3 = [(SOSAccount *)self settings];
  v4 = [v3 BOOLForKey:@"SOSEnabled"];

  return v4;
}

- (void)SOSMonitorModeSOSIsActiveWithCallback:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(SOSAccount *)self SOSMonitorModeSOSIsActive]);
}

- (void)SOSMonitorModeEnableSOS
{
  v3 = sub_100006274("SOSMonitorMode");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting SOS to active", v5, 2u);
  }

  v4 = [(SOSAccount *)self settings];
  [v4 setBool:1 forKey:@"SOSEnabled"];
}

- (void)SOSMonitorModeDisableSOS
{
  v3 = sub_100006274("SOSMonitorMode");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disabling SOS from monitor mode", v5, 2u);
  }

  v4 = [(SOSAccount *)self settings];
  [v4 setBool:0 forKey:@"SOSEnabled"];
}

- (void)sosEnableValidityCheck
{
  v3 = [(SOSAccount *)self settings];
  v4 = [v3 objectForKey:@"SOSEnabled"];

  if (!v4)
  {
    v5 = +[SOSAnalytics logger];
    [v5 logSuccessForEventNamed:@"SOSInitialized"];

    v6 = sub_100006274("SOSMonitorMode");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No value found for SOSMonitorMode initializing to Active", v7, 2u);
    }

    [(SOSAccount *)self SOSMonitorModeEnableSOS];
  }
}

- (void)removeV0Peers:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100207154;
  v5[3] = &unk_100347260;
  v6 = a3;
  v4 = v6;
  [(SOSAccount *)self performTransaction:v5];
}

- (void)setWatchdogParmeters:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = NSClassFromString(@"SecdWatchdog");
  if (v7)
  {
    v8 = [(objc_class *)v7 watchdog];
    v11 = 0;
    [v8 setWatchdogParameters:v5 error:&v11];
    v9 = v11;

    v6[2](v6, v9);
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"failed to lookup SecdWatchdog class from ObjC runtime";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.securityd.watchdog" code:1 userInfo:v10];
    v6[2](v6, v9);

    v6 = v10;
  }
}

- (void)getWatchdogParameters:(id)a3
{
  v3 = a3;
  v4 = NSClassFromString(@"SecdWatchdog");
  if (v4)
  {
    v5 = [(objc_class *)v4 watchdog];
    v8 = [v5 watchdogParameters];

    v3[2](v3, v8, 0);
  }

  else
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"failed to lookup SecdWatchdog class from ObjC runtime";
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:@"com.apple.securityd.watchdog" code:1 userInfo:v6];
    (v3)[2](v3, 0, v7);
  }
}

- (void)rpcTriggerRingUpdate:(id)a3
{
  v4 = a3;
  [(SOSAccount *)self triggerRingUpdate];
  v4[2](v4, 0);
}

- (void)rpcTriggerBackup:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    v8 = [(SOSAccount *)self kvs_message_transport];
    v9 = [v8 SOSTransportMessageGetEngine];

    v10 = sub_100150DB4(v9);
    v6 = v10;
  }

  [(SOSAccount *)self triggerBackupForPeers:v6];
  v7[2](v7, 0);
}

- (void)rpcTriggerSync:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = sub_100006274("sync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "trigger a forced sync for %@", buf, 0xCu);
  }

  v9 = v21;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100207840;
  v12[3] = &unk_100345070;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  v14 = &v20;
  v15 = &v16;
  sub_100089884(0, v9 + 3, v12);
  v7[2](v7, *(v17 + 24), v21[3]);
  v11 = v21[3];
  if (v11)
  {
    v21[3] = 0;
    CFRelease(v11);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)importInitialSyncCredentials:(id)a3 complete:(id)a4
{
  cf = 0;
  v5 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10018AAF4;
  v9[3] = &unk_100342A18;
  v9[4] = &cf;
  v9[5] = a3;
  v6 = sub_100008A70(1, 1, 0, &cf, v9);
  v5[2](v5, v6, cf);

  v7 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v7);
  }
}

- (void)initialSyncCredentials:(unsigned int)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 canSendMetrics:(BOOL)a7 complete:(id)a8
{
  v12 = a3;
  cf = 0;
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [AAFAnalyticsEventSecurity alloc];
  v18 = kSecurityRTCEventNameAcceptorFetchesInitialSyncData;
  sub_10020802C();
  LOBYTE(v38) = a7;
  v20 = [v17 initWithKeychainCircleMetrics:0 altDSID:v16 flowID:v15 deviceSessionID:v14 eventName:v18 testsAreEnabled:v19 canSendMetrics:v38 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  Count = 0;
  if (v12)
  {
    v23 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
    if ((sub_10018A644(Mutable, 0, @"com.apple.security.ckks", 0, v23, &cf) & 1) == 0)
    {
      v36 = sub_100006274("SecError");
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v43 = cf;
      v37 = "failed to collect CKKS-inet keys: %@";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
      goto LABEL_31;
    }

    Count = CFArrayGetCount(Mutable);
  }

  if ((v12 & 2) == 0)
  {
    v24 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v27 = 0;
    goto LABEL_15;
  }

  v25 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  if ((sub_10018A644(Mutable, 0, @"com.apple.ProtectedCloudStorage", 0, v25, &cf) & 1) == 0)
  {
    v36 = sub_100006274("SecError");
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v43 = cf;
    v37 = "failed to collect PCS-genp keys: %@";
    goto LABEL_30;
  }

  v26 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  if ((sub_10018A644(Mutable, (v12 & 4) == 0, @"com.apple.ProtectedCloudStorage", 0, v26, &cf) & 1) == 0)
  {
    v36 = sub_100006274("SecError");
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v43 = cf;
    v37 = "failed to collect PCS-inet keys: %@";
    goto LABEL_30;
  }

  v24 = CFArrayGetCount(Mutable) - Count;
  if ((v12 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v28 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  if ((sub_10018A644(Mutable, 0, @"com.apple.nanoregistry.migration", 0, v28, &cf) & 1) == 0)
  {
    v36 = sub_100006274("SecError");
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v43 = cf;
    v37 = "failed to collect com.apple.nanoregistry.migration-genp item: %@";
    goto LABEL_30;
  }

  v29 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  if ((sub_10018A644(Mutable, 0, @"com.apple.nanoregistry.migration2", 0, v29, &cf) & 1) == 0)
  {
    v36 = sub_100006274("SecError");
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v43 = cf;
    v37 = "failed to collect com.apple.nanoregistry.migration2-genp item: %@";
    goto LABEL_30;
  }

  v30 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  if ((sub_10018A644(Mutable, 0, @"com.apple.bluetooth", @"BluetoothLESync", v30, &cf) & 1) == 0)
  {
    v36 = sub_100006274("SecError");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = cf;
      v37 = "failed to collect com.apple.bluetooth-genp item: %@";
      goto LABEL_30;
    }

LABEL_31:
    Count = 0;
    v24 = 0;
    goto LABEL_10;
  }

  v27 = CFArrayGetCount(Mutable) - (v24 + Count);
LABEL_15:
  v40[0] = kSecurityRTCFieldNumberOfTLKsFetched;
  v31 = [NSNumber numberWithUnsignedLongLong:Count];
  v41[0] = v31;
  v40[1] = kSecurityRTCFieldNumberOfPCSItemsFetched;
  v32 = [NSNumber numberWithUnsignedLongLong:v24];
  v41[1] = v32;
  v40[2] = kSecurityRTCFieldNumberOfBluetoothMigrationItemsFetched;
  v33 = [NSNumber numberWithUnsignedLongLong:v27];
  v41[2] = v33;
  v34 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];

  [v20 addMetrics:v34];
  [v20 sendMetricWithResult:cf == 0 error:?];
  v13[2](v13, Mutable, cf);

  v35 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v35);
  }
}

- (void)joinCircleWithBlob:(id)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 canSendMetrics:(BOOL)a7 version:(int)a8 complete:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_100208788;
  v44 = &unk_100345020;
  v40 = v16;
  v45 = v40;
  v20 = v17;
  v46 = v20;
  v21 = v18;
  v52 = a7;
  v47 = v21;
  v49 = &v53;
  v22 = v15;
  v51 = a8;
  v48 = v22;
  v50 = &v57;
  [(SOSAccount *)self performTransaction:&v41];
  v23 = [(SOSAccount *)self trust];
  v24 = [v23 isInCircleOnly:0];

  if (v58[3])
  {
    v25 = [objc_opt_class() logger];
    v26 = v58[3];
    v61[0] = @"SOSEnabled";
    v27 = [OTSOSActualAdapter sosEnabled]_0();
    v28 = @"compat_disabled";
    if (v27)
    {
      v28 = @"compat_enabled";
    }

    v62[0] = v28;
    v62[1] = @"Pairing";
    v61[1] = @"SOSJoinMethod";
    v61[2] = @"JoiningSOSResult";
    v29 = @"not_in_circle";
    if (v24)
    {
      v29 = @"in_circle";
    }

    v62[2] = v29;
    v61[3] = @"CircleContainsLegacy";
    v30 = [(SOSAccount *)self trust];
    [v30 trustedCircle];
    [(SOSAccount *)self accountKey];
    IsLegacy = SOSCircleIsLegacy();
    v32 = @"does_not_contain_legacy";
    if (IsLegacy)
    {
      v32 = @"contains_legacy";
    }

    v62[3] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:4];
    [v25 logResultForEvent:@"SOSDeferralEventPairing" hardFailure:0 result:v26 withAttributes:v33];
  }

  else
  {
    if ([OTSOSActualAdapter sosEnabled]_0())
    {
      v34 = @"compat_enabled";
    }

    else
    {
      v34 = @"compat_disabled";
    }

    if (v24)
    {
      v35 = @"in_circle";
    }

    else
    {
      v35 = @"not_in_circle";
    }

    v36 = [(SOSAccount *)self trust];
    [v36 trustedCircle];
    [(SOSAccount *)self accountKey];
    v37 = SOSCircleIsLegacy();
    v38 = @"does_not_contain_legacy";
    if (v37)
    {
      v38 = @"contains_legacy";
    }

    v25 = [NSString stringWithFormat:@"%@-%@-%@-%@", v34, @"Pairing", v35, v38, v40, v41, v42, v43, v44, v45, v46, v47];

    v30 = [objc_opt_class() logger];
    [v30 logSuccessForEventNamed:v25];
  }

  v19[2](v19, *(v54 + 24), v58[3]);
  v39 = v58[3];
  if (v39)
  {
    v58[3] = 0;
    CFRelease(v39);
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
}

- (void)circleJoiningBlob:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 canSendMetrics:(BOOL)a6 applicant:(id)a7 complete:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [AAFAnalyticsEventSecurity alloc];
  v20 = kSecurityRTCEventNameCreateSOSCircleBlob;
  sub_10020802C();
  LOBYTE(v26) = a6;
  v22 = [v19 initWithKeychainCircleMetrics:0 altDSID:v14 flowID:v15 deviceSessionID:v16 eventName:v20 testsAreEnabled:v21 canSendMetrics:v26 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1002091D8;
  v39 = sub_1002091E8;
  v40 = 0;
  v23 = SOSPeerInfoCreateFromData();
  if (v23)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1002091F0;
    v27[3] = &unk_100344FF8;
    v27[4] = self;
    v31 = &v35;
    v28 = v14;
    v29 = v15;
    v34 = a6;
    v30 = v16;
    v32 = &v41;
    v33 = v23;
    sub_1000898F4(0, v27);
    CFRelease(v23);
    [v22 sendMetricWithResult:v36[5] != 0 error:v42[3]];
    v18[2](v18, v36[5], v42[3]);
    v24 = v42[3];
    if (v24)
    {
      v42[3] = 0;
      CFRelease(v24);
    }
  }

  else
  {
    [v22 sendMetricWithResult:0 error:v42[3]];
    v18[2](v18, 0, v42[3]);
    v25 = v42[3];
    if (v25)
    {
      v42[3] = 0;
      CFRelease(v25);
    }
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
}

- (void)accountStatus:(id)a3
{
  v4 = a3;
  v5 = [(SOSAccount *)self accountStatusInternal];
  v10 = 0;
  v6 = [NSJSONSerialization dataWithJSONObject:v5 options:3 error:&v10];
  v7 = v10;
  if (!v6)
  {
    v8 = sub_100006274("accountLogState");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 localizedDescription];
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error during accountStatus JSONification: %@", buf, 0xCu);
    }
  }

  v4[2](v4, v6, v7);
}

- (id)accountStatusInternal
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = sub_100209CB8(self);
  [v3 setObject:v4 forKeyedSubscript:@"AccountHeader"];

  v5 = [(SOSAccount *)self trust];
  v6 = [v5 trustedCircle];

  [(SOSAccount *)self peerID];
  if (v6)
  {
    [(SOSAccount *)self accountKey];
    v7 = SOSCircleCopyStateString();
    [v3 setObject:v7 forKeyedSubscript:@"CircleHeader"];

    v18 = objc_alloc_init(NSMutableArray);
    v8 = v18;
    SOSCircleForEachPeer();
    [v3 setObject:v8 forKeyedSubscript:@"CirclePeers"];
    v17 = objc_alloc_init(NSMutableArray);
    v9 = v17;
    SOSCircleForEachRetiredPeer();
    [v3 setObject:v9 forKeyedSubscript:@"CircleRetiredPeers"];
    v16 = objc_alloc_init(NSMutableArray);
    v10 = v16;
    SOSCircleForEachiCloudIdentityPeer();
    [v3 setObject:v10 forKeyedSubscript:@"iCloudIdentityPeers"];
    v15 = objc_alloc_init(NSMutableArray);
    v11 = v15;
    SOSCircleForEachApplicant();
    [v3 setObject:v11 forKeyedSubscript:@"CircleApplicants"];
    v14 = objc_alloc_init(NSMutableArray);
    v12 = v14;
    SOSCircleForEachRejectedApplicant();
    [v3 setObject:v12 forKeyedSubscript:@"CircleRejections"];
  }

  return v3;
}

- (void)iCloudIdentityStatus:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10020A148;
  v5[3] = &unk_100344F58;
  v6 = a3;
  v4 = v6;
  [(SOSAccount *)self iCloudIdentityStatus_internal:v5];
}

- (void)iCloudIdentityStatus_internal:(id)a3
{
  v4 = a3;
  v37 = 0;
  v5 = objc_opt_new();
  if ([(SOSAccount *)self isInCircle:&v37])
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = [(SOSAccount *)self trust];
    [v7 trustedCircle];
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_10020A7B8;
    v35 = &unk_100345E28;
    v8 = v6;
    v36 = v8;
    SOSCircleForEachiCloudIdentityPeer();

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10020A82C;
    v30[3] = &unk_100344F30;
    v9 = objc_alloc_init(NSMutableSet);
    v31 = v9;
    v10 = v30;
    result = 0;
    v16 = sub_10001104C(kCFAllocatorDefault, kSecReturnAttributes, kCFBooleanTrue, v11, v12, v13, v14, v15, kSecMatchLimit, kSecMatchLimitAll);
    if (!SecItemCopyMatching(v16, &result) && (v25 = result) != 0 && (v26 = CFGetTypeID(result), v26 == CFArrayGetTypeID()))
    {
      v27 = sub_100006274("iCloudIdentity");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFArrayGetCount(v25);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = Count;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Screening %ld icloud private key candidates", &buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v40 = sub_10021A0B4;
      v41 = &unk_1003456B0;
      v42 = v10;
      v43.length = CFArrayGetCount(v25);
      v43.location = 0;
      CFArrayApplyFunction(v25, v43, sub_10021A310, &buf);
      v29 = result;
      if (result)
      {
        result = 0;
        CFRelease(v29);
      }
    }

    else
    {
      v17 = sub_100006274("iCloudIdentity");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Can't get iCloud Identity private key candidates", &buf, 2u);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      v18 = result;
      if (result)
      {
        result = 0;
        CFRelease(v18);
      }
    }

    v19 = [v8 mutableCopy];
    if ([v8 count] && objc_msgSend(v9, "count"))
    {
      [v19 intersectSet:v9];
    }

    else
    {

      v19 = 0;
    }

    v20 = [v9 mutableCopy];
    if ([v8 count] && objc_msgSend(v20, "count"))
    {
      [v20 minusSet:v8];
    }

    v21 = [v8 mutableCopy];
    if ([v21 count] && objc_msgSend(v9, "count"))
    {
      [v21 minusSet:v9];
    }

    v22 = [v19 allObjects];
    [v5 setObject:v22 forKeyedSubscript:@"completeIdentity"];

    v23 = [v20 allObjects];
    [v5 setObject:v23 forKeyedSubscript:@"keyOnly"];

    v24 = [v21 allObjects];
    [v5 setObject:v24 forKeyedSubscript:@"peerOnly"];

    v4[2](v4, v5, 0);
  }

  else
  {
    v4[2](v4, v5, v37);
  }
}

- (void)ghostBustInfo:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[SOSAccount ghostBustGetRampSettings];
  v7 = [(SOSAccount *)self ghostBustGetDate];
  v8 = [v7 description];

  if (v6)
  {
    v9 = @"ON";
  }

  else
  {
    v9 = @"OFF";
  }

  [v5 setObject:v9 forKeyedSubscript:@"SOSGhostBustBySerialNumber"];
  if ((v6 & 2) != 0)
  {
    v10 = @"ON";
  }

  else
  {
    v10 = @"OFF";
  }

  [v5 setObject:v10 forKeyedSubscript:@"SOSGhostBustByMID"];
  if ((v6 & 4) != 0)
  {
    v11 = @"ON";
  }

  else
  {
    v11 = @"OFF";
  }

  [v5 setObject:v11 forKeyedSubscript:@"SOSGhostBustSerialByAge"];
  [v5 setObject:v8 forKeyedSubscript:@"SOSAccountGhostBustDate"];
  v16 = 0;
  v12 = [NSJSONSerialization dataWithJSONObject:v5 options:3 error:&v16];
  v13 = v16;
  if (!v12)
  {
    v14 = sub_100006274("ghostbust");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 localizedDescription];
      *buf = 138412290;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error during ghostBustInfo JSONification: %@", buf, 0xCu);
    }
  }

  v4[2](v4, v12, v13);
}

- (void)ghostBust:(unsigned int)a3 complete:(id)a4
{
  v6 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  if (+[SOSAuthKitHelpers accountIsCDPCapable])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10020AD68;
    v7[3] = &unk_100344F08;
    v9 = v12;
    v7[4] = self;
    v10 = v13;
    v11 = a3;
    v8 = v6;
    [SOSAuthKitHelpers activeMIDs:v7];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
}

- (void)ghostBustSchedule
{
  v3 = [(SOSAccount *)self ghostBustGetDate];
  if (!v3)
  {
    [(SOSAccount *)self ghostBustFollowup];
    v3 = 0;
  }
}

- (void)ghostBustFollowup
{
  v3 = [(SOSAccount *)self settings];

  if (!v3)
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.security.sosaccount"];
    [(SOSAccount *)self setSettings:v4];
  }

  v6 = SOSCreateRandomDateBetweenNowPlus();
  v5 = [(SOSAccount *)self settings];
  [v5 setValue:v6 forKey:@"ghostbustdate"];
}

- (BOOL)ghostBustCheckDate
{
  v2 = [(SOSAccount *)self ghostBustGetDate];
  v3 = v2;
  v5 = 0;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 <= 0.0)
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)ghostBustGetDate
{
  v3 = [(SOSAccount *)self settings];

  if (!v3)
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.security.sosaccount"];
    [(SOSAccount *)self setSettings:v4];
  }

  v5 = [(SOSAccount *)self settings];
  v6 = [v5 valueForKey:@"ghostbustdate"];

  return v6;
}

- (void)circleHash:(id)a3
{
  v4 = a3;
  v13 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1002091D8;
  v11 = sub_1002091E8;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10020B77C;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  sub_100089884(0, &v13, v6);
  v4[2](v4, v8[5], v13);
  v5 = v13;
  if (v13)
  {
    v13 = 0;
    CFRelease(v5);
  }

  _Block_object_dispose(&v7, 8);
}

- (void)myPeerInfo:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 canSendMetrics:(BOOL)a6 complete:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [AAFAnalyticsEventSecurity alloc];
  v17 = kSecurityRTCEventNameCreatesSOSApplication;
  sub_10020802C();
  LOBYTE(v21) = a6;
  v19 = [v16 initWithKeychainCircleMetrics:0 altDSID:v12 flowID:v13 deviceSessionID:v14 eventName:v17 testsAreEnabled:v18 canSendMetrics:v21 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1002091D8;
  v27 = sub_1002091E8;
  v28 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10020BA88;
  v22[3] = &unk_100346D10;
  v22[4] = &v29;
  v22[5] = &v23;
  [(SOSAccount *)self performTransaction:v22];
  [v19 sendMetricWithResult:v24[5] != 0 error:v30[3]];
  v15[2](v15, v24[5], v30[3]);
  v20 = v30[3];
  if (v20)
  {
    v30[3] = 0;
    CFRelease(v20);
  }

  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
}

- (void)stashAccountCredential:(id)a3 altDSID:(id)a4 flowID:(id)a5 deviceSessionID:(id)a6 canSendMetrics:(BOOL)a7 complete:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v12;
  SOSDoWithCredentialsWhileUnlocked();
}

- (BOOL)syncWaitAndFlush:(id)a3 flowID:(id)a4 deviceSessionID:(id)a5 canSendMetrics:(BOOL)a6 error:(__CFError *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = sub_100006274("pairing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sync and wait starting", &buf, 2u);
  }

  v15 = [AAFAnalyticsEventSecurity alloc];
  sub_10020802C();
  v16 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  LOBYTE(v33) = a6;
  v18 = [v15 initWithKeychainCircleMetrics:0 altDSID:v11 flowID:v12 deviceSessionID:v13 eventName:kSecurityRTCEventNameKVSSyncAndWait testsAreEnabled:v17 canSendMetrics:v33 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
  v19 = dispatch_semaphore_create(0);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v20 = sub_100006274("fresh");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EFP calling SOSCloudKeychainSynchronizeAndWait", &buf, 2u);
  }

  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v40 = sub_10020CE50;
  v41 = &unk_1003472B0;
  v43 = &v35;
  v44 = a7;
  v42 = v19;
  v21 = v19;
  _os_activity_initiate(&_mh_execute_header, "CloudCircle EFRESH", OS_ACTIVITY_FLAG_DEFAULT, &buf);

  v22 = *(v36 + 24);
  _Block_object_dispose(&v35, 8);
  if (v22)
  {
    [v18 sendMetricWithResult:1 error:0];
    v23 = [AAFAnalyticsEventSecurity alloc];
    sub_10020802C();
    LOBYTE(v34) = a6;
    v25 = [v23 initWithKeychainCircleMetrics:0 altDSID:v11 flowID:v12 deviceSessionID:v13 eventName:kSecurityRTCEventNameFlush testsAreEnabled:v24 canSendMetrics:v34 category:v16];
    v26 = sub_10020C374();
    if (v26)
    {
      [v25 sendMetricWithResult:1 error:0];
      v27 = sub_100006274("pairing");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "finished sync and wait", &buf, 2u);
      }
    }

    else
    {
      v30 = sub_100006274("pairing");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if (a7)
        {
          v31 = *a7;
        }

        else
        {
          v31 = 0;
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "failed flush: %@", &buf, 0xCu);
      }

      [v25 sendMetricWithResult:0 error:*a7];
    }
  }

  else
  {
    v28 = sub_100006274("pairing");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (a7)
      {
        v29 = *a7;
      }

      else
      {
        v29 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "failed sync and wait: %@", &buf, 0xCu);
    }

    [v18 sendMetricWithResult:0 error:*a7];
    v26 = 0;
  }

  return v26;
}

- (void)assertStashedAccountCredential:(id)a3
{
  v4 = a3;
  v5 = [(SOSAccount *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020D184;
  v7[3] = &unk_100344DC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stashedCredentialPublicKey:(id)a3
{
  v4 = a3;
  v5 = [(SOSAccount *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020D298;
  v7[3] = &unk_100344DC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)rateLimitingPerformanceCounters:(id)a3
{
  v5 = a3;
  if (sub_10020649C(self, @"RateLimitCounters"))
  {
    v5[2]();
  }

  else
  {
    v4 = +[NSDictionary dictionary];
    (v5[2])(v5, v4);
  }
}

- (void)setBypass:(BOOL)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(SOSAccount *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020D48C;
  block[3] = &unk_100345960;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)kvsPerformanceCounters:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(-2, 0);
  v6 = v3;
  v5 = v3;
  SOSCloudKeychainRequestPerfCounters();
}

- (void)userPublicKey:(id)a3
{
  v4 = a3;
  v5 = [(SOSAccount *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020D64C;
  v7[3] = &unk_100344DC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SOSAccount *)self gestalt];
    v7 = [v5 gestalt];
    if (![v6 isEqual:v7])
    {
      v19 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v8 = [(SOSAccount *)self trust];
    v9 = [v8 trustedCircle];
    v10 = [v5 trust];
    v11 = [v10 trustedCircle];
    if (v9 && v11)
    {
      if (CFEqual(v9, v11))
      {
LABEL_6:
        v12 = [(SOSAccount *)self trust];
        v13 = [v12 expansion];
        v22 = [v5 trust];
        v14 = [v22 expansion];
        v23 = v13;
        if ([v13 isEqual:v14])
        {
          v21 = v12;
          v15 = [(SOSAccount *)self trust];
          v16 = [v15 fullPeerInfo];
          v17 = [v5 trust];
          v18 = [v17 fullPeerInfo];
          if (v16 && v18)
          {
            v19 = CFEqual(v16, v18) != 0;
          }

          else
          {
            v19 = v16 == v18;
          }

          v12 = v21;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_18;
      }
    }

    else if (v9 == v11)
    {
      goto LABEL_6;
    }

    v19 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v19 = 0;
LABEL_20:

  return v19;
}

- (void)startStateMachine
{
  v2 = [(SOSAccount *)self stateMachine];
  [v2 startOperation];
}

- (SOSAccount)initWithGestalt:(__CFDictionary *)a3 factory:(SOSDataSourceFactory *)a4
{
  v35.receiver = self;
  v35.super_class = SOSAccount;
  v6 = [(SOSAccount *)&v35 init];
  if (v6)
  {
    v7 = dispatch_queue_create("Account Queue", 0);
    v8 = *(v6 + 12);
    *(v6 + 12) = v7;

    v9 = [[NSDictionary alloc] initWithDictionary:a3];
    v10 = *(v6 + 8);
    *(v6 + 8) = v9;

    v11 = [SOSAccountTrustClassic alloc];
    v12 = +[NSMutableSet set];
    v13 = +[NSMutableDictionary dictionary];
    v14 = [(SOSAccountTrustClassic *)v11 initWithRetirees:v12 fpi:0 circle:0 departureCode:0 peerExpansion:v13];

    v15 = *(v6 + 11);
    *(v6 + 11) = v14;
    v16 = v14;

    v6[8] = 0;
    *(v6 + 5) = 0;
    v17 = *(v6 + 15);
    *(v6 + 14) = a4;
    *(v6 + 15) = 0;

    v18 = *(v6 + 13);
    *(v6 + 13) = 0;

    *(v6 + 6) = -1;
    v19 = +[NSMutableArray array];
    v20 = *(v6 + 20);
    *(v6 + 20) = v19;

    v21 = *(v6 + 16);
    *(v6 + 16) = 0;

    v22 = *(v6 + 17);
    *(v6 + 17) = 0;

    v23 = *(v6 + 19);
    *(v6 + 19) = 0;

    v24 = *(v6 + 18);
    *(v6 + 18) = 0;

    *(v6 + 9) = 0;
    v25 = *(v6 + 9);
    *(v6 + 9) = 0;

    v26 = *(v6 + 10);
    *(v6 + 10) = 0;

    v27 = +[NSMutableDictionary dictionary];
    v28 = *(v6 + 21);
    *(v6 + 21) = v27;

    v6[13] = 0;
    v29 = *(v6 + 22);
    *(v6 + 22) = 0;

    *(v6 + 4) = 0;
    *(v6 + 6) = 0;
    *(v6 + 7) = 0;
    v30 = *(v6 + 23);
    *(v6 + 23) = 0;

    v31 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.security.sosaccount"];
    v32 = *(v6 + 24);
    *(v6 + 24) = v31;

    [v6 SOSMonitorModeSOSIsActive];
    [v6 ensureFactoryCircles];
    v33 = sub_100228CC0(v6);
    if (v33)
    {
      CFRelease(v33);
    }

    v6[21] = 0;
    *(v6 + 17) = 0;
    [v6 setupStateMachine];
  }

  return v6;
}

- (void)ensureOctagonPeerKeys
{
  v3 = +[CKKSLockStateTracker globalTracker];
  if (v3 && ([v3 isLocked] & 1) == 0)
  {
    v4 = [(SOSAccount *)self trust];
    v5 = [(SOSAccount *)self circle_transport];
    [v4 ensureOctagonPeerKeys:v5];
  }

  _objc_release_x1();
}

- (BOOL)ensureFactoryCircles
{
  if ([(SOSAccount *)self factory])
  {
    v3 = (*[(SOSAccount *)self factory])();
    if (!v3)
    {
      LOBYTE(v8) = 0;
LABEL_19:

      return v8;
    }

    v4 = self;
    v5 = [(SOSAccount *)v4 trust];
    v6 = [v5 trustedCircle];
    if (v6)
    {
      v7 = v6;
      CFRetain(v6);
    }

    else
    {
      v7 = SOSCircleCreate();
      [(SOSAccount *)v4 setKey_interests_need_updating:1];
      [v5 setTrustedCircle:v7];
      [(SOSAccount *)v4 sosEvaluateIfNeeded];

      if (!v7)
      {
LABEL_9:
        v9 = v4;
        v10 = [(SOSAccount *)v9 key_transport];

        if (v10)
        {
          v11 = [(SOSAccount *)v9 key_transport];
          sub_100236194(v11);
        }

        v12 = [(SOSAccount *)v9 circle_transport];

        if (v12)
        {
          v13 = [(SOSAccount *)v9 circle_transport];
          sub_1002360F8(v13);
        }

        v14 = [(SOSAccount *)v9 kvs_message_transport];

        if (v14)
        {
          v15 = [(SOSAccount *)v9 kvs_message_transport];
          sub_100236018(v15);
        }

        v16 = [[CKKeyParameter alloc] initWithAccount:v9];
        [(SOSAccount *)v9 setKey_transport:v16];

        v17 = [[SOSKVSCircleStorageTransport alloc] initWithAccount:v9 andCircleName:v3];
        [(SOSAccount *)v9 setCircle_transport:v17];

        v8 = [(SOSAccount *)v9 key_transport];

        if (v8)
        {
          v8 = [(SOSAccount *)v9 circle_transport];

          if (v8)
          {
            v8 = [[SOSMessageKVS alloc] initWithAccount:v9 andName:v3];
            [(SOSAccount *)v9 setKvs_message_transport:v8];

            v18 = [(SOSAccount *)v9 kvs_message_transport];
            LOBYTE(v8) = v18 != 0;
          }
        }

        goto LABEL_19;
      }
    }

    CFRelease(v7);
    goto LABEL_9;
  }

  LOBYTE(v8) = 0;
  return v8;
}

- (NSString)peerID
{
  v2 = [(SOSAccount *)self trust];
  v3 = [v2 peerID];

  return v3;
}

- (__OpaqueSOSFullPeerInfo)fullPeerInfo
{
  v2 = [(SOSAccount *)self trust];
  v3 = [v2 fullPeerInfo];

  return v3;
}

- (__OpaqueSOSPeerInfo)peerInfo
{
  v2 = [(SOSAccount *)self trust];
  v3 = [v2 peerInfo];

  return v3;
}

- (void)setPeerPublicKey:(__SecKey *)a3
{
  peerPublicKey = self->_peerPublicKey;
  if (peerPublicKey != a3)
  {
    if (!a3 || (CFRetain(a3), (peerPublicKey = self->_peerPublicKey) != 0))
    {
      CFRelease(peerPublicKey);
    }

    self->_peerPublicKey = a3;
  }
}

- (void)setPreviousAccountKey:(__SecKey *)a3
{
  previousAccountKey = self->_previousAccountKey;
  if (previousAccountKey != a3)
  {
    if (!a3 || (CFRetain(a3), (previousAccountKey = self->_previousAccountKey) != 0))
    {
      CFRelease(previousAccountKey);
    }

    self->_previousAccountKey = a3;
  }
}

- (void)setAccountPrivateKey:(__SecKey *)a3
{
  accountPrivateKey = self->_accountPrivateKey;
  if (accountPrivateKey != a3)
  {
    if (!a3 || (CFRetain(a3), (accountPrivateKey = self->_accountPrivateKey) != 0))
    {
      CFRelease(accountPrivateKey);
    }

    self->_accountPrivateKey = a3;
  }
}

- (void)setAccountKey:(__SecKey *)a3
{
  accountKey = self->_accountKey;
  if (accountKey != a3)
  {
    if (!a3 || (CFRetain(a3), (accountKey = self->_accountKey) != 0))
    {
      CFRelease(accountKey);
    }

    self->_accountKey = a3;
  }
}

- (void)dealloc
{
  if (self)
  {
    accountKey = self->_accountKey;
    if (accountKey)
    {
      self->_accountKey = 0;
      CFRelease(accountKey);
    }

    accountPrivateKey = self->_accountPrivateKey;
    if (accountPrivateKey)
    {
      self->_accountPrivateKey = 0;
      CFRelease(accountPrivateKey);
    }

    previousAccountKey = self->_previousAccountKey;
    if (previousAccountKey)
    {
      self->_previousAccountKey = 0;
      CFRelease(previousAccountKey);
    }

    peerPublicKey = self->_peerPublicKey;
    if (peerPublicKey)
    {
      self->_peerPublicKey = 0;
      CFRelease(peerPublicKey);
    }

    octagonSigningFullKeyRef = self->_octagonSigningFullKeyRef;
    if (octagonSigningFullKeyRef)
    {
      self->_octagonSigningFullKeyRef = 0;
      CFRelease(octagonSigningFullKeyRef);
    }

    octagonEncryptionFullKeyRef = self->_octagonEncryptionFullKeyRef;
    if (octagonEncryptionFullKeyRef)
    {
      self->_octagonEncryptionFullKeyRef = 0;
      CFRelease(octagonEncryptionFullKeyRef);
    }

    v9 = [(SOSAccount *)self performBackups];
    [v9 cancel];

    v10 = [(SOSAccount *)self performRingUpdates];
    [v10 cancel];

    v11 = [(SOSAccount *)self stateMachine];
    [v11 haltOperation];
  }

  v12.receiver = self;
  v12.super_class = SOSAccount;
  [(SOSAccount *)&v12 dealloc];
}

+ (id)urlForSOSAccountSettings
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100089E34(1, @"SOSAccountSettings.pb");

  return v2;
}

+ (unsigned)ghostBustGetRampSettings
{
  v2 = +[OTManager manager];
  if ([v2 ghostbustByMidEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | [v2 ghostbustBySerialEnabled];
  if ([v2 ghostbustByAgeEnabled])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return v4 | v5;
}

- (id)encodedData:(id *)a3
{
  v5 = [(SOSAccount *)self trust];
  v6 = [v5 getDEREncodedSize:self err:a3];

  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10021B1B0;
    v9[3] = &unk_100345888;
    v9[4] = self;
    v9[5] = a3;
    v7 = [NSMutableData dataWithSpace:v6 DEREncode:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)accountFromData:(id)a3 factory:(SOSDataSourceFactory *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 length];
  v10 = [v8 bytes];

  v13 = v10;
  v11 = [a1 accountFromDER:&v13 end:&v9[v10] factory:a4 error:a5];

  return v11;
}

+ (id)accountFromDER:(const char *)a3 end:(const char *)a4 factory:(SOSDataSourceFactory *)a5 error:(id *)a6
{
  v84 = 0;
  v87 = 0xAAAAAAAAAAAAAAAALL;
  v88 = 0;
  v9 = *a3;
  *a3 = ccder_decode_constructed_tl();
  v10 = ccder_decode_uint64();
  *a3 = v10;
  if (!v10)
  {
    SOSCreateError();
    if (!a6)
    {
      goto LABEL_30;
    }

    goto LABEL_95;
  }

  if (v88 == 6)
  {
    v57 = v87;
    *buf = 0;
    *v99 = 0;
    v58 = (a5->var0)(a5);
    v98 = 0;
    v59 = sub_100006D24(kCFAllocatorDefault, &v98, &v84, *a3, v87);
    *a3 = v59;
    if (!v59)
    {
      goto LABEL_94;
    }

    v60 = v98;
    v61 = sub_10020EB50(v98, a5);
    if (v60)
    {
      CFRelease(v60);
    }

    v62 = [v61 trust];
    *a3 = sub_100018424(kCFAllocatorDefault, buf, &v84, *a3, v57);
    v98 = 5;
    *a3 = ccder_decode_uint64();
    [v62 setDepartureCode:v98];
    v97 = -86;
    *a3 = sub_100087D38(&v97, *a3);
    [v61 setAccountKeyIsTrusted:v97];
    v95 = 0;
    v96 = 0;
    v63 = *a3;
    *a3 = sub_100216DF4();
    *a3 = sub_100216DF4();
    [v61 setAccountKey:v96];
    [v61 setPreviousAccountKey:v95];
    v64 = v96;
    if (v96)
    {
      v96 = 0;
      CFRelease(v64);
    }

    v65 = v95;
    if (v95)
    {
      v95 = 0;
      CFRelease(v65);
    }

    v94 = 0;
    v66 = *a3;
    *a3 = der_decode_data_or_null();
    v67 = v94;
    [v61 setAccountKeyDerivationParameters:v94];

    v68 = sub_100006D24(kCFAllocatorDefault, v99, &v84, *a3, v57);
    *a3 = v68;
    if (v68 == v57)
    {
      Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_10021BF64;
      context[3] = &unk_1003469D0;
      context[4] = Mutable;
      CFDictionaryApplyFunction(*v99, sub_10021C22C, context);
      [v62 setRetirees:Mutable];
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v56 = *buf;
      if (*buf)
      {
        if (*a3)
        {
          cf[0] = _NSConcreteStackBlock;
          cf[1] = 3221225472;
          cf[2] = sub_10021BFFC;
          cf[3] = &unk_100347768;
          v91 = &v84;
          v92 = v58;
          v90 = v62;
          v102.length = CFArrayGetCount(v56);
          v102.location = 0;
          CFArrayApplyFunction(v56, v102, sub_10021C214, cf);
          *buf = 0;
          CFRelease(v56);
          if ([v61 ensureFactoryCircles])
          {
            v70 = v61;
          }

          else
          {
            SOSCreateError();
            v70 = 0;
          }

          v56 = v70;
        }

        else
        {
          v56 = 0;
        }
      }
    }

    else
    {
      v56 = 0;
      *a3 = 0;
    }

    if (!v56)
    {
LABEL_94:
      if (a6)
      {
        goto LABEL_95;
      }

      goto LABEL_30;
    }

    goto LABEL_92;
  }

  if (v88 != 7)
  {
    if (v88 == 8)
    {
      v11 = v87;
      cf[0] = 0;
      v12 = sub_100006D24(kCFAllocatorDefault, cf, &v84, v10, v87);
      *a3 = v12;
      v13 = cf[0];
      if (v12)
      {
        v14 = sub_10020EB50(cf[0], a5);
        if (v13)
        {
          CFRelease(v13);
        }

        v15 = [v14 trust];
        v16 = SOSCircleCreateFromDER();
        [v15 setTrustedCircle:v16];
        if (v16)
        {
          CFRelease(v16);
        }

        cf[0] = 0;
        *a3 = sub_100216C58(cf, &v84, *a3);
        [v15 setFullPeerInfo:cf[0]];
        v17 = cf[0];
        if (cf[0])
        {
          cf[0] = 0;
          CFRelease(v17);
        }

        cf[0] = 5;
        v18 = *a3;
        *a3 = ccder_decode_uint64();
        [v15 setDepartureCode:LODWORD(cf[0])];
        LOBYTE(v98) = -86;
        *a3 = sub_100087D38(&v98, *a3);
        [v14 setAccountKeyIsTrusted:v98];
        context[0] = 0;
        v19 = *a3;
        *a3 = sub_100216DF4();
        [v14 setAccountKey:context[0]];
        v20 = context[0];
        if (context[0])
        {
          context[0] = 0;
          CFRelease(v20);
        }

        context[0] = 0;
        v21 = *a3;
        *a3 = sub_100216DF4();
        [v14 setPreviousAccountKey:context[0]];
        v22 = context[0];
        if (context[0])
        {
          context[0] = 0;
          CFRelease(v22);
        }

        context[0] = 0xAAAAAAAAAAAAAAAALL;
        v23 = *a3;
        *a3 = der_decode_data_or_null();
        v24 = context[0];
        [v14 setAccountKeyDerivationParameters:context[0]];

        v25 = SOSPeerInfoSetCreateFromArrayDER();
        [v15 setRetirees:v25];
        if (v25)
        {
          CFRelease(v25);
        }

        context[0] = 0;
        v26 = *a3;
        v27 = sub_10000B738(kCFAllocatorDefault, context, 0, *a3, v11);
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = v26;
        }

        *a3 = v28;
        if (v28 != v11)
        {
          *buf = 0;
          v29 = sub_100006D24(kCFAllocatorDefault, buf, &v84, v28, v11);
          *a3 = v29;
          if (!v29)
          {
            v71 = sub_100006274("persistence");
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *v99 = 0;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Error Processing expansion dictionary der - dropping account object", v99, 2u);
            }

            v72 = context[0];
            if (context[0])
            {
              context[0] = 0;
              CFRelease(v72);
            }

            if (*buf)
            {
              CFRelease(*buf);
            }

            goto LABEL_89;
          }

          v30 = *buf;
          if (*buf)
          {
            [v15 setExpansion:*buf];
            CFRelease(v30);
          }
        }

        v31 = context[0];
        v32 = sub_100006274("backupKey");
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Setting backup key from metadata", buf, 2u);
          }

          v34 = [[NSData alloc] initWithData:v31];
          [v14 setBackup_key:v34];

          CFRelease(v31);
        }

        else
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to set backup key from metadata - no key found", buf, 2u);
          }
        }

        if (*a3 && *a3 == v11)
        {
          v56 = v14;
LABEL_90:

          goto LABEL_91;
        }

        SOSCreateError();
LABEL_89:
        v56 = 0;
        goto LABEL_90;
      }

      if (!cf[0])
      {
        goto LABEL_94;
      }

      CFRelease(cf[0]);
      if (!a6)
      {
        goto LABEL_30;
      }
    }

    else
    {
      SOSCreateErrorWithFormat();
      if (!a6)
      {
        goto LABEL_30;
      }
    }

LABEL_95:
    v35 = 0;
    *a6 = v84;
    goto LABEL_96;
  }

  v37 = v87;
  cf[0] = 0;
  v38 = sub_100006D24(kCFAllocatorDefault, cf, &v84, v10, v87);
  *a3 = v38;
  if (!v38)
  {
    goto LABEL_94;
  }

  v39 = cf[0];
  v14 = sub_10020EB50(cf[0], a5);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = [v14 trust];
  v41 = SOSCircleCreateFromDER();
  [v40 setTrustedCircle:v41];
  if (v41)
  {
    CFRelease(v41);
  }

  cf[0] = 0;
  *a3 = sub_100216C58(cf, &v84, *a3);
  [v40 setFullPeerInfo:cf[0]];
  v42 = cf[0];
  if (cf[0])
  {
    cf[0] = 0;
    CFRelease(v42);
  }

  cf[0] = 5;
  v43 = *a3;
  v44 = ccder_decode_uint64();
  *a3 = v44;
  buf[0] = -86;
  *a3 = sub_100087D38(buf, v44);
  [v14 setAccountKeyIsTrusted:buf[0]];
  context[0] = 0;
  v45 = *a3;
  *a3 = sub_100216DF4();
  [v14 setAccountKey:context[0]];
  v46 = context[0];
  if (context[0])
  {
    context[0] = 0;
    CFRelease(v46);
  }

  context[0] = 0;
  v47 = *a3;
  *a3 = sub_100216DF4();
  [v14 setPreviousAccountKey:context[0]];
  v48 = context[0];
  if (context[0])
  {
    context[0] = 0;
    CFRelease(v48);
  }

  context[0] = 0;
  v49 = *a3;
  *a3 = der_decode_data_or_null();
  v50 = context[0];
  [v14 setAccountKeyDerivationParameters:context[0]];

  [v40 setRetirees:SOSPeerInfoSetCreateFromArrayDER()];
  context[0] = 0;
  v51 = *a3;
  v52 = sub_10000B738(kCFAllocatorDefault, context, 0, *a3, v37);
  if (v52)
  {
    v53 = v52;
  }

  else
  {
    v53 = v51;
  }

  *a3 = v53;
  v54 = context[0];
  if (context[0])
  {
    [v14 setBackup_key:context[0]];
  }

  [v40 setDepartureCode:LODWORD(cf[0])];
  if (*a3 && *a3 == v37)
  {
    v55 = v14;
  }

  else
  {
    SOSCreateError();
    v55 = 0;
  }

  v56 = v55;

LABEL_91:
  if (!v56)
  {
    goto LABEL_94;
  }

LABEL_92:
  if (*a3 != v87)
  {
LABEL_93:
    SOSCreateError();

    goto LABEL_94;
  }

  if (![(__CFArray *)v56 fullPeerInfo])
  {
LABEL_103:
    if (([(__CFArray *)v56 ensureFactoryCircles]& 1) != 0)
    {
      v75 = [(__CFArray *)v56 peerInfo];
      if (v75)
      {
        v76 = v75;
        CFRetain(v75);
        if (([(__CFArray *)v56 isInCircle:0]& 1) == 0)
        {
          sub_100221828(v56);
        }

        CFRelease(v76);
      }

      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_10021C18C;
      v85[3] = &unk_1003475E8;
      v77 = v56;
      v86 = v77;
      [(__CFArray *)v77 performTransaction:v85];
      v78 = sub_100228CC0(v77);
      if (v78)
      {
        CFRelease(v78);
      }

      [(__CFArray *)v77 sosEvaluateIfNeeded];
      v79 = v86;
      v35 = v77;

      goto LABEL_31;
    }

    goto LABEL_93;
  }

  if (SOSFullPeerInfoPrivKeyExists())
  {
    v74 = SOSFullPeerInfoCopyPubKey();
    [(__CFArray *)v56 setPeerPublicKey:v74];
    if (v74)
    {
      CFRelease(v74);
    }

    goto LABEL_103;
  }

  v80 = [(__CFArray *)v56 key_transport];
  sub_100236194(v80);

  v81 = [(__CFArray *)v56 circle_transport];
  sub_1002360F8(v81);

  v82 = [(__CFArray *)v56 kvs_message_transport];
  sub_100236018(v82);

  v83 = sub_100006274("account");
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(cf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "No private key associated with my_identity, resetting", cf, 2u);
  }

  if (a6)
  {
    goto LABEL_95;
  }

LABEL_30:
  v35 = 0;
LABEL_31:
  v36 = v84;
  if (v84)
  {
    v84 = 0;
    CFRelease(v36);
  }

LABEL_96:

  return v35;
}

- (void)performTransaction:(BOOL)a3 action:(id)a4
{
  v6 = a4;
  off_10039D610();
  if (*v7 == 1)
  {
    [(SOSAccount *)self performTransaction_Locked:1 action:v6];
  }

  else
  {
    v8 = [(SOSAccount *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10021EA14;
    block[3] = &unk_100345960;
    block[4] = self;
    v11 = a3;
    v10 = v6;
    dispatch_sync(v8, block);
  }
}

+ (void)performOnQuietAccountQueue:(id)a3
{
  v3 = a3;
  v4 = sub_100243B3C(1);
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10021EC64;
    v6[3] = &unk_100347260;
    v7 = v3;
    [v4 performTransaction:1 action:v6];
  }

  else
  {
    v5 = sub_100006274("acct-txn");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = getuid();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "UID: %d - No account; running block on local thread", buf, 8u);
    }

    v3[2](v3);
  }
}

@end