@interface CBDaemonXPCConnection
+ (unint64_t)indexForCBApprovedAppID:(id)a3;
- (BOOL)_entitledAndReturnError:(id *)a3;
- (BOOL)_entitledCBAdvertiserAndReturnError:(id)a3 error:(id *)a4;
- (BOOL)_entitledSoftwareUpdateAndReturnError:(id *)a3;
- (id)_spatialInteractionDecodePeerTokenRequest:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (int64_t)_powerStateForClient;
- (unsigned)_softwareUpdateDataArrayCountMaximumLimitForClient;
- (void)_remoteInvalidate;
- (void)_setupWHBTimer;
- (void)_spatialInteractionDeviceFound:(id)a3 checkOnly:(BOOL)a4;
- (void)_spatialInteractionDeviceLost:(id)a3 removeUnmatched:(BOOL)a4 reason:(const char *)a5;
- (void)_spatialInteractionReevaluateDevices;
- (void)_updateDeviceMapSpatialInteractionDeviceTimestampArrayDictionary:(unsigned __int8)a3 device:(id)a4;
- (void)_whbTimerFired;
- (void)_xpcAdvertisingAddressChanged;
- (void)_xpcCBAdvertiserActivate:(id)a3;
- (void)_xpcCBAdvertiserUpdate:(id)a3;
- (void)_xpcCBConnection:(id)a3 pairingCompletedWithDevice:(id)a4 error:(id)a5;
- (void)_xpcCBConnection:(id)a3 pairingPromptWithPairingInfo:(id)a4;
- (void)_xpcCBConnectionActivate:(id)a3;
- (void)_xpcCBConnectionDisconnect:(id)a3;
- (void)_xpcCBConnectionPairingContinue:(id)a3;
- (void)_xpcCBControllerActivate:(id)a3;
- (void)_xpcCBDiscoveryActivate:(id)a3;
- (void)_xpcCBDiscoveryActivateLocal:(id)a3 discovery:(id)a4;
- (void)_xpcCBDiscoveryActivateWHB:(id)a3 discovery:(id)a4;
- (void)_xpcCBDiscoveryClearDuplicateFilterCache:(id)a3;
- (void)_xpcCBDiscoveryFinish:(id)a3;
- (void)_xpcCBDiscoveryGetDevices:(id)a3;
- (void)_xpcCBDiscoveryGetDevicesMatchingProperties:(id)a3;
- (void)_xpcCBDiscoveryInjectAOPBufAdv:(id)a3;
- (void)_xpcCBDiscoveryUpdate:(id)a3;
- (void)_xpcCBSpatialInteractionSessionActivate:(id)a3;
- (void)_xpcCBSpatialInteractionSessionAddPeerToken:(id)a3;
- (void)_xpcCBSpatialInteractionSessionRemovePeerToken:(id)a3;
- (void)_xpcCBSpatialInteractionSessionUpdate:(id)a3;
- (void)_xpcDeleteDevice:(id)a3;
- (void)_xpcDeviceFound:(id)a3;
- (void)_xpcDeviceLost:(id)a3;
- (void)_xpcDevicesBuffered:(id)a3;
- (void)_xpcDiagnosticAdvertiser;
- (void)_xpcDiagnosticAssertion;
- (void)_xpcDiagnosticControl:(id)a3;
- (void)_xpcDiagnosticDiscovery;
- (void)_xpcDiagnosticLog:(id)a3;
- (void)_xpcDiagnosticShow:(id)a3;
- (void)_xpcDiagnosticTipiChanged;
- (void)_xpcDiscoverableStateChanged:(int)a3;
- (void)_xpcGetControllerInfo:(id)a3;
- (void)_xpcGetControllerSettings:(id)a3;
- (void)_xpcGetDevices:(id)a3;
- (void)_xpcGetPowerState:(id)a3;
- (void)_xpcInquiryStateChanged:(int)a3;
- (void)_xpcModifyControllerSettings:(id)a3;
- (void)_xpcModifyDevice:(id)a3;
- (void)_xpcPerformDeviceRequest:(id)a3;
- (void)_xpcPowerStateChanged:(int64_t)a3;
- (void)_xpcReadPrefs:(id)a3;
- (void)_xpcReceivedMessage:(id)a3 remoteDevice:(id)a4;
- (void)_xpcReceivedRelayMessageType:(unsigned __int8)a3 messageData:(id)a4 conduitDevice:(id)a5 sourceDevice:(id)a6;
- (void)_xpcResetCBExtension:(id)a3;
- (void)_xpcSendAudioAccessoryConfigMessage:(id)a3;
- (void)_xpcSendAudioAccessoryEventMessage:(id)a3;
- (void)_xpcSendConversationDetectMessage:(id)a3;
- (void)_xpcSendEvent:(id)a3;
- (void)_xpcSendRelayMessage:(id)a3;
- (void)_xpcSendReply:(id)a3;
- (void)_xpcSendReplyError:(id)a3 request:(id)a4;
- (void)_xpcSendSmartRoutingInformation:(id)a3;
- (void)_xpcSetLowPowerMode:(id)a3;
- (void)_xpcSetPowerState:(id)a3;
- (void)_xpcSpatialInteractionAOPDataReceived:(id)a3;
- (void)_xpcSystemOverrideChanged;
- (void)_xpcTipiChanged:(id)a3;
- (void)_xpcUpdateIdentities:(id)a3;
- (void)_xpcWritePref:(id)a3;
- (void)activate;
- (void)aopMessageReceived:(id)a3;
- (void)invalidate;
- (void)reportDeviceFound:(id)a3;
- (void)reportDeviceLost:(id)a3;
- (void)reportDevicesBuffered:(id)a3;
- (void)whbStop;
- (void)xpcReceivedAudioAccessoryDeviceInfoChange:(id)a3;
- (void)xpcReceivedAudioAccessoryEventType:(unsigned __int8)a3 messageData:(id)a4 sourceDevice:(id)a5;
- (void)xpcReceivedEvent:(id)a3;
- (void)xpcReceivedMessage:(id)a3;
- (void)xpcReceivedRequest:(id)a3;
@end

@implementation CBDaemonXPCConnection

- (void)activate
{
  self->_isHomePod = GestaltGetDeviceClass() == 7;
  if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003DE9C();
  }
}

- (void)invalidate
{
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    xpc_connection_cancel(xpcCnx);
  }

  v4 = self->_activatedAdvertiser;
  if (v4)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    [(CBAdvertiser *)v4 invalidate];
    activatedAdvertiser = self->_activatedAdvertiser;
    self->_activatedAdvertiser = 0;

    [(CBDaemonServer *)self->_daemon scheduleAdvertiserUpdateImmediate:0];
  }

  v6 = self->_activatedConnection;
  if (v6)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    [(CBConnection *)v6 invalidate];
    if (self->_connectionAddedPairingClient)
    {
      v7 = [(CBDaemonServer *)self->_daemon stackController];
      [v7 removePairingClient:v6];

      self->_connectionAddedPairingClient = 0;
    }

    activatedConnection = self->_activatedConnection;
    self->_activatedConnection = 0;
  }

  v9 = self->_activatedController;
  if (v9)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    if (self->_addedDiscoverableController)
    {
      v10 = [(CBDaemonServer *)self->_daemon stackController];
      [v10 removeDiscoverableController:v9];

      self->_addedDiscoverableController = 0;
    }

    [(CBController *)v9 invalidate];
    activatedController = self->_activatedController;
    self->_activatedController = 0;

    [(CBDaemonServer *)self->_daemon scheduleControlUpdateImmediate:0];
  }

  v12 = self->_activatedDiscovery;
  if (v12)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    v13 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v13 reportCBDiscovery:v12 daemonCnx:self action:@"stop"];

    [(CBDiscovery *)v12 invalidate];
    activatedDiscovery = self->_activatedDiscovery;
    self->_activatedDiscovery = 0;

    [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:0];
  }

  v15 = self->_activatedDiscoveryWHB;
  if (v15)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    v16 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v16 reportCBDiscovery:v15 daemonCnx:self action:@"stop"];

    [(CBDiscovery *)v15 invalidate];
    activatedDiscoveryWHB = self->_activatedDiscoveryWHB;
    self->_activatedDiscoveryWHB = 0;

    [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:0];
  }

  if (self->_remoteClient)
  {
    [(CBDaemonXPCConnection *)self _remoteInvalidate];
    [(CBDaemonServer *)self->_daemon scheduleUpdateImmediate:0];
  }

  whbTimer = self->_whbTimer;
  if (whbTimer)
  {
    v19 = whbTimer;
    dispatch_source_cancel(v19);
    v20 = self->_whbTimer;
    self->_whbTimer = 0;
  }

  v21 = self->_activatedSpatialInteractionSession;
  if (v21)
  {
    if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C784(&self->_pid);
    }

    [(CBSpatialInteractionSession *)v21 invalidate];
    activatedSpatialInteractionSession = self->_activatedSpatialInteractionSession;
    self->_activatedSpatialInteractionSession = 0;

    [(CBDaemonServer *)self->_daemon scheduleSpatialUpdateImmediate:0];
  }

  daemon = self->_daemon;

  [(CBDaemonServer *)daemon xpcConnectionInvalidated:self];
}

- (int64_t)_powerStateForClient
{
  v3 = [(CBDaemonServer *)self->_daemon stackController];
  v4 = [v3 powerState];

  if (v4 == 10)
  {
    if (self->_supportsRestrictedMode)
    {
      return 10;
    }

    else if (self->_activatedDiscovery)
    {
      return 5;
    }

    else if (self->_activatedSpatialInteractionSession)
    {
      return 5;
    }

    else
    {
      return 10;
    }
  }

  return v4;
}

- (id)descriptionWithLevel:(int)a3
{
  v3 = a3;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = sub_100042234;
  v107 = sub_1000425AC;
  v108 = 0;
  if (self->_xpcCnx)
  {
    obj = 0;
    v5 = CUPrintPID();
    appID = v5;
    NSAppendPrintF_safe();
    objc_storeStrong(&v108, 0);
    goto LABEL_8;
  }

  xpcToken = self->_xpcToken;
  if (xpcToken)
  {
    v101 = 0;
    appID = xpcToken;
    NSAppendPrintF_safe();
LABEL_5:
    v7 = 0;
    v5 = v108;
    v108 = v7;
    goto LABEL_8;
  }

  remoteDevice = self->_remoteDevice;
  if (!remoteDevice)
  {
    v99 = 0;
    appID = self->_appID;
    NSAppendPrintF_safe();
    goto LABEL_5;
  }

  v100 = 0;
  v5 = [(CBDevice *)remoteDevice identifier];
  appID = v5;
  NSAppendPrintF_safe();
  objc_storeStrong(&v108, 0);
LABEL_8:

  v9 = self->_activatedAdvertiser;
  v10 = v9;
  if (v9)
  {
    v11 = (v104 + 5);
    v98 = v104[5];
    appID = v9;
    NSAppendPrintF_safe();
    objc_storeStrong(v11, v98);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = self->_activatedConnection;
  v14 = v13;
  if (v13)
  {
    v15 = (v104 + 5);
    v97 = v104[5];
    appID = v13;
    NSAppendPrintF_safe();
    objc_storeStrong(v15, v97);
    ++v12;
  }

  v16 = self->_activatedController;
  v17 = v16;
  if (v16)
  {
    v18 = (v104 + 5);
    v96 = v104[5];
    appID = v16;
    NSAppendPrintF_safe();
    objc_storeStrong(v18, v96);
    ++v12;
  }

  v19 = self->_activatedDiscovery;
  v20 = v19;
  if (v19)
  {
    v21 = (v104 + 5);
    v95 = v104[5];
    appID = v19;
    NSAppendPrintF_safe();
    objc_storeStrong(v21, v95);
    ++v12;
  }

  v22 = self->_activatedDiscoveryWHB;
  v23 = v22;
  if (v22)
  {
    v24 = (v104 + 5);
    v94 = v104[5];
    appID = v22;
    NSAppendPrintF_safe();
    objc_storeStrong(v24, v94);
    v12 = 1;
  }

  v25 = self->_activatedSpatialInteractionSession;
  v26 = v25;
  if (v3 <= 0x14u)
  {
    v34 = [(NSMutableArray *)self->_spatialPeers count];
    *(&v71 + 1) = [(NSMutableDictionary *)self->_spatialDeviceMapMatched count];
    *&v71 = [(NSMutableDictionary *)self->_spatialDeviceMapUnmatched count];
    if (v26)
    {
      v35 = v12 == 0;
    }

    else
    {
      v35 = 1;
    }

    v36 = !v35;
    v70 = v36;
    if (v35)
    {
      if (!v26)
      {
        goto LABEL_37;
      }

      v37 = (v104 + 5);
      v89 = v104[5];
      v66 = v26;
      NSAppendPrintF_safe();
      v38 = v89;
    }

    else
    {
      v37 = (v104 + 5);
      v90 = v104[5];
      v66 = v26;
      NSAppendPrintF_safe();
      v38 = v90;
    }

    v39 = v38;
    v40 = *v37;
    *v37 = v39;

LABEL_37:
    if (v34)
    {
      v41 = (v104 + 5);
      v88 = v104[5];
      v66 = v34;
      NSAppendPrintF_safe();
      objc_storeStrong(v41, v88);
      if (v71 == 0)
      {
LABEL_42:
        v43 = (v104 + 5);
        v86 = v104[5];
        NSAppendPrintF_safe();
        objc_storeStrong(v43, v86);
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v73 = self->_spatialPeers;
        v44 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v82 objects:v109 count:16, v66];
        if (v44)
        {
          v45 = *v83;
          do
          {
            for (i = 0; i != v44; i = i + 1)
            {
              v47 = v26;
              if (*v83 != v45)
              {
                objc_enumerationMutation(v73);
              }

              v48 = *(*(&v82 + 1) + 8 * i);
              v49 = (v104 + 5);
              v81 = v104[5];
              v50 = [v48 tokenData];
              v51 = [v48 identifierData];
              v68 = [v48 irkData];
              v69 = [v48 peerID];
              v66 = v50;
              v67 = v51;
              NSAppendPrintF_safe();
              objc_storeStrong(v49, v81);
              v26 = v47;
            }

            v44 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v82 objects:v109 count:16, v50, v51, v68, v69];
          }

          while (v44);
        }

        if (!*(&v71 + 1))
        {
LABEL_54:
          if (!v71)
          {
LABEL_56:
            v55 = 1;
LABEL_61:
            if (v70 && (v57 = [(NSMutableDictionary *)self->_deviceMap count], v58 = self, v57))
            {
              if ((v55 & 1) == 0)
              {
                v59 = (v104 + 5);
                v76 = v104[5];
                NSAppendPrintF_safe();
                objc_storeStrong(v59, v76);
                v58 = self;
              }

              deviceMap = v58->_deviceMap;
              v75[0] = _NSConcreteStackBlock;
              v75[1] = 3221225472;
              v75[2] = sub_100139E04;
              v75[3] = &unk_100AE2000;
              v75[4] = &v103;
              [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v75, v66];
            }

            else if ((v55 & 1) == 0)
            {
              v61 = (v104 + 5);
              v74 = v104[5];
              NSAppendPrintF_safe();
              objc_storeStrong(v61, v74);
            }

            goto LABEL_68;
          }

LABEL_55:
          spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_100139DB4;
          v77[3] = &unk_100AE2000;
          v77[4] = &v103;
          [(NSMutableDictionary *)spatialDeviceMapUnmatched enumerateKeysAndObjectsUsingBlock:v77, v66];
          goto LABEL_56;
        }

LABEL_53:
        spatialDeviceMapMatched = self->_spatialDeviceMapMatched;
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_100139D64;
        v79[3] = &unk_100AE2000;
        v79[4] = &v103;
        [(NSMutableDictionary *)spatialDeviceMapMatched enumerateKeysAndObjectsUsingBlock:v79, v66];
        goto LABEL_54;
      }
    }

    else if (v71 == 0)
    {
      goto LABEL_60;
    }

    v42 = (v104 + 5);
    v87 = v104[5];
    v66 = *(&v71 + 1);
    v67 = v71;
    NSAppendPrintF_safe();
    objc_storeStrong(v42, v87);
    if (v34)
    {
      goto LABEL_42;
    }

    if (*(&v71 + 1))
    {
      v52 = (v104 + 5);
      v80 = v104[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v52, v80);
      goto LABEL_53;
    }

    if (v71)
    {
      v56 = (v104 + 5);
      v78 = v104[5];
      NSAppendPrintF_safe();
      objc_storeStrong(v56, v78);
      goto LABEL_55;
    }

LABEL_60:
    v55 = 0;
    goto LABEL_61;
  }

  if (v25)
  {
    v27 = (v104 + 5);
    v93 = v104[5];
    appID = v25;
    NSAppendPrintF_safe();
    objc_storeStrong(v27, v93);
  }

  v28 = self;
  v29 = [(NSMutableArray *)self->_spatialPeers count];
  if (v29)
  {
    v30 = (v104 + 5);
    v92 = v104[5];
    v65 = v29;
    NSAppendPrintF_safe();
    objc_storeStrong(v30, v92);
    v28 = self;
  }

  v31 = [(NSMutableDictionary *)v28->_spatialDeviceMapMatched count];
  if (v31 | [(NSMutableDictionary *)v28->_spatialDeviceMapUnmatched count])
  {
    v32 = v104;
    v91 = v104[5];
    NSAppendPrintF_safe();
    v33 = v91;
    v26 = v32[5];
    v32[5] = v33;
LABEL_68:
  }

  v62 = v104[5];
  _Block_object_dispose(&v103, 8);

  return v62;
}

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (!self->_entitled)
  {
    v23 = 0u;
    v24 = 0u;
    xpc_connection_get_audit_token();
    v6 = xpc_copy_entitlement_for_token();
    v7 = v6;
    if (v6 && (xpc_dictionary_get_BOOL(v6, "com.apple.bluetooth.system") || xpc_dictionary_get_BOOL(v7, "com.apple.bluetooth.internal")))
    {
      string = xpc_copy_code_signing_identity_for_token();
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10013A1B4;
      v22[3] = &unk_100ADF8F8;
      v22[4] = string;
      v9 = objc_retainBlock(v22);
      if (string || (string = xpc_dictionary_get_string(v7, "application-identifier")) != 0)
      {
        v10 = [NSString stringWithUTF8String:string];
        appID = self->_appID;
        self->_appID = v10;

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      if ([(CBDaemonServer *)self->_daemon prefEnforceApprovedList])
      {
        if (v12)
        {
LABEL_15:
          v16 = CBErrorF();
          if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            v17 = CUPrintPID();
            v21 = CUPrintNSError();
            LogPrintF_safe();
          }

          if (a3)
          {
            v19 = v16;
            *a3 = v16;
          }

          v3 = 0;
LABEL_33:
          (*(v9 + 16))(v9);
          goto LABEL_36;
        }

        v13 = self->_appID;
        v14 = CBGenerateObfuscatedSHA256HashedString();
        v15 = 0;
        while (([v14 isEqualToString:off_100AE18E0[v15]] & 1) == 0)
        {
          if (++v15 == 227)
          {

            goto LABEL_15;
          }
        }
      }

      if ((v12 & 1) == 0 && !strcmp(string, "com.apple.cloudpaird"))
      {
        self->_supportsRestrictedMode = 1;
      }

      v3 = 1;
      self->_entitled = 1;
      goto LABEL_33;
    }

    v9 = CBErrorF();
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C7EC(self);
      if (a3)
      {
        goto LABEL_22;
      }
    }

    else if (a3)
    {
LABEL_22:
      v18 = v9;
      v3 = 0;
      *a3 = v9;
LABEL_36:

      return v3;
    }

    v3 = 0;
    goto LABEL_36;
  }

  return 1;
}

+ (unint64_t)indexForCBApprovedAppID:(id)a3
{
  v3 = CBGenerateObfuscatedSHA256HashedString();
  for (i = 0; i != 227; ++i)
  {
    if ([v3 isEqualToString:off_100AE18E0[i]])
    {
      break;
    }
  }

  return i;
}

- (void)_remoteInvalidate
{
  v3 = self->_remoteClient;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:self->_remoteClientID forKeyedSubscript:@"cid"];
    [v4 setObject:@"Invl" forKeyedSubscript:@"mTyp"];
    remoteAccepted = self->_remoteAccepted;
    v6 = [(NSNumber *)self->_remoteClientID unsignedIntValue];
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C85C();
    }

    v7 = [(CBDevice *)self->_remoteDevice identifier];
    if (!v7)
    {
      sub_10080C89C(v4);
      goto LABEL_8;
    }

    v8 = v7;
    v16 = RPOptionTimeoutSeconds;
    v17 = &off_100B33648;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013A430;
    v13[3] = &unk_100AE2028;
    v14 = v6;
    v15 = remoteAccepted;
    v13[4] = v3;
    [(RPCompanionLinkClient *)v3 sendEventID:@"com.apple.bluetooth.event" event:v4 destinationID:v8 options:v9 completion:v13];
  }

  [(CBDaemonServer *)self->_daemon remoteDeregisterConnection:self];
  self->_remoteAccepted = 0;
  remoteClient = self->_remoteClient;
  self->_remoteClient = 0;

  remoteClientID = self->_remoteClientID;
  self->_remoteClientID = 0;

  remoteDevice = self->_remoteDevice;
  self->_remoteDevice = 0;

LABEL_8:
}

- (void)xpcReceivedMessage:(id)a3
{
  xdict = a3;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_dictionary(xdict, "rmtD");
    if (v6)
    {
      [(CBDaemonXPCConnection *)self _xpcReceivedMessage:xdict remoteDevice:v6];
    }

    else
    {
      [(CBDaemonXPCConnection *)self xpcReceivedRequest:xdict];
    }

    goto LABEL_15;
  }

  v4 = xdict;
  if (xdict == &_xpc_error_connection_invalid)
  {
    if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080C9F0();
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(CBDaemonXPCConnection *)self invalidate];
    goto LABEL_15;
  }

  if (dword_100B510A0 <= 90)
  {
    if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = xdict, v5))
    {
      sub_10080C994();
LABEL_15:
      v4 = xdict;
    }
  }
}

- (void)_xpcReceivedMessage:(id)a3 remoteDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33 = 0;
  v8 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v33];
  v9 = v33;
  if ((v8 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v9 request:v6];
    goto LABEL_37;
  }

  if (!self->_remoteAccepted)
  {
    v11 = self->_remoteClient;
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v10 = objc_alloc_init(RPCompanionLinkClient);
      remoteClient = self->_remoteClient;
      self->_remoteClient = v10;

      [(RPCompanionLinkClient *)v10 setDispatchQueue:self->_dispatchQueue];
      [(RPCompanionLinkClient *)v10 setServiceType:@"com.apple.bluetooth.remote"];
      v32 = v9;
      v34 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        v13 = v34;
      }

      else
      {
        v13 = 0;
      }

      v14 = v32;

      if (v14)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v14 request:v6];
        v9 = v14;
        goto LABEL_36;
      }

      if (!v13)
      {
        sub_10080CC08();
        v9 = 0;
        goto LABEL_36;
      }

      v15 = [NSNumber numberWithUnsignedInt:v13];
      objc_storeStrong(&self->_remoteClientID, v15);
      v31 = 0;
      v16 = [[CBDevice alloc] initWithXPCObject:v7 error:&v31];
      v9 = v31;
      if (!v16)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v9 request:v6];
LABEL_35:

        goto LABEL_36;
      }

      v17 = [v16 identifier];
      if (!v17)
      {
        sub_10080CB98(self, v6, v16, v15);
        goto LABEL_36;
      }

      v18 = v17;
      objc_storeStrong(&self->_remoteDevice, v16);
      [(CBDaemonServer *)self->_daemon remoteRegisterConnection:self clientID:v15];
      v19 = objc_alloc_init(RPCompanionLinkDevice);
      [v19 setIdentifier:v18];
      [(RPCompanionLinkClient *)v10 setDestinationDevice:v19];
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080CA50();
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10013ABCC;
      v27[3] = &unk_100AE2050;
      v10 = v10;
      v28 = v10;
      v29 = self;
      v30 = v18;
      [(RPCompanionLinkClient *)v10 activateWithCompletion:v27];
    }

    v15 = CUXPCCreateCFObjectFromXPCObject();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v15 mutableCopy];
      [v20 setObject:0 forKeyedSubscript:@"rmtD"];
      v35 = RPOptionTimeoutSeconds;
      v36 = &off_100B33648;
      v21 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      if (CUXPCDictionaryExpectsReply())
      {
        if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080CB44();
        }

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10013ACA0;
        v25[3] = &unk_100AE20A0;
        v25[4] = self;
        v26 = v6;
        [(RPCompanionLinkClient *)v10 sendRequestID:@"com.apple.bluetooth.request" request:v20 options:v21 responseHandler:v25];
      }

      else
      {
        v22 = [(CBDevice *)self->_remoteDevice identifier];
        if (v22)
        {
          if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10080CA90();
          }

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10013AE20;
          v23[3] = &unk_100AE04B8;
          v24 = v20;
          [(RPCompanionLinkClient *)v10 sendEventID:@"com.apple.bluetooth.event" event:v24 destinationID:v22 options:v21 completion:v23];
        }

        else
        {
          sub_10080CAE4(dword_100B510A0);
        }
      }
    }

    else
    {
      v20 = CBErrorF();
      [(CBDaemonXPCConnection *)self _xpcSendReplyError:v20 request:v6];
    }

    goto LABEL_35;
  }

  if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080CC5C();
  }

  if (CUXPCDictionaryExpectsReply())
  {
    v10 = CBErrorF();
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v10 request:v6];
LABEL_36:
  }

LABEL_37:
}

- (void)xpcReceivedEvent:(id)a3
{
  xdict = a3;
  if (!self->_remoteDevice || (v4 = xpc_dictionary_get_string(xdict, "mTyp")) == 0)
  {
LABEL_5:
    v6 = self->_activatedConnection;
    if (v6 && (string = xpc_dictionary_get_string(xdict, "mTyp")) != 0 && !strcmp(string, "CnxF"))
    {
      [(CBConnection *)v6 xpcReceivedForwardedEvent:xdict];
    }

    else
    {
      v8 = self->_xpcCnx;
      v9 = v8;
      if (v8)
      {
        xpc_connection_send_message(v8, xdict);
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080CFBC();
      }
    }

    goto LABEL_15;
  }

  v5 = v4;
  if (strcmp(v4, "Invl"))
  {
    if (!strcmp(v5, "DscU"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryUpdate:xdict];
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080CF40(self);
  }

  [(CBDaemonXPCConnection *)self invalidate];
LABEL_15:
}

- (void)xpcReceivedRequest:(id)a3
{
  v7 = a3;
  string = xpc_dictionary_get_string(v7, "mTyp");
  if (string)
  {
    v5 = string;
    if (!strcmp(string, "AdvA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBAdvertiserActivate:v7];
    }

    else if (!strcmp(v5, "AdvU"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBAdvertiserUpdate:v7];
    }

    else if (!strcmp(v5, "CnxA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBConnectionActivate:v7];
    }

    else if (!strcmp(v5, "CnxD"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBConnectionDisconnect:v7];
    }

    else if (!strcmp(v5, "CnPC"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBConnectionPairingContinue:v7];
    }

    else if (!strcmp(v5, "CtrA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBControllerActivate:v7];
    }

    else if (!strcmp(v5, "GCtI"))
    {
      [(CBDaemonXPCConnection *)self _xpcGetControllerInfo:v7];
    }

    else if (!strcmp(v5, "GCtS"))
    {
      [(CBDaemonXPCConnection *)self _xpcGetControllerSettings:v7];
    }

    else if (!strcmp(v5, "MCtS"))
    {
      [(CBDaemonXPCConnection *)self _xpcModifyControllerSettings:v7];
    }

    else if (!strcmp(v5, "GtDv"))
    {
      [(CBDaemonXPCConnection *)self _xpcGetDevices:v7];
    }

    else if (!strcmp(v5, "DltD"))
    {
      [(CBDaemonXPCConnection *)self _xpcDeleteDevice:v7];
    }

    else if (!strcmp(v5, "UpDv"))
    {
      [(CBDaemonXPCConnection *)self _xpcModifyDevice:v7];
    }

    else if (!strcmp(v5, "PfDR"))
    {
      [(CBDaemonXPCConnection *)self _xpcPerformDeviceRequest:v7];
    }

    else if (!strcmp(v5, "DiCt"))
    {
      [(CBDaemonXPCConnection *)self _xpcDiagnosticControl:v7];
    }

    else if (!strcmp(v5, "DiLg"))
    {
      [(CBDaemonXPCConnection *)self _xpcDiagnosticLog:v7];
    }

    else if (!strcmp(v5, "DiSh"))
    {
      [(CBDaemonXPCConnection *)self _xpcDiagnosticShow:v7];
    }

    else if (!strcmp(v5, "LpmS"))
    {
      [(CBDaemonXPCConnection *)self _xpcSetLowPowerMode:v7];
    }

    else if (!strcmp(v5, "PwrG"))
    {
      [(CBDaemonXPCConnection *)self _xpcGetPowerState:v7];
    }

    else if (!strcmp(v5, "PwrS"))
    {
      [(CBDaemonXPCConnection *)self _xpcSetPowerState:v7];
    }

    else if (!strcmp(v5, "RdPf"))
    {
      [(CBDaemonXPCConnection *)self _xpcReadPrefs:v7];
    }

    else if (!strcmp(v5, "WrPf"))
    {
      [(CBDaemonXPCConnection *)self _xpcWritePref:v7];
    }

    else if (!strcmp(v5, "SnAE"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendAudioAccessoryEventMessage:v7];
    }

    else if (!strcmp(v5, "SnAC"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendAudioAccessoryConfigMessage:v7];
    }

    else if (!strcmp(v5, "SnCD"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendConversationDetectMessage:v7];
    }

    else if (!strcmp(v5, "SnRM"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendRelayMessage:v7];
    }

    else if (!strcmp(v5, "SnSR"))
    {
      [(CBDaemonXPCConnection *)self _xpcSendSmartRoutingInformation:v7];
    }

    else if (!strcmp(v5, "RstE"))
    {
      [(CBDaemonXPCConnection *)self _xpcResetCBExtension:v7];
    }

    else if (!strcmp(v5, "UpId"))
    {
      [(CBDaemonXPCConnection *)self _xpcUpdateIdentities:v7];
    }

    else if (!strcmp(v5, "DscA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryActivate:v7];
    }

    else if (!strcmp(v5, "DscF"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryFinish:v7];
    }

    else if (!strcmp(v5, "DscU"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryUpdate:v7];
    }

    else if (!strcmp(v5, "DsCD"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryClearDuplicateFilterCache:v7];
    }

    else if (!strcmp(v5, "DsGD"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryGetDevices:v7];
    }

    else if (!strcmp(v5, "DGDv"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryGetDevicesMatchingProperties:v7];
    }

    else if (!strcmp(v5, "DsIA"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryInjectAOPBufAdv:v7];
    }

    else if (!strcmp(v5, "SpIn"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBSpatialInteractionSessionActivate:v7];
    }

    else if (!strcmp(v5, "SpIU"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBSpatialInteractionSessionUpdate:v7];
    }

    else if (!strcmp(v5, "SpAT"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBSpatialInteractionSessionAddPeerToken:v7];
    }

    else if (!strcmp(v5, "SpRT"))
    {
      [(CBDaemonXPCConnection *)self _xpcCBSpatialInteractionSessionRemovePeerToken:v7];
    }

    else
    {
      if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080CFD8();
      }

      if (CUXPCDictionaryExpectsReply())
      {
LABEL_50:
        v6 = CBErrorF();
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v7];
      }
    }
  }

  else
  {
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080D018();
    }

    if (CUXPCDictionaryExpectsReply())
    {
      goto LABEL_50;
    }
  }
}

- (void)_xpcSendEvent:(id)a3
{
  v4 = a3;
  v5 = self->_xpcCnx;
  v6 = v5;
  if (v5)
  {
    xpc_connection_send_message(v5, v4);
  }

  else
  {
    v7 = self->_remoteClient;
    if (v7)
    {
      v8 = v7;
      v9 = CUXPCCreateCFObjectFromXPCObject();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 mutableCopy];
        string = xpc_dictionary_get_string(v4, "mTyp");
        if (string)
        {
          v12 = string;
          if (!strcmp(string, "DvFo") || !strcmp(v12, "DvLo"))
          {
            [CBDevice convertToWHBEvent:v10];
          }
        }

        [v10 setObject:self->_remoteClientID forKeyedSubscript:@"cid"];
        [v10 setObject:0 forKeyedSubscript:@"rmtD"];
        v13 = [(CBDevice *)self->_remoteDevice identifier];
        if (v13)
        {
          if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10080D094();
          }

          v17 = RPOptionTimeoutSeconds;
          v18 = &off_100B33648;
          v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10013B93C;
          v15[3] = &unk_100AE04B8;
          v16 = v10;
          [(RPCompanionLinkClient *)v8 sendEventID:@"com.apple.bluetooth.event" event:v16 destinationID:v13 options:v14 completion:v15];
        }

        else
        {
          sub_10080D0F0(dword_100B510A0);
        }
      }

      else
      {
        sub_10080D034();
      }
    }

    else
    {
      sub_10080D148();
    }
  }
}

- (void)_xpcSendReply:(id)a3
{
  v4 = a3;
  xpcCnx = self->_xpcCnx;
  v10 = v4;
  if (xpcCnx)
  {
    xpc_connection_send_message(xpcCnx, v4);
  }

  else
  {
    v6 = CUXPCObjectGetResponseHandler();
    if (v6)
    {
      v7 = v6;
      v8 = CUXPCCreateCFObjectFromXPCObject();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080D280();
        }

        (v7)[2](v7, v8, 0, 0);
      }

      else
      {
        v9 = CBErrorF();
        if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080D224();
        }

        (v7)[2](v7, 0, 0, v9);
      }
    }

    else
    {
      sub_10080D2DC();
    }
  }
}

- (void)_xpcSendReplyError:(id)a3 request:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = CUXPCDictionaryCreateReply();
  if (v7)
  {
    CUXPCEncodeNSError();
    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      xpc_connection_send_message(xpcCnx, v7);
    }

    else
    {
      v9 = CUXPCObjectGetResponseHandler();
      if (v9)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080D33C();
        }

        (v9)[2](v9, 0, 0, v10);
      }

      else
      {
        sub_10080D398(dword_100B510A0);
      }
    }
  }

  else
  {
    sub_10080D3F0();
  }
}

- (BOOL)_entitledSoftwareUpdateAndReturnError:(id *)a3
{
  xpc_connection_get_audit_token();
  v5 = xpc_copy_entitlement_for_token();
  v6 = v5;
  if (!v5 || !xpc_dictionary_get_BOOL(v5, "com.apple.bluetooth.softwareupdate"))
  {
    self->_entitled = 0;
    v8 = CBErrorF();
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080D450(self);
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else if (!a3)
    {
LABEL_9:

      v7 = 0;
      goto LABEL_10;
    }

    v9 = v8;
    *a3 = v8;
    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)_entitledCBAdvertiserAndReturnError:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 safetyAlertsSignature];
  if (v7)
  {

LABEL_4:
    xpc_connection_get_audit_token();
    v9 = xpc_copy_entitlement_for_token();
    v10 = v9;
    if (v9 && xpc_dictionary_get_BOOL(v9, "com.apple.bluetooth.safetyalerts"))
    {

      goto LABEL_7;
    }

    self->_entitled = 0;
    v12 = CBErrorF();
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080D4C0(self);
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else if (!a4)
    {
LABEL_13:

      v11 = 0;
      goto LABEL_14;
    }

    v13 = v12;
    *a4 = v12;
    goto LABEL_13;
  }

  v8 = [v6 safetyAlertsAlertData];

  if (v8)
  {
    goto LABEL_4;
  }

LABEL_7:
  v11 = 1;
LABEL_14:

  return v11;
}

- (unsigned)_softwareUpdateDataArrayCountMaximumLimitForClient
{
  v2 = [(CBDaemonServer *)self->_daemon stackController];
  v3 = [v2 softwareUpdateAdvertisingInstanceLimit];

  return v3;
}

- (void)_xpcCBAdvertiserActivate:(id)a3
{
  v4 = a3;
  v48[0] = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:v48];
  v6 = v48[0];
  if ((v5 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v4];
    goto LABEL_37;
  }

  v47 = v6;
  v7 = [[CBAdvertiser alloc] initWithXPCObject:v4 error:&v47];
  v8 = v47;

  if (v7)
  {
    v46 = v8;
    v9 = [(CBDaemonXPCConnection *)self _entitledCBAdvertiserAndReturnError:v7 error:&v46];
    v10 = v46;

    if ((v9 & 1) == 0)
    {
      [(CBDaemonXPCConnection *)self _xpcSendReplyError:v10 request:v4];
      v8 = v10;
      goto LABEL_36;
    }

    if (![v7 softwareUpdateActionType])
    {
      v11 = [v7 softwareUpdateDataArray];
      v12 = [v11 count];

      if (!v12)
      {
        v8 = v10;
LABEL_7:
        objc_storeStrong(&self->_activatedAdvertiser, v7);
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080D530(self);
        }

        [(CBDaemonServer *)self->_daemon scheduleAdvertiserUpdateImmediate:1];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10013C390;
        v44[3] = &unk_100ADF590;
        v44[4] = v7;
        v44[5] = self;
        [v7 setBluetoothStateChangedHandler:v44];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10013C3E8;
        v43[3] = &unk_100ADF590;
        v43[4] = v7;
        v43[5] = self;
        [v7 setAdvertisingAddressChangedHandler:v43];
        v14 = CUXPCDictionaryCreateReply();
        if (v14)
        {
          v41 = v8;
          v42 = v4;
          v15 = [(CBDaemonServer *)self->_daemon addressMonitor];
          v16 = [v15 connectableAddressData];

          [v7 setAdvertisingAddressDataConnectable:v16];
          if (v16)
          {
            v17 = v16;
            v18 = v14;
            v19 = v16;
            v20 = [v19 bytes];
            if (v20)
            {
              v21 = v20;
            }

            else
            {
              v21 = "";
            }

            v22 = [v19 length];

            xpc_dictionary_set_data(v18, "aaCN", v21, v22);
          }

          v23 = [(CBDaemonServer *)self->_daemon addressMonitor];
          v24 = [v23 nonConnectableAddressData];

          [v7 setAdvertisingAddressDataNonConnectable:v24];
          if (v24)
          {
            v25 = v24;
            v26 = v14;
            v27 = v24;
            v28 = [v27 bytes];
            if (v28)
            {
              v29 = v28;
            }

            else
            {
              v29 = "";
            }

            v30 = [v27 length];

            xpc_dictionary_set_data(v26, "aaNC", v29, v30);
          }

          v31 = [(CBDaemonServer *)self->_daemon addressMonitor];
          v32 = [v31 nonConnectableSecondaryAddressData];

          [v7 setAdvertisingAddressDataNonConnectableSecondary:v32];
          if (v32)
          {
            v33 = v32;
            v34 = v14;
            v35 = v32;
            v36 = [v35 bytes];
            if (v36)
            {
              v37 = v36;
            }

            else
            {
              v37 = "";
            }

            v38 = [v35 length];

            xpc_dictionary_set_data(v34, "aaNC2", v37, v38);
          }

          v39 = [(CBDaemonXPCConnection *)self _softwareUpdateDataArrayCountMaximumLimitForClient];
          if (v39)
          {
            xpc_dictionary_set_int64(v14, "aSuda", v39);
          }

          v40 = [(CBDaemonXPCConnection *)self _powerStateForClient];
          v8 = v41;
          if (v40)
          {
            xpc_dictionary_set_int64(v14, "pwrS", v40);
          }

          [(CBDaemonXPCConnection *)self _xpcSendReply:v14];

          v4 = v42;
        }

        else
        {
          sub_10080D588();
        }

        goto LABEL_36;
      }
    }

    v45 = v10;
    v13 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v45];
    v8 = v45;

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080D5F0();
  }

  [(CBDaemonXPCConnection *)self _xpcSendReplyError:v8 request:v4];
LABEL_36:

  v6 = v8;
LABEL_37:
}

- (void)_xpcCBAdvertiserUpdate:(id)a3
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100042234;
  v35 = sub_1000425AC;
  v36 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10013C9E0;
  v28[3] = &unk_100AE0380;
  v30 = &v31;
  v28[4] = self;
  v4 = a3;
  v29 = v4;
  v5 = objc_retainBlock(v28);
  v6 = (v32 + 5);
  obj = v32[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [CBAdvertiser alloc];
    v9 = (v32 + 5);
    v26 = v32[5];
    v10 = [v8 initWithXPCObject:v4 error:&v26];
    objc_storeStrong(v9, v26);
    if (v10)
    {
      v11 = (v32 + 5);
      v25 = v32[5];
      v12 = [(CBDaemonXPCConnection *)self _entitledCBAdvertiserAndReturnError:v10 error:&v25];
      objc_storeStrong(v11, v25);
      if (!v12)
      {
        goto LABEL_16;
      }

      if ([v10 softwareUpdateActionType] || (objc_msgSend(v10, "softwareUpdateDataArray"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14))
      {
        v15 = (v32 + 5);
        v24 = v32[5];
        v16 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v24];
        objc_storeStrong(v15, v24);
        if (!v16)
        {
          goto LABEL_16;
        }
      }

      v17 = self->_activatedAdvertiser;
      v18 = v17;
      if (v17)
      {
        v19 = [(CBAdvertiser *)v17 updateWithCBAdvertiser:v10];
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v23 = CUPrintPID();
          LogPrintF_safe();
        }

        if (!v19)
        {
          goto LABEL_15;
        }

        [(CBDaemonServer *)self->_daemon scheduleAdvertiserUpdateImmediate:0];
        v20 = +[CBMetricsDaemon sharedCBMetricsDaemon];
        [v20 reportxpcCBAdvertiserUpdate:v10];
      }

      else
      {
        v22 = CBErrorF();
        v20 = v32[5];
        v32[5] = v22;
      }
    }

    else
    {
      v21 = CBErrorF();
      v18 = v32[5];
      v32[5] = v21;
    }

LABEL_15:

LABEL_16:
  }

  (v5[2])(v5);

  _Block_object_dispose(&v31, 8);
}

- (void)_xpcCBConnectionActivate:(id)a3
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100042234;
  v54 = sub_1000425AC;
  v55 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10013D0C0;
  v47[3] = &unk_100AE0380;
  v49 = &v50;
  v47[4] = self;
  v4 = a3;
  v48 = v4;
  v5 = objc_retainBlock(v47);
  v6 = v51;
  v46 = v51[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v46];
  objc_storeStrong(v6 + 5, v46);
  if (v7)
  {
    if (self->_activatedConnection)
    {
      v29 = CBErrorF();
      v10 = v51[5];
      v51[5] = v29;
      goto LABEL_27;
    }

    v8 = [CBConnection alloc];
    v9 = v51;
    v45 = v51[5];
    v10 = [v8 initWithXPCObject:v4 error:&v45];
    objc_storeStrong(v9 + 5, v45);
    if (!v10)
    {
LABEL_27:

      goto LABEL_28;
    }

    [v10 setDispatchQueue:self->_dispatchQueue];
    v11 = [v10 peerDevice];
    if (!v11)
    {
      v30 = CBErrorF();
      v31 = v51[5];
      v51[5] = v30;

      goto LABEL_26;
    }

    if ([v10 useCase] == 720897)
    {
      v12 = v51;
      v44 = v51[5];
      v13 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v44];
      objc_storeStrong(v12 + 5, v44);
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    if (([v10 internalFlags] & 0x100) != 0)
    {
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10013D19C;
      v43[3] = &unk_100AE20C8;
      v43[4] = v10;
      v43[5] = self;
      [v10 setPairingCompletedHandler:v43];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10013D1BC;
      v42[3] = &unk_100AE20F0;
      v42[4] = v10;
      v42[5] = self;
      [v10 setPairingPromptHandler:v42];
      v14 = [(CBDaemonServer *)self->_daemon stackController];
      v15 = v51;
      obj = v51[5];
      v16 = [v14 addPairingClient:v10 error:&obj];
      objc_storeStrong(v15 + 5, obj);

      if ((v16 & 1) == 0)
      {
LABEL_26:

        goto LABEL_27;
      }

      self->_connectionAddedPairingClient = 1;
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10013D1D8;
    v40[3] = &unk_100AE0130;
    v40[4] = v10;
    v40[5] = self;
    [v10 setXpcSendEventHandler:v40];
    objc_storeStrong(&self->_activatedConnection, v10);
    v17 = self->_appID;
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v33 = CUPrintPID();
      v34 = v17;
      v32 = v10;
      LogPrintF_safe();
    }

    v18 = [v10 clientBundleID];
    v19 = [v18 length];

    if (!v19)
    {
      [v10 setClientBundleID:v17];
    }

    v20 = [v10 serviceFlags];
    if (v20)
    {
      v21 = [v10 connectionFlags];
      daemon = self->_daemon;
      if ((v21 & 2) == 0)
      {
        v23 = [(CBDaemonServer *)daemon stackController];
        v24 = v51;
        v37 = v51[5];
        v25 = [v23 connectDevice:v11 connectionFlags:v21 serviceFlags:v20 error:&v37];
        objc_storeStrong(v24 + 5, v37);

        if (v25)
        {
          v26 = CUXPCDictionaryCreateReply();
          [(CBDaemonXPCConnection *)self _xpcSendReply:v26];
        }

        goto LABEL_25;
      }

      v28 = [(CBDaemonServer *)daemon stackController];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10013D1F4;
      v38[3] = &unk_100AE2050;
      v38[4] = v10;
      v38[5] = self;
      v39 = v4;
      [v28 connectWithCBConnection:v10 completionHandler:v38];

      v27 = v39;
    }

    else
    {
      if (self->_remoteClient)
      {
        [v10 setInternalFlags:{objc_msgSend(v10, "internalFlags") | 0x20}];
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10013D2EC;
      v35[3] = &unk_100AE2050;
      v35[4] = v10;
      v35[5] = self;
      v36 = v4;
      [v10 activateWithCompletion:v35];
      v27 = v36;
    }

LABEL_25:
    goto LABEL_26;
  }

LABEL_28:
  (v5[2])(v5);

  _Block_object_dispose(&v50, 8);
}

- (void)_xpcCBConnectionDisconnect:(id)a3
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100042234;
  v30 = sub_1000425AC;
  v31 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10013D740;
  v23[3] = &unk_100AE0380;
  v25 = &v26;
  v23[4] = self;
  v4 = a3;
  v24 = v4;
  v5 = objc_retainBlock(v23);
  v6 = (v27 + 5);
  obj = v27[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [CBConnection alloc];
    v9 = (v27 + 5);
    v21 = v27[5];
    v10 = [v8 initWithXPCObject:v4 error:&v21];
    objc_storeStrong(v9, v21);
    if (!v10)
    {
LABEL_14:

      goto LABEL_15;
    }

    v11 = [v10 peerDevice];
    if (v11 && (v12 = [v10 serviceFlags], v12))
    {
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        CUPrintFlags32();
        v19 = v18 = v11;
        LogPrintF_safe();
      }

      v13 = [(CBDaemonServer *)self->_daemon stackController:v18];
      v14 = (v27 + 5);
      v20 = v27[5];
      v15 = [v13 disconnectDevice:v11 serviceFlags:v12 error:&v20];
      objc_storeStrong(v14, v20);

      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      v16 = CUXPCDictionaryCreateReply();
      if (v16)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReply:v16];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      v17 = CBErrorF();
      v16 = v27[5];
      v27[5] = v17;
    }

LABEL_13:
    goto LABEL_14;
  }

LABEL_15:
  (v5[2])(v5);

  _Block_object_dispose(&v26, 8);
}

- (void)_xpcCBConnection:(id)a3 pairingCompletedWithDevice:(id)a4 error:(id)a5
{
  v9 = a5;
  v7 = a4;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "mTyp", "PrCm");
  CUXPCEncodeObject();

  if (v9)
  {
    CUXPCEncodeNSError();
  }

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v8];
}

- (void)_xpcCBConnection:(id)a3 pairingPromptWithPairingInfo:(id)a4
{
  v5 = a4;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "mTyp", "PrPm");
  CUXPCEncodeObject();

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v6];
}

- (void)_xpcCBConnectionPairingContinue:(id)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100042234;
  v24 = sub_1000425AC;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10013DCF8;
  v17[3] = &unk_100AE0380;
  v19 = &v20;
  v17[4] = self;
  v4 = a3;
  v18 = v4;
  v5 = objc_retainBlock(v17);
  v6 = (v21 + 5);
  obj = v21[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = self->_activatedConnection;
    if (v8)
    {
      v15 = 0;
      objc_opt_class();
      v9 = (v21 + 5);
      v14 = v21[5];
      CUXPCDecodeObject();
      objc_storeStrong(v9, v14);
      if (!v21[5])
      {
        v12 = CBErrorF();
        v13 = v21[5];
        v21[5] = v12;
      }
    }

    else
    {
      v10 = CBErrorF();
      v11 = v21[5];
      v21[5] = v10;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v20, 8);
}

- (void)_xpcCBControllerActivate:(id)a3
{
  v4 = a3;
  v22 = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v22];
  v6 = v22;
  if (v5)
  {
    v21 = v6;
    v7 = [[CBController alloc] initWithXPCObject:v4 error:&v21];
    v8 = v21;

    if (v7)
    {
      [v7 setAppID:self->_appID];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10013E1BC;
      v20[3] = &unk_100ADF590;
      v20[4] = v7;
      v20[5] = self;
      [v7 setBluetoothStateChangedHandler:v20];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10013E214;
      v19[3] = &unk_100ADF590;
      v19[4] = v7;
      v19[5] = self;
      [v7 setDiscoverableStateChangedHandler:v19];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10013E28C;
      v18[3] = &unk_100ADF590;
      v18[4] = v7;
      v18[5] = self;
      [v7 setInquiryStateChangedHandler:v18];
      if (([v7 internalFlags] & 0x40) != 0)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10013E304;
        v17[3] = &unk_100AE0180;
        v17[4] = v7;
        v17[5] = self;
        [v7 setRelayMessageHandler:v17];
      }

      if (([v7 internalFlags] & 0x200) != 0)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10013E32C;
        v16[3] = &unk_100ADF718;
        v16[4] = v7;
        v16[5] = self;
        [v7 setTipiChangedHandler:v16];
      }

      objc_storeStrong(&self->_activatedController, v7);
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080D79C(self);
      }

      [(CBDaemonServer *)self->_daemon scheduleControlUpdateImmediate:0];
      v9 = CUXPCDictionaryCreateReply();
      if (v9)
      {
        v10 = [(CBDaemonServer *)self->_daemon stackController];
        v11 = [v10 discoverableState];
        if (v11)
        {
          xpc_dictionary_set_int64(v9, "dsSt", v11);
        }

        v12 = [(CBDaemonServer *)self->_daemon stackController];
        v13 = [v12 inquiryState];
        if (v13)
        {
          xpc_dictionary_set_int64(v9, "inqS", v13);
        }

        v14 = [(CBDaemonXPCConnection *)self _powerStateForClient];
        if (v14)
        {
          xpc_dictionary_set_int64(v9, "pwrS", v14);
        }

        if (([v7 internalFlags] & 0x2000) != 0)
        {
          v15 = [(CBDaemonServer *)self->_daemon getAudioAccessoryDeviceArray];
          if (v15)
          {
            xpc_dictionary_set_value(v9, "aaDD", v15);
          }
        }

        [(CBDaemonXPCConnection *)self _xpcSendReply:v9];
      }

      else
      {
        sub_10080D7F4();
      }
    }

    else
    {
      if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080D85C();
      }

      [(CBDaemonXPCConnection *)self _xpcSendReplyError:v8 request:v4];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v4];
    v8 = v6;
  }
}

- (void)_xpcGetControllerInfo:(id)a3
{
  v11[0] = 0;
  v4 = a3;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:v11];
  v6 = v11[0];
  if (v5)
  {
    v7 = CUXPCDictionaryCreateReply();

    if (v7)
    {
      v8 = [(CBDaemonServer *)self->_daemon stackController];
      v9 = [v8 controllerInfo];

      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080D8B0();
      }

      v10 = xpc_dictionary_create(0, 0, 0);
      [v9 encodeWithXPCObject:v10];
      xpc_dictionary_set_value(v7, "ctrI", v10);
      [(CBDaemonXPCConnection *)self _xpcSendReply:v7];
    }

    else
    {
      sub_10080D90C();
      v7 = v11[1];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v4];
    v7 = v4;
  }
}

- (void)_xpcGetControllerSettings:(id)a3
{
  v31[0] = 0;
  v4 = a3;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:v31];
  v6 = v31[0];
  if (v5)
  {
    v7 = CUXPCDictionaryCreateReply();

    if (v7)
    {
      v28 = v7;
      v30 = v6;
      v8 = objc_alloc_init(CBControllerSettings);
      v9 = [(CBDaemonServer *)self->_daemon stackController];
      [v8 setDiscoverableState:{objc_msgSend(v9, "discoverableState")}];

      v10 = CFPreferencesCopyValue(@"enableGameControllerAutoSwitchMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v11 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v10 BOOLValue])
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }
      }

      [v8 setGameControllerAutoSwitchMode:v11];
      v12 = CFPreferencesCopyValue(@"enableGameControllerUSBBluetoothPairing", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v13 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v12 BOOLValue])
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }
      }

      [v8 setGameControllerUSBBluetoothPairing:v13];
      v14 = CFPreferencesCopyValue(@"move3PPLEMSToLegacyMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v15 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v14 BOOLValue])
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }

      [v8 setHid3ppLELegacyMode:v15];
      v16 = CFPreferencesCopyValue(@"btvcDefaultAdvRSSI", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v29 = self;
      v26 = v12;
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 intValue];
      }

      else
      {
        v17 = -45;
      }

      v18 = v10;
      [v8 setBleAdvRSSI:{v17, v26}];
      v19 = CFPreferencesCopyValue(@"BluetoothAutoSeekKeyboard", @"com.apple.Bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v20 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v19 BOOLValue])
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }
      }

      [v8 setSetupAssistantIfNoKeyboard:v20];
      v21 = CFPreferencesCopyValue(@"BluetoothAutoSeekPointingDevice", @"com.apple.Bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v22 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v21 BOOLValue])
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }
      }

      [v8 setSetupAssistantIfNoPointingDevice:v22];
      v23 = CFPreferencesCopyValue(@"SpatialSoundProfileAllowed", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
      objc_opt_class();
      v24 = 1;
      if (objc_opt_isKindOfClass())
      {
        if ([v23 BOOLValue])
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }
      }

      [v8 setSpatialSoundProfileAllowed:v24];
      v4 = v28;
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080D980();
      }

      v25 = xpc_dictionary_create(0, 0, 0);
      [v8 encodeWithXPCObject:v25];
      xpc_dictionary_set_value(v28, "ctrS", v25);
      [(CBDaemonXPCConnection *)v29 _xpcSendReply:v28];

      v6 = v30;
    }

    else
    {
      sub_10080D9DC();
      v4 = v31[1];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v4];
  }
}

- (void)_xpcModifyControllerSettings:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013F148;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v4 = a3;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = (v18 + 5);
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8, v11);
    if (!v18[5])
    {
      v9 = CBErrorF();
      v10 = v18[5];
      v18[5] = v9;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcGetDevices:(id)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100042234;
  v25 = sub_1000425AC;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013F554;
  v18[3] = &unk_100AE0380;
  v20 = &v21;
  v18[4] = self;
  v4 = a3;
  v19 = v4;
  v5 = objc_retainBlock(v18);
  v6 = (v22 + 5);
  obj = v22[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  v8 = (v22 + 5);
  if (v7)
  {
    v16 = v22[5];
    v27 = 0;
    if (CUXPCDecodeUInt64RangedEx() == 6)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(v8, v16);
    if (!v22[5])
    {
      v10 = [(CBDaemonServer *)self->_daemon stackController];
      v11 = (v22 + 5);
      v15 = v22[5];
      v12 = [v10 getDevicesWithFlags:v9 error:&v15];
      objc_storeStrong(v11, v15);

      if (v12)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v14 = CUPrintFlags32();
          [v12 count];
          LogPrintF_safe();
        }

        v13 = CUXPCDictionaryCreateReply();
        if (v13)
        {
          CUXPCEncodeNSArrayOfObjects();
          [(CBDaemonXPCConnection *)self _xpcSendReply:v13];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v22[5] request:v4];
  }

  (v5[2])(v5);

  _Block_object_dispose(&v21, 8);
}

- (void)_xpcDeleteDevice:(id)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100042234;
  v28 = sub_1000425AC;
  v29 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10013F948;
  v21[3] = &unk_100AE0380;
  v23 = &v24;
  v21[4] = self;
  v4 = a3;
  v22 = v4;
  v5 = objc_retainBlock(v21);
  v6 = (v25 + 5);
  obj = v25[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = xpc_dictionary_get_dictionary(v4, "devi");
    if (v8)
    {
      v9 = [CBDevice alloc];
      v10 = (v25 + 5);
      v19 = v25[5];
      v11 = [v9 initWithXPCObject:v8 error:&v19];
      objc_storeStrong(v10, v19);
      if (v11)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v17 = v11;
          LogPrintF_safe();
        }

        v12 = [(CBDaemonServer *)self->_daemon stackController];
        v13 = (v25 + 5);
        v18 = v25[5];
        v14 = [v12 deleteDevice:v11 error:&v18];
        objc_storeStrong(v13, v18);

        if (v14)
        {
          v15 = CUXPCDictionaryCreateReply();
          if (v15)
          {
            [(CBDaemonXPCConnection *)self _xpcSendReply:v15];
          }

          else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }
        }
      }
    }

    else
    {
      v16 = CBErrorF();
      v11 = v25[5];
      v25[5] = v16;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v24, 8);
}

- (void)_xpcModifyDevice:(id)a3
{
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100042234;
  v60 = sub_1000425AC;
  v61 = 0;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10014028C;
  v53[3] = &unk_100AE0380;
  v55 = &v56;
  v53[4] = self;
  v4 = a3;
  v54 = v4;
  v5 = objc_retainBlock(v53);
  v6 = v57;
  obj = v57[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = xpc_dictionary_get_dictionary(v4, "devi");
    if (!v8)
    {
      v36 = CBErrorF();
      v11 = v57[5];
      v57[5] = v36;
      goto LABEL_24;
    }

    v9 = [CBDevice alloc];
    v10 = v57;
    v51 = v57[5];
    v11 = [v9 initWithXPCObject:v8 error:&v51];
    objc_storeStrong(v10 + 5, v51);
    if (!v11)
    {
LABEL_24:

      goto LABEL_25;
    }

    v12 = v57;
    v49 = v57[5];
    v50 = 0;
    v13 = CUXPCDecodeNSArrayOfNSString();
    objc_storeStrong(v12 + 5, v49);
    if ((v13 & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }

    v48 = 0;
    objc_opt_class();
    v14 = v57;
    v47 = v57[5];
    v15 = CUXPCDecodeObject();
    objc_storeStrong(v14 + 5, v47);
    if ((v15 & 1) == 0 || (v16 = v57 + 5, v46 = v57[5], v62 = 0, v17 = CUXPCDecodeSInt64RangedEx(), objc_storeStrong(v16, v46), v17 == 5) || (v18 = v57 + 5, v45 = v57[5], v62 = 0, v19 = CUXPCDecodeUInt64RangedEx(), objc_storeStrong(v18, v45), v19 == 5))
    {
LABEL_22:

      goto LABEL_23;
    }

    v62 = 0;
    objc_opt_class();
    v20 = v57;
    v44 = v57[5];
    v21 = CUXPCDecodeObject();
    objc_storeStrong(v20 + 5, v44);
    if (v21)
    {
      v22 = v57;
      v42 = v57[5];
      v43 = 0;
      v23 = CUXPCDecodeDouble();
      objc_storeStrong(v22 + 5, v42);
      if (v23)
      {
        if (v62)
        {
          v24 = [v62 powerSourceMock];

          if (v24)
          {
            if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
            {
              v37 = v11;
              v38 = v62;
              LogPrintF_safe();
            }

            v26 = [(CBDaemonServer *)self->_daemon stackPowerSourceMonitor:v37];
            v27 = [v62 powerSourceMock];
            v28 = v57;
            v41 = v57[5];
            v29 = [v26 powerSourceOverrideWithMock:v27 error:&v41];
            objc_storeStrong(v28 + 5, v41);

            if ((v29 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
            {
              v37 = v11;
              v38 = v62;
              LogPrintF_safe();
            }

            v33 = [(CBDaemonServer *)self->_daemon stackController:v37];
            v34 = v57;
            v40 = v57[5];
            v35 = [v33 modifyDevice:v11 settings:v62 error:&v40];
            objc_storeStrong(v34 + 5, v40);

            if ((v35 & 1) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            v37 = v11;
            LogPrintF_safe();
          }

          v30 = [(CBDaemonServer *)self->_daemon stackController];
          v31 = v57;
          v39 = v57[5];
          v32 = [v30 modifyDevice:v11 error:&v39];
          objc_storeStrong(v31 + 5, v39);

          if (!v32)
          {
            goto LABEL_21;
          }
        }

        v25 = CUXPCDictionaryCreateReply();
        if (v25)
        {
          [(CBDaemonXPCConnection *)self _xpcSendReply:v25];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }
      }
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_25:
  (v5[2])(v5);

  _Block_object_dispose(&v56, 8);
}

- (void)_xpcPerformDeviceRequest:(id)a3
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100042234;
  v32 = sub_1000425AC;
  v33 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100140760;
  v25[3] = &unk_100AE0380;
  v27 = &v28;
  v25[4] = self;
  v4 = a3;
  v26 = v4;
  v5 = objc_retainBlock(v25);
  v6 = v29;
  obj = v29[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v23 = 0;
    objc_opt_class();
    v8 = v29;
    v22 = v29[5];
    v9 = CUXPCDecodeObject();
    objc_storeStrong(v8 + 5, v22);
    if (v9)
    {
      v21 = 0;
      objc_opt_class();
      v10 = v29;
      v20 = v29[5];
      v11 = CUXPCDecodeObject();
      objc_storeStrong(v10 + 5, v20);
      if (v11)
      {
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v13 = v23;
          v14 = v21;
          LogPrintF_safe();
        }

        v12 = [(CBDaemonServer *)self->_daemon stackController:v13];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10014083C;
        v15[3] = &unk_100AE2140;
        v16 = v23;
        v17 = v21;
        v18 = self;
        v19 = v4;
        [v12 performDeviceRequest:v21 device:v16 completionHandler:v15];
      }
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v28, 8);
}

- (void)_xpcDiagnosticControl:(id)a3
{
  v156 = 0;
  v157 = &v156;
  v158 = 0x3032000000;
  v159 = sub_100042234;
  v160 = sub_1000425AC;
  v161 = 0;
  v153[0] = _NSConcreteStackBlock;
  v153[1] = 3221225472;
  v153[2] = sub_100142B64;
  v153[3] = &unk_100AE0380;
  v155 = &v156;
  v153[4] = self;
  xdict = a3;
  v154 = xdict;
  v123 = objc_retainBlock(v153);
  v4 = v157;
  obj = v157[5];
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v4 + 5, obj);
  if ((v5 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v157[5] request:xdict];
    goto LABEL_95;
  }

  v124 = xpc_dictionary_get_value(xdict, "parm");
  if (!v124)
  {
    goto LABEL_141;
  }

  if (xpc_get_type(xdict) != &_xpc_type_dictionary)
  {
    goto LABEL_141;
  }

  string = xpc_dictionary_get_string(v124, "iStr");
  if (!string)
  {
    goto LABEL_141;
  }

  if (!stricmp_prefix())
  {
    v7 = CUXPCCreateCFObjectFromXPCObject();
    if (!v7)
    {
      goto LABEL_205;
    }

    v10 = [(CBDaemonServer *)self->_daemon accessoryDaemon];
    v11 = v10 == 0;

    if (v11)
    {
      goto LABEL_205;
    }

    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v12 = CUPrintNSObjectOneLine();
      CUPrintPID();
      v117 = v111 = v12;
      v110 = string;
      LogPrintF_safe();
    }

    v13 = [(CBDaemonServer *)self->_daemon accessoryDaemon:v110];
    v14 = v157 + 5;
    v151 = v157[5];
    v15 = [v13 diagnosticControl:v7 error:&v151];
    objc_storeStrong(v14, v151);

    if (!v15)
    {
      goto LABEL_94;
    }

    v150[2] = 0;
    NSAppendPrintF_safe();
    v16 = 0;

    goto LABEL_47;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    [(CBDaemonXPCConnection *)self _xpcDiagnosticAdvertiser:v110];
    v150[1] = 0;
    NSAppendPrintF_safe();
    goto LABEL_53;
  }

  if (!strcasecmp(string, "aop-read-debug"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v17 = [(CBDaemonServer *)self->_daemon stackController:v110];
    v18 = v157 + 5;
    v150[0] = v157[5];
    v7 = [v17 diagnosticControl:v124 error:v150];
    objc_storeStrong(v18, v150[0]);

    if (v157[5])
    {
      goto LABEL_94;
    }

    v149[1] = 0;
    NSAppendPrintF_safe();
    v19 = 0;

LABEL_85:
    v7 = v19;
LABEL_86:
    v29 = CUXPCDictionaryCreateReply();
    v30 = v29;
    if (v29)
    {
      if (v7)
      {
        v31 = v7;
      }

      else
      {
        v31 = @"None\n";
      }

      v32 = v29;
      v33 = v31;
      v34 = [(__CFString *)v31 UTF8String];
      if (v34)
      {
        xpc_dictionary_set_string(v32, "oStr", v34);
      }

      [(CBDaemonXPCConnection *)self _xpcSendReply:v32];
    }

    else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

LABEL_93:

    goto LABEL_94;
  }

  if (!strcasecmp(string, "aop-write-debug"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v20 = [(CBDaemonServer *)self->_daemon stackController:v110];
    v21 = v157 + 5;
    v149[0] = v157[5];
    v7 = [v20 diagnosticControl:v124 error:v149];
    objc_storeStrong(v21, v149[0]);

    if (v157[5])
    {
      goto LABEL_94;
    }

    v148[2] = 0;
    NSAppendPrintF_safe();
    v19 = 0;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    [(CBDaemonXPCConnection *)self _xpcDiagnosticAssertion:v110];
    v148[1] = 0;
    NSAppendPrintF_safe();
    goto LABEL_53;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v22 = [(CBDaemonServer *)self->_daemon stackController:v110];
    v23 = v157 + 5;
    v148[0] = v157[5];
    v7 = [v22 diagnosticControl:v124 error:v148];
    objc_storeStrong(v23, v148[0]);

    if (v157[5])
    {
      goto LABEL_94;
    }

    v147[1] = 0;
    NSAppendPrintF_safe();
    v19 = 0;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v27 = [(CBDaemonServer *)self->_daemon stackController:v110];
    v28 = v157 + 5;
    v147[0] = v157[5];
    v7 = [v27 diagnosticControl:v124 error:v147];
    objc_storeStrong(v28, v147[0]);

    if (v157[5])
    {
      goto LABEL_94;
    }

    v146 = 0;
    NSAppendPrintF_safe();
    v19 = 0;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    [(CBDaemonXPCConnection *)self _xpcDiagnosticDiscovery:v110];
    v145 = 0;
    NSAppendPrintF_safe();
    goto LABEL_53;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v35 = [(CBDaemonServer *)self->_daemon xpcConnections:v110];
    v36 = [v35 countByEnumeratingWithState:&v141 objects:v163 count:16];
    if (v36)
    {
      v37 = *v142;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v142 != v37)
          {
            objc_enumerationMutation(v35);
          }

          [*(*(&v141 + 1) + 8 * i) _spatialInteractionReevaluateDevices];
        }

        v36 = [v35 countByEnumeratingWithState:&v141 objects:v163 count:16];
      }

      while (v36);
    }

    v140[1] = 0;
    NSAppendPrintF_safe();
    goto LABEL_53;
  }

  if (!stricmp_prefix())
  {
    v7 = CUXPCCreateCFObjectFromXPCObject();
    if (!v7)
    {
      goto LABEL_205;
    }

    v24 = [(CBDaemonServer *)self->_daemon extensionsDaemon];
    v25 = v24 == 0;

    if (v25)
    {
      goto LABEL_205;
    }

    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v26 = CUPrintNSObjectOneLine();
      CUPrintPID();
      v117 = v111 = v26;
      v110 = string;
      LogPrintF_safe();
    }

    v51 = [(CBDaemonServer *)self->_daemon extensionsDaemon:v110];
    v52 = v157 + 5;
    v140[0] = v157[5];
    v53 = [v51 diagnosticControl:v7 error:v140];
    objc_storeStrong(v52, v140[0]);

    if (!v53)
    {
      goto LABEL_94;
    }

    v139[1] = 0;
    NSAppendPrintF_safe();
    v16 = 0;

LABEL_47:
    v7 = v16;
    goto LABEL_86;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v54 = [(CBDaemonServer *)self->_daemon stackController:v110];
    v55 = v157 + 5;
    v139[0] = v157[5];
    v7 = [v54 diagnosticControl:v124 error:v139];
    objc_storeStrong(v55, v139[0]);

    if (v157[5])
    {
      goto LABEL_94;
    }

    v138[1] = 0;
    NSAppendPrintF_safe();
    v19 = 0;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v57 = [(CBDaemonServer *)self->_daemon stackController:v110];
    v58 = v157 + 5;
    v138[0] = v157[5];
    v7 = [v57 diagnosticControl:v124 error:v138];
    objc_storeStrong(v58, v138[0]);

    if (v157[5])
    {
      goto LABEL_94;
    }

    v137 = 0;
    NSAppendPrintF_safe();
    v19 = 0;

    goto LABEL_85;
  }

  if (!strcasecmp(string, "LoD-connected"))
  {
    v7 = CUXPCCreateCFObjectFromXPCObject();
    if (v7)
    {
      CFStringGetTypeID();
      v39 = CFDictionaryGetTypedValue();
      if (v39)
      {
        v40 = [[NSUUID alloc] initWithUUIDString:v39];
        if (!v40)
        {
          v108 = CBErrorF();
          v109 = v157[5];
          v157[5] = v108;

          goto LABEL_94;
        }

        v119 = v39;
        CFStringGetTypeID();
        v121 = CFDictionaryGetTypedValue();
        v41 = objc_alloc_init(NSMutableArray);
        CFStringGetTypeID();
        CFDictionaryGetTypedValue();
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v120 = v134 = 0u;
        v42 = [v120 componentsSeparatedByString:{@", "}];
        v43 = [v42 countByEnumeratingWithState:&v133 objects:v162 count:16];
        v122 = v40;
        if (v43)
        {
          v44 = *v134;
          do
          {
            for (j = 0; j != v43; j = j + 1)
            {
              if (*v134 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v46 = [[CBUUID alloc] initWithString:*(*(&v133 + 1) + 8 * j) safe:1];
              if (v46)
              {
                [v41 addObject:v46];
              }
            }

            v43 = [v42 countByEnumeratingWithState:&v133 objects:v162 count:16];
          }

          while (v43);
        }

        v47 = v122;
        v48 = v120;
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v49 = [v122 UUIDString];
          v50 = CUPrintNSObjectOneLine();
          CUPrintPID();
          v118 = v117 = v50;
          v110 = string;
          v111 = v49;
          LogPrintF_safe();

          v47 = v122;
          v48 = v120;
        }

        [(CBDaemonServer *)self->_daemon notifyConnectedDeviceUUID:v47 name:v121 servicesUUIDs:v41, v110, v111, v117, v118];
        v132[1] = 0;
        NSAppendPrintF_safe();
        v19 = 0;

        goto LABEL_85;
      }

LABEL_205:
      v106 = CBErrorF();
      v107 = v157[5];
      v157[5] = v106;

      goto LABEL_94;
    }

LABEL_141:
    v56 = CBErrorF();
    v7 = v157[5];
    v157[5] = v56;
    goto LABEL_94;
  }

  if (!strcasecmp(string, "mp-error"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v59 = [(CBDaemonServer *)self->_daemon stackController:v110];
    v60 = v157 + 5;
    v132[0] = v157[5];
    v7 = [v59 diagnosticControl:v124 error:v132];
    objc_storeStrong(v60, v132[0]);

    if (v157[5])
    {
      goto LABEL_94;
    }

    v131[1] = 0;
    NSAppendPrintF_safe();
    v19 = 0;

    goto LABEL_85;
  }

  if (!strcasecmp(string, "mp-keys-reset"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v61 = [(CBDaemonServer *)self->_daemon stackController:v110];
    v62 = v157 + 5;
    v131[0] = v157[5];
    v7 = [v61 diagnosticControl:v124 error:v131];
    objc_storeStrong(v62, v131[0]);

    if (v157[5])
    {
      goto LABEL_94;
    }

    v130[5] = 0;
    NSAppendPrintF_safe();
    v19 = 0;

    goto LABEL_85;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    [(CBDaemonXPCConnection *)self _xpcDiagnosticTipiChanged:v110];
    v130[4] = 0;
    NSAppendPrintF_safe();
    goto LABEL_53;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      CUPrintPID();
      v111 = v110 = string;
      LogPrintF_safe();
    }

    v63 = [(CBDaemonServer *)self->_daemon whbDiscoveryDaemon:v110];
    [v63 diagnosticControl:&off_100B34298];

    v130[3] = 0;
    NSAppendPrintF_safe();
LABEL_53:
    v7 = 0;
    goto LABEL_86;
  }

  if (!stricmp_prefix())
  {
    [(CBDaemonServer *)self->_daemon setWifiCriticalOverride:[(CBDaemonServer *)self->_daemon wifiCriticalOverride]== 0];
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      [(CBDaemonServer *)self->_daemon wifiCriticalOverride];
      v115 = CUPrintPID();
      LogPrintF_safe();
    }

    v130[2] = 0;
    NSAppendPrintF_safe();
    v7 = 0;
    [(CBDaemonServer *)self->_daemon scheduleUpdateImmediate:0];
    goto LABEL_86;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v112 = CUPrintPID();
      LogPrintF_safe();
    }

    v130[1] = 0;
    NSAppendPrintF_safe();
    v7 = 0;
    v64 = [(CBDaemonServer *)self->_daemon stackController];
    v65 = v157 + 5;
    v130[0] = v157[5];
    v66 = [v64 diagnosticControl:v124 error:v130];
    objc_storeStrong(v65, v130[0]);

    if (v157[5])
    {

      goto LABEL_94;
    }

    v129[2] = v7;
    NSAppendPrintF_safe();
    v16 = v7;

    goto LABEL_47;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v113 = CUPrintPID();
      LogPrintF_safe();
    }

    v129[1] = 0;
    NSAppendPrintF_safe();
    v7 = 0;
    v67 = [(CBDaemonServer *)self->_daemon stackController];
    v68 = v157 + 5;
    v129[0] = v157[5];
    v69 = [v67 diagnosticControl:v124 error:v129];
    objc_storeStrong(v68, v129[0]);

    if (v157[5])
    {

      goto LABEL_94;
    }

    v128[2] = v7;
    NSAppendPrintF_safe();
    v16 = v7;

    goto LABEL_47;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v114 = CUPrintPID();
      LogPrintF_safe();
    }

    v128[1] = 0;
    NSAppendPrintF_safe();
    v7 = 0;
    v70 = [(CBDaemonServer *)self->_daemon stackController];
    v71 = v157 + 5;
    v128[0] = v157[5];
    v72 = [v70 diagnosticControl:v124 error:v128];
    objc_storeStrong(v71, v128[0]);

    if (v157[5])
    {

      goto LABEL_94;
    }

    v127[2] = v7;
    NSAppendPrintF_safe();
    v16 = v7;

    goto LABEL_47;
  }

  if (!stricmp_prefix())
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v116 = CUPrintPID();
      LogPrintF_safe();
    }

    v127[1] = 0;
    NSAppendPrintF_safe();
    v7 = 0;
    v104 = [(CBDaemonServer *)self->_daemon stackController];
    v105 = v157 + 5;
    v127[0] = v157[5];
    v30 = [v104 diagnosticControl:v124 error:v127];
    objc_storeStrong(v105, v127[0]);

    if (v157[5])
    {
      goto LABEL_93;
    }

    NSAppendPrintF_safe();
    v16 = v7;

    goto LABEL_47;
  }

  if (!*string || !strcasecmp(string, "help"))
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    NSAppendPrintF_safe();
    v126 = 0;
    NSAppendPrintF_safe();
    v73 = v126;

    NSAppendPrintF_safe();
    v74 = v73;

    NSAppendPrintF_safe();
    v75 = v74;

    NSAppendPrintF_safe();
    v76 = v75;

    NSAppendPrintF_safe();
    v77 = v76;

    NSAppendPrintF_safe();
    v78 = v77;

    NSAppendPrintF_safe();
    v79 = v78;

    NSAppendPrintF_safe();
    v80 = v79;

    NSAppendPrintF_safe();
    v81 = v80;

    NSAppendPrintF_safe();
    v82 = v81;

    NSAppendPrintF_safe();
    v83 = v82;

    NSAppendPrintF_safe();
    v84 = v83;

    NSAppendPrintF_safe();
    v85 = v84;

    NSAppendPrintF_safe();
    v86 = v85;

    NSAppendPrintF_safe();
    v87 = v86;

    NSAppendPrintF_safe();
    v88 = v87;

    NSAppendPrintF_safe();
    v89 = v88;

    NSAppendPrintF_safe();
    v90 = v89;

    NSAppendPrintF_safe();
    v91 = v90;

    NSAppendPrintF_safe();
    v92 = v91;

    NSAppendPrintF_safe();
    v93 = v92;

    NSAppendPrintF_safe();
    v94 = v93;

    NSAppendPrintF_safe();
    v95 = v94;

    NSAppendPrintF_safe();
    v96 = v95;

    NSAppendPrintF_safe();
    v97 = v96;

    NSAppendPrintF_safe();
    v98 = v97;

    NSAppendPrintF_safe();
    v99 = v98;

    NSAppendPrintF_safe();
    v100 = v99;

    NSAppendPrintF_safe();
    v101 = v100;

    NSAppendPrintF_safe();
    v102 = v101;

    NSAppendPrintF_safe();
    v103 = v102;

    NSAppendPrintF_safe();
    v7 = v103;

    goto LABEL_86;
  }

  v7 = CUPrintPID();
  v8 = CBErrorF();
  v9 = v157[5];
  v157[5] = v8;

LABEL_94:
LABEL_95:
  (v123[2])(v123);

  _Block_object_dispose(&v156, 8);
}

- (void)_xpcDiagnosticAdvertiser
{
  v3 = [(CBDaemonServer *)self->_daemon testAdvertiser];
  if (v3)
  {
    v4 = v3;
    v11 = v3;
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v11, v5))
      {
        sub_10080DC08();
        v4 = v11;
      }
    }

    [v4 invalidate];
    [(CBDaemonServer *)self->_daemon setTestAdvertiser:0];
  }

  else
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080DC24();
    }

    v6 = objc_alloc_init(CBAdvertiserDaemon);
    [(CBDaemonServer *)self->_daemon setTestAdvertiser:v6];
    [(CBAdvertiserDaemon *)v6 setDispatchQueue:self->_dispatchQueue];
    [(CBAdvertiserDaemon *)v6 setSpatialInteractionFlags:105];
    [(CBAdvertiserDaemon *)v6 setSpatialInteractionConfigFlags:1];
    v7 = NSRandomData();
    v15 = v7;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    [(CBAdvertiserDaemon *)v6 setSpatialInteractionIdentifiers:v8];

    v9 = NSRandomData();
    [(CBAdvertiserDaemon *)v6 setSpatialInteractionUWBConfigData:v9];

    v10 = NSRandomData();
    [(CBAdvertiserDaemon *)v6 setSpatialInteractionPresenceConfigData:v10];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100142EF0;
    v14[3] = &unk_100ADF5B8;
    v14[4] = v6;
    [(CBAdvertiserDaemon *)v6 setInvalidationHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100142F4C;
    v13[3] = &unk_100ADF740;
    v13[4] = v6;
    v13[5] = self;
    [(CBAdvertiserDaemon *)v6 activateWithCompletion:v13];
  }
}

- (void)_xpcDiagnosticAssertion
{
  v3 = [(CBDaemonServer *)self->_daemon testAssertion];
  if (v3)
  {
    v4 = v3;
    v7 = v3;
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_10080DD20();
        v4 = v7;
      }
    }

    [v4 invalidate];
    [(CBDaemonServer *)self->_daemon setTestAssertion:0];
  }

  else
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080DD3C();
    }

    v6 = objc_alloc_init(CBController);
    [(CBDaemonServer *)self->_daemon setTestAssertion:v6];
    [v6 setDispatchQueue:self->_dispatchQueue];
    [v6 setLabel:@"CBDiags"];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001431BC;
    v8[3] = &unk_100ADF740;
    v8[4] = v6;
    v8[5] = self;
    [v6 activateAssertionWithFlags:1 completion:v8];
  }
}

- (void)_xpcDiagnosticDiscovery
{
  v3 = [(CBDaemonServer *)self->_daemon testDiscovery];
  if (v3)
  {
    v4 = v3;
    v7 = v3;
    if (dword_100B510A0 <= 30)
    {
      if (dword_100B510A0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        sub_10080DDF8();
        v4 = v7;
      }
    }

    [v4 invalidate];
    [(CBDaemonServer *)self->_daemon setTestDiscovery:0];
  }

  else
  {
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080DE14();
    }

    v6 = objc_alloc_init(CBDiscovery);
    [(CBDaemonServer *)self->_daemon setTestDiscovery:v6];
    [v6 setDiscoveryFlags:16];
    [v6 setDispatchQueue:self->_dispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100143518;
    v12[3] = &unk_100ADF718;
    v12[4] = v6;
    v12[5] = self;
    [v6 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001435B4;
    v11[3] = &unk_100ADF718;
    v11[4] = v6;
    v11[5] = self;
    [v6 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100143650;
    v10[3] = &unk_100ADF5B8;
    v10[4] = v6;
    [v6 setInvalidationHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001436AC;
    v9[3] = &unk_100ADF740;
    v9[4] = v6;
    v9[5] = self;
    [v6 activateWithCompletion:v9];
  }
}

- (void)_xpcDiagnosticLog:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100143A98;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v4 = a3;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = xpc_dictionary_get_value(v4, "parm");
    if (v8 && (xpc_get_type(v4) != &_xpc_type_dictionary || xpc_dictionary_get_string(v8, "iStr") && LogControl()))
    {
      v11 = CBErrorF();
      v12 = v18[5];
      v18[5] = v11;
    }

    else
    {
      LogShow();
      v9 = CBErrorF();
      v10 = v18[5];
      v18[5] = v9;
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v18[5] request:v4];
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcDiagnosticShow:(id)a3
{
  v4 = a3;
  v31 = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v31];
  v6 = v31;
  if ((v5 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v4];
    goto LABEL_20;
  }

  v7 = xpc_dictionary_get_value(v4, "parm");
  if (!v7)
  {
    goto LABEL_10;
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v7, "iStr");
    xpc_dictionary_get_int64(v7, "vrbL");
    if (string)
    {
      if (stricmp_prefix())
      {
        v21 = string;
        v9 = CBErrorF();

        if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080DF90();
        }

        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v9 request:v4, v21];
        goto LABEL_19;
      }

      v15 = [(CBDaemonServer *)self->_daemon identityArray];
      v29 = 0;
      v23 = [v15 count];
      NSAppendPrintF_safe();
      v11 = 0;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = v15;
      v16 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:{16, v23}];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          v20 = v11;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v10);
            }

            v24 = *(*(&v25 + 1) + 8 * v19);
            NSAppendPrintF_safe();
            v11 = v20;

            v19 = v19 + 1;
            v20 = v11;
          }

          while (v17 != v19);
          v17 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:{16, v24}];
        }

        while (v17);
      }

LABEL_11:
      v12 = CUXPCDictionaryCreateReply();
      if (v12)
      {
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"None\n";
        }

        v14 = [(__CFString *)v13 UTF8String];
        if (v14)
        {
          xpc_dictionary_set_string(v12, "oStr", v14);
        }

        [(CBDaemonXPCConnection *)self _xpcSendReply:v12, v22];
      }

      else
      {
        sub_10080DFE4();
      }

      v9 = v6;
      goto LABEL_19;
    }

LABEL_10:
    v30 = 0;
    v10 = CUDescriptionWithLevel();
    v22 = v10;
    NSAppendPrintF_safe();
    v11 = 0;
    goto LABEL_11;
  }

  v9 = CBErrorF();

LABEL_19:
  v6 = v9;
LABEL_20:
}

- (void)_xpcDiagnosticTipiChanged
{
  v11 = objc_alloc_init(CBDevice);
  v2 = NSRandomData();
  [v11 setBtAddressData:v2];

  v3 = objc_alloc_init(NSMutableArray);
  for (i = 0; i != 3; ++i)
  {
    v5 = objc_alloc_init(CBDevice);
    v6 = NSRandomData();
    [v5 setBtAddressData:v6];

    if (i == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (i == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    if (i)
    {
      v9 = v7;
    }

    else
    {
      v9 = 1;
    }

    [v5 setTipiConnectionStatus:v9];
    [v5 setTipiState:v8];
    [v3 addObject:v5];
  }

  [v11 setTipiDevices:v3];
  if (dword_100B510A0 < 31 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E04C();
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"com.apple.bluetooth.TipiChanged" object:v11 userInfo:0];
}

- (void)_xpcSetLowPowerMode:(id)a3
{
  v4 = a3;
  v20 = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v20];
  v6 = v20;
  if (v5)
  {
    int64 = xpc_dictionary_get_int64(v4, "ctrP");
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080E08C();
    }

    if (int64 == 3)
    {
      v19 = v6;
      v8 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v19];
      v9 = v19;

      if ((v8 & 1) == 0)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v9 request:v4];
        v6 = v9;
        goto LABEL_10;
      }

      v18 = 0;
      objc_opt_class();
      v17 = v9;
      CUXPCDecodeObject();
      v10 = v9;

      v13 = NSErrorNestedF();

      v6 = v13;
      v12 = 0;
    }

    else
    {
      v11 = [(CBDaemonServer *)self->_daemon stackController];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100144470;
      v14[3] = &unk_100AE2168;
      v16 = int64;
      v14[4] = self;
      v15 = v4;
      [v11 setLowPowerModeWithReason:int64 completionHandler:v14];

      v12 = v15;
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v4];
  }

LABEL_10:
}

- (void)_xpcGetPowerState:(id)a3
{
  v9[0] = 0;
  v4 = a3;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:v9];
  v6 = v9[0];
  if (v5)
  {
    v7 = CUXPCDictionaryCreateReply();

    if (v7)
    {
      v8 = [(CBDaemonXPCConnection *)self _powerStateForClient];
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080E3D0();
      }

      xpc_dictionary_set_int64(v7, "pwrS", v8);
      [(CBDaemonXPCConnection *)self _xpcSendReply:v7];
    }

    else
    {
      sub_10080E430();
      v7 = v9[1];
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v4];
    v7 = v4;
  }
}

- (void)_xpcSetPowerState:(id)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100042234;
  v23 = sub_1000425AC;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100144948;
  v16[3] = &unk_100AE0380;
  v18 = &v19;
  v16[4] = self;
  v4 = a3;
  v17 = v4;
  v5 = objc_retainBlock(v16);
  v6 = (v20 + 5);
  obj = v20[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    int64 = xpc_dictionary_get_int64(v4, "pwrS");
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      if (int64 > 0xA)
      {
        v9 = "?";
      }

      else
      {
        v9 = off_100AE2310[int64];
      }

      v13 = v9;
      LogPrintF_safe();
    }

    v10 = [(CBDaemonServer *)self->_daemon stackController];
    v11 = (v20 + 5);
    v14 = v20[5];
    [v10 setPowerState:int64 error:&v14];
    objc_storeStrong(v11, v14);

    if (!v20[5])
    {
      v12 = CUXPCDictionaryCreateReply();
      if (v12)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReply:v12];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v19, 8);
}

- (void)_xpcReadPrefs:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001450A4;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v10 = a3;
  v15 = v10;
  v9 = objc_retainBlock(v14);
  v4 = v18;
  obj = v18[5];
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v4 + 5, obj);
  if (v5)
  {
    v6 = v18 + 5;
    v11 = v18[5];
    v12 = 0;
    CUXPCDecodeNSArrayOfNSString();
    objc_storeStrong(v6, v11);
    if (!v18[5])
    {
      v7 = CBErrorF();
      v8 = v18[5];
      v18[5] = v7;
    }
  }

  (v9[2])(v9);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcWritePref:(id)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100042234;
  v20 = sub_1000425AC;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001455EC;
  v13[3] = &unk_100AE0380;
  v15 = &v16;
  v13[4] = self;
  v4 = a3;
  v14 = v4;
  v5 = objc_retainBlock(v13);
  v6 = v17;
  obj = v17[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = v17 + 5;
    v11 = v17[5];
    CUXPCDecodeNSString();
    objc_storeStrong(v8, v11);
    if (!v17[5])
    {
      v9 = CBErrorF();
      v10 = v17[5];
      v17[5] = v9;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v16, 8);
}

- (void)_xpcSendRelayMessage:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100145BE0;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v4 = a3;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = v18;
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = v18;
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8 + 5, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSendSmartRoutingInformation:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014607C;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v4 = a3;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = v18;
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = v18;
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8 + 5, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSendAudioAccessoryEventMessage:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001465D4;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v4 = a3;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = (v18 + 5);
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSendAudioAccessoryConfigMessage:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001469E8;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v4 = a3;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = (v18 + 5);
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSendConversationDetectMessage:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100146E84;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v4 = a3;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = v18;
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v12 = 0;
    objc_opt_class();
    v8 = v18;
    v11 = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v8 + 5, v11);
    v9 = NSErrorNestedF();
    v10 = v18[5];
    v18[5] = v9;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcResetCBExtension:(id)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100042234;
  v21 = sub_1000425AC;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014725C;
  v14[3] = &unk_100AE0380;
  v16 = &v17;
  v14[4] = self;
  v4 = a3;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = (v18 + 5);
    v11 = v18[5];
    v12 = 0;
    CUXPCDecodeNSString();
    objc_storeStrong(v8, v11);
    if (!v18[5])
    {
      v9 = CBErrorF();
      v10 = v18[5];
      v18[5] = v9;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)_xpcUpdateIdentities:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100042234;
  v19 = sub_1000425AC;
  v20 = 0;
  obj = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(&v20, obj);
  if (v5)
  {
    v6 = xpc_dictionary_get_array(v4, "idtA");
    if (v6)
    {
      v7 = objc_alloc_init(NSMutableArray);
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_10014763C;
      applier[3] = &unk_100AE2190;
      applier[4] = v7;
      applier[5] = &v15;
      xpc_array_apply(v6, applier);
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        v11 = [v7 count];
        LogPrintF_safe();
      }

      [(CBDaemonServer *)self->_daemon updateIdentities:v7, v11];
      v10 = CUXPCDictionaryCreateReply();
      if (v10)
      {
        [(CBDaemonXPCConnection *)self _xpcSendReply:v10];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    else
    {
      v8 = CBErrorF();
      v9 = v16[5];
      v16[5] = v8;

      if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        v12 = CUPrintNSError();
        LogPrintF_safe();

        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v16[5] request:v4, v12];
      }

      else
      {
        [(CBDaemonXPCConnection *)self _xpcSendReplyError:v16[5] request:v4, v11];
      }
    }
  }

  else
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v16[5] request:v4];
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_xpcCBDiscoveryActivate:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v15];
  v6 = v15;
  if ((v5 & 1) == 0)
  {
    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v6 request:v4];
    goto LABEL_14;
  }

  v14 = v6;
  v7 = [[CBDiscovery alloc] initWithXPCObject:v4 error:&v14];
  v8 = v14;

  if (!v7)
  {
    if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080E53C();
    }

    [(CBDaemonXPCConnection *)self _xpcSendReplyError:v8 request:v4];
    goto LABEL_13;
  }

  v9 = [v7 softwareUpdatePayloads];
  v10 = [v9 count];

  if (!v10)
  {
    goto LABEL_6;
  }

  v13 = v8;
  v11 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v13];
  v12 = v13;

  if (v11)
  {
    v8 = v12;
LABEL_6:
    [v7 setAppID:self->_appID];
    if (([v7 discoveryFlags] & 0x400000000000) != 0)
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryActivateWHB:v4 discovery:v7];
    }

    else
    {
      [(CBDaemonXPCConnection *)self _xpcCBDiscoveryActivateLocal:v4 discovery:v7];
    }

    goto LABEL_13;
  }

  [(CBDaemonXPCConnection *)self _xpcSendReplyError:v12 request:v4];
  v8 = v12;
LABEL_13:

  v6 = v8;
LABEL_14:
}

- (void)_xpcCBDiscoveryActivateLocal:(id)a3 discovery:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_activatedDiscovery, a4);
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E590(self);
  }

  v8 = +[CBMetricsDaemon sharedCBMetricsDaemon];
  [v8 reportCBDiscovery:v7 daemonCnx:self action:@"strt"];

  [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:1];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100147C78;
  v35[3] = &unk_100ADF590;
  v35[4] = self;
  v9 = v7;
  v36 = v9;
  [v9 setBluetoothStateChangedHandler:v35];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100147CEC;
  v33[3] = &unk_100ADF718;
  v33[4] = self;
  v10 = v9;
  v34 = v10;
  [v10 setDeviceFoundHandler:v33];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100147D10;
  v31[3] = &unk_100ADF718;
  v31[4] = self;
  v11 = v10;
  v32 = v11;
  [v11 setDeviceLostHandler:v31];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100147D34;
  v29[3] = &unk_100AE0158;
  v29[4] = self;
  v12 = v11;
  v30 = v12;
  [v12 setDevicesBufferedHandler:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100147D58;
  v27[3] = &unk_100ADF590;
  v27[4] = self;
  v13 = v12;
  v28 = v13;
  [v13 setSystemOverrideHandler:v27];
  v14 = CUXPCDictionaryCreateReply();
  if (v14)
  {
    xpc_dictionary_set_int64(v14, "pwrS", [(CBDaemonXPCConnection *)self _powerStateForClient]);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_100042234;
    v25 = sub_1000425AC;
    v26 = 0;
    v15 = [(CBDaemonServer *)self->_daemon deviceMap];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100147D78;
    v17[3] = &unk_100AE0840;
    v18 = v13;
    v19 = self;
    v20 = &v21;
    [v15 enumerateKeysAndObjectsUsingBlock:v17];

    v16 = v22[5];
    if (v16)
    {
      xpc_dictionary_set_value(v14, "devA", v16);
    }

    [(CBDaemonXPCConnection *)self _xpcSendReply:v14];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    sub_10080E5F8();
  }
}

- (void)_xpcCBDiscoveryActivateWHB:(id)a3 discovery:(id)a4
{
  v6 = a3;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001481DC;
  v28[3] = &unk_100ADF590;
  v28[4] = self;
  v7 = a4;
  v29 = v7;
  [v7 setBluetoothStateChangedHandler:v28];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100148250;
  v26[3] = &unk_100ADF718;
  v26[4] = self;
  v8 = v7;
  v27 = v8;
  [v8 setDeviceFoundHandler:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100148274;
  v24[3] = &unk_100ADF718;
  v24[4] = self;
  v9 = v8;
  v25 = v9;
  [v9 setDeviceLostHandler:v24];
  objc_storeStrong(&self->_activatedDiscoveryWHB, a4);
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E660(self);
  }

  v10 = +[CBMetricsDaemon sharedCBMetricsDaemon];
  [v10 reportCBDiscovery:v9 daemonCnx:self action:@"strt"];

  [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:0];
  v11 = CUXPCDictionaryCreateReply();
  if (v11)
  {
    xpc_dictionary_set_int64(v11, "pwrS", [(CBDaemonXPCConnection *)self _powerStateForClient]);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100042234;
    v22 = sub_1000425AC;
    v23 = 0;
    v12 = [(CBDaemonServer *)self->_daemon whbDeviceMap];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100148298;
    v14[3] = &unk_100AE0840;
    v15 = v9;
    v16 = self;
    v17 = &v18;
    [v12 enumerateKeysAndObjectsUsingBlock:v14];

    v13 = v19[5];
    if (v13)
    {
      xpc_dictionary_set_value(v11, "devA", v13);
    }

    [(CBDaemonXPCConnection *)self _xpcSendReply:v11];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    sub_10080E6B8();
  }
}

- (void)_xpcCBDiscoveryFinish:(id)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100042234;
  v28 = sub_1000425AC;
  v29 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100148768;
  v21[3] = &unk_100AE0380;
  v23 = &v24;
  v21[4] = self;
  v4 = a3;
  v22 = v4;
  v5 = objc_retainBlock(v21);
  v6 = v25;
  obj = v25[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    activatedDiscovery = self->_activatedDiscovery;
    if (activatedDiscovery)
    {
      v9 = activatedDiscovery;
    }

    else
    {
      v9 = self->_activatedDiscoveryWHB;
      if (!v9)
      {
        v14 = CBErrorF();
        v9 = v25[5];
        v25[5] = v14;
LABEL_19:

        goto LABEL_20;
      }
    }

    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v10 = [(CBDiscovery *)v9 clientID];
      CUPrintPID();
      v16 = v15 = v10;
      LogPrintF_safe();
    }

    v11 = [(CBDaemonServer *)self->_daemon stackBLEScanner:v15];
    if (v11)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100148844;
      v17[3] = &unk_100AE21B8;
      v17[4] = v9;
      v18 = v4;
      v19 = self;
      [v11 finishDiscovery:v9 completionHandler:v17];
    }

    else
    {
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        [(CBDiscovery *)v9 clientID];
        LogPrintF_safe();
      }

      v12 = CUXPCDictionaryCreateReply();
      if (v12)
      {
        v13 = objc_alloc_init(CBDiscoverySummary);
        CUXPCEncodeObject();
        [(CBDaemonXPCConnection *)self _xpcSendReply:v12];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  (v5[2])(v5);

  _Block_object_dispose(&v24, 8);
}

- (void)_xpcCBDiscoveryUpdate:(id)a3
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100042234;
  v33 = sub_1000425AC;
  v34 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100148C88;
  v26[3] = &unk_100AE0380;
  v28 = &v29;
  v26[4] = self;
  v4 = a3;
  v27 = v4;
  v5 = objc_retainBlock(v26);
  v6 = (v30 + 5);
  obj = v30[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [CBDiscovery alloc];
    v9 = (v30 + 5);
    v24 = v30[5];
    v10 = [v8 initWithXPCObject:v4 error:&v24];
    objc_storeStrong(v9, v24);
    if (v10)
    {
      v11 = [v10 softwareUpdatePayloads];
      v12 = [v11 count];

      if (v12)
      {
        v13 = (v30 + 5);
        v23 = v30[5];
        v14 = [(CBDaemonXPCConnection *)self _entitledSoftwareUpdateAndReturnError:&v23];
        objc_storeStrong(v13, v23);
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      activatedDiscovery = self->_activatedDiscovery;
      if (activatedDiscovery)
      {
        v16 = activatedDiscovery;
        goto LABEL_8;
      }

      v16 = self->_activatedDiscoveryWHB;
      if (v16)
      {
LABEL_8:
        v17 = [(CBDiscovery *)v16 updateWithCBDiscovery:v10];
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v22 = CUPrintPID();
          LogPrintF_safe();
        }

        if (v17)
        {
          v18 = +[CBMetricsDaemon sharedCBMetricsDaemon];
          [v18 reportCBDiscovery:v16 daemonCnx:self action:@"updt"];

          [(CBDaemonServer *)self->_daemon scheduleDiscoveryUpdateImmediate:0];
        }

        goto LABEL_14;
      }

      v20 = CBErrorF();
      v21 = v30[5];
      v30[5] = v20;

      v16 = 0;
    }

    else
    {
      v19 = CBErrorF();
      v16 = v30[5];
      v30[5] = v19;
    }

LABEL_14:

LABEL_15:
  }

  (v5[2])(v5);

  _Block_object_dispose(&v29, 8);
}

- (void)_xpcCBDiscoveryClearDuplicateFilterCache:(id)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100042234;
  v20 = sub_1000425AC;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100148F38;
  v13[3] = &unk_100AE0380;
  v15 = &v16;
  v13[4] = self;
  v4 = a3;
  v14 = v4;
  v5 = objc_retainBlock(v13);
  v6 = (v17 + 5);
  obj = v17[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    activatedDiscovery = self->_activatedDiscovery;
    if (activatedDiscovery)
    {
      v9 = activatedDiscovery;
    }

    else
    {
      v9 = self->_activatedDiscoveryWHB;
      if (!v9)
      {
        v10 = CBErrorF();
        v11 = v17[5];
        v17[5] = v10;

        v9 = 0;
        goto LABEL_6;
      }
    }

    [(CBDaemonServer *)self->_daemon clearDuplicateFilterCache:v9];
LABEL_6:
  }

  (v5[2])(v5);

  _Block_object_dispose(&v16, 8);
}

- (void)_xpcCBDiscoveryGetDevices:(id)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100042234;
  v23 = sub_1000425AC;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100149328;
  v16[3] = &unk_100AE0380;
  v18 = &v19;
  v16[4] = self;
  v4 = a3;
  v17 = v4;
  v5 = objc_retainBlock(v16);
  v6 = (v20 + 5);
  obj = v20[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "dsFl");
    if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v9 = CBDiscoveryFlagsToString();
      v13 = CUPrintPID();
      LogPrintF_safe();
    }

    v10 = CUXPCDictionaryCreateReply();
    if (v10)
    {
      v11 = xpc_array_create(0, 0);
      v12 = [(CBDaemonServer *)self->_daemon deviceMap];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100149404;
      v14[3] = &unk_100AE21E0;
      v14[4] = v11;
      v14[5] = uint64;
      [v12 enumerateKeysAndObjectsUsingBlock:v14];

      xpc_dictionary_set_value(v10, "devA", v11);
      [(CBDaemonXPCConnection *)self _xpcSendReply:v10];
    }

    else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v19, 8);
}

- (void)_xpcCBDiscoveryGetDevicesMatchingProperties:(id)a3
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100042234;
  v40 = sub_1000425AC;
  v41 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001498D0;
  v33[3] = &unk_100AE0380;
  v35 = &v36;
  v33[4] = self;
  v4 = a3;
  v34 = v4;
  v5 = objc_retainBlock(v33);
  v6 = v37;
  obj = v37[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = xpc_dictionary_get_value(v4, "devi");
    if (v8)
    {
      v9 = [CBDevice alloc];
      v10 = v37;
      v31 = v37[5];
      v11 = [v9 initWithXPCObject:v8 error:&v31];
      objc_storeStrong(v10 + 5, v31);
      v12 = v37 + 5;
      if (!v37[5])
      {
        v30 = 0;
        v29 = 0;
        CUXPCDecodeBool();
        objc_storeStrong(v12, 0);
        if (!v37[5])
        {
          v25 = 0;
          v26 = &v25;
          v27 = 0x2020000000;
          v28 = 0;
          v13 = xpc_array_create(0, 0);
          v14 = [v11 identifier];

          if (v14)
          {
            v15 = [(CBDaemonServer *)self->_daemon deviceMap];
            v16 = [v11 identifier];
            v17 = [v15 objectForKeyedSubscript:v16];

            if (v17)
            {
              v18 = xpc_dictionary_create(0, 0, 0);
              [v17 encodeWithXPCObject:v18];
              xpc_array_append_value(v13, v18);
              *(v26 + 24) = 1;
            }
          }

          if ((v26[3] & 1) == 0)
          {
            v19 = [(CBDaemonServer *)self->_daemon deviceMap];
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_1001499AC;
            v23[3] = &unk_100AE2208;
            v24 = v30;
            v23[4] = v11;
            v23[5] = v13;
            v23[6] = &v25;
            [v19 enumerateKeysAndObjectsUsingBlock:v23];
          }

          v20 = CUXPCDictionaryCreateReply();
          v21 = v20;
          if (v20)
          {
            xpc_dictionary_set_value(v20, "devA", v13);
            [(CBDaemonXPCConnection *)self _xpcSendReply:v21];
          }

          else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          _Block_object_dispose(&v25, 8);
        }
      }
    }

    else
    {
      v22 = CBErrorF();
      v11 = v37[5];
      v37[5] = v22;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v36, 8);
}

- (void)_xpcCBDiscoveryInjectAOPBufAdv:(id)a3
{
  v4 = xpc_dictionary_get_array(a3, "rAdv");
  v5 = v4;
  if (v4)
  {
    count = xpc_array_get_count(v4);
    if (count)
    {
      v7 = count;
      v8 = objc_alloc_init(NSMutableArray);
      for (i = 0; i != v7; ++i)
      {
        length = 0;
        data = xpc_array_get_data(v5, i, &length);
        if (length)
        {
          v11 = data;
          v12 = [NSData alloc];
          v13 = [v12 initWithBytes:v11 length:length];
          [v8 addObject:v13];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080E7C8();
        }
      }

      if ([v8 count])
      {
        if (dword_100B510A0 <= 40 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          sub_10080E808();
        }

        [(CBDaemonServer *)self->_daemon injectAOPBufAdv:v8];
      }

      else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080E848();
      }
    }

    else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10080E87C();
    }
  }

  else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E898();
  }
}

- (void)_xpcCBSpatialInteractionSessionActivate:(id)a3
{
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_100042234;
  v74 = sub_1000425AC;
  v75 = 0;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_10014A6C0;
  v67[3] = &unk_100AE0380;
  v69 = &v70;
  v67[4] = self;
  v6 = a3;
  v68 = v6;
  v7 = objc_retainBlock(v67);
  v8 = v71;
  v66 = v71[5];
  v50 = v7;
  v9 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&v66];
  objc_storeStrong(v8 + 5, v66);
  if (v9)
  {
    v10 = [CBSpatialInteractionSession alloc];
    v11 = v71;
    v65 = v71[5];
    v12 = [v10 initWithXPCObject:v6 error:&v65];
    objc_storeStrong(v11 + 5, v65);
    if (!v12)
    {
      v44 = CBErrorF();
      v45 = v71[5];
      v71[5] = v44;

LABEL_48:
      goto LABEL_49;
    }

    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10014A79C;
    v64[3] = &unk_100ADF590;
    v64[4] = v12;
    v64[5] = self;
    [v12 setAdvertisingAddressChangedHandler:v64];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10014A8C0;
    v63[3] = &unk_100AE2230;
    v63[4] = v12;
    v63[5] = self;
    [v12 setAopDataHandler:v63];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10014A8DC;
    v62[3] = &unk_100ADF590;
    v62[4] = v12;
    v62[5] = self;
    [v12 setBluetoothStateChangedHandler:v62];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10014A934;
    v61[3] = &unk_100ADF718;
    v61[4] = v12;
    v61[5] = self;
    [v12 setDeviceFoundHandler:v61];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10014A950;
    v60[3] = &unk_100ADF718;
    v60[4] = v12;
    v60[5] = self;
    [v12 setDeviceLostHandler:v60];
    v54 = objc_alloc_init(NSMutableDictionary);
    v13 = [v12 clientIrkData];
    if (v13 && ([v12 clientIrkData], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length") == 16))
    {
      v53 = [v12 clientIrkData];
    }

    else
    {
      v53 = NSRandomData();
      if (!v13)
      {
LABEL_8:

        [v12 setIrkData:v53];
        [v54 setObject:v53 forKeyedSubscript:&off_100B33660];
        v14 = [v12 clientIdentifierData];
        if (v14 && ([v12 clientIdentifierData], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "length") == 3))
        {
          v52 = [v12 clientIdentifierData];
        }

        else
        {
          v52 = NSRandomData();
          if (!v14)
          {
LABEL_13:

            [v12 setIdentifierData:v52];
            [v54 setObject:v52 forKeyedSubscript:&off_100B33678];
            v15 = [v12 uwbTokenFlags];
            if (v15)
            {
              v16 = [NSNumber numberWithUnsignedInt:v15];
              [v54 setObject:v16 forKeyedSubscript:&off_100B33690];
            }

            v59 = 0;
            Data = OPACKEncoderCreateData();
            if (Data)
            {
              [v12 setTokenData:Data];
              objc_storeStrong(&self->_activatedSpatialInteractionSession, v12);
              if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
              {
                CUPrintPID();
                v48 = v47 = v12;
                LogPrintF_safe();
              }

              v18 = objc_alloc_init(CBDiscovery);
              objc_storeStrong(&self->_activatedDiscovery, v18);
              [v18 setBleScanRate:{objc_msgSend(v12, "scanRate")}];
              [v18 setBleScanRateScreenOff:{objc_msgSend(v12, "scanRateScreenOff")}];
              [v18 setBleRSSIThresholdHint:{objc_msgSend(v12, "bleRSSIThresholdHint")}];
              [v18 setBleRSSIThresholdOrder:{objc_msgSend(v12, "bleRSSIThresholdOrder")}];
              [v18 setDiscoveryFlags:0x40000];
              v19 = [v12 filter];
              [v18 setSpatialInteractionfilter:v19];

              if (([v12 controlFlags] & 0x1000) != 0)
              {
                v20 = [v18 discoveryFlags] | 0x2000000;
              }

              else
              {
                v20 = [v18 discoveryFlags] & 0xFFFFFFFFFDFFFFFFLL;
              }

              [v18 setDiscoveryFlags:{v20, v47, v48}];
              if (([v12 controlFlags] & 0x2000) != 0)
              {
                v21 = [v18 discoveryFlags] | 0x200000000;
              }

              else
              {
                v21 = [v18 discoveryFlags] & 0xFFFFFFFDFFFFFFFFLL;
              }

              [v18 setDiscoveryFlags:v21];
              if (([v12 controlFlags] & 0x10) != 0)
              {
                v22 = [v18 internalFlags] | 0x10;
              }

              else
              {
                v22 = [v18 internalFlags] & 0xFFFFFFEF;
              }

              [v18 setInternalFlags:v22];
              v23 = [v12 controlFlags];
              v24 = v18;
              v25 = [v18 discoveryTypesInternalPtr];
              if ((v23 & 0x8000) != 0)
              {
                v26 = v25[4] | 0x80;
              }

              else
              {
                v26 = v25[4] & 0x7F;
              }

              v25[4] = v26;
              v58[0] = _NSConcreteStackBlock;
              v58[1] = 3221225472;
              v58[2] = sub_10014A96C;
              v58[3] = &unk_100ADF718;
              v58[4] = v18;
              v58[5] = self;
              [v18 setDeviceFoundHandler:v58];
              v57[0] = _NSConcreteStackBlock;
              v57[1] = 3221225472;
              v57[2] = sub_10014A98C;
              v57[3] = &unk_100ADF718;
              v57[4] = v18;
              v57[5] = self;
              [v18 setDeviceLostHandler:v57];
              v56[0] = _NSConcreteStackBlock;
              v56[1] = 3221225472;
              v56[2] = sub_10014A9B4;
              v56[3] = &unk_100ADF590;
              v56[4] = v18;
              v56[5] = self;
              [v18 setSystemOverrideHandler:v56];
              v27 = +[CBMetricsDaemon sharedCBMetricsDaemon];
              [v27 reportCBDiscovery:v18 daemonCnx:self action:@"strt"];

              [(CBDaemonServer *)self->_daemon scheduleSpatialUpdateImmediate:1];
              v49 = v6;
              v28 = CUXPCDictionaryCreateReply();
              if (v28)
              {
                xpc_dictionary_set_int64(v28, "pwrS", [(CBDaemonXPCConnection *)self _powerStateForClient]);
                v51 = Data;
                v29 = [(CBDaemonServer *)self->_daemon supportsNCSecondaryAdvertisingInstance];
                daemon = self->_daemon;
                if (v29)
                {
                  v31 = [(CBDaemonServer *)daemon addressMonitor];
                  [v31 nonConnectableSecondaryAddressData];
                }

                else
                {
                  v31 = [(CBDaemonServer *)daemon addressMonitor];
                  [v31 nonConnectableAddressData];
                }
                v32 = ;

                [v12 setAdvertisingAddressData:v32];
                if ([(CBDaemonServer *)self->_daemon supportsNCSecondaryAdvertisingInstance])
                {
                  v33 = "aaNC2";
                }

                else
                {
                  v33 = "aaNC";
                }

                if (v32)
                {
                  v34 = v32;
                  v35 = v32;
                  v36 = v28;
                  v37 = [v35 bytes];
                  v38 = [v35 length];
                  if (!v37)
                  {
                    v37 = "";
                  }

                  xpc_dictionary_set_data(v36, v33, v37, v38);
                }

                v39 = v51;
                v40 = v28;
                v41 = [v39 bytes];
                v42 = [v39 length];
                if (!v41)
                {
                  v41 = "";
                }

                xpc_dictionary_set_data(v40, "siTD", v41, v42);
                [(CBDaemonXPCConnection *)self _xpcSendReply:v40];
                self->_spatialActivateResponded = 1;
                v43 = [(CBDaemonServer *)self->_daemon deviceMap];
                v55[0] = _NSConcreteStackBlock;
                v55[1] = 3221225472;
                v55[2] = sub_10014AA64;
                v55[3] = &unk_100AE0290;
                v55[4] = self;
                [v43 enumerateKeysAndObjectsUsingBlock:v55];

                Data = v51;
              }

              else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }

              v6 = v49;
            }

            else
            {
              v46 = CBErrorF();
              v18 = v71[5];
              v71[5] = v46;
            }

            v7 = v50;
            goto LABEL_48;
          }
        }

        goto LABEL_13;
      }
    }

    goto LABEL_8;
  }

LABEL_49:
  (v7[2])(v7);

  _Block_object_dispose(&v70, 8);
}

- (void)_xpcCBSpatialInteractionSessionUpdate:(id)a3
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100042234;
  v31 = sub_1000425AC;
  v32 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10014AE58;
  v24[3] = &unk_100AE0380;
  v26 = &v27;
  v24[4] = self;
  v4 = a3;
  v25 = v4;
  v5 = objc_retainBlock(v24);
  v6 = (v28 + 5);
  obj = v28[5];
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    v8 = [CBSpatialInteractionSession alloc];
    v9 = (v28 + 5);
    v22 = v28[5];
    v10 = [v8 initWithXPCObject:v4 error:&v22];
    objc_storeStrong(v9, v22);
    if (v10)
    {
      v11 = self->_activatedSpatialInteractionSession;
      v12 = v11;
      if (v11)
      {
        v13 = [(CBSpatialInteractionSession *)v11 updateWithSession:v10];
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          CUPrintPID();
          v21 = v20 = v12;
          LogPrintF_safe();
        }

        v14 = self->_activatedDiscovery;
        if (([(CBSpatialInteractionSession *)v12 controlFlags]& 0x1000) != 0)
        {
          v15 = [(CBDiscovery *)v14 discoveryFlags]| 0x2000000;
        }

        else
        {
          v15 = [(CBDiscovery *)v14 discoveryFlags]& 0xFFFFFFFFFDFFFFFFLL;
        }

        [(CBDiscovery *)v14 setDiscoveryFlags:v15, v20, v21];
        [(CBDiscovery *)self->_activatedDiscovery setBleScanRate:[(CBSpatialInteractionSession *)v12 scanRate]];
        [(CBDiscovery *)self->_activatedDiscovery setBleScanRateScreenOff:[(CBSpatialInteractionSession *)v12 scanRateScreenOff]];
        [(CBDiscovery *)self->_activatedDiscovery setBleRSSIThresholdHint:[(CBSpatialInteractionSession *)v12 bleRSSIThresholdHint]];
        [(CBDiscovery *)self->_activatedDiscovery setBleRSSIThresholdOrder:[(CBSpatialInteractionSession *)v12 bleRSSIThresholdOrder]];
        if (([(CBSpatialInteractionSession *)v12 controlFlags]& 0x10) != 0)
        {
          v16 = [(CBDiscovery *)v14 internalFlags]| 0x10;
        }

        else
        {
          v16 = [(CBDiscovery *)v14 internalFlags]& 0xFFFFFFEF;
        }

        [(CBDiscovery *)v14 setInternalFlags:v16];
        if (v13)
        {
          v17 = +[CBMetricsDaemon sharedCBMetricsDaemon];
          [v17 reportCBDiscovery:v14 daemonCnx:self action:@"updt"];

          [(CBDaemonServer *)self->_daemon scheduleSpatialUpdateImmediate:0];
        }
      }

      else
      {
        v19 = CBErrorF();
        v14 = v28[5];
        v28[5] = v19;
      }
    }

    else
    {
      v18 = CBErrorF();
      v12 = v28[5];
      v28[5] = v18;
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v27, 8);
}

- (void)_xpcCBSpatialInteractionSessionAddPeerToken:(id)a3
{
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100042234;
  v60 = sub_1000425AC;
  v61 = 0;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10014B4A4;
  v53[3] = &unk_100AE0380;
  v55 = &v56;
  v53[4] = self;
  v4 = a3;
  v54 = v4;
  v5 = objc_retainBlock(v53);
  v6 = v57;
  obj = v57[5];
  v45 = v5;
  v7 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6 + 5, obj);
  if (v7)
  {
    v8 = v57;
    v51 = v57[5];
    v9 = [(CBDaemonXPCConnection *)self _spatialInteractionDecodePeerTokenRequest:v4 error:&v51];
    objc_storeStrong(v8 + 5, v51);
    if (!v9)
    {
LABEL_36:

      v5 = v45;
      goto LABEL_37;
    }

    v10 = [v9 irkData];
    v11 = v57 + 5;
    v50 = v57[5];
    v62 = 0;
    v12 = CUXPCDecodeUInt64RangedEx();
    if (v12 == 6)
    {
      v13 = v62;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(v11, v50);
    if (v12 == 5)
    {
LABEL_35:

      goto LABEL_36;
    }

    if (!v13)
    {
      v35 = CBErrorF();
      v44 = v57[5];
      v57[5] = v35;

      goto LABEL_35;
    }

    [v9 setPeerID:v13];
    v43 = self->_activatedSpatialInteractionSession;
    if (v43)
    {
      v14 = [(NSMutableArray *)self->_spatialPeers count];
      v46 = v4;
      v42 = v13;
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = v14 - 1;
        do
        {
          v18 = objc_autoreleasePoolPush();
          v19 = [(NSMutableArray *)self->_spatialPeers objectAtIndexedSubscript:v16];
          v20 = [v19 irkData];
          v21 = [v20 isEqual:v10];

          if (v21)
          {
            v22 = v19;

            [(NSMutableArray *)self->_spatialPeers setObject:v9 atIndexedSubscript:v16];
            v15 = v22;
          }

          objc_autoreleasePoolPop(v18);
          if (v17 == v16++)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21;
          }
        }

        while ((v24 & 1) == 0);
        v4 = v46;
        if (v15)
        {
          v25 = [v15 peerID];
          spatialDeviceMapMatched = self->_spatialDeviceMapMatched;
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_10014B580;
          v47[3] = &unk_100AE2250;
          v48 = v25;
          v49 = v42;
          [(NSMutableDictionary *)spatialDeviceMapMatched enumerateKeysAndObjectsUsingBlock:v47];
          v27 = "replaced";
LABEL_23:
          v31 = [v9 identifierData];
          if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            v32 = [v9 irkData];
            v33 = CUPrintNSObjectMasked();
            v40 = CUPrintPID();
            v41 = v27;
            v38 = v33;
            v39 = v42;
            v37 = v31;
            LogPrintF_safe();
          }

          v4 = v46;
          v34 = CUXPCDictionaryCreateReply();
          if (v34)
          {
            [(CBDaemonXPCConnection *)self _xpcSendReply:v34];
          }

          else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          [(CBDaemonXPCConnection *)self _spatialInteractionReevaluateDevices:v37];

          goto LABEL_34;
        }
      }

      if ([(NSMutableArray *)self->_spatialPeers count]< 0x1E)
      {
        spatialPeers = self->_spatialPeers;
        if (!spatialPeers)
        {
          v29 = objc_alloc_init(NSMutableArray);
          v30 = self->_spatialPeers;
          self->_spatialPeers = v29;

          spatialPeers = self->_spatialPeers;
        }

        [(NSMutableArray *)spatialPeers addObject:v9];
        v15 = 0;
        v27 = "added";
        goto LABEL_23;
      }
    }

    v36 = CBErrorF();
    v15 = v57[5];
    v57[5] = v36;
LABEL_34:

    goto LABEL_35;
  }

LABEL_37:
  (v5[2])(v5);

  _Block_object_dispose(&v56, 8);
}

- (void)_xpcCBSpatialInteractionSessionRemovePeerToken:(id)a3
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100042234;
  v49 = sub_1000425AC;
  v50 = 0;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10014BAD8;
  v42[3] = &unk_100AE0380;
  v44 = &v45;
  v42[4] = self;
  v4 = a3;
  v43 = v4;
  v35 = objc_retainBlock(v42);
  v5 = v46;
  obj = v46[5];
  v6 = [(CBDaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v5 + 5, obj);
  if (v6)
  {
    v7 = v46 + 5;
    v40 = v46[5];
    v8 = [(CBDaemonXPCConnection *)self _spatialInteractionDecodePeerTokenRequest:v4 error:&v40];
    objc_storeStrong(v7, v40);
    if (v8)
    {
      v9 = [v8 irkData];
      v34 = self->_activatedSpatialInteractionSession;
      if (!v34)
      {
        goto LABEL_8;
      }

      v10 = [(NSMutableArray *)self->_spatialPeers count];
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = 0;
      while (1)
      {
        v12 = [(NSMutableArray *)self->_spatialPeers objectAtIndexedSubscript:v11];
        v13 = [v12 irkData];
        v14 = [v13 isEqual:v9];

        if (v14)
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_8;
        }
      }

      v16 = v12;
      [(NSMutableArray *)self->_spatialPeers removeObjectAtIndex:v11];

      if (v16)
      {
        v17 = [v16 peerID];
        if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v32 = [v16 identifierData];
          v18 = [v16 irkData];
          v19 = CUPrintNSObjectMasked();
          CUPrintPID();
          v29 = v28 = v17;
          v26 = v32;
          v27 = v19;
          LogPrintF_safe();
        }

        v20 = CUXPCDictionaryCreateReply();
        if (v20)
        {
          [(CBDaemonXPCConnection *)self _xpcSendReply:v20];
        }

        else if (dword_100B510A0 <= 90 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v30 = v20;
        v31 = v8;
        v33 = v4;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v21 = [(NSMutableDictionary *)self->_spatialDeviceMapMatched allValues:v26];
        v22 = [v21 countByEnumeratingWithState:&v36 objects:v51 count:16];
        if (v22)
        {
          v23 = *v37;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v36 + 1) + 8 * i);
              if ([v25 spatialInteractionPeerID] == v17)
              {
                [(CBDaemonXPCConnection *)self _spatialInteractionDeviceLost:v25 removeUnmatched:0 reason:"removed token"];
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v36 objects:v51 count:16];
          }

          while (v22);
        }

        v8 = v31;
        v4 = v33;
      }

      else
      {
LABEL_8:
        v15 = CBErrorF();
        v16 = v46[5];
        v46[5] = v15;
      }
    }
  }

  (v35[2])(v35);

  _Block_object_dispose(&v45, 8);
}

- (void)_spatialInteractionReevaluateDevices
{
  if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10080E8C8(self);
  }

  v3 = [(NSMutableDictionary *)self->_spatialDeviceMapMatched allValues];
  v4 = [(NSMutableDictionary *)self->_spatialDeviceMapUnmatched allValues];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        [(CBDaemonXPCConnection *)self _spatialInteractionDeviceFound:v10 checkOnly:1];
        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v7);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v41 + 1) + 8 * j);
        v18 = objc_autoreleasePoolPush();
        [(CBDaemonXPCConnection *)self _spatialInteractionDeviceFound:v17 checkOnly:1];
        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v14);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = v5;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v37 + 1) + 8 * k);
        v25 = objc_autoreleasePoolPush();
        [(CBDaemonXPCConnection *)self _spatialInteractionDeviceFound:v24 checkOnly:0];
        objc_autoreleasePoolPop(v25);
      }

      v21 = [v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v21);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v12;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (m = 0; m != v28; m = m + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v33 + 1) + 8 * m);
        v32 = objc_autoreleasePoolPush();
        [(CBDaemonXPCConnection *)self _spatialInteractionDeviceFound:v31 checkOnly:0, v33];
        objc_autoreleasePoolPop(v32);
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v28);
  }
}

- (void)_xpcAdvertisingAddressChanged
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "AdAC");
  v3 = [(CBDaemonServer *)self->_daemon addressMonitor];
  v4 = [v3 connectableAddressData];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = xdict;
    v8 = [v5 bytes];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = "";
    }

    xpc_dictionary_set_data(v7, "aaCN", v9, [v5 length]);
  }

  v10 = [(CBDaemonServer *)self->_daemon addressMonitor];
  v11 = [v10 nonConnectableAddressData];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = xdict;
    v15 = [v12 bytes];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = "";
    }

    xpc_dictionary_set_data(v14, "aaNC", v16, [v12 length]);
  }

  v17 = [(CBDaemonServer *)self->_daemon addressMonitor];
  v18 = [v17 nonConnectableSecondaryAddressData];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    v21 = xdict;
    v22 = [v19 bytes];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = "";
    }

    xpc_dictionary_set_data(v21, "aaNC2", v23, [v19 length]);
  }

  if ([(CBDaemonServer *)self->_daemon supportsNCSecondaryAdvertisingInstance])
  {
    xpc_dictionary_set_BOOL(xdict, "aaUNC2", 1);
  }

  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcDeviceFound:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "DvFo");
  [v4 encodeWithXPCObject:v5];

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_xpcDeviceLost:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "DvLo");
  [v4 encodeWithXPCObject:v5];

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_xpcDevicesBuffered:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "DsBf");
  CUXPCEncodeNSArrayOfObjects();

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_xpcDiscoverableStateChanged:(int)a3
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "DscC");
  xpc_dictionary_set_int64(xdict, "dsSt", a3);
  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcInquiryStateChanged:(int)a3
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "InqC");
  xpc_dictionary_set_int64(xdict, "inqS", a3);
  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcPowerStateChanged:(int64_t)a3
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "PwrC");
  xpc_dictionary_set_int64(xdict, "pwrS", a3);
  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)xpcReceivedAudioAccessoryEventType:(unsigned __int8)a3 messageData:(id)a4 sourceDevice:(id)a5
{
  v6 = a3;
  v16 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "mTyp", "AcRc");
  if (v6)
  {
    xpc_dictionary_set_uint64(v9, "acET", v6);
  }

  if (v16)
  {
    v10 = v16;
    v11 = v9;
    v12 = v16;
    v13 = [v12 bytes];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = "";
    }

    v15 = [v12 length];

    xpc_dictionary_set_data(v11, "acMd", v14, v15);
  }

  CUXPCEncodeObject();
  [(CBDaemonXPCConnection *)self _xpcSendEvent:v9];
}

- (void)xpcReceivedAudioAccessoryDeviceInfoChange:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "AcIC");
  xpc_dictionary_set_value(xdict, "aaID", v5);

  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcReceivedRelayMessageType:(unsigned __int8)a3 messageData:(id)a4 conduitDevice:(id)a5 sourceDevice:(id)a6
{
  v8 = a3;
  v19 = a4;
  v10 = a5;
  v11 = a6;
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v12, "mTyp", "RlMR");
  if (v8)
  {
    xpc_dictionary_set_uint64(v12, "rlMT", v8);
  }

  if (v19)
  {
    v13 = v19;
    v14 = v12;
    v15 = v19;
    v16 = [v15 bytes];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = "";
    }

    v18 = [v15 length];

    xpc_dictionary_set_data(v14, "rlMD", v17, v18);
  }

  CUXPCEncodeObject();
  CUXPCEncodeObject();

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v12];
}

- (void)_xpcSpatialInteractionAOPDataReceived:(id)a3
{
  v11 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "mTyp", "SpAD");
  if (v11)
  {
    v5 = v11;
    v6 = v4;
    v7 = v11;
    v8 = [v7 bytes];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = "";
    }

    v10 = [v7 length];

    xpc_dictionary_set_data(v6, "siAD", v9, v10);
  }

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v4];
}

- (void)_xpcSystemOverrideChanged
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "mTyp", "SyOC");
  xpc_dictionary_set_int64(xdict, "scRO", [(CBDiscovery *)self->_activatedDiscovery bleScanRateOverride]);
  xpc_dictionary_set_uint64(xdict, "syOF", [(CBDiscovery *)self->_activatedDiscovery systemOverrideFlags]);
  [(CBDaemonXPCConnection *)self _xpcSendEvent:xdict];
}

- (void)_xpcTipiChanged:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "TpiC");
  CUXPCEncodeObject();

  [(CBDaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_setupWHBTimer
{
  if (!self->_activatedDiscoveryWHB)
  {
    v13 = v2;
    v14 = v3;
    v5 = self->_whbTimer;
    if (!v5)
    {
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      whbTimer = self->_whbTimer;
      self->_whbTimer = v6;

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10014CD94;
      v10[3] = &unk_100ADF590;
      v5 = v6;
      v11 = v5;
      v12 = self;
      dispatch_source_set_event_handler(v5, v10);
      CUDispatchTimerSet();
      dispatch_activate(self->_whbTimer);
      if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10080E96C();
      }
    }

    if (!self->_whbLostDevicesMap)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      whbLostDevicesMap = self->_whbLostDevicesMap;
      self->_whbLostDevicesMap = v8;
    }
  }
}

- (void)whbStop
{
  whbTimer = self->_whbTimer;
  if (whbTimer)
  {
    v5 = whbTimer;
    dispatch_source_cancel(v5);
    v4 = self->_whbTimer;
    self->_whbTimer = 0;
  }
}

- (void)aopMessageReceived:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(CBSpatialInteractionSession *)self->_activatedSpatialInteractionSession aopDataHandler];
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4, v6);
    }
  }
}

- (void)reportDeviceFound:(id)a3
{
  v18 = a3;
  activatedDiscovery = self->_activatedDiscovery;
  if (activatedDiscovery)
  {
    v5 = activatedDiscovery;
  }

  else
  {
    v5 = self->_activatedDiscoveryWHB;
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  v6 = [v18 identifier];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v6];
    v8 = [(CBDiscovery *)v5 bleRSSIThresholdHint];
    if (v8)
    {
      v9 = [v18 rssi] < v8;
      v10 = v18;
      LOBYTE(v8) = v9;
    }

    else
    {
      v10 = v18;
    }

    if (![v10 discoveryTypesContainCBDiscovery:v5] || (v8 & 1) != 0)
    {
      if (v7)
      {
        [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v6];
        v13 = [(CBDiscovery *)v5 deviceLostHandler];
LABEL_26:
        v17 = v13;
        if (v13)
        {
          (*(v13 + 16))(v13, v18);
        }
      }
    }

    else
    {
      if (!v7)
      {
        deviceMap = self->_deviceMap;
        if (!deviceMap)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          v16 = self->_deviceMap;
          self->_deviceMap = v15;

          deviceMap = self->_deviceMap;
        }

        [(NSMutableDictionary *)deviceMap setObject:v18 forKeyedSubscript:v6];
        goto LABEL_25;
      }

      if (v7 != v18)
      {
        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
      }

      v11 = [(CBDiscovery *)v5 discoveryFlags];
      if ([(CBDiscovery *)v5 needsIdentify])
      {
        v12 = ([v18 attributeInternalFlags] >> 1) & 1;
        if ((v11 & 0x100000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0;
        if ((v11 & 0x100000) != 0)
        {
LABEL_25:
          v13 = [(CBDiscovery *)v5 deviceFoundHandler];
          goto LABEL_26;
        }
      }

      if (([v18 changedTypesContainCBDiscovery:v5] | v12))
      {
        goto LABEL_25;
      }
    }
  }

LABEL_31:
}

- (void)reportDeviceLost:(id)a3
{
  v10 = a3;
  v4 = [v10 identifier];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v4];

    if (v5)
    {
      activatedDiscovery = self->_activatedDiscovery;
      if (activatedDiscovery)
      {
        v7 = activatedDiscovery;
      }

      else
      {
        v7 = self->_activatedDiscoveryWHB;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v4];
      v8 = [(CBDiscovery *)v7 deviceLostHandler];
      v9 = v8;
      if (v8)
      {
        (*(v8 + 16))(v8, v10);
      }
    }
  }

LABEL_9:
}

- (void)reportDevicesBuffered:(id)a3
{
  v4 = a3;
  v5 = self->_activatedDiscovery;
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          if ([v12 discoveryTypesContainCBDiscovery:{v5, v16}] && objc_msgSend(v12, "isLowerThanAgeLimit:compareTimestamp:", v5, objc_msgSend(v12, "bleAdvertisementTimestampMachContinuous")))
          {
            [v6 addObject:v12];
          }

          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v14 = [(CBDiscovery *)v5 devicesBufferedHandler];
      v15 = v14;
      if (v14)
      {
        (*(v14 + 16))(v14, v6);
      }
    }
  }
}

- (void)_spatialInteractionDeviceFound:(id)a3 checkOnly:(BOOL)a4
{
  v6 = a3;
  v109 = [v6 identifier];
  if (!v109)
  {
    goto LABEL_142;
  }

  v116 = [v6 btAddressData];
  if ([v116 length] != 6)
  {
    goto LABEL_141;
  }

  v108 = a4;
  v7 = [v6 spatialInteractionIdentifiers];
  v110 = self->_activatedSpatialInteractionSession;
  v8 = &off_100B51000;
  v121 = v6;
  v122 = self;
  v113 = v7;
  if (([(CBSpatialInteractionSession *)v110 controlFlags]& 0x3E0) == 0)
  {
    sub_10014CF68();
    goto LABEL_45;
  }

  v9 = [v7 firstObject];
  if ([v9 length] != 3)
  {
    sub_10014CF68();
    goto LABEL_44;
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = [(CBDaemonServer *)self->_daemon identityArray];
  v10 = [obj countByEnumeratingWithState:&v143 objects:v163 count:16];
  if (!v10)
  {
    sub_10014CF68();
    goto LABEL_43;
  }

  v11 = v10;
  v129 = 0;
  v12 = 0;
  v13 = *v144;
  v125 = v9;
  do
  {
    v14 = 0;
    do
    {
      if (*v144 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v143 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      if ([v15 verifyAuthTag:v9 data:v116 type:2 error:0])
      {
        [v6 setInternalFlags:{objc_msgSend(v6, "internalFlags") | 8}];
        [v6 updateWithRPIdentity:v15];
        v17 = [(CBSpatialInteractionSession *)v110 matchesWithDevice:v6];
        if (v122->_isHomePod)
        {
          v18 = sub_10014BBB4();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v23 = "no";
            if (v17)
            {
              v23 = "yes";
            }

            v149 = v23;
            v150 = 2112;
            v151 = v6;
            v152 = 2112;
            v153 = v15;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Spatial found match sys: match %s, %@, %@", buf, 0x20u);
          }

          v9 = v125;
        }

        else if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          v21 = "no";
          if (v17)
          {
            v21 = "yes";
          }

          v100 = v6;
          v102 = v15;
          v97 = v21;
          LogPrintF_safe();
        }

        v129 |= v17;
        v12 |= v17;
      }

      else
      {
        if (v122->_isHomePod)
        {
          v19 = sub_10014BBB4();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [v116 bytes];
            [v116 length];
            sub_1000B70CC();
            v123 = CUPrintHex();
            v120 = [v15 deviceIRKData];
            v20 = CUPrintNSObjectMasked();
            *buf = 138413058;
            v149 = v123;
            v150 = 2112;
            v151 = v20;
            v152 = 2112;
            v153 = v121;
            v154 = 2112;
            v155 = v15;
            _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Spatial found check sys: SRC <%@>, IRK %@, match no, %@, %@", buf, 0x2Au);

            v6 = v121;
            v9 = v125;
          }

          goto LABEL_25;
        }

        if (dword_100B510A0 <= 5 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
        {
          [v116 bytes];
          [v116 length];
          sub_1000B70CC();
          v19 = CUPrintHex();
          v22 = [v15 deviceIRKData];
          CUPrintNSObjectMasked();
          v102 = v121;
          v104 = v15;
          v100 = v97 = v19;
          LogPrintF_safe();

          v9 = v125;
          v6 = v121;
LABEL_25:
        }
      }

      objc_autoreleasePoolPop(v16);
      v14 = v14 + 1;
    }

    while (v11 != v14);
    v24 = [obj countByEnumeratingWithState:&v143 objects:v163 count:16];
    v11 = v24;
  }

  while (v24);
  if (v12)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  v107 = v25;
  self = v122;
  v8 = &off_100B51000;
LABEL_43:

LABEL_44:
LABEL_45:
  v26 = [(CBSpatialInteractionSession *)v110 identifierData:v97];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v27 = self->_spatialPeers;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v139 objects:v162 count:16];
  v115 = v26;
  if (!v28)
  {
    v126 = 0;
    goto LABEL_87;
  }

  v29 = v28;
  v126 = 0;
  v30 = *v140;
  v111 = *v140;
  v112 = v27;
  while (2)
  {
    v31 = 0;
    v114 = v29;
    while (2)
    {
      if (*v140 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v118 = v31;
      v32 = *(*(&v139 + 1) + 8 * v31);
      context = objc_autoreleasePoolPush();
      v33 = [v32 identifierData];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v26;
      }

      v36 = v35;

      v119 = v36;
      if ([v36 length] == 3)
      {
        v37 = [v32 irkData];
        if ([v37 length] == 16)
        {
          obja = v32;
          v161 = 0;
          v160 = 0;
          v38 = [v116 bytes];
          v39 = v38[2];
          LODWORD(v160) = *v38;
          WORD2(v160) = v39;
          v40 = [v119 bytes];
          v41 = v40[2];
          HIWORD(v160) = *v40;
          v161 = v41;
          v124 = v37;
          [v37 bytes];
          __s1 = bswap64(SipHash());
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          v42 = v113;
          v43 = [v42 countByEnumeratingWithState:&v135 objects:v158 count:16];
          if (!v43)
          {
            goto LABEL_79;
          }

          v44 = v43;
          v45 = *v136;
          while (1)
          {
            v46 = 0;
            do
            {
              if (*v136 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v135 + 1) + 8 * v46);
              v48 = objc_autoreleasePoolPush();
              if ([v47 length] == 3)
              {
                v49 = memcmp(&__s1, [v47 bytes], 3uLL);
                if (self->_isHomePod)
                {
                  v50 = sub_10014BBB4();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1000B70CC();
                    v51 = CUPrintHex();
                    v52 = CUPrintNSObjectMasked();
                    sub_1000B70CC();
                    v53 = CUPrintHex();
                    v54 = v53;
                    *buf = 138413314;
                    v55 = "no";
                    if (!v49)
                    {
                      v55 = "yes";
                    }

                    v149 = v51;
                    v150 = 2112;
                    v151 = v52;
                    v152 = 2112;
                    v153 = v53;
                    v154 = 2080;
                    v155 = v55;
                    v156 = 2112;
                    v157 = v121;
                    _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Spatial found check token: SRC <%@>, IRK %@, Hash <%@>, match %s, %@", buf, 0x34u);

                    v6 = v121;
                    v8 = &off_100B51000;

                    self = v122;
                  }

                  goto LABEL_71;
                }

                v56 = *(v8 + 40);
                if (v56 <= 10 && (v56 != -1 || _LogCategory_Initialize()))
                {
                  sub_1000B70CC();
                  v50 = CUPrintHex();
                  v57 = CUPrintNSObjectMasked();
                  sub_1000B70CC();
                  v58 = CUPrintHex();
                  v59 = v58;
                  v60 = "no";
                  if (!v49)
                  {
                    v60 = "yes";
                  }

                  v105 = v60;
                  v106 = v6;
                  v101 = v57;
                  v103 = v58;
                  v98 = v50;
                  LogPrintF_safe();

                  self = v122;
                  v8 = &off_100B51000;
LABEL_71:
                }

                if (!v49)
                {
                  [v6 setSpatialInteractionPeerID:{objc_msgSend(obja, "peerID")}];
                  v129 = 1;
                  v126 = 1;
                }
              }

              objc_autoreleasePoolPop(v48);
              v46 = v46 + 1;
            }

            while (v44 != v46);
            v61 = [v42 countByEnumeratingWithState:&v135 objects:v158 count:16];
            v44 = v61;
            if (!v61)
            {
LABEL_79:

              v29 = v114;
              v26 = v115;
              v30 = v111;
              v27 = v112;
              v62 = v118;
              v37 = v124;
              goto LABEL_82;
            }
          }
        }

        v62 = v118;
LABEL_82:
      }

      else
      {
        v62 = v118;
      }

      objc_autoreleasePoolPop(context);
      v31 = v62 + 1;
      if (v31 != v29)
      {
        continue;
      }

      break;
    }

    v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v139 objects:v162 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_87:

  v63 = v113;
  if (v108)
  {
    goto LABEL_140;
  }

  if ((v129 & 1) == 0)
  {
    v83 = [(NSMutableDictionary *)self->_spatialDeviceMapMatched objectForKeyedSubscript:v109];
    if (v83)
    {
      [(CBDaemonXPCConnection *)self _spatialInteractionDeviceLost:v83 removeUnmatched:0 reason:"no match"];
    }

    else
    {
      spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
      if (!spatialDeviceMapUnmatched)
      {
        v90 = objc_alloc_init(NSMutableDictionary);
        v91 = self->_spatialDeviceMapUnmatched;
        self->_spatialDeviceMapUnmatched = v90;

        spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
      }

      [(NSMutableDictionary *)spatialDeviceMapUnmatched setObject:v6 forKeyedSubscript:v109, v98, v101, v103, v105, v106];
      [(NSMutableDictionary *)self->_spatialDeviceMapMatched setObject:0 forKeyedSubscript:v109];
      if (self->_isHomePod)
      {
        v92 = sub_10014BBB4();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v149 = v6;
          _os_log_debug_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "Spatial found no match device: %@", buf, 0xCu);
        }
      }

      else if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }
    }

    goto LABEL_135;
  }

  v64 = v6;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v65 = [(NSMutableDictionary *)self->_spatialDeviceMapMatched allValues];
  v66 = [v65 countByEnumeratingWithState:&v131 objects:v147 count:16];
  if (!v66)
  {

    v83 = v64;
    self = v122;
    goto LABEL_113;
  }

  v67 = v66;
  v68 = *v132;
  v130 = v64;
  while (2)
  {
    v69 = 0;
    while (2)
    {
      if (*v132 != v68)
      {
        objc_enumerationMutation(v65);
      }

      v70 = *(*(&v131 + 1) + 8 * v69);
      v71 = objc_autoreleasePoolPush();
      v72 = [v70 spatialInteractionPeerID];
      if (v72 == [v64 spatialInteractionPeerID])
      {
        v73 = [v70 idsDeviceID];
        v74 = [v64 idsDeviceID];
        v75 = v73;
        v76 = v74;
        v77 = v76;
        if (v75 == v76)
        {
        }

        else
        {
          if ((v75 != 0) == (v76 == 0))
          {

            goto LABEL_103;
          }

          v78 = [v75 isEqual:v76];

          if ((v78 & 1) == 0)
          {
LABEL_103:
            v26 = v115;
            goto LABEL_106;
          }
        }

        v79 = [v70 lastSeenTicks];
        v26 = v115;
        if (v79 <= [v64 lastSeenTicks])
        {
          v81 = [v70 identifier];
          v82 = [v81 isEqual:v109];

          if ((v82 & 1) == 0)
          {
            [(CBDaemonXPCConnection *)v122 _spatialInteractionDeviceLost:v70 removeUnmatched:1 reason:"replaced matched"];
          }
        }

        else
        {
          v80 = v70;

          v130 = v80;
        }
      }

LABEL_106:
      objc_autoreleasePoolPop(v71);
      if (v67 != ++v69)
      {
        continue;
      }

      break;
    }

    v67 = [v65 countByEnumeratingWithState:&v131 objects:v147 count:16];
    if (v67)
    {
      continue;
    }

    break;
  }

  v83 = v130;
  v6 = v121;
  self = v122;
  v63 = v113;
  if (v130 == v64)
  {
LABEL_113:
    spatialDeviceMapMatched = self->_spatialDeviceMapMatched;
    if (!spatialDeviceMapMatched)
    {
      v85 = objc_alloc_init(NSMutableDictionary);
      v86 = self->_spatialDeviceMapMatched;
      self->_spatialDeviceMapMatched = v85;

      spatialDeviceMapMatched = self->_spatialDeviceMapMatched;
    }

    v87 = v83;
    [(NSMutableDictionary *)spatialDeviceMapMatched setObject:v64 forKeyedSubscript:v109, v98];
    [(NSMutableDictionary *)self->_spatialDeviceMapUnmatched setObject:0 forKeyedSubscript:v109];
    if (self->_isHomePod)
    {
      v88 = sub_10014BBB4();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v64;
        _os_log_debug_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, "Spatial found device: %@", buf, 0xCu);
      }
    }

    else if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v99 = v64;
      LogPrintF_safe();
    }

    v93 = [(CBSpatialInteractionSession *)v110 deviceFoundHandler];
    v94 = v93;
    if (v93)
    {
      (*(v93 + 16))(v93, v64);
    }

    v83 = v87;
  }

LABEL_135:

  if (IsAppleInternalBuild())
  {
    if (v126)
    {
      v95 = 4;
    }

    else
    {
      v95 = v107;
    }

    v96 = objc_autoreleasePoolPush();
    [(CBDaemonXPCConnection *)self _updateDeviceMapSpatialInteractionDeviceTimestampArrayDictionary:v95 device:v6];
    objc_autoreleasePoolPop(v96);
  }

LABEL_140:

LABEL_141:
LABEL_142:
}

- (void)_spatialInteractionDeviceLost:(id)a3 removeUnmatched:(BOOL)a4 reason:(const char *)a5
{
  v8 = a3;
  v9 = [v8 identifier];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_spatialDeviceMapMatched objectForKeyedSubscript:v9];
    [(NSMutableDictionary *)self->_spatialDeviceMapMatched setObject:0 forKeyedSubscript:v9];
    if (a4)
    {
      [(NSMutableDictionary *)self->_spatialDeviceMapUnmatched setObject:0 forKeyedSubscript:v9];
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (!v10)
      {
LABEL_22:

        goto LABEL_23;
      }

      spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
      if (!spatialDeviceMapUnmatched)
      {
        v12 = objc_alloc_init(NSMutableDictionary);
        v13 = self->_spatialDeviceMapUnmatched;
        self->_spatialDeviceMapUnmatched = v12;

        spatialDeviceMapUnmatched = self->_spatialDeviceMapUnmatched;
      }

      [(NSMutableDictionary *)spatialDeviceMapUnmatched setObject:v10 forKeyedSubscript:v9];
    }

    if (self->_isHomePod)
    {
      v14 = sub_10014BBB4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v21 = v8;
        v22 = 2080;
        v23 = a5;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Spatial lost device: %@ (%s)", buf, 0x16u);
      }
    }

    else if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
    {
      v18 = v8;
      v19 = a5;
      LogPrintF_safe();
    }

    if (IsAppleInternalBuild())
    {
      v15 = objc_autoreleasePoolPush();
      [(CBDaemonXPCConnection *)self _updateDeviceMapSpatialInteractionDeviceTimestampArrayDictionary:8 device:v8];
      objc_autoreleasePoolPop(v15);
    }

    v16 = [(CBSpatialInteractionSession *)self->_activatedSpatialInteractionSession deviceLostHandler:v18];
    v17 = v16;
    if (v16)
    {
      (*(v16 + 16))(v16, v8);
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (id)_spatialInteractionDecodePeerTokenRequest:(id)a3 error:(id *)a4
{
  if (CUXPCDecodeNSData() && a4)
  {
    sub_10014CF78();
    *a4 = CBErrorF();
  }

  return 0;
}

- (void)_updateDeviceMapSpatialInteractionDeviceTimestampArrayDictionary:(unsigned __int8)a3 device:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CBSpatialInteractionSession *)self->_activatedSpatialInteractionSession clientID];
  if (v4 && v6 && v7)
  {
    v8 = [(CBDaemonServer *)self->_daemon deviceMap];
    v9 = [v6 identifier];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10014BF5C;
      block[3] = &unk_100AE2278;
      block[4] = self;
      v13 = v10;
      v14 = v4;
      dispatch_async(dispatchQueue, block);
    }
  }
}

- (void)_whbTimerFired
{
  if (dword_100B510A0 <= 20 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  activatedDiscovery = self->_activatedDiscovery;
  if (activatedDiscovery)
  {
    v17 = activatedDiscovery;
  }

  else
  {
    v17 = self->_activatedDiscoveryWHB;
    if (!v17)
    {
      return;
    }
  }

  mach_absolute_time();
  v4 = UpTicksToSeconds();
  v5 = [(NSMutableDictionary *)self->_whbLostDevicesMap allKeys];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_whbLostDevicesMap objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11 && (v4 - [v11 unsignedLongLongValue]) >= 0x2D)
        {
          v13 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v10];
          if (v13)
          {
            if (dword_100B510A0 <= 30 && (dword_100B510A0 != -1 || _LogCategory_Initialize()))
            {
              v16 = v13;
              LogPrintF_safe();
            }

            v14 = [(CBDiscovery *)v17 deviceLostHandler];
            v15 = v14;
            if (v14)
            {
              (*(v14 + 16))(v14, v13);
            }

            [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v10];
          }

          [(NSMutableDictionary *)self->_whbLostDevicesMap removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if (self->_whbTimer)
  {
    CUDispatchTimerSet();
  }
}

@end