@interface DADaemonXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)_entitledForAccessLevel:(int)level returnError:(id *)error;
- (BOOL)_findSyncExtensionPoint:(id)point bundleID:(id)d;
- (id)descriptionWithLevel:(int)level;
- (void)_xpcBluetoothAccessInfoGet:(id)get;
- (void)_xpcBluetoothPairingMsg:(id)msg;
- (void)_xpcCheckAppHasMediaDeviceDiscoveryExtension:(id)extension;
- (void)_xpcDADiscoveryActivate:(id)activate;
- (void)_xpcDADiscoveryInvalidateWithReason:(id)reason;
- (void)_xpcDADiscoveryMigrationComplete:(id)complete;
- (void)_xpcDASessionActivate:(id)activate;
- (void)_xpcDiagnosticShow:(id)show;
- (void)_xpcGetAuthorizedAccessories:(id)accessories;
- (void)_xpcGetAuthorizedDevices:(id)devices;
- (void)_xpcGetDevices:(id)devices;
- (void)_xpcGetPartialIPs:(id)ps;
- (void)_xpcModifyDeviceSettings:(id)settings;
- (void)_xpcRemoveDeviceAppAccessInfo:(id)info;
- (void)_xpcRemoveDeviceConfirmation:(id)confirmation accessInfo:(id)info userConfirmed:(BOOL)confirmed request:(id)request;
- (void)_xpcReportDAEvent:(id)event;
- (void)_xpcRequestPermissionsForDevice:(id)device;
- (void)_xpcResetWiFiIdentifier:(id)identifier;
- (void)_xpcSendEvent:(id)event;
- (void)_xpcSendReply:(id)reply;
- (void)_xpcSendReplyError:(id)error request:(id)request;
- (void)_xpcSetDeviceAccessoryServiceInfo:(id)info;
- (void)_xpcSetDeviceAppAccessInfo:(id)info;
- (void)_xpcSetDeviceState:(id)state;
- (void)_xpcSetPartialIPs:(id)ps;
- (void)_xpcWiFiAwarePairingMsg:(id)msg;
- (void)activate;
- (void)invalidate;
- (void)reportAccessoryServicesChanged:(id)changed;
- (void)reportDeviceChanged:(id)changed appID:(id)d discovery:(BOOL)discovery;
- (void)reportDeviceConnectionStatusChanged:(id)changed;
- (void)reportDevicesMigrated:(id)migrated appID:(id)d;
- (void)reportDiscoveryEvent:(id)event appID:(id)d;
- (void)reportRemovedDevice:(id)device appID:(id)d discovery:(BOOL)discovery;
- (void)xpcReceivedEvent:(id)event;
- (void)xpcReceivedMessage:(id)message;
- (void)xpcReceivedRequest:(id)request;
@end

@implementation DADaemonXPCConnection

- (void)activate
{
  xpcCnx = self->_xpcCnx;
  xpc_connection_get_audit_token();
  memset(v56, 0, 64);
  v46 = [LSBundleRecord bundleRecordForAuditToken:v56 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v46;
    containingBundleRecord = [v4 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
    parentAppID = self->_parentAppID;
    self->_parentAppID = bundleIdentifier;

    infoDictionary = [containingBundleRecord infoDictionary];
    v9 = [infoDictionary objectForKey:@"NSAccessorySetupKitSupports" ofClass:objc_opt_class()];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v10)
    {
      v44 = *v53;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v53 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v52 + 1) + 8 * i);
          v13 = [v12 isEqualToString:@"Bluetooth"];
          if (([v12 isEqualToString:@"WiFi"] | v13))
          {
            if ([(DADaemonServer *)self->_daemon prefEnforceApprovedExtensions])
            {
              v14 = 0;
              while (1)
              {
                extensionPointRecord = [v4 extensionPointRecord];
                identifier = [extensionPointRecord identifier];
                v17 = [identifier isEqual:off_100059850[v14]];

                if (v17)
                {
                  break;
                }

                if (++v14 == 4)
                {
                  if (self->_accessLevel == 4)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_13;
                }
              }

              if (dword_1000606C0 <= 20 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_30;
              }
            }

            else if (dword_1000606C0 <= 20 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
            {
LABEL_30:
              sub_100035BC0(v4);
            }

            self->_accessLevel = 4;
            goto LABEL_35;
          }

LABEL_13:
          ;
        }

        v10 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:
  }

  else
  {
    infoDictionary2 = [v46 infoDictionary];
    v19 = [infoDictionary2 objectForKey:@"NSAccessorySetupKitSupports" ofClass:objc_opt_class()];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    containingBundleRecord = v19;
    v20 = [containingBundleRecord countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v20)
    {
      v21 = *v49;
      while (2)
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(containingBundleRecord);
          }

          v23 = *(*(&v48 + 1) + 8 * j);
          if ([v23 isEqualToString:@"Bluetooth"])
          {
            self->_accessLevel = 4;
          }

          if ([v23 isEqualToString:@"WiFi"])
          {
            self->_accessLevel = 4;
            goto LABEL_32;
          }

          if (self->_accessLevel == 4)
          {
            goto LABEL_32;
          }
        }

        v20 = [containingBundleRecord countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:
    v4 = containingBundleRecord;
  }

  v24 = xpc_copy_entitlement_for_token();
  v25 = v24;
  if (v24)
  {
    v26 = xpc_dictionary_get_BOOL(v24, "com.apple.DeviceAccess");
    if (v26)
    {
      v27 = 6;
    }

    else
    {
      v27 = 5;
    }

    self->_entitledState = v27;
    if (v26)
    {
      self->_accessLevel = 7;
    }

    if (xpc_dictionary_get_BOOL(v25, "com.apple.DeviceAccess.private"))
    {
      self->_accessLevel = 10;
    }
  }

  string = xpc_copy_code_signing_identity_for_token();
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10000188C;
  v47[3] = &unk_100059690;
  v47[4] = string;
  v29 = objc_retainBlock(v47);
  if (string)
  {
    v30 = 1;
  }

  else
  {
    v30 = v25 == 0;
  }

  if (!v30)
  {
    string = xpc_dictionary_get_string(v25, "application-identifier");
  }

  if (string)
  {
    v31 = [NSString stringWithUTF8String:string];
    appID = self->_appID;
    self->_appID = v31;
  }

  if (dword_1000606C0 <= 20 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    pid = self->_pid;
    v34 = CUPrintPID();
    v35 = v34;
    entitledState = self->_entitledState;
    if (entitledState >= 8)
    {
      if (entitledState <= 9)
      {
        v37 = "?";
      }

      else
      {
        v37 = "User";
      }
    }

    else
    {
      v37 = off_100059938[entitledState];
    }

    v42 = v37;
    accessLevel = self->_accessLevel;
    v40 = v34;
    v41 = self->_appID;
    LogPrintF();
  }

  accessLevel = [NSNumber numberWithInt:self->_pid, v40, v41, v42, accessLevel];
  v39 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [DADeviceAccessAnalytics markSessionActivationForPid:accessLevel atTime:v39];

  (v29[2])(v29);
}

- (id)descriptionWithLevel:(int)level
{
  pid = self->_pid;
  v11 = CUPrintPID();
  NSAppendPrintF();
  v5 = 0;

  activatedDiscovery = self->_activatedDiscovery;
  if (activatedDiscovery)
  {
    v12 = activatedDiscovery;
    NSAppendPrintF();
    v7 = v5;

    v5 = v7;
  }

  activatedSession = self->_activatedSession;
  if (activatedSession)
  {
    v13 = activatedSession;
    NSAppendPrintF();
    v9 = v5;

    v5 = v9;
  }

  return v5;
}

- (void)invalidate
{
  connection = self->_xpcCnx;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  v3 = self->_activatedDiscovery;
  if (v3)
  {
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035C48(self);
    }

    activatedDiscovery = self->_activatedDiscovery;
    self->_activatedDiscovery = 0;

    [(DADaemonServer *)self->_daemon removeDiscovery:v3];
    [(DADiscovery *)v3 invalidate];
  }

  v5 = self->_activatedSession;
  if (v5)
  {
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035C48(self);
    }

    [(DASession *)v5 invalidate];
    activatedSession = self->_activatedSession;
    self->_activatedSession = 0;
  }

  [(DADaemonServer *)self->_daemon xpcConnectionInvalidated:self];
}

- (void)reportAccessoryServicesChanged:(id)changed
{
  changedCopy = changed;
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  if (accessLevel == 10 || accessLevel == 4 && ([changedCopy appAccessInfoMap], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", bundleID), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [[DADeviceEvent alloc] initWithEventType:45 device:changedCopy];
    [(DADaemonXPCConnection *)self _xpcReportDAEvent:v8];
  }
}

- (void)reportDeviceChanged:(id)changed appID:(id)d discovery:(BOOL)discovery
{
  discoveryCopy = discovery;
  changedCopy = changed;
  dCopy = d;
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  if (!bundleID)
  {
    if (discoveryCopy)
    {
      configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
      bundleID = [configuration bundleID];

      if (bundleID)
      {
        goto LABEL_2;
      }
    }

    else
    {
      bundleID = 0;
    }

    if (accessLevel == 10)
    {
      bundleID = 0;
      goto LABEL_14;
    }
  }

LABEL_2:
  if (self->_accessLevel == 4)
  {
    appAccessInfoMap = [changedCopy appAccessInfoMap];
    v12 = [appAccessInfoMap objectForKeyedSubscript:bundleID];
    if (v12)
    {
    }

    else
    {
      v14 = [bundleID isEqual:dCopy];

      if (!v14)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  if ([bundleID isEqual:dCopy])
  {
LABEL_14:
    v15 = [[DADeviceEvent alloc] initWithEventType:42 device:changedCopy];
    [(DADaemonXPCConnection *)self _xpcReportDAEvent:v15];
  }

LABEL_15:
}

- (void)reportDiscoveryEvent:(id)event appID:(id)d
{
  eventCopy = event;
  dCopy = d;
  configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
  if (([configuration presenceOnly] & 1) == 0)
  {
    sub_100035CB4(&self->super.isa, dCopy, configuration, eventCopy);
  }
}

- (void)reportRemovedDevice:(id)device appID:(id)d discovery:(BOOL)discovery
{
  discoveryCopy = discovery;
  deviceCopy = device;
  dCopy = d;
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  if (!bundleID)
  {
    if (discoveryCopy)
    {
      configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
      bundleID2 = [configuration bundleID];
      v13 = bundleID2;
      if (bundleID2)
      {
        bundleID3 = bundleID2;
      }

      else
      {
        bundleID3 = [(DADiscovery *)self->_activatedDiscovery bundleID];
      }

      bundleID = bundleID3;
    }

    else
    {
      bundleID = self->_appID;
    }
  }

  if (accessLevel == 10)
  {
    goto LABEL_13;
  }

  if (self->_accessLevel == 4)
  {
    appAccessInfoMap = [deviceCopy appAccessInfoMap];
    v16 = [appAccessInfoMap objectForKeyedSubscript:bundleID];
    if (v16)
    {

LABEL_13:
      flags = [deviceCopy flags];
      v18 = [DADeviceEvent alloc];
      if ((flags & 8) != 0)
      {
        v19 = 41;
      }

      else
      {
        v19 = 42;
      }

      v20 = [v18 initWithEventType:v19 device:deviceCopy];
      [(DADaemonXPCConnection *)self _xpcReportDAEvent:v20];

      goto LABEL_17;
    }

    v21 = [(NSString *)bundleID isEqual:dCopy];

    if (v21)
    {
      goto LABEL_13;
    }
  }

  else if (([(NSString *)bundleID isEqual:dCopy]& 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
}

- (BOOL)_entitledAndReturnError:(id *)error
{
  entitledState = self->_entitledState;
  if (entitledState != 6)
  {
    v6 = DAErrorF();
    if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035D78(self);
      if (!error)
      {
        goto LABEL_7;
      }
    }

    else if (!error)
    {
LABEL_7:

      return entitledState == 6;
    }

    v7 = v6;
    *error = v6;
    goto LABEL_7;
  }

  return entitledState == 6;
}

- (BOOL)_findSyncExtensionPoint:(id)point bundleID:(id)d
{
  dCopy = d;
  pointCopy = point;
  v7 = [_EXQuery alloc];
  dCopy = [NSPredicate predicateWithFormat:@"bundleIdentifier == %@", dCopy];

  v9 = [v7 initWithExtensionPointIdentifier:pointCopy predicate:dCopy];
  v10 = [_EXQueryController executeQuery:v9];
  LOBYTE(dCopy) = [v10 count] != 0;

  return dCopy;
}

- (BOOL)_entitledForAccessLevel:(int)level returnError:(id *)error
{
  accessLevel = self->_accessLevel;
  if (error && accessLevel < level)
  {
    *error = DAErrorF();
  }

  return accessLevel >= level;
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  type = xpc_get_type(messageCopy);
  if (type == &_xpc_type_dictionary)
  {
    type = [(DADaemonXPCConnection *)self xpcReceivedRequest:messageCopy];
    goto LABEL_12;
  }

  v5 = messageCopy;
  if (messageCopy == &_xpc_error_connection_invalid)
  {
    if (dword_1000606C0 <= 20 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035E5C(self);
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    type = [(DADaemonXPCConnection *)self invalidate];
    goto LABEL_12;
  }

  if (dword_1000606C0 <= 90)
  {
    if (dword_1000606C0 != -1 || (type = _LogCategory_Initialize(), v5 = messageCopy, type))
    {
      sub_100035E00();
LABEL_12:
      v5 = messageCopy;
    }
  }

  _objc_release_x1(type, v5);
}

- (void)xpcReceivedEvent:(id)event
{
  message = event;
  v4 = self->_xpcCnx;
  v5 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_100035EBC();
  }
}

- (void)xpcReceivedRequest:(id)request
{
  requestCopy = request;
  string = xpc_dictionary_get_string(requestCopy, "mTyp");
  if (string)
  {
    v5 = string;
    if (!strncmp(string, "BTIG", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcBluetoothAccessInfoGet:requestCopy];
    }

    else if (!strncmp(v5, "MDDEx", 5uLL))
    {
      [(DADaemonXPCConnection *)self _xpcCheckAppHasMediaDeviceDiscoveryExtension:requestCopy];
    }

    else if (!strncmp(v5, "DscA", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDADiscoveryActivate:requestCopy];
    }

    else if (!strncmp(v5, "DscM", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDADiscoveryMigrationComplete:requestCopy];
    }

    else if (!strncmp(v5, "DsSp", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDADiscoveryInvalidateWithReason:requestCopy];
    }

    else if (!strncmp(v5, "SesA", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDASessionActivate:requestCopy];
    }

    else if (!strncmp(v5, "DgSh", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcDiagnosticShow:requestCopy];
    }

    else if (!strncmp(v5, "RvAi", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcRemoveDeviceAppAccessInfo:requestCopy];
    }

    else if (!strncmp(v5, "RsWf", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcResetWiFiIdentifier:requestCopy];
    }

    else if (!strncmp(v5, "SASi", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcSetDeviceAccessoryServiceInfo:requestCopy];
    }

    else if (!strncmp(v5, "SAAi", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcSetDeviceAppAccessInfo:requestCopy];
    }

    else if (!strncmp(v5, "GAAc", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcGetAuthorizedAccessories:requestCopy];
    }

    else if (!strncmp(v5, "GADv", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcGetAuthorizedDevices:requestCopy];
    }

    else if (!strncmp(v5, "GDvs", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcGetDevices:requestCopy];
    }

    else if (!strncmp(v5, "RPDs", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcRequestPermissionsForDevice:requestCopy];
    }

    else if (!strncmp(v5, "MdSt", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcModifyDeviceSettings:requestCopy];
    }

    else if (!strncmp(v5, "SDvS", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcSetDeviceState:requestCopy];
    }

    else if (!strncmp(v5, "GIFs", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcGetPartialIPs:requestCopy];
    }

    else if (!strncmp(v5, "SIFs", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcSetPartialIPs:requestCopy];
    }

    else if (!strncmp(v5, "BTPM", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcBluetoothPairingMsg:requestCopy];
    }

    else if (!strncmp(v5, "wFPM", 4uLL))
    {
      [(DADaemonXPCConnection *)self _xpcWiFiAwarePairingMsg:requestCopy];
    }

    else
    {
      if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
      {
        sub_100035ED8();
      }

      if (CUXPCDictionaryExpectsReply())
      {
LABEL_32:
        v6 = DAErrorF();
        [(DADaemonXPCConnection *)self _xpcSendReplyError:v6 request:requestCopy];
      }
    }
  }

  else
  {
    if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100035F18();
    }

    if (CUXPCDictionaryExpectsReply())
    {
      goto LABEL_32;
    }
  }
}

- (void)_xpcSendEvent:(id)event
{
  message = event;
  v4 = self->_xpcCnx;
  v5 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else
  {
    sub_100035F34();
  }
}

- (void)_xpcSendReply:(id)reply
{
  message = reply;
  v4 = self->_xpcCnx;
  v5 = v4;
  if (v4)
  {
    xpc_connection_send_message(v4, message);
  }

  else
  {
    sub_100035F94();
  }
}

- (void)_xpcSendReplyError:(id)error request:(id)request
{
  errorCopy = error;
  v5 = CUXPCDictionaryCreateReply();
  if (v5)
  {
    CUXPCEncodeNSError();
    v6 = self->_xpcCnx;
    v7 = v6;
    if (v6)
    {
      xpc_connection_send_message(v6, v5);
    }

    else
    {
      sub_100035FF4();
    }
  }

  else
  {
    sub_100036054();
  }
}

- (void)_xpcBluetoothAccessInfoGet:(id)get
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100024BA4;
  v52 = sub_100024BB4;
  v53 = 0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100024BBC;
  v45[3] = &unk_1000595F8;
  v47 = &v48;
  v45[4] = self;
  original = get;
  v46 = original;
  v29 = objc_retainBlock(v45);
  v3 = v49;
  obj = v49[5];
  v4 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v3 + 5, obj);
  if (v4)
  {
    v5 = self->_activatedSession;
    v28 = v5;
    if (v5)
    {
      bundleID = [(DASession *)v5 bundleID];
      if (bundleID)
      {
        v32 = [[NSString alloc] initWithFormat:@"%@.%@", bundleID, @"daappdata"];
        v6 = NSTemporaryDirectory();
        v7 = [NSURL fileURLWithPath:v6];
        v31 = [v7 URLByAppendingPathComponent:v32 isDirectory:0];

        v8 = [NSDictionary alloc];
        v9 = v49 + 5;
        v43 = v49[5];
        v36 = [v8 initWithContentsOfURL:v31 error:&v43];
        objc_storeStrong(v9, v43);
        if (v36)
        {
          CFDictionaryGetTypeID();
          v10 = CFDictionaryGetTypedValue();
          v37 = objc_alloc_init(DABluetoothAccessInfo);
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v11 = v10;
          v12 = 0;
          v13 = [v11 countByEnumeratingWithState:&v39 objects:v54 count:16];
          if (v13)
          {
            v14 = *v40;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v40 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v39 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  CFDictionaryGetTypeID();
                  v17 = CFDictionaryGetTypedValue();
                  if (v17)
                  {
                    CFStringGetTypeID();
                    v18 = CFDictionaryGetTypedValue();
                    if (v18)
                    {
                      v19 = [[NSUUID alloc] initWithUUIDString:v18];
                      if (v19)
                      {
                        v20 = objc_alloc_init(DABluetoothDeviceAccessInfo);
                        [v20 setIdentifier:v19];
                        if (!v12)
                        {
                          v12 = objc_alloc_init(NSMutableArray);
                        }

                        [v12 addObject:v20];
                      }
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v39 objects:v54 count:16];
            }

            while (v13);
          }

          [v37 setBluetoothDevices:v12];
          if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
          {
            pid = self->_pid;
            v27 = CUPrintPID();
            LogPrintF();
          }

          reply = xpc_dictionary_create_reply(original);
          CUXPCEncodeObject();
          [(DADaemonXPCConnection *)self _xpcSendEvent:reply];
        }

        else
        {
          v25 = v49[5];
          v26 = DANestedErrorF();
          v11 = v49[5];
          v49[5] = v26;
        }
      }

      else
      {
        v24 = DAErrorF();
        v33 = v49[5];
        v49[5] = v24;
      }
    }

    else
    {
      v23 = DAErrorF();
      v35 = v49[5];
      v49[5] = v23;
    }
  }

  (v29[2])(v29);

  _Block_object_dispose(&v48, 8);
}

- (void)_xpcCheckAppHasMediaDeviceDiscoveryExtension:(id)extension
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100024BA4;
  v17[4] = sub_100024BB4;
  v18 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100024E70;
  v13 = &unk_1000595F8;
  v16 = v17;
  selfCopy = self;
  extensionCopy = extension;
  v15 = extensionCopy;
  v5 = objc_retainBlock(&v10);
  CUXPCDecodeNSString();
  v6 = [(DADaemonServer *)self->_daemon checkAppHasMediaDeviceDiscoveryExtension:0];
  reply = xpc_dictionary_create_reply(extensionCopy);
  v8 = reply;
  if (v6)
  {
    xpc_dictionary_set_BOOL(reply, "mddExt", 1);
  }

  [(DADaemonXPCConnection *)self _xpcSendEvent:v8, 0, v10, v11, v12, v13, selfCopy];

  (v5[2])(v5);
  _Block_object_dispose(v17, 8);
}

- (void)_xpcDADiscoveryActivate:(id)activate
{
  activateCopy = activate;
  v23 = 0;
  v5 = [[DADiscovery alloc] initWithXPCObject:activateCopy error:&v23];
  v6 = v23;
  if (v5)
  {
    configuration = [v5 configuration];
    bundleID = [configuration bundleID];
    if (!bundleID)
    {
      bundleID = [v5 configurations];
      if ([bundleID count])
      {
        firstObject = [bundleID firstObject];
        bundleID2 = [firstObject bundleID];
      }

      else
      {
        bundleID3 = [v5 bundleID];

        if (!bundleID3)
        {
          if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036208();
          }

          v20 = DAErrorF();
          [(DADaemonXPCConnection *)self _xpcSendReplyError:v20 request:activateCopy];

          goto LABEL_35;
        }

        if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000360B4();
        }

        bundleID2 = [v5 bundleID];
      }

      bundleID = bundleID2;
    }

    presenceOnly = [configuration presenceOnly];
    if (presenceOnly)
    {
      if ([(NSString *)self->_appID isEqualToString:bundleID])
      {
        goto LABEL_21;
      }

      v21 = v6;
      v13 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&v21];
      v14 = v21;

      if ((v13 & 1) == 0)
      {
        sub_1000360E8(self, activateCopy);
LABEL_47:
        v6 = v14;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      v22 = v6;
      v15 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&v22];
      v14 = v22;

      if ((v15 & 1) == 0)
      {
        [(DADaemonXPCConnection *)self _xpcSendReplyError:v14 request:activateCopy];
        goto LABEL_47;
      }
    }

    v6 = v14;
LABEL_21:
    objc_storeStrong(&self->_activatedDiscovery, v5);
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036144(self);
    }

    v16 = [(DADaemonServer *)self->_daemon addDiscovery:v5];
    reply = xpc_dictionary_create_reply(activateCopy);
    if (reply)
    {
      if (v16)
      {
        v18 = presenceOnly;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        CUXPCEncodeNSArrayOfObjects();
      }

      if (bundleID && [(DADaemonServer *)self->_daemon devicesPresentWithAppID:bundleID])
      {
        xpc_dictionary_set_BOOL(reply, "dvPr", 1);
      }

      v19 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
      [DADeviceAccessAnalytics markState:10 deviceID:bundleID shared:0 discovery:v5 flags:8 sourceApp:6 atTime:v19 errorCode:0];
      [(DADaemonXPCConnection *)self _xpcSendReply:reply];
    }

    else
    {
      sub_1000361A0();
    }

    goto LABEL_35;
  }

  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003623C();
  }

  [(DADaemonXPCConnection *)self _xpcSendReplyError:v6 request:activateCopy];
LABEL_36:
}

- (void)_xpcDADiscoveryMigrationComplete:(id)complete
{
  completeCopy = complete;
  v14 = 0;
  v5 = [[DADiscovery alloc] initWithXPCObject:completeCopy error:&v14];
  v6 = v14;
  if (v5)
  {
    configuration = [v5 configuration];
    bundleID = [configuration bundleID];
    if (!bundleID)
    {
      bundleID = [v5 configurations];
      if ([bundleID count])
      {
        firstObject = [bundleID firstObject];
        bundleID2 = [firstObject bundleID];
      }

      else
      {
        bundleID3 = [v5 bundleID];

        if (!bundleID3)
        {
          if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036358();
          }

          v13 = DAErrorF();
          [(DADaemonXPCConnection *)self _xpcSendReplyError:v13 request:completeCopy];
          goto LABEL_20;
        }

        if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
        {
          sub_100036294();
        }

        bundleID2 = [v5 bundleID];
      }

      bundleID = bundleID2;
    }

    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000362C8(self);
    }

    [(DADaemonServer *)self->_daemon runMigrationWithDiscovery:v5 fromPostOnboarding:1];
    reply = xpc_dictionary_create_reply(completeCopy);
    v13 = reply;
    if (reply)
    {
      xpc_dictionary_set_BOOL(reply, "dvPr", 1);
      [(DADaemonXPCConnection *)self _xpcSendReply:v13];
    }

    else if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      sub_100036324();
    }

LABEL_20:

    goto LABEL_21;
  }

  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003638C();
  }

  [(DADaemonXPCConnection *)self _xpcSendReplyError:v6 request:completeCopy];
LABEL_21:
}

- (void)_xpcDADiscoveryInvalidateWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = self->_activatedDiscovery;
  if (v5)
  {
    CUXPCDecodeUInt64RangedEx();
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      v13 = v5;
      v14 = 0;
      LogPrintF();
    }

    v6 = [(DADiscovery *)v5 configuration:v13];
    bundleID = [v6 bundleID];
    if (!bundleID)
    {
      bundleID = [(DADiscovery *)v5 configurations];
      if ([bundleID count])
      {
        firstObject = [bundleID firstObject];
        bundleID2 = [firstObject bundleID];
      }

      else
      {
        bundleID3 = [(DADiscovery *)v5 bundleID];

        if (!bundleID3)
        {
          if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
          {
            sub_100036480();
          }

          v11 = DAErrorF();
          [(DADaemonXPCConnection *)self _xpcSendReplyError:v11 request:reasonCopy];
          goto LABEL_22;
        }

        if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000363E4();
        }

        bundleID2 = [(DADiscovery *)v5 bundleID];
      }

      bundleID = bundleID2;
    }

    v11 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [DADeviceAccessAnalytics markState:30 deviceID:bundleID shared:0 discovery:v5 flags:8 sourceApp:6 atTime:v11 errorCode:0];
    reply = xpc_dictionary_create_reply(reasonCopy);
    if (reply)
    {
      [(DADaemonXPCConnection *)self _xpcSendReply:reply];
    }

    else
    {
      sub_100036418();
    }

LABEL_22:
    goto LABEL_23;
  }

  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000364B4();
  }

  [(DADaemonXPCConnection *)self _xpcSendReplyError:0 request:reasonCopy];
LABEL_23:
}

- (void)_xpcDASessionActivate:(id)activate
{
  original = activate;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_100024BA4;
  v58 = sub_100024BB4;
  v59 = +[NSMutableDictionary dictionary];
  v53 = 0;
  v4 = [[DASession alloc] initWithXPCObject:original error:&v53];
  v5 = v53;
  if (v4)
  {
    [v4 setDispatchQueue:self->_dispatchQueue];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10002605C;
    v51[3] = &unk_100059878;
    v51[4] = self;
    v6 = v4;
    v52 = v6;
    [v6 setEventHandler:v51];
    objc_storeStrong(&self->_activatedSession, v4);
    if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      pid = self->_pid;
      CUPrintPID();
      v37 = v34 = v6;
      LogPrintF();
    }

    xdict = xpc_dictionary_create_reply(original);
    if (!xdict)
    {
      if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        v33 = 0;
        goto LABEL_57;
      }

LABEL_56:
      v33 = xdict;
LABEL_57:

      goto LABEL_58;
    }

    v60 = 0;
    if (CUXPCDecodeUInt64RangedEx() == 6)
    {
      v8 = v60;
    }

    else
    {
      v8 = 0;
    }

    bundleID = [v6 bundleID];
    v10 = bundleID;
    if (!v8 || bundleID || self->_accessLevel == 10)
    {
      if ([(NSString *)self->_appID isEqualToString:bundleID])
      {
        goto LABEL_27;
      }

      v50 = v5;
      v11 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&v50];
      v12 = v50;

      if (v11)
      {
        goto LABEL_26;
      }

      parentAppID = self->_parentAppID;
      if (parentAppID)
      {
        v14 = [(NSString *)parentAppID isEqualToString:v10];
        if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
        {
          appID = self->_appID;
          v16 = self->_parentAppID;
          v17 = self->_pid;
          CUPrintPID();
          v39 = v38 = v16;
          v35 = appID;
          LogPrintF();
        }

        if (v14)
        {
LABEL_26:
          v5 = v12;
LABEL_27:
          v18 = self->_parentAppID;
          if (!v18)
          {
            v18 = v10;
          }

          v19 = v18;
          if (v19)
          {
            if ([(DADaemonServer *)self->_daemon devicesPresentWithAppID:v19])
            {
              xpc_dictionary_set_BOOL(xdict, "dvPr", 1);
            }

            daemon = self->_daemon;
            if (!v8)
            {
              [(DADaemonServer *)daemon reportAuthorizedDevices:v19];
LABEL_45:
              [(DADaemonServer *)self->_daemon updateAppInfo:v19, v35];
              if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
              {
                currentDeviceCapabilities = [(DADaemonServer *)self->_daemon currentDeviceCapabilities];
                v30 = "yes";
                if ((currentDeviceCapabilities & 0x400) == 0)
                {
                  v30 = "no";
                }

                v36 = v6;
                v38 = v30;
                LogPrintF();
              }

              v31 = [(DADaemonServer *)self->_daemon currentDeviceCapabilities:v36];
              if (v31)
              {
                xpc_dictionary_set_uint64(xdict, "cdcS", v31);
              }

              [(DADaemonXPCConnection *)self _xpcSendReply:xdict];
              if ([(NSString *)self->_appID isEqualToString:v10])
              {
                dispatchQueue = self->_dispatchQueue;
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100026080;
                block[3] = &unk_1000598C8;
                block[4] = self;
                v45 = &v54;
                v44 = v10;
                dispatch_async(dispatchQueue, block);
              }

              goto LABEL_55;
            }

            v21 = [(DADaemonServer *)daemon getDevicesWithFlags:v8 appID:v19];
            CUXPCEncodeNSArrayOfObjects();
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v46 objects:v61 count:16];
            v40 = v5;
            v24 = 0;
            if (v23)
            {
              v25 = *v47;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v47 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v24 |= [*(*(&v46 + 1) + 8 * i) flags];
                }

                v23 = [v22 countByEnumeratingWithState:&v46 objects:v61 count:16];
              }

              while (v23);
            }

            v5 = v40;
            v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 count]);
            [v55[5] setObject:v27 forKeyedSubscript:@"AccessoriesCount"];

            v28 = [NSNumber numberWithUnsignedInteger:v24];
            [v55[5] setObject:v28 forKeyedSubscript:@"AccessoryFlags"];

            [v55[5] setObject:v19 forKeyedSubscript:@"BundleID"];
          }

          else
          {
            if (!v8)
            {
              goto LABEL_45;
            }

            v22 = [(DADaemonServer *)self->_daemon getDevicesWithFlags:v8 appID:0];
            CUXPCEncodeNSArrayOfObjects();
          }

          goto LABEL_45;
        }
      }

      v19 = DAErrorF();
      [(DADaemonXPCConnection *)self _xpcSendReplyError:v19 request:original];
      v5 = v12;
    }

    else
    {
      v19 = DAErrorF();
      [(DADaemonXPCConnection *)self _xpcSendReplyError:v19 request:original];
    }

LABEL_55:

    goto LABEL_56;
  }

  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    v34 = CUPrintNSError();
    LogPrintF();
  }

  [(DADaemonXPCConnection *)self _xpcSendReplyError:v5 request:original, v34];
LABEL_58:

  _Block_object_dispose(&v54, 8);
}

- (void)_xpcDiagnosticShow:(id)show
{
  showCopy = show;
  v13 = 0;
  v5 = [(DADaemonXPCConnection *)self _entitledAndReturnError:&v13];
  v6 = v13;
  if (v5)
  {
    daemon = self->_daemon;
    v12 = CUDescriptionWithLevel();
    NSAppendPrintF();
    v8 = 0;

    v9 = CUXPCDictionaryCreateReply();
    if (v9)
    {
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = @"None\n";
      }

      uTF8String = [(__CFString *)v10 UTF8String];
      if (uTF8String)
      {
        xpc_dictionary_set_string(v9, "oStr", uTF8String);
      }

      [(DADaemonXPCConnection *)self _xpcSendReply:v9];
    }

    else
    {
      sub_100036514();
    }
  }

  else
  {
    [(DADaemonXPCConnection *)self _xpcSendReplyError:v6 request:showCopy];
  }
}

- (void)_xpcRemoveDeviceAppAccessInfo:(id)info
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100024BA4;
  v21 = sub_100024BB4;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000272FC;
  v14[3] = &unk_1000595F8;
  v16 = &v17;
  v14[4] = self;
  infoCopy = info;
  v15 = infoCopy;
  v9 = objc_retainBlock(v14);
  v11 = self->_appID;
  if (v11)
  {
    v13 = 0;
    objc_opt_class();
    v5 = (v18 + 5);
    obj = v18[5];
    CUXPCDecodeObject();
    objc_storeStrong(v5, obj);
    if (!v18[5])
    {
      v8 = DAErrorF();
      v10 = v18[5];
      v18[5] = v8;
    }
  }

  else
  {
    v6 = DAErrorF();
    v7 = v18[5];
    v18[5] = v6;
  }

  (v9[2])(v9);
  _Block_object_dispose(&v17, 8);
}

- (void)_xpcRemoveDeviceConfirmation:(id)confirmation accessInfo:(id)info userConfirmed:(BOOL)confirmed request:(id)request
{
  confirmationCopy = confirmation;
  infoCopy = info;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100024BA4;
  v43 = sub_100024BB4;
  v44 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100027930;
  v36[3] = &unk_1000595F8;
  v38 = &v39;
  v36[4] = self;
  original = request;
  v37 = original;
  v11 = objc_retainBlock(v36);
  if (!confirmed)
  {
    v26 = DAErrorF();
    reply = v40[5];
    v40[5] = v26;
LABEL_19:

    goto LABEL_20;
  }

  if ([confirmationCopy stillTrackableWhenUnpaired])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    reply = [confirmationCopy appAccessInfoMap];
    v13 = [reply countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v13)
    {
      v14 = *v33;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(reply);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        appAccessInfoMap = [confirmationCopy appAccessInfoMap];
        v18 = [appAccessInfoMap objectForKeyedSubscript:v16];

        [v18 setState:1];
        [confirmationCopy setState:1];
        daemon = self->_daemon;
        v20 = (v40 + 5);
        obj = v40[5];
        v21 = [(DADaemonServer *)daemon updateAppAccessInfo:v18 accessoryDevice:confirmationCopy removalType:5 error:&obj];
        objc_storeStrong(v20, obj);

        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }

        if (v13 == ++v15)
        {
          v13 = [reply countByEnumeratingWithState:&v32 objects:v45 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    goto LABEL_13;
  }

  [infoCopy setState:0];
  v22 = self->_daemon;
  v23 = (v40 + 5);
  v30 = v40[5];
  v24 = [(DADaemonServer *)v22 updateAppAccessInfo:infoCopy accessoryDevice:confirmationCopy removalType:2 error:&v30];
  objc_storeStrong(v23, v30);
  if (v24)
  {
LABEL_13:
    if (dword_1000606C0 <= 40 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      pid = self->_pid;
      v27 = CUPrintPID();
      LogPrintF();
    }

    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      [(DADaemonXPCConnection *)self _xpcSendReply:reply];
    }

    else if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_19;
  }

LABEL_20:
  (v11[2])(v11);

  _Block_object_dispose(&v39, 8);
}

- (void)_xpcReportDAEvent:(id)event
{
  eventCopy = event;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "mTyp", "Evnt");
  [eventCopy encodeWithXPCObject:v5];

  [(DADaemonXPCConnection *)self _xpcSendEvent:v5];
}

- (void)_xpcResetWiFiIdentifier:(id)identifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100027CB0;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  identifierCopy = identifier;
  v11 = identifierCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = v14;
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5 + 5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF();
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcSetDeviceAccessoryServiceInfo:(id)info
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100028284;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  infoCopy = info;
  v11 = infoCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = v14;
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5 + 5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF();
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcSetDeviceAppAccessInfo:(id)info
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000287E0;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  infoCopy = info;
  v11 = infoCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = v14;
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5 + 5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF();
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcGetAuthorizedAccessories:(id)accessories
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100028C5C;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  accessoriesCopy = accessories;
  v11 = accessoriesCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = (v14 + 5);
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF();
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcGetAuthorizedDevices:(id)devices
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100024BA4;
  v17 = sub_100024BB4;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000290E8;
  v10[3] = &unk_1000595F8;
  v12 = &v13;
  v10[4] = self;
  devicesCopy = devices;
  v11 = devicesCopy;
  v4 = objc_retainBlock(v10);
  v9 = 0;
  objc_opt_class();
  v5 = (v14 + 5);
  obj = v14[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5, obj);
  if (!v14[5])
  {
    v6 = DAErrorF();
    v7 = v14[5];
    v14[5] = v6;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v13, 8);
}

- (void)_xpcGetDevices:(id)devices
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100024BA4;
  v20 = sub_100024BB4;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000296A8;
  v13[3] = &unk_1000595F8;
  v15 = &v16;
  v13[4] = self;
  devicesCopy = devices;
  v14 = devicesCopy;
  v5 = objc_retainBlock(v13);
  v6 = self->_appID;
  if (v6)
  {
    objc_opt_class();
    v7 = (v17 + 5);
    obj = v17[5];
    CUXPCDecodeObject();
    objc_storeStrong(v7, obj);
    if (!v17[5])
    {
      v10 = DAErrorF();
      v11 = v17[5];
      v17[5] = v10;
    }
  }

  else
  {
    v8 = DAErrorF();
    v9 = v17[5];
    v17[5] = v8;
  }

  (v5[2])(v5);
  _Block_object_dispose(&v16, 8);
}

- (void)_xpcRequestPermissionsForDevice:(id)device
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100024BA4;
  v14 = sub_100024BB4;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000299DC;
  v7[3] = &unk_1000595F8;
  v9 = &v10;
  v7[4] = self;
  deviceCopy = device;
  v8 = deviceCopy;
  v4 = objc_retainBlock(v7);
  objc_opt_class();
  v5 = v11;
  obj = v11[5];
  CUXPCDecodeObject();
  objc_storeStrong(v5 + 5, obj);

  (v4[2])(v4);
  _Block_object_dispose(&v10, 8);
}

- (void)_xpcModifyDeviceSettings:(id)settings
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100024BA4;
  v21 = sub_100024BB4;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100029F40;
  v14[3] = &unk_1000595F8;
  v16 = &v17;
  v14[4] = self;
  settingsCopy = settings;
  v15 = settingsCopy;
  v5 = objc_retainBlock(v14);
  v6 = self->_appID;
  if (v6)
  {
    v7 = v18;
    obj = v18[5];
    v13 = 0;
    CUXPCDecodeNSString();
    objc_storeStrong(v7 + 5, obj);
    if (!v18[5])
    {
      v10 = DAErrorF();
      v11 = v18[5];
      v18[5] = v10;
    }
  }

  else
  {
    v8 = DAErrorF();
    v9 = v18[5];
    v18[5] = v8;
  }

  (v5[2])(v5);
  _Block_object_dispose(&v17, 8);
}

- (void)_xpcSetDeviceState:(id)state
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100024BA4;
  v18 = sub_100024BB4;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A4E8;
  v11[3] = &unk_1000595F8;
  v13 = &v14;
  v11[4] = self;
  stateCopy = state;
  v12 = stateCopy;
  v5 = objc_retainBlock(v11);
  if (self->_entitledState == 6)
  {
    xpc_dictionary_get_BOOL(stateCopy, "simA");
  }

  v10 = 0;
  objc_opt_class();
  v6 = (v15 + 5);
  obj = v15[5];
  CUXPCDecodeObject();
  objc_storeStrong(v6, obj);
  if (!v15[5])
  {
    v7 = DAErrorF();
    v8 = v15[5];
    v15[5] = v7;
  }

  (v5[2])(v5);
  _Block_object_dispose(&v14, 8);
}

- (void)_xpcSetPartialIPs:(id)ps
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100024BA4;
  v34 = sub_100024BB4;
  v35 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002A9D8;
  v27[3] = &unk_1000595F8;
  v29 = &v30;
  v27[4] = self;
  psCopy = ps;
  v28 = psCopy;
  v5 = objc_retainBlock(v27);
  v25 = 0u;
  v26 = 0u;
  xpcCnx = self->_xpcCnx;
  xpc_connection_get_audit_token();
  v7 = xpc_copy_entitlement_for_token();
  v8 = v7;
  if (v7)
  {
    v24 = 0;
    if (xpc_dictionary_get_BOOL(v7, "com.apple.DeviceAccess"))
    {
      if (dword_1000606C0 <= 30 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CUXPCDecodeNSString();
      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0;
  }

  v9 = v31;
  obj = v31[5];
  v22[0] = v25;
  v22[1] = v26;
  v10 = [LSBundleRecord bundleRecordForAuditToken:v22 error:&obj];
  objc_storeStrong(v9 + 5, obj);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [v10 bundleIdentifier];
    v12 = v24;
    v24 = bundleIdentifier;
  }

LABEL_12:
  if (!v24)
  {
    v17 = DAErrorF();
    v18 = v31[5];
    v31[5] = v17;

    goto LABEL_20;
  }

  *&v22[0] = 0;
  objc_opt_class();
  v13 = v31;
  v21 = v31[5];
  CUXPCDecodeNSArrayOfClass();
  objc_storeStrong(v13 + 5, v21);
  v14 = v31 + 5;
  if (!v31[5])
  {
    if (!*&v22[0])
    {
      v19 = DAErrorF();
      reply = v31[5];
      v31[5] = v19;
LABEL_18:

      goto LABEL_19;
    }

    daemon = self->_daemon;
    v20 = 0;
    [(DADaemonServer *)daemon setPartialIPsForAppBundleID:v24 partialIPs:*&v22[0] error:&v20];
    objc_storeStrong(v14, v20);
    if (!v31[5])
    {
      reply = xpc_dictionary_create_reply(psCopy);
      if (reply)
      {
        [(DADaemonXPCConnection *)self _xpcSendReply:reply];
      }

      else if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_18;
    }
  }

LABEL_19:

LABEL_20:
  (v5[2])(v5);

  _Block_object_dispose(&v30, 8);
}

- (void)_xpcBluetoothPairingMsg:(id)msg
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100024BA4;
  v19 = sub_100024BB4;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002AE88;
  v12[3] = &unk_1000595F8;
  v14 = &v15;
  v12[4] = self;
  msgCopy = msg;
  v13 = msgCopy;
  v5 = objc_retainBlock(v12);
  if ([(DADaemonXPCConnection *)self accessLevel]== 10)
  {
    v6 = (v16 + 5);
    obj = v16[5];
    CUXPCDecodeNSString();
    objc_storeStrong(v6, obj);
    v9 = DAErrorF();
    v10 = v16[5];
    v16[5] = v9;
  }

  else
  {
    v7 = DAErrorF();
    v8 = v16[5];
    v16[5] = v7;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v15, 8);
}

- (void)_xpcWiFiAwarePairingMsg:(id)msg
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100024BA4;
  v19 = sub_100024BB4;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002B204;
  v12[3] = &unk_1000595F8;
  v14 = &v15;
  v12[4] = self;
  msgCopy = msg;
  v13 = msgCopy;
  v5 = objc_retainBlock(v12);
  if ([(DADaemonXPCConnection *)self accessLevel]== 10)
  {
    objc_opt_class();
    v6 = (v16 + 5);
    obj = v16[5];
    CUXPCDecodeObject();
    objc_storeStrong(v6, obj);
    v9 = DAErrorF();
    v10 = v16[5];
    v16[5] = v9;
  }

  else
  {
    v7 = DAErrorF();
    v8 = v16[5];
    v16[5] = v7;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v15, 8);
}

- (void)_xpcGetPartialIPs:(id)ps
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100024BA4;
  v25 = sub_100024BB4;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002B64C;
  v18[3] = &unk_1000595F8;
  v20 = &v21;
  v18[4] = self;
  psCopy = ps;
  v19 = psCopy;
  v5 = objc_retainBlock(v18);
  v16 = 0u;
  v17 = 0u;
  xpcCnx = self->_xpcCnx;
  xpc_connection_get_audit_token();
  v7 = xpc_copy_entitlement_for_token();
  v8 = v7;
  if (v7 && xpc_dictionary_get_BOOL(v7, "com.apple.DeviceAccess"))
  {
    v9 = v22;
    obj = v22[5];
    v15 = 0;
    CUXPCDecodeNSString();
    objc_storeStrong(v9 + 5, obj);
    v12 = DAErrorF();
    v13 = v22[5];
    v22[5] = v12;
  }

  else
  {
    v10 = DAErrorF();
    v11 = v22[5];
    v22[5] = v10;
  }

  (v5[2])(v5);
  _Block_object_dispose(&v21, 8);
}

- (void)reportDeviceConnectionStatusChanged:(id)changed
{
  changedCopy = changed;
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  deviceFlags = [(DASession *)self->_activatedSession deviceFlags];
  if (dword_1000606C0 <= 90 && (dword_1000606C0 != -1 || _LogCategory_Initialize()))
  {
    v8 = DADeviceFlagsToString();
    LogPrintF();
  }

  if (accessLevel == 10 && (deviceFlags & 0x800) != 0)
  {
    v7 = [[DADeviceEvent alloc] initWithEventType:35 device:changedCopy];
    [(DADaemonXPCConnection *)self _xpcReportDAEvent:v7];
  }
}

- (void)reportDevicesMigrated:(id)migrated appID:(id)d
{
  migratedCopy = migrated;
  dCopy = d;
  configuration = [(DADiscovery *)self->_activatedDiscovery configuration];
  accessLevel = [(DADaemonXPCConnection *)self accessLevel];
  bundleID = [(DASession *)self->_activatedSession bundleID];
  if (!bundleID && (([configuration bundleID], (bundleID = objc_claimAutoreleasedReturnValue()) == 0) ? (v10 = accessLevel == 10) : (v10 = 0), v10))
  {
    v11 = 0;
  }

  else
  {
    v11 = bundleID;
    if (![bundleID isEqual:dCopy])
    {
      goto LABEL_8;
    }
  }

  [(DADaemonXPCConnection *)self _xpcReportDAEvent:migratedCopy];
LABEL_8:
}

@end