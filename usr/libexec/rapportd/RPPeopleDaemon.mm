@interface RPPeopleDaemon
+ (id)sharedPeopleDaemon;
- (BOOL)_pruneFamilyDevices;
- (BOOL)_pruneFriendAccounts:(BOOL)a3;
- (BOOL)_pruneFriendDevices;
- (BOOL)_shouldThrottleFriendSyncing;
- (BOOL)_updateFamilyAccounts;
- (BOOL)_updateFamilyDevices;
- (BOOL)_updateFamilyIdentityWithFamilyMember:(id)a3;
- (BOOL)_updateFriendAccounts;
- (BOOL)_updateFriendDevices;
- (BOOL)addOrUpdateAdHocPairedIdentity:(id)a3 error:(id *)a4;
- (BOOL)addOrUpdateIdentity:(id)a3 source:(int)a4 error:(id *)a5;
- (BOOL)diagnosticCommand:(id)a3 params:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RPPeopleDaemon)init;
- (_TtC8rapportd30RPIdentitySyncSessionTelemetry)sessionTelemetry;
- (id)_primaryAppleID:(BOOL)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)getFamilyURIs;
- (unsigned)_updateFriendIdentityWithAppleID:(id)a3 contactID:(id)a4 sendersKnownAlias:(id)a5 userAdded:(BOOL)a6 updateDateRequested:(BOOL)a7 suggestedContactIDs:(id)a8 source:(int)a9;
- (void)_activate;
- (void)_daemonDevice:(id)a3 updatedMeasurement:(id)a4;
- (void)_daemonDeviceFound:(id)a3;
- (void)_daemonDeviceLost:(id)a3;
- (void)_discoveryEnsureStarted;
- (void)_discoveryEnsureStopped;
- (void)_familyEnsureStarted;
- (void)_familyEnsureStopped;
- (void)_fetchSameAccountIdentities;
- (void)_friendsEnsureStarted;
- (void)_friendsEnsureStopped;
- (void)_friendsUpdateSuggestedIfNeeded;
- (void)_invalidate;
- (void)_invalidated;
- (void)_irkMetricsSetup;
- (void)_processBufferedCloudMessages;
- (void)_rangingBLEActionScannerBurst;
- (void)_rangingBLEActionScannerDeviceFound:(id)a3;
- (void)_rangingBLEActionScannerDeviceLost:(id)a3;
- (void)_rangingBLEActionScannerEnsureStarted;
- (void)_rangingBLEActionScannerEnsureStopped;
- (void)_rangingInitiatorEnsureStarted;
- (void)_rangingInitiatorEnsureStopped;
- (void)_rangingInitiatorHandlePeer:(id)a3 measurement:(id)a4;
- (void)_rangingInitiatorStatusChanged;
- (void)_rangingRemoveDevice:(id)a3;
- (void)_rangingResponderEnsureStarted;
- (void)_rangingResponderEnsureStopped;
- (void)_rangingResponderUpdate;
- (void)_rangingResponderUpdateForAirDropChange;
- (void)_rangingUpdateForDevice:(id)a3;
- (void)_resetFriends;
- (void)_update;
- (void)_updateFamilyIdentities;
- (void)_updateFamilyNotification;
- (void)_updateFamilySyncing;
- (void)_updateFriendIdentities;
- (void)_updateFriendPrivacy;
- (void)_updateFriendPrivacyResults:(id)a3;
- (void)_updateFriendSyncing;
- (void)_xpcConnectionInvalidated:(id)a3;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)a3;
- (void)invalidate;
- (void)prefsChanged;
- (void)receivedFamilyIdentityRequest:(id)a3 msgCtx:(id)a4;
- (void)receivedFamilyIdentityResponse:(id)a3 msgCtx:(id)a4;
- (void)receivedFamilyIdentityUpdate:(id)a3 msgCtx:(id)a4;
- (void)receivedFriendIdentityRequest:(id)a3 msgCtx:(id)a4;
- (void)receivedFriendIdentityResponse:(id)a3 msgCtx:(id)a4;
- (void)receivedFriendIdentityUpdate:(id)a3 msgCtx:(id)a4;
- (void)regenerateSelfIdentity:(id)a3;
- (void)reportIRKMetrics;
- (void)sendFriendRequest:(id)a3 nonWakingRequest:(BOOL)a4 sendersKnownAlias:(id)a5;
@end

@implementation RPPeopleDaemon

- (void)_rangingResponderUpdate
{
  if ([(NSMutableDictionary *)self->_rangingBLEActionDevicesActive count])
  {

    [(RPPeopleDaemon *)self _rangingResponderEnsureStarted];
  }

  else
  {

    [(RPPeopleDaemon *)self _rangingResponderEnsureStopped];
  }
}

- (void)_rangingResponderEnsureStopped
{
  if (self->_rangingResponder)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001262D0();
    }

    [(CURangingSession *)self->_rangingResponder invalidate];
    rangingResponder = self->_rangingResponder;
    self->_rangingResponder = 0;
  }
}

- (void)_updateFriendPrivacy
{
  if (!self->_friendPrivacyGetting)
  {
    v3 = objc_alloc_init(NSMutableArray);
    friendAccountIdentityMap = self->_friendAccountIdentityMap;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009CD78;
    v10[3] = &unk_1001AE918;
    v10[4] = v3;
    [(NSMutableDictionary *)friendAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v10];
    if ([v3 count])
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125AA4(v3);
      }

      v5 = objc_alloc_init(off_1001D4990());
      [v5 setDispatchQueue:self->_dispatchQueue];
      v6 = objc_alloc_init(off_1001D4998());
      [v6 setContactIDs:v3];
      self->_friendPrivacyGetting = 1;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10009CDD8;
      v8[3] = &unk_1001ACF70;
      v8[4] = self;
      v9 = v5;
      v7 = v5;
      [v7 getPeopleSuggestions:v6 completion:v8];
    }

    else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100009954();
    }
  }
}

+ (id)sharedPeopleDaemon
{
  if (qword_1001D64A0 != -1)
  {
    sub_10000F210();
  }

  v3 = qword_1001D6498;

  return v3;
}

- (RPPeopleDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPPeopleDaemon;
  v2 = [(RPPeopleDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_airdropModeNotifyToken = -1;
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_familyNotifyToken = -1;
    v3->_friendsSuggestedNotifyToken = -1;
    v3->_privacyChangedNotifyToken = -1;
    [(RPPeopleDaemon *)v3 _irkMetricsSetup];
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)a3
{
  if (a3 < 21)
  {
    v97 = 0;
    v98 = &v97;
    v99 = 0x3032000000;
    v100 = sub_100002A3C;
    v101 = sub_1000031B4;
    v102 = 0;
    v62 = [(CUSystemMonitor *)self->_familyMemberMonitor familyMembers];
    v6 = (v98 + 5);
    obj = v98[5];
    v7 = [(NSMutableDictionary *)self->_discoveredDevices count];
    v59 = [v62 count];
    v60 = [(NSMutableSet *)self->_xpcConnections count];
    v57 = *&v7;
    NSAppendPrintF();
    objc_storeStrong(v6, obj);
    if (a3 > 10)
    {
      v23 = 50;
    }

    else
    {
      if ([v62 count])
      {
        v8 = (v98 + 5);
        v95 = v98[5];
        NSAppendPrintF();
        objc_storeStrong(v8, v95);
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v63 = v62;
        v9 = [v63 countByEnumeratingWithState:&v91 objects:v104 count:16];
        if (v9)
        {
          v10 = "";
          v11 = *v92;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v92 != v11)
              {
                objc_enumerationMutation(v63);
              }

              v13 = *(*(&v91 + 1) + 8 * i);
              v14 = (v98 + 5);
              v90 = v98[5];
              v15 = [v13 appleID];
              v16 = [v13 isMe];
              v17 = " (me)";
              if (!v16)
              {
                v17 = "";
              }

              v59 = v15;
              v61 = v17;
              v57 = *&v10;
              NSAppendPrintF();
              objc_storeStrong(v14, v90);

              v10 = ", ";
            }

            v9 = [v63 countByEnumeratingWithState:&v91 objects:v104 count:{16, *&v57, v15, v61}];
            v10 = ", ";
          }

          while (v9);
        }

        v18 = (v98 + 5);
        v89 = v98[5];
        NSAppendPrintF();
        objc_storeStrong(v18, v89);
      }

      Current = CFAbsoluteTimeGetCurrent();
      CFPrefs_GetDouble();
      if (v20 >= 0.0)
      {
        if (v20 == 0.0)
        {
          v21 = (v98 + 5);
          v87 = v98[5];
          NSAppendPrintF();
          v22 = v87;
        }

        else
        {
          v21 = (v98 + 5);
          if (v20 <= Current)
          {
            v86 = v98[5];
            v57 = v20;
            NSAppendPrintF();
            v22 = v86;
          }

          else
          {
            v85 = v98[5];
            v59 = fmin(v20 - Current, 2147483650.0);
            v57 = v20;
            NSAppendPrintF();
            v22 = v85;
          }
        }
      }

      else
      {
        v21 = (v98 + 5);
        v88 = v98[5];
        NSAppendPrintF();
        v22 = v88;
      }

      v24 = v22;
      v25 = *v21;
      *v21 = v24;

      v23 = 30;
    }

    v64 = v23;
    v26 = self->_deviceDiscovery;
    v27 = v26;
    if (v26)
    {
      v28 = (v98 + 5);
      v84 = v98[5];
      v57 = *&v26;
      NSAppendPrintF();
      objc_storeStrong(v28, v84);
    }

    v29 = [(NSMutableDictionary *)self->_discoveredDevices count];
    if (v29)
    {
      v30 = (v98 + 5);
      v83 = v98[5];
      v57 = *&v29;
      NSAppendPrintF();
      objc_storeStrong(v30, v83);
    }

    discoveredDevices = self->_discoveredDevices;
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1000940E0;
    v81[3] = &unk_1001AE6C0;
    v81[4] = &v97;
    v82 = v64;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v81, *&v57, v59];
    v32 = self->_rangingInitiator;
    if (v32)
    {
      v33 = (v98 + 5);
      v80 = v98[5];
      NSAppendPrintF();
      objc_storeStrong(v33, v80);
    }

    v34 = self->_rangingResponder;
    if (v34)
    {
      v35 = (v98 + 5);
      v79 = v98[5];
      NSAppendPrintF();
      objc_storeStrong(v35, v79);
    }

    v36 = self->_rangingBLEActionAdvertiser;
    v37 = v36;
    if (v36)
    {
      v38 = (v98 + 5);
      v78 = v98[5];
      v58 = v36;
      NSAppendPrintF();
      objc_storeStrong(v38, v78);
    }

    v39 = self->_rangingBLEActionScanner;
    v40 = v39;
    if (v39)
    {
      v41 = (v98 + 5);
      v77 = v98[5];
      v58 = v39;
      NSAppendPrintF();
      objc_storeStrong(v41, v77);
    }

    rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10009414C;
    v75[3] = &unk_1001AAED0;
    v75[4] = &v97;
    v76 = v64;
    [(NSMutableDictionary *)rangingBLEActionDevicesActive enumerateKeysAndObjectsUsingBlock:v75];
    rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1000941B8;
    v73[3] = &unk_1001AAED0;
    v73[4] = &v97;
    v74 = v64;
    [(NSMutableDictionary *)rangingBLEActionDevicesOther enumerateKeysAndObjectsUsingBlock:v73];
    v44 = [(NSMutableSet *)self->_xpcConnections count];
    if (v44)
    {
      v45 = (v98 + 5);
      v72 = v98[5];
      v58 = v44;
      NSAppendPrintF();
      objc_storeStrong(v45, v72);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v46 = self->_xpcConnections;
    v47 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v68 objects:v103 count:16];
    if (v47)
    {
      v48 = *v69;
      do
      {
        for (j = 0; j != v47; j = j + 1)
        {
          if (*v69 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = *(*(&v68 + 1) + 8 * j);
          v51 = (v98 + 5);
          v67 = v98[5];
          v52 = [v50 xpcCnx];
          v58 = [v52 processIdentifier];
          NSAppendPrintF();
          objc_storeStrong(v51, v67);

          v53 = [v50 activatedDiscovery];
          if (v53)
          {
            v54 = (v98 + 5);
            v66 = v98[5];
            v58 = CUDescriptionWithLevel();
            NSAppendPrintF();
            objc_storeStrong(v54, v66);
          }

          v55 = (v98 + 5);
          v65 = v98[5];
          NSAppendPrintF();
          objc_storeStrong(v55, v65);
        }

        v47 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v68 objects:v103 count:16];
      }

      while (v47);
    }

    v4 = v98[5];
    _Block_object_dispose(&v97, 8);
  }

  else
  {
    v4 = NSPrintF();
  }

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094298;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001244DC();
  }

  if (!self->_xpcListener)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport.people"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (self->_airdropModeNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100094530;
    handler[3] = &unk_1001AAFE8;
    handler[4] = self;
    notify_register_dispatch("com.apple.sharing.airdrop-mode-changed", &self->_airdropModeNotifyToken, dispatchQueue, handler);
    airdropModeNotifyToken = self->_airdropModeNotifyToken;
    state64 = 0;
    notify_get_state(airdropModeNotifyToken, &state64);
    self->_airdropMode = state64;
  }

  if (!self->_systemMonitor)
  {
    v7 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v7;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000945C8;
    v13[3] = &unk_1001AA970;
    v13[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000945D0;
    v12[3] = &unk_1001AA970;
    v12[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000945F8;
    v11[3] = &unk_1001AA970;
    v11[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v11];
    v9 = self->_systemMonitor;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100094600;
    v10[3] = &unk_1001AA970;
    v10[4] = self;
    [(CUSystemMonitor *)v9 activateWithCompletion:v10];
  }

  [(RPPeopleDaemon *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009467C;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124564();
    }

    primaryAppleIDCached = self->_primaryAppleIDCached;
    self->_primaryAppleIDCached = 0;

    [(CUSystemMonitor *)self->_systemMonitor invalidate];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;

    airdropModeNotifyToken = self->_airdropModeNotifyToken;
    if (airdropModeNotifyToken != -1)
    {
      notify_cancel(airdropModeNotifyToken);
      self->_airdropModeNotifyToken = -1;
    }

    [(NSXPCListener *)self->_xpcListener invalidate];
    xpcListener = self->_xpcListener;
    self->_xpcListener = 0;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_xpcConnections;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v13 + 1) + 8 * i) xpcCnx];
          [v12 invalidate];
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(RPPeopleDaemon *)self _discoveryEnsureStopped];
    [(RPPeopleDaemon *)self _familyEnsureStopped];
    [(RPPeopleDaemon *)self _friendsEnsureStopped];
    [(RPPeopleDaemon *)self _rangingInitiatorEnsureStopped];
    [(RPPeopleDaemon *)self _rangingResponderEnsureStopped];
    [(RPPeopleDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableSet *)self->_xpcConnections count]&& !self->_xpcListener)
  {
    self->_invalidateDone = 1;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124580();
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)a3
{
  v3 = a3;
  if ((a3 & 0x10) != 0)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012459C();
    }

    [(RPPeopleDaemon *)self _familyEnsureStopped];
    v5 = +[RPDaemon sharedDaemon];
    [v5 postDaemonInfoChanges:2];

    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001245B8();
    }

    [(RPPeopleDaemon *)self _friendsEnsureStopped];
    v6 = +[RPDaemon sharedDaemon];
    [v6 postDaemonInfoChanges:128];

    [(RPPeopleDaemon *)self _update];
    if ((v3 & 0x40) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_17:
      [(NSMutableDictionary *)self->_familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:&stru_1001AE700];
      [(RPPeopleDaemon *)self _update];
      if ((v3 & 0x80000) == 0)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else if ((a3 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001245D4();
  }

  [(RPPeopleDaemon *)self _update];
  if ((v3 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v3 & 0x80000) == 0)
  {
    return;
  }

LABEL_18:

  [(RPPeopleDaemon *)self reportIRKMetrics];
}

- (BOOL)diagnosticCommand:(id)a3 params:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v6 rangeOfString:@"FamilyReq" options:9] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "rangeOfString:options:", @"FamilyAck", 9) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "rangeOfString:options:", @"FamilyUp", 9) != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      if ([v6 rangeOfString:@"FamilyReq" options:9] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v6 rangeOfString:@"FamilyAck" options:9] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v6 rangeOfString:@"FamilyUp" options:9] == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_37:

LABEL_38:
            v8 = 1;
            goto LABEL_39;
          }

          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100124670();
          }

          v10 = self;
          v11 = 34;
        }

        else
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100124630();
          }

          v10 = self;
          v11 = 33;
        }
      }

      else
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_1001245F0();
        }

        v10 = self;
        v11 = 32;
      }

      [(RPPeopleDaemon *)v10 _sendCloudIdentityFrameType:v11 destinationID:v9 flags:0 msgCtx:0];
      goto LABEL_37;
    }

    if (dword_1001D4910 > 90 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_37;
    }

LABEL_27:
    sub_1001246B0();
    goto LABEL_37;
  }

  if ([v6 rangeOfString:@"FriendReq" options:9] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "rangeOfString:options:", @"FriendAck", 9) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "rangeOfString:options:", @"FriendUp", 9) != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      if (CFDictionaryGetInt64())
      {
        if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_1001246CC();
        }

        v13 = objc_opt_new();
        [v13 setNonWakingRequest:1];
      }

      else
      {
        if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_1001246E8();
        }

        v13 = 0;
      }

      if ([v6 rangeOfString:@"FriendReq" options:9] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v6 rangeOfString:@"FriendAck" options:9] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v6 rangeOfString:@"FriendUp" options:9] == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_94:

            goto LABEL_37;
          }

          if (dword_1001D4910 > 30)
          {
            v14 = 66;
          }

          else
          {
            if (dword_1001D4910 != -1)
            {
              v14 = 66;
              goto LABEL_67;
            }

            v14 = 66;
            if (_LogCategory_Initialize())
            {
              goto LABEL_67;
            }
          }

LABEL_93:
          [(RPPeopleDaemon *)self _sendCloudIdentityFrameType:v14 destinationID:v9 flags:1 msgCtx:v13, v17];
          goto LABEL_94;
        }

        if (dword_1001D4910 > 30)
        {
          v14 = 65;
          goto LABEL_93;
        }

        if (dword_1001D4910 == -1)
        {
          v14 = 65;
          if (_LogCategory_Initialize())
          {
            goto LABEL_67;
          }

          goto LABEL_93;
        }

        v14 = 65;
      }

      else
      {
        if (dword_1001D4910 > 30)
        {
          v14 = 64;
          goto LABEL_93;
        }

        if (dword_1001D4910 == -1)
        {
          v14 = 64;
          if (_LogCategory_Initialize())
          {
            goto LABEL_67;
          }

          goto LABEL_93;
        }

        v14 = 64;
      }

LABEL_67:
      LogPrintF();
      [(RPPeopleDaemon *)self _sendCloudIdentityFrameType:v14 destinationID:v9 flags:1 msgCtx:v13, v7];
      goto LABEL_94;
    }

    if (dword_1001D4910 > 90 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  if (![v6 caseInsensitiveCompare:@"FamilyClearDates"])
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001247C8();
    }

    familyAccountIdentityMap = self->_familyAccountIdentityMap;
    v16 = &stru_1001AE720;
    goto LABEL_83;
  }

  if (![v6 caseInsensitiveCompare:@"FriendClearDates"])
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001247AC();
    }

    familyAccountIdentityMap = self->_friendAccountIdentityMap;
    v16 = &stru_1001AE740;
LABEL_83:
    [(NSMutableDictionary *)familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v16];
LABEL_84:
    [(RPPeopleDaemon *)self _update];
    goto LABEL_38;
  }

  if (![v6 caseInsensitiveCompare:@"FriendPrivacy"])
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124790();
    }

    [(RPPeopleDaemon *)self _updateFriendPrivacy];
    goto LABEL_38;
  }

  if ([v6 caseInsensitiveCompare:@"FriendSuggest"])
  {
    if ([v6 caseInsensitiveCompare:@"PruneFriends"])
    {
      if (![v6 caseInsensitiveCompare:@"ResetFriends"])
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012473C();
        }

        [(RPPeopleDaemon *)self _resetFriends];
        goto LABEL_38;
      }

      if (![v6 caseInsensitiveCompare:@"RegenerateSelfIdentity"])
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100124720();
        }

        [(RPPeopleDaemon *)self regenerateSelfIdentity:@"dcmd"];
        goto LABEL_38;
      }

      if ([v6 caseInsensitiveCompare:@"update"])
      {
        v8 = 0;
        goto LABEL_39;
      }

      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100124704();
      }

      goto LABEL_84;
    }

    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124758();
    }

    v8 = 1;
    [(RPPeopleDaemon *)self _pruneFriends:1];
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124774();
    }

    v8 = 1;
    self->_friendsSuggestedNeedsUpdate = 1;
    [(RPPeopleDaemon *)self _update];
  }

LABEL_39:

  return v8;
}

- (BOOL)addOrUpdateIdentity:(id)a3 source:(int)a4 error:(id *)a5
{
  v8 = a3;
  if ([v8 type] == 15)
  {
    v9 = [(RPPeopleDaemon *)self addOrUpdateAdHocPairedIdentity:v8 error:a5];
  }

  else
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_100002A3C;
    v51 = sub_1000031B4;
    v52 = 0;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000958AC;
    v43[3] = &unk_1001AE768;
    v45 = &v47;
    v10 = v8;
    v44 = v10;
    v46 = a5;
    v11 = objc_retainBlock(v43);
    v42 = v11;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      v36 = v10;
      LogPrintF();
    }

    v12 = [v10 accountID];
    v13 = v12;
    if (v12 && [v12 length])
    {
      v14 = [v10 idsDeviceID];
      if (v14 && [v10 type] == 6)
      {
        v15 = +[RPIdentityDaemon sharedIdentityDaemon];
        v16 = [v15 sameAccountDeviceIDs];

        v41 = v16;
        v40 = [v16 containsObject:v14];
        if (v40)
        {
          v34 = v48;
          v35 = RPErrorF();
          v18 = v34[5];
          v34[5] = v35;
        }

        else
        {
          v17 = a4;
          v18 = [v10 contactID];
          LODWORD(v37) = a4;
          v39 = [(RPPeopleDaemon *)self _updateFriendIdentityWithAppleID:v13 contactID:v18 sendersKnownAlias:0 userAdded:1 updateDateRequested:1 suggestedContactIDs:0 source:v37];
          v19 = objc_alloc_init(NSMutableDictionary);
          v20 = [v10 deviceIRKData];
          [v19 setObject:v20 forKeyedSubscript:@"_dIRK"];

          v21 = [v10 edPKData];
          [v19 setObject:v21 forKeyedSubscript:@"_edPK"];

          v22 = [v10 featureFlags];
          if (v22)
          {
            v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 featureFlags]);
          }

          else
          {
            v23 = &off_1001B8008;
          }

          [v19 setObject:v23 forKeyedSubscript:@"_ff"];
          if (v22)
          {
          }

          v24 = [v10 sendersKnownAlias];
          LODWORD(v38) = v17;
          v25 = [(RPPeopleDaemon *)self _updateIdentityType:6 idsDeviceID:v14 appleID:v13 contactID:v18 sendersKnownAlias:v24 msg:v19 source:v38]| v39;

          v11 = v42;
          if ((v25 & 0xCA86C) != 0)
          {
            v26 = objc_alloc_init(RPCloudMessageContext);
            v27 = [v10 sendersKnownAlias];
            [(RPCloudMessageContext *)v26 setSendersKnownAlias:v27];

            [(RPPeopleDaemon *)self _sendCloudIdentityFrameType:64 destinationID:v13 flags:1 msgCtx:v26];
          }
        }

        v9 = v40 ^ 1;
        v28 = v41;
      }

      else
      {
        v32 = v48;
        v33 = RPErrorF();
        v9 = 0;
        v28 = v32[5];
        v32[5] = v33;
      }
    }

    else
    {
      v30 = v48;
      v31 = RPErrorF();
      v9 = 0;
      v14 = v30[5];
      v30[5] = v31;
    }

    (v11[2])(v11);
    _Block_object_dispose(&v47, 8);
  }

  return v9;
}

- (BOOL)addOrUpdateAdHocPairedIdentity:(id)a3 error:(id *)a4
{
  v4 = a3;
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001247E4();
  }

  v5 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 addOrUpdateAdHocPairedIdentity:v4];

  return 1;
}

- (void)prefsChanged
{
  v3 = 1;
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass <= 0xB && ((1 << DeviceClass) & 0x80E) != 0 || DeviceClass == 100)
  {
    v3 = 0;
  }

  v83 = 0;
  v5 = [(objc_class *)off_1001D4980() sharedInstance];
  v82 = 0;
  v6 = [v5 isDeviceEnrolledWithDeKOTA:&v82];
  v7 = v82;

  v81 = v7;
  v8 = (v7 == 0) & v6;
  if (self->_prefDisableSelfIdentityRolling != v8)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124824();
    }

    self->_prefDisableSelfIdentityRolling = v8;
  }

  Int64 = CFPrefs_GetInt64();
  if (v83)
  {
    v10 = 600;
  }

  else
  {
    v10 = Int64;
  }

  prefFamilyIdentityPruneSeconds = self->_prefFamilyIdentityPruneSeconds;
  if (v10 != prefFamilyIdentityPruneSeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        prefFamilyIdentityPruneSeconds = self->_prefFamilyIdentityPruneSeconds;
      }

      v78 = *&prefFamilyIdentityPruneSeconds;
      v79 = v10;
      LogPrintF();
    }

LABEL_18:
    self->_prefFamilyIdentityPruneSeconds = v10;
  }

  v12 = CFPrefs_GetInt64();
  if (v83)
  {
    v13 = 604800;
  }

  else
  {
    v13 = v12;
  }

  prefFriendAccountPruneSeconds = self->_prefFriendAccountPruneSeconds;
  if (v13 != prefFriendAccountPruneSeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        prefFriendAccountPruneSeconds = self->_prefFriendAccountPruneSeconds;
      }

      v78 = *&prefFriendAccountPruneSeconds;
      v79 = v13;
      LogPrintF();
    }

LABEL_27:
    self->_prefFriendAccountPruneSeconds = v13;
  }

  v15 = CFPrefs_GetInt64();
  prefFriendRefreshMaxSeconds = self->_prefFriendRefreshMaxSeconds;
  if (v15 == prefFriendRefreshMaxSeconds)
  {
    goto LABEL_34;
  }

  if (dword_1001D4910 <= 30)
  {
    v17 = self->_prefFriendRefreshMaxSeconds;
    if (dword_1001D4910 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_33;
      }

      v17 = self->_prefFriendRefreshMaxSeconds;
    }

    v78 = *&v17;
    v79 = v15;
    LogPrintF();
  }

LABEL_33:
  self->_prefFriendRefreshMaxSeconds = v15;
LABEL_34:
  v18 = CFPrefs_GetInt64();
  prefFriendRefreshMinSeconds = self->_prefFriendRefreshMinSeconds;
  if (v18 != prefFriendRefreshMinSeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        prefFriendRefreshMinSeconds = self->_prefFriendRefreshMinSeconds;
      }

      v78 = *&prefFriendRefreshMinSeconds;
      v79 = v18;
      LogPrintF();
    }

LABEL_41:
    self->_prefFriendRefreshMinSeconds = v18;
    p_prefFriendRefreshSeconds = &self->_prefFriendRefreshSeconds;
    goto LABEL_42;
  }

  p_prefFriendRefreshSeconds = &self->_prefFriendRefreshSeconds;
  if (v15 == prefFriendRefreshMaxSeconds)
  {
    prefFriendRefreshSeconds = self->_prefFriendRefreshSeconds;
    goto LABEL_46;
  }

LABEL_42:
  if (v18 < 1 || v18 >= self->_prefFriendRefreshMaxSeconds)
  {
    prefFriendRefreshSeconds = 0;
  }

  else
  {
    prefFriendRefreshSeconds = arc4random() % (self->_prefFriendRefreshMaxSeconds - self->_prefFriendRefreshMinSeconds + 1) + v18;
  }

LABEL_46:
  v22 = *p_prefFriendRefreshSeconds;
  if (prefFriendRefreshSeconds == *p_prefFriendRefreshSeconds)
  {
    goto LABEL_52;
  }

  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_51;
      }

      v22 = *p_prefFriendRefreshSeconds;
    }

    v78 = *&v22;
    v79 = prefFriendRefreshSeconds;
    LogPrintF();
  }

LABEL_51:
  *p_prefFriendRefreshSeconds = prefFriendRefreshSeconds;
LABEL_52:
  v23 = CFPrefs_GetInt64();
  v24 = v83;
  if (v83)
  {
    v25 = "default";
  }

  else
  {
    v25 = "pref";
  }

  if (v83)
  {
    v26 = v3;
  }

  else
  {
    v26 = 1;
  }

  if (v83)
  {
    v27 = 0;
  }

  else
  {
    v27 = v23;
  }

  if (v83)
  {
    v28 = "disabled";
  }

  else
  {
    v28 = "pref";
  }

  if ((v26 & 1) == 0)
  {
    v29 = v23;
    v30 = +[IDSServerBag sharedInstance];
    v31 = [v30 objectForKey:@"rapport-friend-keys-max-v2"];

    if (v31)
    {
      v28 = "server-v2";
    }

    else
    {
      v32 = +[IDSServerBag sharedInstance];
      v31 = [v32 objectForKey:@"rapport-friend-keys-max"];

      if (!v31)
      {
        v27 = v29;
        v28 = v25;
        goto LABEL_70;
      }

      v28 = "server";
    }

    v27 = CFGetInt64();

LABEL_70:
    v24 = v83;
  }

  v33 = "clamped";
  if ((v27 - 1001) < 0xFFFFFFFFFFFFFC16)
  {
    v34 = 0;
  }

  else
  {
    v33 = v28;
    v34 = v24 == 0;
  }

  if (v34)
  {
    v35 = v27;
  }

  else
  {
    v35 = 32;
  }

  if (!v24)
  {
    v28 = v33;
  }

  *&v36 = self->_prefFriendSuggestMax;
  if (v35 != *&v36)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_84;
        }

        *&v36 = self->_prefFriendSuggestMax;
      }

      v79 = v35;
      v80 = v28;
      v78 = v36;
      LogPrintF();
    }

LABEL_84:
    self->_prefFriendSuggestMax = v35;
  }

  v37 = CFPrefs_GetInt64();
  if ((v37 - 0x80000000) >= 0xFFFFFFFF7FFFFFFFLL && v83 == 0)
  {
    v39 = v37;
  }

  else
  {
    v39 = 3600;
  }

  *&v40 = self->_prefFriendSuggestPollSeconds;
  if (v39 != *&v40)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_96;
        }

        *&v40 = self->_prefFriendSuggestPollSeconds;
      }

      v78 = v40;
      v79 = v39;
      LogPrintF();
    }

LABEL_96:
    self->_prefFriendSuggestPollSeconds = v39;
  }

  v41 = CFPrefs_GetInt64();
  if (v83)
  {
    v42 = v3;
  }

  else
  {
    v42 = 1;
  }

  if (v83)
  {
    v43 = -1;
  }

  else
  {
    v43 = v41;
  }

  if (v83)
  {
    v44 = "disabled";
  }

  else
  {
    v44 = "pref";
  }

  if ((v42 & 1) == 0)
  {
    v45 = v41;
    v46 = +[IDSServerBag sharedInstance];
    v47 = [v46 objectForKey:@"rapport-friend-keys-initial-delay"];

    if (v47)
    {
      v43 = CFGetInt64();
      v44 = "server";
    }

    else
    {
      v44 = "default";
      v43 = v45;
    }
  }

  prefFriendSyncDelaySeconds = self->_prefFriendSyncDelaySeconds;
  if (v43 != prefFriendSyncDelaySeconds)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_116;
        }

        prefFriendSyncDelaySeconds = self->_prefFriendSyncDelaySeconds;
      }

      v79 = v43;
      v80 = v44;
      v78 = *&prefFriendSyncDelaySeconds;
      LogPrintF();
    }

LABEL_116:
    self->_prefFriendSyncDelaySeconds = v43;
  }

  v49 = CFPrefs_GetInt64();
  if (v83)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49 == 0;
  }

  v51 = !v50;
  if (self->_prefPeopleDiscoveryFamily != v51)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012487C();
    }

    self->_prefPeopleDiscoveryFamily = v51;
  }

  v52 = CFPrefs_GetInt64();
  if (v83)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52 == 0;
  }

  v54 = !v53;
  if (self->_prefPeopleDiscoveryFriends != v54)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001248D4();
    }

    self->_prefPeopleDiscoveryFriends = v54;
  }

  CFPrefs_GetDouble();
  if (v83)
  {
    v56 = 300.0;
  }

  else
  {
    v56 = v55;
  }

  prefPrivacyCoalesceMinSecs = self->_prefPrivacyCoalesceMinSecs;
  if (v56 != prefPrivacyCoalesceMinSecs)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_147;
        }

        prefPrivacyCoalesceMinSecs = self->_prefPrivacyCoalesceMinSecs;
      }

      v78 = prefPrivacyCoalesceMinSecs;
      v79 = *&v56;
      LogPrintF();
    }

LABEL_147:
    self->_prefPrivacyCoalesceMinSecs = v56;
  }

  CFPrefs_GetDouble();
  if (v83)
  {
    v59 = 900.0;
  }

  else
  {
    v59 = v58;
  }

  prefPrivacyCoalesceMaxSecs = self->_prefPrivacyCoalesceMaxSecs;
  if (v59 != prefPrivacyCoalesceMaxSecs)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_156;
        }

        prefPrivacyCoalesceMaxSecs = self->_prefPrivacyCoalesceMaxSecs;
      }

      v78 = prefPrivacyCoalesceMaxSecs;
      v79 = *&v59;
      LogPrintF();
    }

LABEL_156:
    self->_prefPrivacyCoalesceMaxSecs = v59;
  }

  CFPrefs_GetDouble();
  v62 = v61;
  if (v83 && GestaltGetBoolean())
  {
    v62 = 2.0;
  }

  prefPTSBurstScanActionSecs = self->_prefPTSBurstScanActionSecs;
  if (v62 != prefPTSBurstScanActionSecs)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_165;
        }

        prefPTSBurstScanActionSecs = self->_prefPTSBurstScanActionSecs;
      }

      v78 = prefPTSBurstScanActionSecs;
      v79 = *&v62;
      LogPrintF();
    }

LABEL_165:
    self->_prefPTSBurstScanActionSecs = v62;
  }

  CFPrefs_GetDouble();
  if (v83)
  {
    v65 = 2.0;
  }

  else
  {
    v65 = v64;
  }

  prefPTSBurstScanInfoSecs = self->_prefPTSBurstScanInfoSecs;
  if (v65 != prefPTSBurstScanInfoSecs)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_174;
        }

        prefPTSBurstScanInfoSecs = self->_prefPTSBurstScanInfoSecs;
      }

      v78 = prefPTSBurstScanInfoSecs;
      v79 = *&v65;
      LogPrintF();
    }

LABEL_174:
    self->_prefPTSBurstScanInfoSecs = v65;
  }

  v67 = CFPrefs_GetInt64();
  v68 = v67 != 0;
  if (v83)
  {
    v69 = v67;
    if (GestaltGetBoolean())
    {
      v70 = 0;
    }

    else
    {
      v70 = v69 == 0;
    }

    v68 = !v70;
  }

  if (self->_prefRanging != v68)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012492C();
    }

    self->_prefRanging = v68;
  }

  v71 = CFPrefs_GetInt64() != 0;
  if (self->_prefPeopleStrangers != v71)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124984();
    }

    self->_prefPeopleStrangers = v71;
  }

  if (CFPrefs_GetInt64())
  {
    v72 = 6;
  }

  else
  {
    v72 = 5;
  }

  if (v83)
  {
    v73 = 0;
  }

  else
  {
    v73 = v72;
  }

  prefTrackWhileAsleepState = self->_prefTrackWhileAsleepState;
  if (v73 != prefTrackWhileAsleepState)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 != -1)
      {
LABEL_201:
        if (prefTrackWhileAsleepState >= 8)
        {
          if (prefTrackWhileAsleepState <= 9)
          {
            *&v75 = COERCE_DOUBLE("?");
          }

          else
          {
            *&v75 = COERCE_DOUBLE("User");
          }
        }

        else
        {
          v75 = (&off_1001AEB50)[prefTrackWhileAsleepState];
        }

        v78 = *&v75;
        v79 = (&off_1001AEB90)[v73];
        LogPrintF();
        goto LABEL_209;
      }

      if (_LogCategory_Initialize())
      {
        prefTrackWhileAsleepState = self->_prefTrackWhileAsleepState;
        goto LABEL_201;
      }
    }

LABEL_209:
    self->_prefTrackWhileAsleepState = v73;
  }

  v76 = CFPrefs_GetInt64() != 0;
  *&v77 = v83;
  if (!v83)
  {
    goto LABEL_216;
  }

  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_215;
      }

      *&v77 = v83;
    }

    v78 = v77;
    LogPrintF();
  }

LABEL_215:
  v76 = 0;
LABEL_216:
  if (self->_prefOneTimeDateRequestedResetCompleted != v76)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001249DC();
    }

    self->_prefOneTimeDateRequestedResetCompleted = v76;
  }

  [(RPPeopleDaemon *)self _update:*&v78];
}

- (void)_update
{
  if ([(NSMutableSet *)self->_discoveryClients count])
  {
    [(RPPeopleDaemon *)self _discoveryEnsureStarted];
  }

  else
  {
    [(RPPeopleDaemon *)self _discoveryEnsureStopped];
  }

  if (self->_prefPeopleDiscoveryFamily && ([(RPPeopleDaemon *)self _primaryAppleID:0], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    [(RPPeopleDaemon *)self _familyEnsureStarted];
  }

  else
  {
    [(RPPeopleDaemon *)self _familyEnsureStopped];
  }

  if (self->_prefPeopleDiscoveryFriends)
  {
    [(RPPeopleDaemon *)self _friendsEnsureStarted];
  }

  else
  {
    [(RPPeopleDaemon *)self _friendsEnsureStopped];
  }

  if ([(CUSystemMonitor *)self->_systemMonitor screenOn])
  {
    if (self->_ptsActive)
    {
      [(RPPeopleDaemon *)self _rangingInitiatorEnsureStarted];
    }

    else
    {
      [(RPPeopleDaemon *)self _rangingInitiatorEnsureStopped];
    }

    if (self->_prefRanging)
    {

      [(RPPeopleDaemon *)self _rangingBLEActionScannerEnsureStarted];
      return;
    }
  }

  else
  {
    [(RPPeopleDaemon *)self _rangingInitiatorEnsureStopped];
  }

  [(RPPeopleDaemon *)self _rangingBLEActionScannerEnsureStopped];
}

- (id)_primaryAppleID:(BOOL)a3
{
  v3 = a3;
  p_primaryAppleIDCached = &self->_primaryAppleIDCached;
  v6 = self->_primaryAppleIDCached;
  v7 = v6;
  if (!v3 && v6)
  {
    v8 = v6;
    goto LABEL_12;
  }

  v9 = [(CUSystemMonitor *)self->_systemMonitor primaryAppleID];
  if (v9)
  {
    v10 = v9;
    v8 = CUNormalizeEmailAddress();
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(p_primaryAppleIDCached, v8);
  if (dword_1001D4910 > 30 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_100124A34();
  if (v3)
  {
LABEL_11:
    [(RPPeopleDaemon *)self _update];
  }

LABEL_12:

  return v8;
}

- (void)regenerateSelfIdentity:(id)a3
{
  v5 = a3;
  *&self->_irkMetrics.selfIdentRolled = vadd_s32(*&self->_irkMetrics.selfIdentRolled, 0x100000001);
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100124A74();
  }

  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v4 regenerateSelfIdentity:v5];

  [(NSMutableDictionary *)self->_familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:&stru_1001AE788];
  [(NSMutableDictionary *)self->_friendAccountIdentityMap enumerateKeysAndObjectsUsingBlock:&stru_1001AE7A8];
  [(RPPeopleDaemon *)self _update];
}

- (void)_discoveryEnsureStarted
{
  deviceDiscovery = self->_deviceDiscovery;
  v4 = &unk_1001D4000;
  if (!deviceDiscovery)
  {
    deviceDiscoveryID = self->_deviceDiscoveryID;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124AB4();
    }

    v6 = objc_alloc_init(NSMutableDictionary);
    discoveredDevices = self->_discoveredDevices;
    self->_discoveredDevices = v6;

    v8 = objc_alloc_init(off_1001D4988());
    v9 = self->_deviceDiscovery;
    self->_deviceDiscovery = v8;

    [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:11];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setPurpose:@"RPPeople"];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:20];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1000972EC;
    v76[3] = &unk_1001AB250;
    v76[4] = self;
    v77 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v76];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100097310;
    v74[3] = &unk_1001AB250;
    v74[4] = self;
    v75 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v74];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_100097334;
    v72[3] = &unk_1001AB278;
    v72[4] = self;
    v73 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v72];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_10009735C;
    v70[3] = &unk_1001AB2A0;
    v70[4] = self;
    v71 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setInterruptionHandler:v70];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000973F4;
    v68[3] = &unk_1001AE7C8;
    v69 = deviceDiscoveryID;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setInvalidationHandler:v68];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v10 = self->_discoveryClients;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v65;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 |= [*(*(&v64 + 1) + 8 * i) discoveryFlags];
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v64 objects:v80 count:16];
    }

    while (v12);

    self->_discoveryFlagsAggregate = v13;
    if ((v13 & 0x5FE) == 2)
    {
      v16 = 1048577;
      goto LABEL_22;
    }
  }

  else
  {

    LOWORD(v13) = 0;
    self->_discoveryFlagsAggregate = 0;
  }

  if ((v13 & 0x5F8) != 0 || (v13 & 6) == 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 33;
  }

LABEL_22:
  v18 = [(SFDeviceDiscovery *)self->_deviceDiscovery discoveryFlags];
  if (v16 != v18)
  {
    if (deviceDiscovery && dword_1001D4910 <= 30 && ((v19 = v18, dword_1001D4910 != -1) || _LogCategory_Initialize()))
    {
      LogPrintF();
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:v16, v19, &unk_100148F00, v16, &unk_100148F00];
    }

    else
    {
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:v16, v50, v51, v52, v53];
    }
  }

  prefTrackWhileAsleepState = self->_prefTrackWhileAsleepState;
  v21 = prefTrackWhileAsleepState == 6;
  if (!prefTrackWhileAsleepState)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v22 = self->_discoveryClients;
    v21 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v60 objects:v79 count:16];
    if (v21)
    {
      v23 = *v61;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(v22);
          }

          if ([*(*(&v60 + 1) + 8 * j) discoveryFlags])
          {
            v21 = 1;
            goto LABEL_40;
          }
        }

        v21 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v60 objects:v79 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:
  }

  if (v21 != [(SFDeviceDiscovery *)self->_deviceDiscovery trackPeers])
  {
    if (deviceDiscovery && dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124AF4();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery setTrackPeers:v21];
  }

  v25 = v21 | ((v13 & 0x200) >> 9);
  if (v25 != [(SFDeviceDiscovery *)self->_deviceDiscovery overrideScreenOff])
  {
    if (deviceDiscovery && dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124B4C();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery setOverrideScreenOff:v25];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v26 = self->_discoveryClients;
  v27 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v56 objects:v78 count:16];
  if (!v27)
  {

    v30 = 0;
LABEL_68:
    v29 = 20;
    goto LABEL_69;
  }

  v28 = v27;
  v54 = deviceDiscovery;
  v29 = 0;
  v30 = 0;
  v31 = *v57;
  do
  {
    for (k = 0; k != v28; k = k + 1)
    {
      if (*v57 != v31)
      {
        objc_enumerationMutation(v26);
      }

      v33 = *(*(&v56 + 1) + 8 * k);
      v34 = [v33 scanRate];
      v35 = [v33 discoveryMode];
      if (v29 <= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v29;
      }

      if (v35 != 1)
      {
        v29 = v36;
      }

      v30 |= v35 == 1;
    }

    v28 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v56 objects:v78 count:16];
  }

  while (v28);

  deviceDiscovery = v54;
  v4 = &unk_1001D4000;
  if (!v29)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (self->_ptsActive == (v30 & 1))
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_86;
  }

  if (deviceDiscovery)
  {
    v37 = v4[580];
    if (v37 <= 30 && (v37 != -1 || _LogCategory_Initialize()))
    {
      sub_100124BA4();
    }
  }

  self->_ptsActive = v30 & 1;
  v38 = [(SFDeviceDiscovery *)self->_deviceDiscovery changeFlags];
  if (v30)
  {
    v39 = 4;
  }

  else
  {
    v39 = 0;
  }

  if ((v38 & 0xFFFFFFFB | v39) != v38)
  {
    [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:?];
  }

  if (v30)
  {
    if (self->_prefPTSBurstScanInfoSecs > 0.0)
    {
      ptsBurstScanTimer = self->_ptsBurstScanTimer;
      if (ptsBurstScanTimer)
      {
        v41 = ptsBurstScanTimer;
        dispatch_source_cancel(v41);
        v42 = self->_ptsBurstScanTimer;
        self->_ptsBurstScanTimer = 0;
      }

      v43 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v44 = self->_ptsBurstScanTimer;
      self->_ptsBurstScanTimer = v43;
      v45 = v43;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100097450;
      handler[3] = &unk_1001AA970;
      handler[4] = self;
      dispatch_source_set_event_handler(v45, handler);
      prefPTSBurstScanInfoSecs = self->_prefPTSBurstScanInfoSecs;
      CUDispatchTimerSet();
      dispatch_activate(v45);
    }

LABEL_86:
    if (self->_ptsBurstScanTimer)
    {
      if (v29 <= 50)
      {
        v29 = 50;
      }
    }

    else
    {
      Boolean = GestaltGetBoolean();
      v48 = 30;
      if (v29 > 30)
      {
        v48 = v29;
      }

      if (Boolean)
      {
        v29 = v48;
      }
    }
  }

LABEL_94:
  v49 = v4[580];
  if (v49 <= 30 && (v49 != -1 || _LogCategory_Initialize()))
  {
    sub_100124BFC();
  }

  if (v29 != [(SFDeviceDiscovery *)self->_deviceDiscovery scanRate])
  {
    [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:v29];
  }

  if (!deviceDiscovery)
  {
    [(SFDeviceDiscovery *)self->_deviceDiscovery activateWithCompletion:&stru_1001AE7E8];
  }
}

- (void)_discoveryEnsureStopped
{
  if (self->_deviceDiscovery)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124D98(self);
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;

    ++self->_deviceDiscoveryID;
    discoveredDevices = self->_discoveredDevices;
    self->_discoveredDevices = 0;

    self->_discoveryFlagsAggregate = 0;
    if (self->_ptsActive)
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100124DDC();
      }

      self->_ptsActive = 0;
    }

    [(NSMutableSet *)self->_rangingCapableDevices removeAllObjects];
    ptsBurstScanTimer = self->_ptsBurstScanTimer;
    if (ptsBurstScanTimer)
    {
      v7 = ptsBurstScanTimer;
      dispatch_source_cancel(v7);
      v6 = self->_ptsBurstScanTimer;
      self->_ptsBurstScanTimer = 0;
    }
  }
}

- (void)_daemonDeviceFound:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];

  if (v6)
  {
    v7 = objc_alloc_init(RPDevice);
    [v7 setIdentifier:v6];
    [v7 updateWithSFDevice:v4 changes:0xFFFFFFFFLL];
    [(NSMutableDictionary *)self->_discoveredDevices setObject:v7 forKeyedSubscript:v6];
    if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124DF8();
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_xpcConnections;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * i) clientDeviceFound:v7 report:{1, v13}];
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [(RPPeopleDaemon *)self _rangingUpdateForDevice:v7];
  }
}

- (void)_daemonDeviceLost:(id)a3
{
  v4 = [a3 identifier];
  v5 = [v4 UUIDString];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:v5];
    if (v6)
    {
      [(NSMutableDictionary *)self->_discoveredDevices setObject:0 forKeyedSubscript:v5];
      if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100124E38();
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = self->_xpcConnections;
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * i) clientDeviceLost:{v6, v12}];
          }

          v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }

      [(RPPeopleDaemon *)self _rangingRemoveDevice:v6];
    }
  }
}

- (void)_daemonDevice:(id)a3 updatedMeasurement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:v8];
    if (v9)
    {
      [v6 setRelativeLocation:v7];
      if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100124E78();
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = self->_xpcConnections;
      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * i) clientDevice:v9 updatedMeasurement:{v7, v15}];
          }

          v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)_familyEnsureStarted
{
  if (!self->_familyMemberMonitor)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124EB8();
    }

    v3 = objc_alloc_init(CUSystemMonitor);
    familyMemberMonitor = self->_familyMemberMonitor;
    self->_familyMemberMonitor = v3;

    [(CUSystemMonitor *)self->_familyMemberMonitor setDispatchQueue:self->_dispatchQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100097FC8;
    v14[3] = &unk_1001AA970;
    v14[4] = self;
    [(CUSystemMonitor *)self->_familyMemberMonitor setFamilyUpdatedHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009801C;
    v13[3] = &unk_1001AA970;
    v13[4] = self;
    [(CUSystemMonitor *)self->_familyMemberMonitor setFirstUnlockHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100098024;
    v12[3] = &unk_1001AA970;
    v12[4] = self;
    [(CUSystemMonitor *)self->_familyMemberMonitor setSystemNameChangedHandler:v12];
    v5 = self->_familyMemberMonitor;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009802C;
    v11[3] = &unk_1001AA970;
    v11[4] = self;
    [(CUSystemMonitor *)v5 activateWithCompletion:v11];
  }

  if (!self->_familySyncCheckTimer)
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    familySyncCheckTimer = self->_familySyncCheckTimer;
    self->_familySyncCheckTimer = v6;

    v8 = self->_familySyncCheckTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100098034;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    v9 = self->_familySyncCheckTimer;
    CUDispatchTimerSet();
    dispatch_activate(self->_familySyncCheckTimer);
  }

  [(RPPeopleDaemon *)self _updateFamilyIdentities];
}

- (void)_familyEnsureStopped
{
  bufferedCloudMessages = self->_bufferedCloudMessages;
  self->_bufferedCloudMessages = 0;

  if (self->_familyMemberMonitor)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124ED4();
    }

    [(CUSystemMonitor *)self->_familyMemberMonitor invalidate];
    familyMemberMonitor = self->_familyMemberMonitor;
    self->_familyMemberMonitor = 0;
  }

  familyNotifyToken = self->_familyNotifyToken;
  if (familyNotifyToken != -1)
  {
    notify_cancel(familyNotifyToken);
    self->_familyNotifyToken = -1;
  }

  [(NSMutableDictionary *)self->_familyAccountIdentityMap removeAllObjects];
  familyAccountIdentityMap = self->_familyAccountIdentityMap;
  self->_familyAccountIdentityMap = 0;

  [(NSMutableDictionary *)self->_familyDeviceIdentityMap removeAllObjects];
  familyDeviceIdentityMap = self->_familyDeviceIdentityMap;
  self->_familyDeviceIdentityMap = 0;

  self->_familyFlags = 0;
  familySyncCheckTimer = self->_familySyncCheckTimer;
  if (familySyncCheckTimer)
  {
    v10 = familySyncCheckTimer;
    dispatch_source_cancel(v10);
    v9 = self->_familySyncCheckTimer;
    self->_familySyncCheckTimer = 0;
  }
}

- (id)getFamilyURIs
{
  v2 = [(CUSystemMonitor *)self->_familyMemberMonitor familyMembers];
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isMe] & 1) == 0)
        {
          v10 = [v9 appleID];

          if (v10)
          {
            v11 = [v9 appleID];
            [v3 addObject:v11];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateFamilyIdentities
{
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v3 = [(RPPeopleDaemon *)self _updateFamilyAccounts];
    v4 = [(RPPeopleDaemon *)self _updateFamilyDevices]+ v3;
    v5 = [(RPPeopleDaemon *)self _pruneFamilyDevices];
    [(RPPeopleDaemon *)self _processBufferedCloudMessages];
    [(RPPeopleDaemon *)self _updateFamilySyncing];
    if (v4 | v5)
    {
      v6 = +[RPDaemon sharedDaemon];
      [v6 postDaemonInfoChanges:2];
    }

    [(RPPeopleDaemon *)self _updateFamilyNotification];
  }

  else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100124EF0();
  }
}

- (BOOL)_updateFamilyAccounts
{
  v26 = [(CUSystemMonitor *)self->_familyMemberMonitor familyMembers];
  if (v26 || (-[NSMutableDictionary allKeys](self->_familyAccountIdentityMap, "allKeys"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    familyAccountIdentityMap = self->_familyAccountIdentityMap;
    if (!familyAccountIdentityMap)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_familyAccountIdentityMap;
      self->_familyAccountIdentityMap = v6;

      v8 = +[RPIdentityDaemon sharedIdentityDaemon];
      v36 = 0;
      v9 = [v8 identitiesOfType:3 error:&v36];
      v25 = v36;

      if (!v9 && dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        v24 = v25;
        LogPrintF();
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v12)
      {
        v13 = *v33;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v32 + 1) + 8 * i);
            v16 = [v15 identifier];
            if (v16)
            {
              [(NSMutableDictionary *)self->_familyAccountIdentityMap setObject:v15 forKeyedSubscript:v16];
              if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
              {
                v24 = v15;
                LogPrintF();
              }

              *(v38 + 24) = 1;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
        }

        while (v12);
      }

      familyAccountIdentityMap = self->_familyAccountIdentityMap;
    }

    [(NSMutableDictionary *)familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:&stru_1001AE808, v24];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v26;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v41 count:16];
    if (v18)
    {
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v28 + 1) + 8 * j);
          if (([v21 isMe] & 1) == 0 && -[RPPeopleDaemon _updateFamilyIdentityWithFamilyMember:](self, "_updateFamilyIdentityWithFamilyMember:", v21))
          {
            *(v38 + 24) = 1;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v28 objects:v41 count:16];
      }

      while (v18);
    }

    v22 = self->_familyAccountIdentityMap;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100098840;
    v27[3] = &unk_1001AE830;
    v27[4] = &v37;
    [(NSMutableDictionary *)v22 enumerateKeysAndObjectsUsingBlock:v27];
    v10 = *(v38 + 24);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124F0C();
    }

    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)_updateFamilyIdentityWithFamilyMember:(id)a3
{
  v4 = a3;
  v5 = [v4 appleID];
  if (v5)
  {
    v6 = CUNormalizeEmailAddress();
    v7 = [(NSMutableDictionary *)self->_familyAccountIdentityMap objectForKeyedSubscript:v6];
    LODWORD(v8) = v7 == 0;
    v9 = v7;
    if (!v7)
    {
      v9 = objc_alloc_init(RPIdentity);
    }

    [v9 setPresent:1];
    v10 = [v9 dateAdded];

    if (!v10)
    {
      v8 = +[NSDate date];
      [v9 setDateAdded:v8];

      LODWORD(v8) = 1;
    }

    v11 = [v9 dateRemoved];

    if (v11)
    {
      [v9 setDateRemoved:0];
      LODWORD(v8) = 1;
    }

    v12 = [v9 identifier];
    v13 = [v12 isEqual:v6];

    if ((v13 & 1) == 0)
    {
      [v9 setIdentifier:v6];
      LODWORD(v8) = 1;
    }

    if ([v9 type] == 3)
    {
      if (v7)
      {
        if (!v8)
        {
          if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100124F68();
          }

          LOBYTE(v8) = 0;
LABEL_33:

          goto LABEL_34;
        }

LABEL_22:
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100124FA8();
        }

        v8 = +[RPIdentityDaemon sharedIdentityDaemon];
        [v8 saveIdentity:v9 error:0];

        LOBYTE(v8) = 1;
        goto LABEL_33;
      }
    }

    else
    {
      [v9 setType:3];
      if (v7)
      {
        goto LABEL_22;
      }

      LOBYTE(v8) = 1;
    }

    familyAccountIdentityMap = self->_familyAccountIdentityMap;
    if (!familyAccountIdentityMap)
    {
      v15 = objc_alloc_init(NSMutableDictionary);
      v16 = self->_familyAccountIdentityMap;
      self->_familyAccountIdentityMap = v15;

      familyAccountIdentityMap = self->_familyAccountIdentityMap;
    }

    [(NSMutableDictionary *)familyAccountIdentityMap setObject:v9 forKeyedSubscript:v6];
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100124FE8();
    }

    v17 = +[RPIdentityDaemon sharedIdentityDaemon];
    [v17 saveIdentity:v9 error:0];

    goto LABEL_33;
  }

  if (dword_1001D4910 <= 50 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100125028();
  }

  LOBYTE(v8) = 0;
LABEL_34:

  return v8;
}

- (BOOL)_updateFamilyDevices
{
  if (self->_familyDeviceIdentityMap)
  {
    return 0;
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  familyDeviceIdentityMap = self->_familyDeviceIdentityMap;
  self->_familyDeviceIdentityMap = v4;

  v6 = +[RPIdentityDaemon sharedIdentityDaemon];
  v23 = 0;
  v7 = [v6 loadFamilyDeviceIdentitiesWithError:&v23];
  v8 = v23;

  if (!v7 && dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100125068();
  }

  v18 = v8;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v2 = 0;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [v14 identifier];
        if (v15)
        {
          [(NSMutableDictionary *)self->_familyDeviceIdentityMap setObject:v14 forKeyedSubscript:v15];
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_1001250A8();
          }

          v2 = 1;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v16 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      v11 = v16;
    }

    while (v16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_pruneFamilyDevices
{
  prefFamilyIdentityPruneSeconds = self->_prefFamilyIdentityPruneSeconds;
  if (prefFamilyIdentityPruneSeconds <= 0)
  {
    if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125128();
    }

    return 0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(NSMutableDictionary *)self->_familyAccountIdentityMap allKeys];
    v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v22 = 0;
      v7 = *v27;
      v21 = v25;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_familyAccountIdentityMap objectForKeyedSubscript:v9, v19, v20, v21];
          v11 = [v10 dateRemoved];
          v12 = v11;
          if (v11)
          {
            [v11 timeIntervalSinceReferenceDate];
            v14 = (Current - v13);
            if (prefFamilyIdentityPruneSeconds <= v14)
            {
              if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
              {
                v19 = v14;
                v20 = v10;
                LogPrintF();
              }

              [(NSMutableDictionary *)self->_familyAccountIdentityMap setObject:0 forKeyedSubscript:v9, v19, v20];
              v15 = +[RPIdentityDaemon sharedIdentityDaemon];
              [v15 removeIdentity:v10 error:0];

              familyDeviceIdentityMap = self->_familyDeviceIdentityMap;
              v24[0] = _NSConcreteStackBlock;
              v24[1] = 3221225472;
              v25[0] = sub_100099178;
              v25[1] = &unk_1001AE858;
              v25[2] = v9;
              v25[3] = v10;
              v25[4] = self;
              [(NSMutableDictionary *)familyDeviceIdentityMap enumerateKeysAndObjectsUsingBlock:v24];
              v22 = 1;
            }

            else if (dword_1001D4910 <= 9 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              v19 = v14;
              v20 = v10;
              LogPrintF();
            }
          }

          else if (dword_1001D4910 <= 8 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_1001250E8();
          }
        }

        v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v6);
    }

    else
    {
      v22 = 0;
    }

    return v22;
  }
}

- (void)_updateFamilySyncing
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 10;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v3 = [(CUSystemMonitor *)self->_familyMemberMonitor systemName];
  if (v3)
  {
    CFStringGetTypeID();
    v4 = CFPrefs_CopyTypedValue();
    v5 = v4;
    v6 = v4 != 0;
    if (v4 && ([v4 isEqual:v3] & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      CFPrefs_SetValue();
    }
  }

  else
  {
    v6 = 0;
  }

  familyAccountIdentityMap = self->_familyAccountIdentityMap;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000995A4;
  v19[3] = &unk_1001AE880;
  v19[6] = &v41;
  v19[7] = &v37;
  v20 = v6;
  v19[8] = &v33;
  v19[9] = &v29;
  v19[4] = v3;
  v19[5] = self;
  v19[10] = &v45;
  v19[11] = &v21;
  v19[12] = &v25;
  [(NSMutableDictionary *)familyAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v19];
  maxNumFamilyDevices = self->_irkMetrics.maxNumFamilyDevices;
  v9 = [(NSMutableDictionary *)self->_familyDeviceIdentityMap count];
  if (maxNumFamilyDevices <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = maxNumFamilyDevices;
  }

  self->_irkMetrics.maxNumFamilyDevices = v10;
  self->_sendIRKMetricsReport = 1;
  if (dword_1001D4910 <= *(v46 + 6))
  {
    if (dword_1001D4910 == -1)
    {
      v11 = *(v46 + 6);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v12 = *(v46 + 6);
    }

    [(NSMutableDictionary *)self->_familyAccountIdentityMap count];
    v17 = *(v26 + 6);
    v18 = *(v22 + 6);
    v15 = *(v34 + 6);
    v16 = *(v30 + 6);
    v13 = *(v42 + 6);
    v14 = *(v38 + 6);
    LogPrintF();
  }

LABEL_15:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
}

- (void)receivedFamilyIdentityRequest:(id)a3 msgCtx:(id)a4
{
  v15 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [v6 appleID];
  v8 = [v6 fromID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v9 = self->_familyAccountIdentityMap;
    v10 = v9;
    if (v9)
    {
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v7];

      if (v11)
      {
        CFStringGetTypeID();
        v12 = CFDictionaryGetTypedValue();
        if (v12)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            HIDWORD(v13) = HIDWORD(v7);
            v14 = v12;
            LogPrintF();
          }

          LODWORD(v13) = 2;
          [(RPPeopleDaemon *)self _updateIdentityType:4 idsDeviceID:v12 appleID:v7 contactID:0 sendersKnownAlias:0 msg:v15 source:v13, v14];
          [(RPPeopleDaemon *)self _sendCloudIdentityFrameType:33 destinationID:v8 flags:0 msgCtx:v6];
        }

        else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012522C();
        }
      }

      else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125248();
      }
    }

    else
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125288();
      }

      [(RPPeopleDaemon *)self _bufferCloudMessage:v15 frameType:32 msgCtx:v6];
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001251EC();
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:v15 frameType:32 msgCtx:v6];
  }
}

- (void)receivedFamilyIdentityResponse:(id)a3 msgCtx:(id)a4
{
  v17 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [v6 appleID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v8 = self->_familyAccountIdentityMap;
    v9 = v8;
    if (v8)
    {
      v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v7];
      if (v10)
      {
        CFStringGetTypeID();
        v11 = CFDictionaryGetTypedValue();
        if (v11)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            v14 = v7;
            v16 = v11;
            LogPrintF();
          }

          v12 = [NSDate date:v14];
          [v10 setDateAcknowledged:v12];

          v13 = +[RPIdentityDaemon sharedIdentityDaemon];
          [v13 saveIdentity:v10 error:0];

          LODWORD(v15) = 2;
          [(RPPeopleDaemon *)self _updateIdentityType:4 idsDeviceID:v11 appleID:v7 contactID:0 sendersKnownAlias:0 msg:v17 source:v15];
        }

        else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125308();
        }
      }

      else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125324();
      }
    }

    else
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125364();
      }

      [(RPPeopleDaemon *)self _bufferCloudMessage:v17 frameType:33 msgCtx:v6];
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001252C8();
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:v17 frameType:33 msgCtx:v6];
  }
}

- (void)receivedFamilyIdentityUpdate:(id)a3 msgCtx:(id)a4
{
  v14 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [v6 appleID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v8 = self->_familyAccountIdentityMap;
    v9 = v8;
    if (v8)
    {
      v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v7];

      if (v10)
      {
        CFStringGetTypeID();
        v11 = CFDictionaryGetTypedValue();
        if (v11)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            HIDWORD(v12) = HIDWORD(v7);
            v13 = v11;
            LogPrintF();
          }

          LODWORD(v12) = 2;
          [(RPPeopleDaemon *)self _updateIdentityType:4 idsDeviceID:v11 appleID:v7 contactID:0 sendersKnownAlias:0 msg:v14 source:v12, v13];
        }

        else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_1001253E4();
        }
      }

      else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125400();
      }
    }

    else
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125440();
      }

      [(RPPeopleDaemon *)self _bufferCloudMessage:v14 frameType:34 msgCtx:v6];
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001253A4();
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:v14 frameType:34 msgCtx:v6];
  }
}

- (void)_updateFamilyNotification
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  if ([(NSMutableDictionary *)self->_familyDeviceIdentityMap count])
  {
    v13[3] |= 2uLL;
  }

  familyDeviceIdentityMap = self->_familyDeviceIdentityMap;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009A2AC;
  v11[3] = &unk_1001AE830;
  v11[4] = &v12;
  [(NSMutableDictionary *)familyDeviceIdentityMap enumerateKeysAndObjectsUsingBlock:v11];
  v4 = v13;
  if (v13[3] != self->_familyFlags)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        v5 = _LogCategory_Initialize();
        v4 = v13;
        if (!v5)
        {
          goto LABEL_8;
        }

        v10 = v13[3];
      }

      LogPrintF();
      v4 = v13;
    }

LABEL_8:
    v6 = v4[3];
    familyNotifyToken = self->_familyNotifyToken;
    p_familyNotifyToken = &self->_familyNotifyToken;
    v7 = familyNotifyToken;
    *(p_familyNotifyToken - 1) = v6;
    if (familyNotifyToken == -1)
    {
      notify_register_check("com.apple.rapport.familyFlagsChanged", p_familyNotifyToken);
      v7 = *p_familyNotifyToken;
      v6 = v13[3];
    }

    notify_set_state(v7, v6);
    notify_post("com.apple.rapport.familyFlagsChanged");
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_friendsEnsureStarted
{
  [(RPPeopleDaemon *)self _friendsUpdateSuggestedIfNeeded];
  [(RPPeopleDaemon *)self _updateFriendIdentities];
  if (!self->_privacyChangedCoalescer && self->_prefPrivacyCoalesceMinSecs > 0.0 && self->_prefPrivacyCoalesceMaxSecs > 0.0)
  {
    v3 = objc_alloc_init(CUCoalescer);
    privacyChangedCoalescer = self->_privacyChangedCoalescer;
    self->_privacyChangedCoalescer = v3;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000978C;
    v7[3] = &unk_1001AA970;
    v7[4] = self;
    [(CUCoalescer *)self->_privacyChangedCoalescer setActionHandler:v7];
    [(CUCoalescer *)self->_privacyChangedCoalescer setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_privacyChangedCoalescer setMinDelay:self->_prefPrivacyCoalesceMinSecs];
    [(CUCoalescer *)self->_privacyChangedCoalescer setMaxDelay:self->_prefPrivacyCoalesceMaxSecs];
  }

  if (self->_privacyChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10009A480;
    v6[3] = &unk_1001AAFE8;
    v6[4] = self;
    notify_register_dispatch("com.apple.sharing.privacy-changed", &self->_privacyChangedNotifyToken, dispatchQueue, v6);
    [(CUCoalescer *)self->_privacyChangedCoalescer trigger];
  }
}

- (void)_friendsEnsureStopped
{
  [(NSMutableDictionary *)self->_friendAccountIdentityMap removeAllObjects];
  friendAccountIdentityMap = self->_friendAccountIdentityMap;
  self->_friendAccountIdentityMap = 0;

  [(NSMutableDictionary *)self->_friendDeviceIdentityMap removeAllObjects];
  friendDeviceIdentityMap = self->_friendDeviceIdentityMap;
  self->_friendDeviceIdentityMap = 0;

  friendsSuggestedArray = self->_friendsSuggestedArray;
  self->_friendsSuggestedArray = 0;

  self->_friendsSuggestedNeedsUpdate = 0;
  friendsSuggestedNotifyToken = self->_friendsSuggestedNotifyToken;
  if (friendsSuggestedNotifyToken != -1)
  {
    notify_cancel(friendsSuggestedNotifyToken);
    self->_friendsSuggestedNotifyToken = -1;
  }

  [(CUCoalescer *)self->_privacyChangedCoalescer invalidate];
  privacyChangedCoalescer = self->_privacyChangedCoalescer;
  self->_privacyChangedCoalescer = 0;

  privacyChangedNotifyToken = self->_privacyChangedNotifyToken;
  if (privacyChangedNotifyToken != -1)
  {
    notify_cancel(privacyChangedNotifyToken);
    self->_privacyChangedNotifyToken = -1;
  }

  friendsSuggestedPollTimer = self->_friendsSuggestedPollTimer;
  if (friendsSuggestedPollTimer)
  {
    v11 = friendsSuggestedPollTimer;
    dispatch_source_cancel(v11);
    v10 = self->_friendsSuggestedPollTimer;
    self->_friendsSuggestedPollTimer = 0;
  }
}

- (void)_friendsUpdateSuggestedIfNeeded
{
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) == 0)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012549C();
    }

    return;
  }

  p_friendsSuggestedNotifyToken = &self->_friendsSuggestedNotifyToken;
  friendsSuggestedNotifyToken = self->_friendsSuggestedNotifyToken;
  prefFriendSuggestMax = self->_prefFriendSuggestMax;
  if (prefFriendSuggestMax < 1)
  {
    if (friendsSuggestedNotifyToken != -1)
    {
      if (dword_1001D4910 > 30)
      {
        goto LABEL_22;
      }

      if (dword_1001D4910 != -1 || _LogCategory_Initialize())
      {
        sub_1001254B8();
      }

      friendsSuggestedNotifyToken = *p_friendsSuggestedNotifyToken;
      if (*p_friendsSuggestedNotifyToken != -1)
      {
LABEL_22:
        notify_cancel(friendsSuggestedNotifyToken);
        *p_friendsSuggestedNotifyToken = -1;
      }
    }

LABEL_23:
    friendsSuggestedPollTimer = self->_friendsSuggestedPollTimer;
    if (!friendsSuggestedPollTimer)
    {
      goto LABEL_31;
    }

    if (dword_1001D4910 >= 31)
    {
      v9 = friendsSuggestedPollTimer;
    }

    else
    {
      if (dword_1001D4910 != -1 || _LogCategory_Initialize())
      {
        sub_1001254F0();
      }

      v9 = self->_friendsSuggestedPollTimer;
      if (!v9)
      {
LABEL_31:
        if (prefFriendSuggestMax < 1)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    dispatch_source_cancel(v9);
    v10 = self->_friendsSuggestedPollTimer;
    self->_friendsSuggestedPollTimer = 0;

    goto LABEL_31;
  }

  if (friendsSuggestedNotifyToken == -1)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001254D4();
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10009AA84;
    handler[3] = &unk_1001AAFE8;
    handler[4] = self;
    notify_register_dispatch("com.apple.PeopleSuggester.ReQuery", &self->_friendsSuggestedNotifyToken, dispatchQueue, handler);
  }

  prefFriendSuggestPollSeconds = self->_prefFriendSuggestPollSeconds;
  if (prefFriendSuggestPollSeconds < 1)
  {
    goto LABEL_23;
  }

  if (!self->_friendsSuggestedPollTimer)
  {
    if (dword_1001D4910 <= 30)
    {
      if (dword_1001D4910 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        prefFriendSuggestPollSeconds = self->_prefFriendSuggestPollSeconds;
      }

      v18 = prefFriendSuggestPollSeconds;
      LogPrintF();
    }

LABEL_34:
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v12 = self->_friendsSuggestedPollTimer;
    self->_friendsSuggestedPollTimer = v11;
    v13 = v11;

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009AB0C;
    v21[3] = &unk_1001AB488;
    v21[4] = v13;
    v21[5] = self;
    dispatch_source_set_event_handler(v13, v21);
    v14 = self->_prefFriendSuggestPollSeconds;
    CUDispatchTimerSet();
    dispatch_activate(v13);
  }

LABEL_35:
  if (!self->_friendsSuggestedGetting && (!self->_friendsSuggestedArray || self->_friendsSuggestedNeedsUpdate))
  {
    v15 = objc_alloc_init(off_1001D4990());
    [v15 setDispatchQueue:self->_dispatchQueue];
    v16 = objc_alloc_init(off_1001D4998());
    [v16 setMaxPeople:self->_prefFriendSuggestMax];
    NSSelectorFromString(@"excludeBackfills");
    if (objc_opt_respondsToSelector())
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125558();
      }

      [v16 setValue:&__kCFBooleanTrue forKey:{@"excludeBackfills", v18}];
    }

    else
    {
      if (dword_1001D4910 > 30)
      {
LABEL_49:
        *&self->_friendsSuggestedGetting = 1;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10009AB9C;
        v19[3] = &unk_1001ACF70;
        v19[4] = self;
        v20 = v15;
        v17 = v15;
        [v17 getPeopleSuggestions:v16 completion:v19];

        return;
      }

      if (dword_1001D4910 != -1 || _LogCategory_Initialize())
      {
        sub_100125524();
      }
    }

    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012558C(&self->_prefFriendSuggestMax);
    }

    goto LABEL_49;
  }
}

- (BOOL)_pruneFriendAccounts:(BOOL)a3
{
  prefFriendAccountPruneSeconds = self->_prefFriendAccountPruneSeconds;
  if (a3 || prefFriendAccountPruneSeconds > 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [(NSMutableDictionary *)self->_friendAccountIdentityMap allKeys];
    v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v6)
    {
      v5 = 0;
      goto LABEL_39;
    }

    v7 = v6;
    v20 = prefFriendAccountPruneSeconds;
    v5 = 0;
    v8 = *v23;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_friendAccountIdentityMap objectForKeyedSubscript:v10, v18, v19];
        if (![v10 length])
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_1001257DC();
          }

LABEL_33:
          [(NSMutableDictionary *)self->_friendAccountIdentityMap setObject:0 forKeyedSubscript:v10, v18, v19];
          v5 = 1;
          self->_needsFriendAccountUpdate = 1;
          v13 = +[RPIdentityDaemon sharedIdentityDaemon];
          [v13 removeIdentity:v11 error:0];
          goto LABEL_34;
        }

        v12 = [v11 dateRemoved];
        if (v12)
        {
          v13 = v12;
          Current = CFAbsoluteTimeGetCurrent();
          [v13 timeIntervalSinceReferenceDate];
          v16 = (Current - v15);
          if (v20 <= v16)
          {
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              v18 = v16;
              v19 = v11;
              LogPrintF();
            }

            goto LABEL_33;
          }

          if (dword_1001D4910 <= 9 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            v18 = v16;
            v19 = v11;
            LogPrintF();
          }

LABEL_34:

          goto LABEL_35;
        }

        if (dword_1001D4910 <= 8 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012579C();
        }

LABEL_35:
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v7)
      {
LABEL_39:

        return v5;
      }
    }
  }

  if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_10012575C();
  }

  return 0;
}

- (BOOL)_pruneFriendDevices
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(NSMutableDictionary *)self->_friendDeviceIdentityMap allKeys];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_friendDeviceIdentityMap objectForKeyedSubscript:v8, v16, v17];
        v10 = [v9 accountID];
        if (v10 && ([(NSMutableDictionary *)self->_friendAccountIdentityMap objectForKeyedSubscript:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v12 = v11;
          if (dword_1001D4910 <= 8 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            v16 = v9;
            v17 = v12;
            LogPrintF();
          }
        }

        else
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_10012581C();
          }

          [(NSMutableDictionary *)self->_friendDeviceIdentityMap setObject:0 forKeyedSubscript:v8];
          v13 = +[RPIdentityDaemon sharedIdentityDaemon];
          [v13 removeIdentity:v9 error:0];

          v12 = 0;
          v5 = 1;
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v14 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      v4 = v14;
    }

    while (v14);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_resetFriends
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [(NSMutableDictionary *)self->_friendAccountIdentityMap allKeys];
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_friendAccountIdentityMap objectForKeyedSubscript:v8];
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012585C();
        }

        [(NSMutableDictionary *)self->_friendAccountIdentityMap setObject:0 forKeyedSubscript:v8];
        self->_needsFriendAccountUpdate = 1;
        v10 = +[RPIdentityDaemon sharedIdentityDaemon];
        [v10 removeIdentity:v9 error:0];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v11 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v5 = v11;
    }

    while (v11);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(NSMutableDictionary *)self->_friendDeviceIdentityMap allKeys];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [(NSMutableDictionary *)self->_friendDeviceIdentityMap objectForKeyedSubscript:v17];
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012589C();
        }

        [(NSMutableDictionary *)self->_friendDeviceIdentityMap setObject:0 forKeyedSubscript:v17];
        v19 = +[RPIdentityDaemon sharedIdentityDaemon];
        [v19 removeIdentity:v18 error:0];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v20 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v14 = v20;
    }

    while (v20);
  }

  [(RPPeopleDaemon *)self _update];
}

- (BOOL)_shouldThrottleFriendSyncing
{
  prefFriendSuggestMax = self->_prefFriendSuggestMax;
  if (prefFriendSuggestMax >= 33 && dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001258DC();
  }

  return prefFriendSuggestMax > 32;
}

- (void)_updateFriendIdentities
{
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v3 = [(RPPeopleDaemon *)self _updateFriendAccounts];
    v4 = [(RPPeopleDaemon *)self _updateFriendDevices]+ v3;
    v5 = [(RPPeopleDaemon *)self _pruneFriends:0];
    [(RPPeopleDaemon *)self _processBufferedCloudMessages];
    [(RPPeopleDaemon *)self _updateFriendSyncing];
    if (v4 | v5)
    {
      v6 = +[RPDaemon sharedDaemon];
      [v6 postDaemonInfoChanges:128];
    }
  }

  else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001258F8();
  }
}

- (BOOL)_updateFriendAccounts
{
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  if (!self->_friendAccountIdentityMap)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    friendAccountIdentityMap = self->_friendAccountIdentityMap;
    self->_friendAccountIdentityMap = v3;

    v5 = +[RPIdentityDaemon sharedIdentityDaemon];
    v65 = 0;
    v6 = [v5 identitiesOfType:5 error:&v65];
    v45 = v65;

    if (!v6 && dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      v38 = v45;
      LogPrintF();
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v8)
    {
      v9 = *v62;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v62 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v61 + 1) + 8 * i);
          v12 = [v11 identifier];
          if (v12)
          {
            [(NSMutableDictionary *)self->_friendAccountIdentityMap setObject:v11 forKeyedSubscript:v12];
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              v38 = v11;
              LogPrintF();
            }

            *(v67 + 24) = 1;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v8);
    }

    self->_needsFriendAccountUpdate = 1;
  }

  v41 = self->_friendsSuggestedArray;
  if (!v41)
  {
    ++self->_irkMetrics.duetNotQueried;
    self->_sendIRKMetricsReport = 1;
    if (dword_1001D4910 > 30 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_73;
    }

LABEL_38:
    LogPrintF();
LABEL_73:
    v36 = *(v67 + 24);
    goto LABEL_74;
  }

  maxNumDuetSuggestions = self->_irkMetrics.maxNumDuetSuggestions;
  v14 = [(NSArray *)self->_friendsSuggestedArray count];
  if (maxNumDuetSuggestions <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = maxNumDuetSuggestions;
  }

  self->_irkMetrics.maxNumDuetSuggestions = v15;
  self->_sendIRKMetricsReport = 1;
  if (!self->_needsFriendAccountUpdate)
  {
    if (dword_1001D4910 > 30 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_73;
    }

    goto LABEL_38;
  }

  if (![(NSArray *)v41 count])
  {
    if (dword_1001D4910 > 30 || dword_1001D4910 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_73;
    }

    goto LABEL_38;
  }

  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_needsFriendAccountUpdate = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v17 = self->_friendAccountIdentityMap;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10009BF68;
  v60[3] = &unk_1001AE8A0;
  *&v60[4] = Current;
  [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v60];
  v18 = [[NSMutableSet alloc] initWithCapacity:{-[NSArray count](v41, "count")}];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v19 = v41;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v20)
  {
    v21 = *v57;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = [*(*(&v56 + 1) + 8 * j) contactID];
        [v18 addObject:v23];
      }

      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v20);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v19;
  v43 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v71 count:16];
  if (v43)
  {
    v39 = 0;
    v42 = *v53;
LABEL_53:
    v24 = 0;
    v46 = v39;
    v39 += v43;
    while (1)
    {
      if (*v53 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v52 + 1) + 8 * v24);
      if (objc_opt_respondsToSelector())
      {
        v26 = [v25 sendersKnownAlias];
        v27 = [v26 _stripFZIDPrefix];
      }

      else
      {
        v27 = 0;
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v28 = [v25 handles];
      v29 = [v28 countByEnumeratingWithState:&v48 objects:v70 count:16];
      v44 = v24;
      if (v29)
      {
        v30 = *v49;
        do
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v48 + 1) + 8 * k);
            v33 = [v25 contactID];
            LODWORD(v38) = 4;
            LODWORD(v32) = [(RPPeopleDaemon *)self _updateFriendIdentityWithAppleID:v32 contactID:v33 sendersKnownAlias:v27 userAdded:0 updateDateRequested:0 suggestedContactIDs:v18 source:?];

            if (v32)
            {
              *(v67 + 24) = 1;
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v48 objects:v70 count:16];
        }

        while (v29);
      }

      v34 = ++v46 < self->_prefFriendSuggestMax;
      if (!v34)
      {
        break;
      }

      v24 = v44 + 1;
      if ((v44 + 1) == v43)
      {
        v43 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v71 count:16];
        if (v43)
        {
          goto LABEL_53;
        }

        break;
      }
    }
  }

  v35 = self->_friendAccountIdentityMap;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10009BFFC;
  v47[3] = &unk_1001AE830;
  v47[4] = &v66;
  [(NSMutableDictionary *)v35 enumerateKeysAndObjectsUsingBlock:v47];
  v36 = *(v67 + 24);

LABEL_74:
  _Block_object_dispose(&v66, 8);
  return v36 & 1;
}

- (unsigned)_updateFriendIdentityWithAppleID:(id)a3 contactID:(id)a4 sendersKnownAlias:(id)a5 userAdded:(BOOL)a6 updateDateRequested:(BOOL)a7 suggestedContactIDs:(id)a8 source:(int)a9
{
  v10 = a7;
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v19 = CUNormalizeEmailAddress();
  v20 = [(RPPeopleDaemon *)self _primaryAppleID:0];
  if ([v20 caseInsensitiveCompare:v19])
  {
    v66 = v11;
    v67 = v20;
    v65 = self;
    v21 = [(NSMutableDictionary *)self->_friendAccountIdentityMap objectForKeyedSubscript:v19];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
    }

    else
    {
      v22 = objc_alloc_init(RPIdentity);
      [v22 setSource:a9];
      v23 = 2048;
    }

    [v22 setPresent:1];
    if ([v16 length])
    {
      v24 = [v22 contactID];
      if ([v24 isEqual:v16])
      {
      }

      else
      {
        v63 = v10;
        v25 = v17;
        v26 = v15;
        v27 = v16;
        v28 = [v22 contactID];
        v29 = [v18 containsObject:v28];

        if (v29)
        {
          v16 = v27;
        }

        else
        {
          v16 = v27;
          [v22 setContactID:v27];
          v23 = v23 | 0x8000;
        }

        v15 = v26;
        v17 = v25;
        v10 = v63;
      }
    }

    v30 = [v22 dateAdded];

    if (!v30)
    {
      v31 = +[NSDate date];
      [v22 setDateAdded:v31];

      v23 = v23 | 2;
    }

    v32 = [v22 dateRemoved];

    if (v32)
    {
      [v22 setDateRemoved:0];
      v23 = v23 | 2;
    }

    if (v10)
    {
      v33 = +[NSDate date];
      [v22 setDateRequested:v33];
    }

    v34 = [v22 identifier];
    v35 = [v34 isEqual:v19];

    if ((v35 & 1) == 0)
    {
      [v22 setIdentifier:v19];
      v23 = v23 | 0x2020;
    }

    v36 = v17;
    if (!v17)
    {
      goto LABEL_45;
    }

    v37 = [v22 allUsedSendersKnownAliases];

    v64 = v16;
    if (!v37)
    {
      v38 = [v22 sendersKnownAlias];

      if (v38)
      {
        v39 = [v22 sendersKnownAlias];
        v68 = v39;
        v40 = [NSArray arrayWithObjects:&v68 count:1];
        [v22 setAllUsedSendersKnownAliases:v40];
      }

      else
      {
        v39 = +[NSArray array];
        [v22 setAllUsedSendersKnownAliases:v39];
      }
    }

    if (![v36 length])
    {
LABEL_45:

      if ([v22 type] != 5)
      {
        [v22 setType:5];
        v23 = v23 | 0x200;
      }

      if (v66 && ([v22 userAdded] & 1) == 0)
      {
        [v22 setUserAdded:1];
        v23 = v23 | 0x4000;
      }

      if ((v23 & 0x800) != 0)
      {
        friendAccountIdentityMap = v65->_friendAccountIdentityMap;
        if (!friendAccountIdentityMap)
        {
          v56 = objc_alloc_init(NSMutableDictionary);
          v57 = v65->_friendAccountIdentityMap;
          v65->_friendAccountIdentityMap = v56;

          friendAccountIdentityMap = v65->_friendAccountIdentityMap;
        }

        [(NSMutableDictionary *)friendAccountIdentityMap setObject:v22 forKeyedSubscript:v19];
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125988();
        }
      }

      else
      {
        if (!v23)
        {
          if (dword_1001D4910 <= 10 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_1001259C8();
          }

          goto LABEL_61;
        }

        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          v61 = v23;
          v62 = &unk_10014907A;
          v60 = v22;
          LogPrintF();
        }
      }

      v58 = [RPIdentityDaemon sharedIdentityDaemon:v60];
      [v58 saveIdentity:v22 error:0];

LABEL_61:
      v20 = v67;
      goto LABEL_62;
    }

    v41 = [v22 sendersKnownAlias];
    v42 = v36;
    v43 = v41;
    v44 = v43;
    if (v43 == v42)
    {

      goto LABEL_38;
    }

    if (v43)
    {
      v45 = [v42 isEqual:v43];

      if (v45)
      {
LABEL_38:
        v46 = [v22 allUsedSendersKnownAliases];
        v47 = [v22 sendersKnownAlias];
        v48 = [v46 containsObject:v47];

        v49 = [(NSMutableDictionary *)v65->_friendDeviceIdentityMap allKeys];
        v50 = [v49 containsObject:v15];

        if ((v48 & 1) == 0 && (v50 & 1) == 0)
        {
          v51 = [v22 allUsedSendersKnownAliases];
          v52 = [NSMutableArray arrayWithArray:v51];

          v53 = [v22 sendersKnownAlias];
          [v52 addObject:v53];

          v54 = [v52 copy];
          [v22 setAllUsedSendersKnownAliases:v54];

          v23 = v23 | 0x1000000;
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            sub_100125954();
          }

          [v22 setDateRequested:0];
        }

        v16 = v64;
        goto LABEL_45;
      }
    }

    else
    {
    }

    [v22 setSendersKnownAlias:v42];
    v23 = v23 | 0x40000;
    goto LABEL_38;
  }

  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100125A08();
  }

  LODWORD(v23) = 0;
LABEL_62:

  return v23;
}

- (BOOL)_updateFriendDevices
{
  v2 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (!self->_friendDeviceIdentityMap)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    friendDeviceIdentityMap = self->_friendDeviceIdentityMap;
    self->_friendDeviceIdentityMap = v4;

    v6 = +[RPIdentityDaemon sharedIdentityDaemon];
    v31 = 0;
    v7 = [v6 loadFriendDeviceIdentitiesWithError:&v31];
    v22 = v31;

    if (!v7 && dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      v21 = v22;
      LogPrintF();
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v9)
    {
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v12 identifier];
          if (v13)
          {
            [(NSMutableDictionary *)self->_friendDeviceIdentityMap setObject:v12 forKeyedSubscript:v13];
            *(v33 + 24) = 1;
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              v21 = v12;
              LogPrintF();
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v9);
    }

    v14 = +[RPIdentityDaemon sharedIdentityDaemon];
    v15 = [v14 sameAccountDeviceIDs];

    v16 = objc_opt_new();
    v17 = [(NSMutableDictionary *)self->_friendDeviceIdentityMap allValues];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10009CBD8;
    v24[3] = &unk_1001AE8C8;
    v18 = v15;
    v25 = v18;
    v19 = v16;
    v26 = v19;
    [v17 enumerateObjectsUsingBlock:v24];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009CC90;
    v23[3] = &unk_1001AE8F0;
    v23[4] = self;
    v23[5] = &v32;
    [v19 enumerateObjectsUsingBlock:v23];

    v2 = *(v33 + 24);
  }

  _Block_object_dispose(&v32, 8);
  return v2 & 1;
}

- (void)_updateFriendPrivacyResults:(id)a3
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v4)
  {
    v20 = 0;
    v5 = 0;
    v6 = *v36;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v9 = [v8 contactID];
        if (!v9)
        {

          goto LABEL_31;
        }

        v29 = 0;
        v30 = &v29;
        v31 = 0x3032000000;
        v32 = sub_100002A3C;
        v33 = sub_1000031B4;
        v34 = 0;
        v23 = 0;
        v24 = &v23;
        v25 = 0x3032000000;
        v26 = sub_100002A3C;
        v27 = sub_1000031B4;
        v28 = 0;
        friendAccountIdentityMap = self->_friendAccountIdentityMap;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10009D34C;
        v22[3] = &unk_1001AE940;
        v22[4] = v9;
        v22[5] = &v29;
        v22[6] = &v23;
        [(NSMutableDictionary *)friendAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v22];
        if (v30[5] && v24[5])
        {
          v11 = [v8 flags];
          if ((v11 & 3) != 0)
          {
            if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
            {
              v18 = v11;
              v19 = &unk_1001491B2;
              v17 = v30[5];
              LogPrintF();
            }

            v12 = [v30[5] dateRequested];

            v13 = v12 != 0;
            [(NSMutableDictionary *)self->_friendAccountIdentityMap setObject:0 forKeyedSubscript:v24[5]];
            self->_needsFriendAccountUpdate = 1;
            v14 = +[RPIdentityDaemon sharedIdentityDaemon];
            [v14 removeIdentity:v30[5] error:0];

            [(RPPeopleDaemon *)self _pruneFriendDevices];
            v20 |= v13;
            v5 = 1;
          }
        }

        else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          v17 = v9;
          LogPrintF();
        }

        _Block_object_dispose(&v23, 8);

        _Block_object_dispose(&v29, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (v5)
    {
      v15 = +[RPDaemon sharedDaemon];
      [v15 postDaemonInfoChanges:128];
    }

    if (v20)
    {
      if (self->_prefDisableSelfIdentityRolling)
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125B6C();
        }
      }

      else
      {
        friendsSuggestedArray = self->_friendsSuggestedArray;
        self->_friendsSuggestedArray = 0;

        [(RPPeopleDaemon *)self regenerateSelfIdentity:@"Friend Blocked/Removed"];
      }
    }
  }

  else
  {
  }

LABEL_31:
}

- (void)_updateFriendSyncing
{
  if (self->_prefFriendSyncDelaySeconds < 0)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125C44();
    }
  }

  else
  {
    CFPrefs_GetDouble();
    if (v3 < 0.0)
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125C28();
      }

      CFAbsoluteTimeGetCurrent();
      goto LABEL_18;
    }

    v4 = v3;
    Current = CFAbsoluteTimeGetCurrent();
    v6 = Current;
    if (v4 > 0.0 && vabdd_f64(v4, Current) > 2592000.0)
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125BE8();
      }

      goto LABEL_18;
    }

    if (v4 == 0.0)
    {
LABEL_18:
      arc4random();
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFPrefs_SetDouble();
      return;
    }

    if (v4 <= Current)
    {
      v7 = [(RPPeopleDaemon *)self _shouldThrottleFriendSyncing];
      v8 = v7;
      if (!v7)
      {
        goto LABEL_33;
      }

      friendRequestMaxReachedLastSeconds = self->_friendRequestMaxReachedLastSeconds;
      if (friendRequestMaxReachedLastSeconds == 0.0)
      {
        CFPrefs_GetDouble();
        self->_friendRequestMaxReachedLastSeconds = friendRequestMaxReachedLastSeconds;
      }

      if (vabdd_f64(v6, friendRequestMaxReachedLastSeconds) < 3300.0)
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125BA0();
        }
      }

      else
      {
LABEL_33:
        v68[0] = 0;
        v68[1] = v68;
        v68[2] = 0x2020000000;
        v69 = 10;
        v64 = 0;
        v65 = &v64;
        v66 = 0x2020000000;
        v67 = 0;
        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        v63 = 0;
        v56 = 0;
        v57 = &v56;
        v58 = 0x2020000000;
        v59 = 0;
        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v55 = 0;
        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v51 = 0;
        v44 = 0;
        v45 = &v44;
        v46 = 0x2020000000;
        v47 = 0;
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 0;
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = 0;
        friendAccountIdentityMap = self->_friendAccountIdentityMap;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10009DB38;
        v26[3] = &unk_1001AE968;
        v26[6] = &v28;
        v26[7] = &v40;
        v26[4] = self;
        v26[5] = &v64;
        v26[8] = &v36;
        v26[9] = &v52;
        v26[10] = &v60;
        v26[11] = &v56;
        v26[12] = v68;
        v26[13] = &v44;
        v26[14] = &v48;
        v26[15] = &v32;
        v27 = v8;
        [(NSMutableDictionary *)friendAccountIdentityMap enumerateKeysAndObjectsUsingBlock:v26, &v28];
        if (*(v29 + 24) == 1)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          self->_friendRequestMaxReachedLastSeconds = CFAbsoluteTimeGetCurrent();
          CFPrefs_SetDouble();
        }

        maxNumFriendAccounts = self->_irkMetrics.maxNumFriendAccounts;
        v12 = [(NSMutableDictionary *)self->_friendAccountIdentityMap count];
        if (maxNumFriendAccounts <= v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = maxNumFriendAccounts;
        }

        self->_irkMetrics.maxNumFriendAccounts = v13;
        maxNumFriendDevices = self->_irkMetrics.maxNumFriendDevices;
        v15 = [(NSMutableDictionary *)self->_friendDeviceIdentityMap count];
        if (maxNumFriendDevices <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = maxNumFriendDevices;
        }

        self->_irkMetrics.maxNumFriendDevices = v16;
        self->_sendIRKMetricsReport = 1;
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          [(NSMutableDictionary *)self->_friendAccountIdentityMap count];
          v24 = *(v45 + 6);
          v25 = *(v41 + 6);
          v22 = *(v53 + 6);
          v23 = *(v49 + 6);
          v20 = *(v33 + 6);
          v21 = *(v57 + 6);
          v18 = *(v61 + 6);
          v19 = *(v37 + 6);
          v17 = *(v65 + 6);
          LogPrintF();
        }

        if (!self->_prefOneTimeDateRequestedResetCompleted)
        {
          if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFPrefs_SetValue();
          self->_prefOneTimeDateRequestedResetCompleted = 1;
        }

        _Block_object_dispose(&v28, 8);
        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(&v36, 8);
        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(&v44, 8);
        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v52, 8);
        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&v60, 8);
        _Block_object_dispose(&v64, 8);
        _Block_object_dispose(v68, 8);
      }
    }

    else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_irkMetricsSetup
{
  self->_irkMetricsReportLock._os_unfair_lock_opaque = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *&self->_irkMetrics.selfIdentRolled = v2;
  *&self->_irkMetrics.requestsSent = v2;
  *&self->_irkMetrics.requestsIgnoredNoIDSDevice = v2;
  *&self->_irkMetrics.maxNumFamilyDevices = -1;
}

- (void)_fetchSameAccountIdentities
{
  v3 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = 0;
  v4 = [v3 identitiesOfType:2 error:&v8];

  maxNumSelfDevices = self->_irkMetrics.maxNumSelfDevices;
  v6 = [v4 count];
  if (maxNumSelfDevices <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = maxNumSelfDevices;
  }

  self->_irkMetrics.maxNumSelfDevices = v7;
  self->_sendIRKMetricsReport = 1;
}

- (void)reportIRKMetrics
{
  [(RPPeopleDaemon *)self _fetchSameAccountIdentities];
  os_unfair_lock_lock(&self->_irkMetricsReportLock);
  if (self->_sendIRKMetricsReport)
  {
    v3 = +[NSMutableDictionary dictionary];
    selfIdentRolled = self->_irkMetrics.selfIdentRolled;
    v28 = v3;
    if ((selfIdentRolled & 0x80000000) == 0)
    {
      v5 = [NSNumber numberWithInt:(selfIdentRolled + 1)];
      [v28 setObject:v5 forKeyedSubscript:@"selfIdentRolled"];
    }

    selfIdentRolledBlocked = self->_irkMetrics.selfIdentRolledBlocked;
    if ((selfIdentRolledBlocked & 0x80000000) == 0)
    {
      v7 = [NSNumber numberWithInt:(selfIdentRolledBlocked + 1)];
      [v28 setObject:v7 forKeyedSubscript:@"selfIdentRolledBlocked"];
    }

    duetNotQueried = self->_irkMetrics.duetNotQueried;
    if ((duetNotQueried & 0x80000000) == 0)
    {
      v9 = [NSNumber numberWithInt:(duetNotQueried + 1)];
      [v28 setObject:v9 forKeyedSubscript:@"duetNotQueried"];
    }

    if ((self->_irkMetrics.maxNumDuetSuggestions & 0x80000000) == 0)
    {
      v10 = [NSNumber numberWithInt:?];
      [v28 setObject:v10 forKeyedSubscript:@"numDuetSuggestions"];
    }

    requestsSent = self->_irkMetrics.requestsSent;
    if ((requestsSent & 0x80000000) == 0)
    {
      v12 = [NSNumber numberWithInt:(requestsSent + 1)];
      [v28 setObject:v12 forKeyedSubscript:@"requestsSent"];
    }

    if ((self->_irkMetrics.maxNumFriendAccounts & 0x80000000) == 0)
    {
      v13 = [NSNumber numberWithInt:?];
      [v28 setObject:v13 forKeyedSubscript:@"numFriendAccounts"];
    }

    if ((self->_irkMetrics.maxNumFriendDevices & 0x80000000) == 0)
    {
      v14 = [NSNumber numberWithInt:?];
      [v28 setObject:v14 forKeyedSubscript:@"numFriendDevices"];
    }

    requestsIgnored = self->_irkMetrics.requestsIgnored;
    if ((requestsIgnored & 0x80000000) == 0)
    {
      v16 = [NSNumber numberWithInt:(requestsIgnored + 1)];
      [v28 setObject:v16 forKeyedSubscript:@"requestsIgnored"];
    }

    requestsIgnoredNoIDSDevice = self->_irkMetrics.requestsIgnoredNoIDSDevice;
    if ((requestsIgnoredNoIDSDevice & 0x80000000) == 0)
    {
      v18 = [NSNumber numberWithInt:(requestsIgnoredNoIDSDevice + 1)];
      [v28 setObject:v18 forKeyedSubscript:@"requestsIgnoredNoIDSDevice"];
    }

    requestsIgnoredSelfIdentReq = self->_irkMetrics.requestsIgnoredSelfIdentReq;
    if ((requestsIgnoredSelfIdentReq & 0x80000000) == 0)
    {
      v20 = [NSNumber numberWithInt:(requestsIgnoredSelfIdentReq + 1)];
      [v28 setObject:v20 forKeyedSubscript:@"requestsIgnoredSelfIdentReq"];
    }

    requestsIgnoredUnknownPeer = self->_irkMetrics.requestsIgnoredUnknownPeer;
    if ((requestsIgnoredUnknownPeer & 0x80000000) == 0)
    {
      v22 = [NSNumber numberWithInt:(requestsIgnoredUnknownPeer + 1)];
      [v28 setObject:v22 forKeyedSubscript:@"requestsIgnoredUnknownPeer"];
    }

    requestsAcked = self->_irkMetrics.requestsAcked;
    if ((requestsAcked & 0x80000000) == 0)
    {
      v24 = [NSNumber numberWithInt:(requestsAcked + 1)];
      [v28 setObject:v24 forKeyedSubscript:@"requestsAcked"];
    }

    if ((self->_irkMetrics.maxNumFamilyDevices & 0x80000000) == 0)
    {
      v25 = [NSNumber numberWithInt:?];
      [v28 setObject:v25 forKeyedSubscript:@"numFamilyDevices"];
    }

    if ((self->_irkMetrics.maxNumSelfDevices & 0x80000000) == 0)
    {
      v26 = [NSNumber numberWithInt:?];
      [v28 setObject:v26 forKeyedSubscript:@"numSelfDevices"];
    }

    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125D20();
    }

    CUMetricsLog();
    *&self->_irkMetrics.maxNumFamilyDevices = -1;
    *&v27 = -1;
    *(&v27 + 1) = -1;
    *&self->_irkMetrics.requestsSent = v27;
    *&self->_irkMetrics.requestsIgnoredNoIDSDevice = v27;
    *&self->_irkMetrics.selfIdentRolled = v27;
    self->_sendIRKMetricsReport = 0;
    os_unfair_lock_unlock(&self->_irkMetricsReportLock);
  }

  else
  {

    os_unfair_lock_unlock(&self->_irkMetricsReportLock);
  }
}

- (void)receivedFriendIdentityRequest:(id)a3 msgCtx:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [v7 appleID];
  v9 = [v7 fromID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      v11 = [(RPPeopleDaemon *)self _primaryAppleID:0];
      if ([v11 caseInsensitiveCompare:v8])
      {
        v12 = objc_alloc_init(off_1001D49A0());
        [v12 setEmailAddress:v8];
        [v12 setPhoneNumber:v8];
        v13 = objc_alloc_init(off_1001D4990());
        [v13 setDispatchQueue:self->_dispatchQueue];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10009E770;
        v15[3] = &unk_1001AE990;
        v16 = v13;
        v17 = self;
        v18 = v8;
        v19 = v10;
        v20 = v7;
        v21 = v6;
        v22 = v9;
        v14 = v13;
        [v14 findContact:v12 completion:v15];
      }

      else
      {
        ++self->_irkMetrics.requestsIgnored;
        ++self->_irkMetrics.requestsIgnoredSelfIdentReq;
        self->_sendIRKMetricsReport = 1;
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125DA0();
        }
      }
    }

    else
    {
      *&self->_irkMetrics.requestsIgnored = vadd_s32(*&self->_irkMetrics.requestsIgnored, 0x100000001);
      self->_sendIRKMetricsReport = 1;
      if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100125DBC();
      }
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125D60();
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:v6 frameType:64 msgCtx:v7];
  }
}

- (void)receivedFriendIdentityResponse:(id)a3 msgCtx:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [v7 appleID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      v10 = self->_friendAccountIdentityMap;
      if (v10)
      {
        v11 = [(RPPeopleDaemon *)self _primaryAppleID:0];
        if ([v11 caseInsensitiveCompare:v8])
        {
          v12 = objc_alloc_init(off_1001D49A0());
          [v12 setEmailAddress:v8];
          [v12 setPhoneNumber:v8];
          v13 = objc_alloc_init(off_1001D4990());
          [v13 setDispatchQueue:self->_dispatchQueue];
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10009EC14;
          v15[3] = &unk_1001AE990;
          v16 = v13;
          v17 = v8;
          v18 = v9;
          v19 = v10;
          v20 = self;
          v21 = v7;
          v22 = v6;
          v14 = v13;
          [v14 findContact:v12 completion:v15];
        }

        else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125E5C();
        }
      }

      else
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125E78();
        }

        [(RPPeopleDaemon *)self _bufferCloudMessage:v6 frameType:65 msgCtx:v7];
      }
    }

    else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125EB8();
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125E1C();
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:v6 frameType:65 msgCtx:v7];
  }
}

- (void)receivedFriendIdentityUpdate:(id)a3 msgCtx:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [v7 appleID];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      v10 = self->_friendAccountIdentityMap;
      if (v10)
      {
        v11 = [(RPPeopleDaemon *)self _primaryAppleID:0];
        if ([v11 caseInsensitiveCompare:v8])
        {
          v12 = objc_alloc_init(off_1001D49A0());
          [v12 setEmailAddress:v8];
          [v12 setPhoneNumber:v8];
          v13 = objc_alloc_init(off_1001D4990());
          [v13 setDispatchQueue:self->_dispatchQueue];
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10009F0E0;
          v15[3] = &unk_1001AE9B8;
          v16 = v13;
          v17 = v8;
          v18 = v9;
          v19 = self;
          v20 = v7;
          v21 = v6;
          v14 = v13;
          [v14 findContact:v12 completion:v15];
        }

        else if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125F9C();
        }
      }

      else
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_100125FB8();
        }

        [(RPPeopleDaemon *)self _bufferCloudMessage:v6 frameType:66 msgCtx:v7];
      }
    }

    else if (dword_1001D4910 <= 60 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125FF8();
    }
  }

  else
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100125F5C();
    }

    [(RPPeopleDaemon *)self _bufferCloudMessage:v6 frameType:66 msgCtx:v7];
  }
}

- (void)sendFriendRequest:(id)a3 nonWakingRequest:(BOOL)a4 sendersKnownAlias:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009F314;
  v13[3] = &unk_1001AE9E0;
  v17 = a4;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(dispatchQueue, v13);
}

- (void)_rangingBLEActionScannerEnsureStarted
{
  if (!self->_rangingBLEActionScanner)
  {
    v24 = v5;
    v25 = v4;
    v26 = v2;
    v27 = v3;
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001260C4();
    }

    v7 = objc_alloc_init(off_1001D4988());
    rangingBLEActionScanner = self->_rangingBLEActionScanner;
    self->_rangingBLEActionScanner = v7;

    [(SFDeviceDiscovery *)v7 setChangeFlags:1];
    [(SFDeviceDiscovery *)v7 setDiscoveryFlags:16];
    [(SFDeviceDiscovery *)v7 setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)v7 setPurpose:@"RPPeople"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009F678;
    v21[3] = &unk_1001AEA08;
    v9 = v7;
    v22 = v9;
    v23 = self;
    [(SFDeviceDiscovery *)v9 setDeviceFoundHandler:v21];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000039D4;
    v18[3] = &unk_1001AEA08;
    v10 = v9;
    v19 = v10;
    v20 = self;
    [(SFDeviceDiscovery *)v10 setDeviceLostHandler:v18];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000F880;
    v15[3] = &unk_1001AEA30;
    v16 = v10;
    v17 = self;
    v11 = v10;
    [(SFDeviceDiscovery *)v11 setDeviceChangedHandler:v15];

    v12 = self->_rangingBLEActionScanner;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009F694;
    v14[3] = &unk_1001AAA40;
    v14[4] = v12;
    v14[5] = self;
    v13 = v12;
    [(SFDeviceDiscovery *)v13 activateWithCompletion:v14];
  }
}

- (void)_rangingBLEActionScannerEnsureStopped
{
  rangingBLEActionBurstTimer = self->_rangingBLEActionBurstTimer;
  if (rangingBLEActionBurstTimer)
  {
    v4 = rangingBLEActionBurstTimer;
    dispatch_source_cancel(v4);
    v5 = self->_rangingBLEActionBurstTimer;
    self->_rangingBLEActionBurstTimer = 0;
  }

  if (self->_rangingBLEActionScanner)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_10012613C();
    }

    [(SFDeviceDiscovery *)self->_rangingBLEActionScanner invalidate];
    rangingBLEActionScanner = self->_rangingBLEActionScanner;
    self->_rangingBLEActionScanner = 0;

    rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
    self->_rangingBLEActionDevicesActive = 0;

    rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
    self->_rangingBLEActionDevicesOther = 0;

    [(RPPeopleDaemon *)self _rangingResponderUpdate];
  }
}

- (void)_rangingBLEActionScannerBurst
{
  if (self->_prefPTSBurstScanActionSecs > 0.0)
  {
    v3 = self->_rangingBLEActionBurstTimer;
    if (v3)
    {
      v4 = v3;
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100126158();
      }

      CUDispatchTimerSet();
    }

    else
    {
      if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
      {
        sub_100126198();
      }

      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      rangingBLEActionBurstTimer = self->_rangingBLEActionBurstTimer;
      self->_rangingBLEActionBurstTimer = v5;

      v7 = _NSConcreteStackBlock;
      v8 = 3221225472;
      v9 = sub_10009F9E8;
      v10 = &unk_1001AB488;
      v4 = v5;
      v11 = v4;
      v12 = self;
      dispatch_source_set_event_handler(v4, &v7);
      CUDispatchTimerSet();
      dispatch_activate(v4);
    }

    if ([(SFDeviceDiscovery *)self->_rangingBLEActionScanner scanRate:v7]!= 30)
    {
      [(SFDeviceDiscovery *)self->_rangingBLEActionScanner setScanRate:30];
    }
  }
}

- (void)_rangingInitiatorEnsureStarted
{
  if (!self->_rangingInitiator)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001261F4();
    }

    v3 = objc_alloc_init(CURangingSession);
    rangingInitiator = self->_rangingInitiator;
    self->_rangingInitiator = v3;
    v5 = v3;

    [(CURangingSession *)v5 setDispatchQueue:self->_dispatchQueue];
    [(CURangingSession *)v5 setLabel:@"RPPeople"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009FD00;
    v13[3] = &unk_1001AEA58;
    v13[4] = v5;
    v13[5] = self;
    [(CURangingSession *)v5 setMeasurementHandlerEx:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009FD20;
    v12[3] = &unk_1001AA970;
    v12[4] = self;
    [(CURangingSession *)v5 setStatusChangedHandler:v12];
    [(CURangingSession *)self->_rangingInitiator activate];
  }

  if (!self->_rangingBLEActionAdvertiser && self->_prefRanging)
  {
    v6 = objc_alloc_init(off_1001D49A8());
    rangingBLEActionAdvertiser = self->_rangingBLEActionAdvertiser;
    self->_rangingBLEActionAdvertiser = v6;

    [(SFService *)v6 setAdvertiseRate:50];
    [(SFService *)v6 setDeviceActionType:53];
    [(SFService *)v6 setDispatchQueue:self->_dispatchQueue];
    [(SFService *)v6 setIdentifier:@"1e270a1a-2920-49b6-b076-4b7914bc85e2"];
    [(SFService *)v6 setLabel:@"RPPeople"];
    [(SFService *)v6 setPairSetupDisabled:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009FD28;
    v9[3] = &unk_1001AAA40;
    v10 = v6;
    v11 = self;
    v8 = v6;
    [(SFService *)v8 activateWithCompletion:v9];
  }
}

- (void)_rangingInitiatorEnsureStopped
{
  if (self->_rangingInitiator)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_100126250();
    }

    [(CURangingSession *)self->_rangingInitiator invalidate];
    rangingInitiator = self->_rangingInitiator;
    self->_rangingInitiator = 0;
  }

  rangingBLEActionAdvertiser = self->_rangingBLEActionAdvertiser;
  if (rangingBLEActionAdvertiser)
  {
    [(SFService *)rangingBLEActionAdvertiser invalidate];
    v5 = self->_rangingBLEActionAdvertiser;
    self->_rangingBLEActionAdvertiser = 0;
  }
}

- (void)_rangingInitiatorHandlePeer:(id)a3 measurement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 deviceAddress];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100002A3C;
  v16 = sub_1000031B4;
  v17 = 0;
  discoveredDevices = self->_discoveredDevices;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100124370;
  v11[3] = &unk_1001AEA80;
  v11[4] = v8;
  v11[5] = &v12;
  [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v11];
  v10 = v13[5];
  if (v10)
  {
    [(RPPeopleDaemon *)self _daemonDevice:v10 updatedMeasurement:v7];
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_rangingInitiatorStatusChanged
{
  v3 = [(CURangingSession *)self->_rangingInitiator statusFlags];
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_10012626C();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_xpcConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * i) clientPeopleStatusChanged:{v3 & 1, v9}];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_rangingResponderEnsureStarted
{
  rangingResponder = self->_rangingResponder;
  if (!rangingResponder)
  {
    if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
    {
      sub_1001262B4();
    }

    v4 = objc_alloc_init(CURangingSession);
    v5 = self->_rangingResponder;
    self->_rangingResponder = v4;
    v6 = v4;

    [(CURangingSession *)v6 setDispatchQueue:self->_dispatchQueue];
    [(CURangingSession *)v6 setFlags:1];
    [(CURangingSession *)v6 setLabel:@"RPPeople"];
  }

  v7 = objc_alloc_init(NSMutableArray);
  rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001243FC;
  v9[3] = &unk_1001AEAA8;
  v9[4] = v7;
  [(NSMutableDictionary *)rangingBLEActionDevicesActive enumerateKeysAndObjectsUsingBlock:v9];
  [(CURangingSession *)self->_rangingResponder setPeers:v7];
  if (!rangingResponder)
  {
    [(CURangingSession *)self->_rangingResponder activate];
  }
}

- (void)_rangingResponderUpdateForAirDropChange
{
  p_airdropMode = &self->_airdropMode;
  airdropMode = self->_airdropMode;
  if (airdropMode == 3)
  {
    if (self->_prefPeopleStrangers)
    {
      v38 = &self->_airdropMode;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v9 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther allKeys];
      v10 = [v9 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v10)
      {
        v11 = v10;
        v8 = 0;
        v12 = *v40;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v39 + 1) + 8 * i);
            v15 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther objectForKeyedSubscript:v14];
            if (([v15 deviceFlags] & 0x444E) == 0)
            {
              [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther setObject:0 forKeyedSubscript:v14];
              rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
              if (!rangingBLEActionDevicesActive)
              {
                v17 = objc_alloc_init(NSMutableDictionary);
                v18 = self->_rangingBLEActionDevicesActive;
                self->_rangingBLEActionDevicesActive = v17;

                rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
              }

              [(NSMutableDictionary *)rangingBLEActionDevicesActive setObject:v15 forKeyedSubscript:v14];
              v8 = 1;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v39 objects:v51 count:16];
        }

        while (v11);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_46;
    }

LABEL_22:
    v38 = &self->_airdropMode;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v19 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive allKeys];
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v20)
    {
      v21 = v20;
      v8 = 0;
      v22 = *v48;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v47 + 1) + 8 * j);
          v25 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive objectForKeyedSubscript:v24];
          if (([v25 deviceFlags] & 0x444E) == 0)
          {
            [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive setObject:0 forKeyedSubscript:v24];
            rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
            if (!rangingBLEActionDevicesOther)
            {
              v27 = objc_alloc_init(NSMutableDictionary);
              v28 = self->_rangingBLEActionDevicesOther;
              self->_rangingBLEActionDevicesOther = v27;

              rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
            }

            [(NSMutableDictionary *)rangingBLEActionDevicesOther setObject:v25 forKeyedSubscript:v24];
            v8 = 1;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v21);
    }

    else
    {
      v8 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther allKeys];
    v29 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v9);
          }

          v33 = *(*(&v43 + 1) + 8 * k);
          v34 = [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther objectForKeyedSubscript:v33];
          if (([v34 deviceFlags] & 0x444E) != 0)
          {
            [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther setObject:0 forKeyedSubscript:v33];
            v35 = self->_rangingBLEActionDevicesActive;
            if (!v35)
            {
              v36 = objc_alloc_init(NSMutableDictionary);
              v37 = self->_rangingBLEActionDevicesActive;
              self->_rangingBLEActionDevicesActive = v36;

              v35 = self->_rangingBLEActionDevicesActive;
            }

            [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v33];
            v8 = 1;
          }
        }

        v30 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v30);
    }

LABEL_46:

    p_airdropMode = v38;
    goto LABEL_47;
  }

  if (airdropMode == 2)
  {
    goto LABEL_22;
  }

  if (airdropMode == 1 && [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive count])
  {
    v5 = self->_rangingBLEActionDevicesOther;
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_rangingBLEActionDevicesOther;
      self->_rangingBLEActionDevicesOther = v6;

      v5 = self->_rangingBLEActionDevicesOther;
    }

    [(NSMutableDictionary *)v5 addEntriesFromDictionary:self->_rangingBLEActionDevicesActive];
    [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive removeAllObjects];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

LABEL_47:
  if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_1001262EC(p_airdropMode, self);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else if ((v8 & 1) == 0)
  {
    return;
  }

  [(RPPeopleDaemon *)self _rangingResponderUpdate];
}

- (void)_rangingRemoveDevice:(id)a3
{
  v4 = [a3 identifier];
  if (v4)
  {
    v8 = v4;
    v5 = [(NSMutableSet *)self->_rangingCapableDevices count];
    [(NSMutableSet *)self->_rangingCapableDevices removeObject:v8];
    v6 = [(NSMutableSet *)self->_rangingCapableDevices count]== 0;
    v4 = v8;
    v7 = !v6;
    if ((((v5 == 0) ^ v7) & 1) == 0)
    {
      [(RPPeopleDaemon *)self _update];
      v4 = v8;
    }
  }
}

- (void)_rangingUpdateForDevice:(id)a3
{
  v16 = a3;
  v4 = [v16 identifier];
  if (v4)
  {
    v5 = [(NSMutableSet *)self->_rangingCapableDevices count];
    if (([v16 flags] & 0x24D) != 0 || (self->_discoveryFlagsAggregate & 0x400) != 0)
    {
      rangingCapableDevices = self->_rangingCapableDevices;
      if (!rangingCapableDevices)
      {
        v7 = objc_alloc_init(NSMutableSet);
        v8 = self->_rangingCapableDevices;
        self->_rangingCapableDevices = v7;

        rangingCapableDevices = self->_rangingCapableDevices;
      }

      [(NSMutableSet *)rangingCapableDevices addObject:v4];
      rangingInitiator = self->_rangingInitiator;
      if (rangingInitiator)
      {
        v10 = rangingInitiator;
        v11 = [v16 bleDevice];
        v12 = [v11 bleDevice];
        v13 = [v12 advertisementFields];
        v14 = objc_alloc_init(CURangingSample);
        [v14 setChannel:CFDictionaryGetInt64Ranged()];
        CFDataGetTypeID();
        [v14 setDeviceAddress:CFDictionaryGetTypedValue()];
        v15 = [v11 model];
        [v14 setDeviceModel:v15];

        [v14 setRawRSSI:{objc_msgSend(v12, "rssi")}];
        [(CURangingSession *)v10 addSample:v14];
      }
    }

    else
    {
      [(NSMutableSet *)self->_rangingCapableDevices removeObject:v4];
    }

    if ((v5 == 0) == ([(NSMutableSet *)self->_rangingCapableDevices count]!= 0))
    {
      [(RPPeopleDaemon *)self _update];
    }
  }
}

- (void)_processBufferedCloudMessages
{
  if ([(CUSystemMonitor *)self->_systemMonitor firstUnlocked])
  {
    if (self->_familyAccountIdentityMap)
    {
      p_bufferedCloudMessages = &self->_bufferedCloudMessages;
      if ([(NSMutableArray *)self->_bufferedCloudMessages count])
      {
        if (dword_1001D4910 <= 30 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
        {
          sub_10012639C(&self->_bufferedCloudMessages);
        }

        v4 = *p_bufferedCloudMessages;
        v5 = *p_bufferedCloudMessages;
        *p_bufferedCloudMessages = 0;

        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = v4;
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v16;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v15 + 1) + 8 * i);
              v12 = [v11 frameType];
              if (v12 > 63)
              {
                switch(v12)
                {
                  case '@':
                    v13 = [v11 message];
                    v14 = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFriendIdentityRequest:v13 msgCtx:v14];
                    goto LABEL_29;
                  case 'A':
                    v13 = [v11 message];
                    v14 = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFriendIdentityResponse:v13 msgCtx:v14];
                    goto LABEL_29;
                  case 'B':
                    v13 = [v11 message];
                    v14 = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFriendIdentityUpdate:v13 msgCtx:v14];
                    goto LABEL_29;
                }
              }

              else
              {
                switch(v12)
                {
                  case ' ':
                    v13 = [v11 message];
                    v14 = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFamilyIdentityRequest:v13 msgCtx:v14];
                    goto LABEL_29;
                  case '!':
                    v13 = [v11 message];
                    v14 = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFamilyIdentityResponse:v13 msgCtx:v14];
                    goto LABEL_29;
                  case '""':
                    v13 = [v11 message];
                    v14 = [v11 msgCtx];
                    [(RPPeopleDaemon *)self receivedFamilyIdentityUpdate:v13 msgCtx:v14];
LABEL_29:

                    continue;
                }
              }

              if (dword_1001D4910 <= 90 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
              {
                sub_1001263E4(v11);
              }
            }

            v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v8);
        }
      }
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPPeopleXPCConnection alloc] initWithDaemon:self xpcCnx:v5];
  [(RPPeopleXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPPeopleXPCDaemonInterface];
  v11 = [NSSet alloc];
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:"xpcPeopleDiscoveryActivate:completion:" argumentIndex:0 ofReply:1];

  [v5 _setQueue:self->_dispatchQueue];
  [v5 setExportedInterface:v10];
  [v5 setExportedObject:v6];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A1E44;
  v16[3] = &unk_1001AB488;
  v16[4] = self;
  v16[5] = v6;
  [v5 setInvalidationHandler:v16];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPPeopleXPCClientInterface];
  [v5 setRemoteObjectInterface:v14];

  [v5 resume];
  if (dword_1001D4910 <= 20 && (dword_1001D4910 != -1 || _LogCategory_Initialize()))
  {
    sub_100126468(v5);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [v5 connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v5];

  [(RPPeopleDaemon *)self _update];
}

- (_TtC8rapportd30RPIdentitySyncSessionTelemetry)sessionTelemetry
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionTelemetry);

  return WeakRetained;
}

- (void)_rangingBLEActionScannerDeviceFound:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (v5 = _LogCategory_Initialize(), v4 = v17, v5))
    {
      v16 = v4;
      LogPrintF();
      v4 = v17;
    }
  }

  v6 = [v4 identifier];
  v7 = [v6 UUIDString];

  if (v7)
  {
    if ([v17 deviceActionType] == 53)
    {
      if (self->_airdropMode != 1 && (([v17 deviceFlags] & 0x444E) != 0 || self->_airdropMode == 3 && self->_prefPeopleStrangers))
      {
        rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
        if (!rangingBLEActionDevicesActive)
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = self->_rangingBLEActionDevicesActive;
          self->_rangingBLEActionDevicesActive = v13;

          rangingBLEActionDevicesActive = self->_rangingBLEActionDevicesActive;
        }

        v15 = [(NSMutableDictionary *)rangingBLEActionDevicesActive objectForKeyedSubscript:v7];

        [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive setObject:v17 forKeyedSubscript:v7];
        if (!v15)
        {
          [(RPPeopleDaemon *)self _rangingBLEActionScannerBurst];
        }

        goto LABEL_13;
      }

      rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
      if (!rangingBLEActionDevicesOther)
      {
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = self->_rangingBLEActionDevicesOther;
        self->_rangingBLEActionDevicesOther = v9;

        rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
      }

      v11 = v17;
    }

    else
    {
      [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive setObject:0 forKeyedSubscript:v7];
      rangingBLEActionDevicesOther = self->_rangingBLEActionDevicesOther;
      v11 = 0;
    }

    [(NSMutableDictionary *)rangingBLEActionDevicesOther setObject:v11 forKeyedSubscript:v7];
LABEL_13:
    [(RPPeopleDaemon *)self _rangingResponderUpdate];
  }
}

- (void)_rangingBLEActionScannerDeviceLost:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (dword_1001D4910 <= 30)
  {
    if (dword_1001D4910 != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
    {
      v8 = v4;
      LogPrintF();
      v4 = v9;
    }
  }

  v6 = [v4 identifier];
  v7 = [v6 UUIDString];

  if (v7)
  {
    [(NSMutableDictionary *)self->_rangingBLEActionDevicesActive setObject:0 forKeyedSubscript:v7];
    [(NSMutableDictionary *)self->_rangingBLEActionDevicesOther setObject:0 forKeyedSubscript:v7];
    [(RPPeopleDaemon *)self _rangingResponderUpdate];
  }
}

@end