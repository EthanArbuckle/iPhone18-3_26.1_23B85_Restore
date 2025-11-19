@interface SharingDaemon
+ (id)sharedDaemon;
- (NSString)description;
- (SharingDaemon)init;
- (id)arrayFromXPCObject:(id)a3;
- (id)numberFromXPCObject:(id)a3;
- (id)stringFromXPCObject:(id)a3;
- (id)xpcArrayForSFNodeArray:(id)a3;
- (id)xpcObjectForSFOperationResults:(id)a3;
- (os_state_data_s)stateCapture;
- (void)dealloc;
- (void)handleBrowserMessage:(id)a3 forConnection:(id)a4;
- (void)handleNewConnection:(id)a3;
- (void)handleOperationMessage:(id)a3 forConnection:(id)a4;
- (void)networkBrowser:(id)a3 nodesChangedForParent:(__SFNode *)a4 protocol:(id)a5 error:(int)a6;
- (void)networkOperation:(id)a3 event:(int64_t)a4 withResults:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation SharingDaemon

- (os_state_data_s)stateCapture
{
  v2 = [(SharingDaemon *)self description];
  if (v2)
  {
    v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:0];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 length];
      v6 = malloc_type_calloc(1uLL, v5 + 200, 0x1000040BEF03554uLL);
      v7 = v6;
      if (v6)
      {
        v6->var0 = 1;
        v6->var1.var1 = v5;
        __strlcpy_chk();
        memcpy(v7->var4, [v4 bytes], v5);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  NSAppendPrintF();
  v14 = 0;
  v3 = +[SDStatusMonitor sharedMonitor];
  v11 = [v3 deviceInformation];
  NSAppendPrintF();
  v4 = v14;

  v5 = +[SDServerBrowser sharedBrowser];
  v12 = [v5 description];
  NSAppendPrintF();
  v6 = v4;

  airDropService = self->_airDropService;
  if (airDropService)
  {
    v13 = [(SDAirDropService_objc *)airDropService description];
    NSAppendPrintF();
    v8 = v6;

    v6 = v8;
  }

  NSAppendPrintF();
  v9 = v6;

  return v6;
}

+ (id)sharedDaemon
{
  if (qword_100989FF0 != -1)
  {
    sub_1001779F4();
  }

  v3 = qword_100989FF8;

  return v3;
}

- (SharingDaemon)init
{
  v8.receiver = self;
  v8.super_class = SharingDaemon;
  v2 = [(SharingDaemon *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeObjects = v2->_activeObjects;
    v2->_activeObjects = v3;

    v5 = objc_opt_new();
    exportedOperations = v2->_exportedOperations;
    v2->_exportedOperations = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(SharingDaemon *)self stop];
  v3.receiver = self;
  v3.super_class = SharingDaemon;
  [(SharingDaemon *)&v3 dealloc];
}

- (id)xpcObjectForSFOperationResults:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  [v3 allKeys];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    v8 = kSFOperationNodeKey;
    v33 = kSFOperationSenderNodeKey;
    v32 = kSFOperationFileIconKey;
    v30 = kSFOperationSmallFileIconKey;
    v29 = kSFOperationErrorKey;
    key = kCFErrorUnderlyingErrorKey;
    v31 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v11 = [v3 objectForKeyedSubscript:{v10, key}];

        v12 = _CFXPCCreateXPCObjectFromCFObject();
        if (([v10 isEqual:v8] & 1) != 0 || objc_msgSend(v10, "isEqual:", v33))
        {
          v13 = _SFNodeXPCObjectCreate();
LABEL_9:
          v14 = v13;
          goto LABEL_10;
        }

        if (([v10 isEqual:v32] & 1) != 0 || objc_msgSend(v10, "isEqual:", v30))
        {
          v17 = sub_100117CB4(v11, 0);
          if (!v17)
          {
            v14 = 0;
            v4 = v31;
            goto LABEL_15;
          }

          v18 = v17;
          v14 = _CFXPCCreateXPCObjectFromCFObject();
          CFRelease(v18);
        }

        else
        {
          if (![v10 isEqual:v29])
          {
            v13 = _CFXPCCreateXPCObjectFromCFObject();
            goto LABEL_9;
          }

          v14 = xpc_dictionary_create(0, 0, 0);
          Code = CFErrorGetCode(v11);
          CFErrorGetDomain(v11);
          v20 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_int64(v14, "Code", Code);
          if (v20)
          {
            xpc_dictionary_set_value(v14, "Domain", v20);
          }

          v21 = CFErrorCopyUserInfo(v11);
          if (v21)
          {
            v22 = v21;
            v28 = v20;
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v21);
            CFDictionaryRemoveValue(MutableCopy, key);
            v24 = _CFXPCCreateXPCObjectFromCFObject();
            if (v24)
            {
              xpc_dictionary_set_value(v14, "UserInfo", v24);
            }

            CFRelease(MutableCopy);
            CFRelease(v22);

            v20 = v28;
          }
        }

        v4 = v31;
LABEL_10:
        if (v12)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          string_ptr = xpc_string_get_string_ptr(v12);
          xpc_dictionary_set_value(v4, string_ptr, v14);
        }

LABEL_15:

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v25 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      v6 = v25;
    }

    while (v25);
  }

  return v4;
}

- (id)stringFromXPCObject:(id)a3
{
  v3 = a3;
  if (!v3)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFStringGetTypeID())
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100177A08();
      }

      CFRelease(v5);
      goto LABEL_7;
    }
  }

LABEL_8:

  return v5;
}

- (id)arrayFromXPCObject:(id)a3
{
  v3 = a3;
  if (!v3)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFArrayGetTypeID())
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100177A3C();
      }

      CFRelease(v5);
      goto LABEL_7;
    }
  }

LABEL_8:

  return v5;
}

- (id)numberFromXPCObject:(id)a3
{
  v3 = a3;
  if (!v3)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFNumberGetTypeID())
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFBooleanGetTypeID())
      {
        v8 = daemon_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100177A70();
        }

        CFRelease(v5);
        goto LABEL_8;
      }
    }
  }

LABEL_9:

  return v5;
}

- (id)xpcArrayForSFNodeArray:(id)a3
{
  v3 = a3;
  v4 = xpc_array_create(0, 0);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = _SFNodeXPCObjectCreate();
        if (v11)
        {
          xpc_array_append_value(v4, v11);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)networkBrowser:(id)a3 nodesChangedForParent:(__SFNode *)a4 protocol:(id)a5 error:(int)a6
{
  v11 = a3;
  v12 = a5;
  v13 = daemon_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v11 kind];
    v31 = 134218754;
    v32 = v11;
    v33 = 2112;
    v34 = v14;
    v35 = 2048;
    v36 = a4;
    v37 = 1024;
    v38 = a6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "SFBrowserCallBack (<%p>{kind = %@}, node = %p, error = %d)", &v31, 0x26u);
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = [v11 isEntitled];

  if (!v16)
  {
    v17 = [v11 kind];
    v18 = [v17 isEqual:kSFBrowserKindAirDrop];
    if (v18)
    {
      v6 = [v11 connection];
      has_entitlement = xpc_connection_has_entitlement();
    }

    else
    {
      has_entitlement = 1;
    }

    v20 = [NSNumber numberWithInt:has_entitlement];
    [v11 setIsEntitled:v20];

    if (v18)
    {
    }
  }

  v21 = [v11 isEntitled];
  v22 = [v21 BOOLValue];

  if (v22)
  {
    v23 = [v11 childrenForNode:a4];
    if (!v23)
    {
      goto LABEL_18;
    }

    v24 = [(SharingDaemon *)self xpcArrayForSFNodeArray:v23];
    if (v24)
    {
      xpc_dictionary_set_value(v15, "Children", v24);
    }
  }

  else
  {
    v24 = airdrop_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100177AA4(v11, v24);
    }

    v23 = 0;
  }

LABEL_18:
  v25 = [v11 kind];
  if (![v25 isEqual:kSFBrowserKindNetwork])
  {
    v27 = v23;
LABEL_24:

    v23 = v27;
    goto LABEL_25;
  }

  IsRoot = SFNodeIsRoot();

  if (!IsRoot)
  {
    goto LABEL_25;
  }

  v27 = [v11 sidebarChildren];

  if (v27)
  {
    v25 = [(SharingDaemon *)self xpcArrayForSFNodeArray:v27];
    if (v25)
    {
      xpc_dictionary_set_value(v15, "Sidebar", v25);
    }

    goto LABEL_24;
  }

  v23 = 0;
LABEL_25:
  v28 = _SFNodeXPCObjectCreate();
  if (v28)
  {
    xpc_dictionary_set_value(v15, "Node", v28);
  }

  if (v12)
  {
    v29 = _CFXPCCreateXPCObjectFromCFObject();
    if (v29)
    {
      xpc_dictionary_set_value(v15, "Protocol", v29);
    }
  }

  xpc_dictionary_set_int64(v15, "Error", a6);
  v30 = [v11 connection];
  xpc_connection_send_message(v30, v15);
}

- (void)networkOperation:(id)a3 event:(int64_t)a4 withResults:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = daemon_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 kind];
    v12 = v11;
    if ((a4 - 1) > 0xE)
    {
      v13 = @"?";
    }

    else
    {
      v13 = off_1008D1FC8[a4 - 1];
    }

    *buf = 134218754;
    v31 = v8;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v13;
    v36 = 2048;
    v37 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "SFOperationCallBack (<%p>{kind = %@}, event = %@, results = %p)", buf, 0x2Au);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = [(SharingDaemon *)self xpcObjectForSFOperationResults:v9];
  xpc_dictionary_set_uint64(v14, "Events", a4);
  v16 = [v8 connection];
  if (v15)
  {
    if (a4 == 1)
    {
      v17 = kSFOperationHTTPServerConnectionKey;
      v18 = [v9 objectForKeyedSubscript:kSFOperationHTTPServerConnectionKey];

      if (v18)
      {
        v29 = v17;
        v19 = +[NSUUID UUID];
        v20 = [v19 UUIDString];

        v28 = kSFOperationContactsOnlyKey;
        v21 = [v9 objectForKeyedSubscript:?];
        xpc_dictionary_set_string(v15, "Operation", [v20 UTF8String]);
        v22 = [SDNetworkOperation alloc];
        v23 = [(SDNetworkOperation *)v22 initWithKind:kSFOperationKindReceiver];
        v24 = v23;
        if (v21)
        {
          [(SDNetworkOperation *)v23 setProperty:v21 forKey:v28];
        }

        [(SDNetworkOperation *)v24 setProperty:sub_10000C344(v16) forKey:kSFOperationBundleIDKey];
        [(SDNetworkOperation *)v24 setProperty:v18 forKey:v29];
        [(SDNetworkOperation *)v24 setProperty:v20 forKey:kSFOperationSessionIDKey];
        [(NSMutableDictionary *)self->_exportedOperations setObject:v24 forKeyedSubscript:v20];
        [(NSMutableSet *)self->_activeObjects addObject:v24];
        [(SDNetworkOperation *)v24 setObjectKey:v20];
        [(SDNetworkOperation *)v24 setDelegate:self];
        [(SDNetworkOperation *)v24 resume];
      }
    }

    xpc_dictionary_set_value(v14, "Results", v15);
  }

  v25 = [v8 kind];
  v26 = [v25 isEqualToString:kSFOperationKindController];

  if (v26 && ![(SharingDaemon *)self canAccessAirDropSettings:v16])
  {
    v27 = airdrop_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100177BA0(v16);
    }
  }

  else
  {
    xpc_connection_send_message(v16, v14);
  }
}

- (void)handleBrowserMessage:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  string = xpc_dictionary_get_string(v6, "Function");
  if (string)
  {
    v9 = string;
    if (!strcmp(string, "Create"))
    {
      v10 = xpc_dictionary_get_value(v6, "Kind");
      v11 = [(SharingDaemon *)self stringFromXPCObject:v10];
      if (v11)
      {
        v13 = xpc_dictionary_get_value(v6, "Node");
        if (v13 && (v14 = _SFNodeCreateWithXPCObject()) != 0)
        {
          v15 = v14;
          v16 = [[SDNetworkBrowser alloc] initWithKind:v11 rootNode:v14];
          xpc_connection_set_context(v7, v16);
          [(NSMutableSet *)self->_activeObjects addObject:v16];
          [(SDNetworkBrowser *)v16 setConnection:v7];
          [(SDNetworkBrowser *)v16 setBoostMessage:v6];
          [(SDNetworkBrowser *)v16 setDelegate:self];
          CFRelease(v15);
        }

        else
        {
          v22 = daemon_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_100177E18();
          }
        }
      }

      else
      {
        v13 = daemon_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100177E4C();
        }
      }

      goto LABEL_45;
    }

    v10 = xpc_connection_get_context(v7);
    if (!v10)
    {
      v11 = daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100177DE4();
      }

      goto LABEL_45;
    }

    v11 = xpc_dictionary_get_value(v6, "Node");
    if (v11)
    {
      v12 = _SFNodeCreateWithXPCObject();
    }

    else
    {
      v12 = 0;
    }

    if (!strcmp(v9, "OpenNode"))
    {
      v18 = xpc_dictionary_get_value(v6, "Protocol");
      uint64 = xpc_dictionary_get_uint64(v6, "Flags");
      v20 = [(SharingDaemon *)self stringFromXPCObject:v18];
      if ([v10 openNode:v12 forProtocol:v20 flags:uint64])
      {
        v21 = daemon_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100177D74();
        }
      }
    }

    else if (!strcmp(v9, "CloseNode"))
    {
      if (![v10 closeNode:v12])
      {
        goto LABEL_43;
      }

      v18 = daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100177D04();
      }
    }

    else if (!strcmp(v9, "AddNode"))
    {
      if (![v10 addNode:v12])
      {
        goto LABEL_43;
      }

      v18 = daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100177C94();
      }
    }

    else if (!strcmp(v9, "RemoveNode"))
    {
      if (![v10 removeNode:v12])
      {
        goto LABEL_43;
      }

      v18 = daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100177C24();
      }
    }

    else
    {
      if (!strcmp(v9, "SetMode"))
      {
        [v10 setMode:xpc_dictionary_get_uint64(v6, "Mode")];
        if (!v12)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      if (strcmp(v9, "SetOptions"))
      {
LABEL_43:
        if (!v12)
        {
LABEL_45:

          goto LABEL_46;
        }

LABEL_44:
        CFRelease(v12);
        goto LABEL_45;
      }

      v17 = xpc_dictionary_get_dictionary(v6, "Options");
      v18 = _CFXPCCreateCFObjectFromXPCObject();

      [v10 setOptions:v18];
    }

    goto LABEL_43;
  }

  v10 = daemon_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100177E80();
  }

LABEL_46:
}

- (void)handleOperationMessage:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  string = xpc_dictionary_get_string(v6, "Function");
  if (!string)
  {
    v10 = daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10017803C();
    }

    goto LABEL_54;
  }

  v9 = string;
  if (!strcmp(string, "Create"))
  {
    v17 = xpc_dictionary_get_string(v6, "Operation");
    if (!v17)
    {
      v10 = xpc_dictionary_get_value(v6, "Kind");
      v11 = [(SharingDaemon *)self stringFromXPCObject:v10];
      if (!v11)
      {
        v21 = daemon_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100178008();
        }

        goto LABEL_53;
      }

      v14 = [[SDNetworkOperation alloc] initWithKind:v11];
      xpc_connection_set_context(v7, v14);
      [(NSMutableSet *)self->_activeObjects addObject:v14];
      [(SDNetworkOperation *)v14 setConnection:v7];
      [(SDNetworkOperation *)v14 setBoostMessage:v6];
      [(SDNetworkOperation *)v14 setDelegate:self];
LABEL_52:

LABEL_53:
      goto LABEL_54;
    }

    exportedOperations = self->_exportedOperations;
    v19 = [NSString stringWithUTF8String:v17];
    v10 = [(NSMutableDictionary *)exportedOperations objectForKeyedSubscript:v19];

    if (v10)
    {
      xpc_connection_set_context(v7, v10);
      [v10 setBoostMessage:v6];
      [v10 setConnection:v7];
      goto LABEL_54;
    }

    v20 = daemon_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100177FD4();
    }

LABEL_23:

    goto LABEL_54;
  }

  v10 = xpc_connection_get_context(v7);
  if (!v10)
  {
    v20 = daemon_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100177FA0();
    }

    goto LABEL_23;
  }

  if (!strcmp(v9, "Resume"))
  {
    [v10 resume];
  }

  else if (!strcmp(v9, "SetProperty"))
  {
    v11 = xpc_dictionary_get_value(v6, "Name");
    v12 = [(SharingDaemon *)self stringFromXPCObject:v11];
    if (!v12)
    {
      v14 = daemon_log();
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
      {
        sub_100177F6C();
      }

      goto LABEL_52;
    }

    v13 = v12;
    v14 = xpc_dictionary_get_value(v6, "Value");
    if (v14)
    {
      if (CFEqual(v13, kSFOperationNodeKey))
      {
        v15 = _SFNodeCreateWithXPCObject();
LABEL_10:
        v16 = v15;
LABEL_39:
        if ((CFEqual(v13, kSFOperationDiscoverableModeKey) || CFEqual(v13, kSFOperationLegacyModeEnabledKey) || CFEqual(v13, kSFOperationWirelessEnabledKey) || CFEqual(v13, kSFOperationBluetoothEnabledKey) || CFEqual(v13, kSFOperationWirelessAccessPointKey) || CFEqual(v13, kSFOperationAirplaneModeEnabledKey)) && ![(SharingDaemon *)self canAccessAirDropSettings:v7])
        {
          v26 = airdrop_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100177EE8(v7);
          }
        }

        else
        {
          [v10 setProperty:v16 forKey:v13];
        }

        if (v16)
        {
          CFRelease(v16);
        }

        goto LABEL_52;
      }

      if (!CFEqual(v13, kSFOperationFileIconKey) && !CFEqual(v13, kSFOperationSmallFileIconKey))
      {
        v15 = _CFXPCCreateCFObjectFromXPCObject();
        goto LABEL_10;
      }

      v22 = _CFXPCCreateCFObjectFromXPCObject();
      if (v22)
      {
        v23 = v22;
        v24 = CFGetTypeID(v22);
        if (v24 == CFDataGetTypeID())
        {
          v16 = sub_100117A0C(v23);
        }

        else
        {
          v25 = daemon_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100177EB4();
          }

          v16 = 0;
        }

        CFRelease(v23);
        goto LABEL_39;
      }
    }

    v16 = 0;
    goto LABEL_39;
  }

LABEL_54:
}

- (void)handleNewConnection:(id)a3
{
  v4 = a3;
  xpc_connection_set_target_queue(v4, &_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017699C;
  v6[3] = &unk_1008D1F48;
  v7 = v4;
  v8 = self;
  v5 = v4;
  xpc_connection_set_event_handler(v5, v6);
  xpc_connection_resume(v5);
}

- (void)start
{
  +[NSURLSession _disableAppSSO];
  gSFRunningInSharingD = 1;
  v3 = +[SDXPCSession sharedSession];
  [v3 start];

  if (!self->_listener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.sharingd", &_dispatch_main_q, 1uLL);
    listener = self->_listener;
    self->_listener = mach_service;

    v6 = self->_listener;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10017741C;
    handler[3] = &unk_1008D1F70;
    handler[4] = self;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_resume(self->_listener);
  }

  v7 = +[SDStatusMonitor sharedMonitor];
  v8 = SFIsDeviceAudioAccessory();
  v9 = daemon_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 deviceInformation];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device Information: %@", &buf, 0xCu);
  }

  if ((v8 & 1) == 0)
  {
    if (!self->_unlockKeyManager)
    {
      v11 = +[SDUnlockKeyManager sharedKeyManager];
      unlockKeyManager = self->_unlockKeyManager;
      self->_unlockKeyManager = v11;
    }

    if (!self->_activityAdvertiser)
    {
      v13 = +[SDActivityAdvertiser sharedAdvertiser];
      activityAdvertiser = self->_activityAdvertiser;
      self->_activityAdvertiser = v13;

      [(SDActivityAdvertiser *)self->_activityAdvertiser start];
    }

    if (!self->_activityScanner)
    {
      v15 = +[SDActivityScanner sharedScanner];
      activityScanner = self->_activityScanner;
      self->_activityScanner = v15;

      [(SDActivityScanner *)self->_activityScanner start];
    }

    if (!self->_encryptionManager)
    {
      v17 = +[SDActivityEncryptionManager sharedEncryptionManager];
      encryptionManager = self->_encryptionManager;
      self->_encryptionManager = v17;
    }

    if (!self->_payloadManager)
    {
      v19 = +[SDActivityPayloadManager sharedPayloadManager];
      payloadManager = self->_payloadManager;
      self->_payloadManager = v19;
    }

    if (GestaltGetDeviceClass() == 6)
    {
      v21 = _os_feature_enabled_impl() ^ 1;
    }

    else
    {
      v21 = 0;
    }

    if (!self->_airDropService && (v21 & 1) == 0)
    {
      v22 = objc_alloc_init(SDAirDropService_objc);
      airDropService = self->_airDropService;
      self->_airDropService = v22;

      [(SDAirDropService_objc *)self->_airDropService start];
    }

    if (!self->_sharesheetManager)
    {
      v24 = +[SDShareSheetSlotManager sharedManager];
      sharesheetManager = self->_sharesheetManager;
      self->_sharesheetManager = v24;

      [(SDShareSheetSlotManager *)self->_sharesheetManager activate];
    }

    if (!self->_sharesheetUserDefaultsServer)
    {
      v26 = objc_alloc_init(SDShareSheetUserDefaultsServer);
      sharesheetUserDefaultsServer = self->_sharesheetUserDefaultsServer;
      self->_sharesheetUserDefaultsServer = v26;

      [(SDShareSheetUserDefaultsServer *)self->_sharesheetUserDefaultsServer activate];
    }

    if (!self->_accessibilityServer)
    {
      v28 = objc_alloc_init(SDAccessibilityServer);
      accessibilityServer = self->_accessibilityServer;
      self->_accessibilityServer = v28;

      [(SDAccessibilityServer *)self->_accessibilityServer activate];
    }

    if (!self->_sharesheetRecipientServer)
    {
      v30 = objc_alloc_init(SDShareSheetRecipientServer);
      sharesheetRecipientServer = self->_sharesheetRecipientServer;
      self->_sharesheetRecipientServer = v30;

      [(SDShareSheetRecipientServer *)self->_sharesheetRecipientServer activate];
    }

    if (!self->_collaborationUserDefaultsServer)
    {
      v32 = objc_alloc_init(SDCollaborationUserDefaultsServer);
      collaborationUserDefaultsServer = self->_collaborationUserDefaultsServer;
      self->_collaborationUserDefaultsServer = v32;

      [(SDXPCDaemon *)self->_collaborationUserDefaultsServer _activate];
    }

    if (!self->_subCredentialAgent)
    {
      v34 = +[SDSubCredentialAgent sharedAgent];
      subCredentialAgent = self->_subCredentialAgent;
      self->_subCredentialAgent = v34;

      [(SDSubCredentialAgent *)self->_subCredentialAgent activate];
    }

    if (!self->_broadwayAgent)
    {
      v36 = +[SDBroadwayAgent sharedAgent];
      broadwayAgent = self->_broadwayAgent;
      self->_broadwayAgent = v36;

      [(SDBroadwayAgent *)self->_broadwayAgent activate];
    }

    if (!self->_autoUnlockSessionManager)
    {
      v38 = +[SDAutoUnlockSessionManager sharedManager];
      autoUnlockSessionManager = self->_autoUnlockSessionManager;
      self->_autoUnlockSessionManager = v38;

      [(SDAutoUnlockSessionManager *)self->_autoUnlockSessionManager start];
    }

    if (!self->_hotspotAgent && (SFIsDeviceAppleTV() & 1) == 0)
    {
      v40 = +[SDHotspotAgent sharedAgent];
      hotspotAgent = self->_hotspotAgent;
      self->_hotspotAgent = v40;

      [(SDHotspotAgent *)self->_hotspotAgent activate];
    }

    if (!self->_deviceAssetMonitor)
    {
      v42 = +[SDDeviceAssetMonitor sharedAssetMonitor];
      deviceAssetMonitor = self->_deviceAssetMonitor;
      self->_deviceAssetMonitor = v42;
    }

    if (!self->_pairedDeviceAgent)
    {
      v44 = +[SDPairedDeviceAgent sharedAgent];
      pairedDeviceAgent = self->_pairedDeviceAgent;
      self->_pairedDeviceAgent = v44;

      [(SDPairedDeviceAgent *)self->_pairedDeviceAgent activate];
    }

    v46 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [v46 start];
  }

  if (!self->_xpcServer)
  {
    v47 = [[SDXPCServer alloc] initWithAirDropService:self->_airDropService];
    xpcServer = self->_xpcServer;
    self->_xpcServer = v47;

    LODWORD(buf) = 0;
    Int64 = CFPrefs_GetInt64();
    if (buf)
    {
      if (GestaltGetDeviceClass() != 6 && Int64 == 0)
      {
        goto LABEL_54;
      }
    }

    else if (!Int64)
    {
LABEL_54:
      [(SDXPCServer *)self->_xpcServer activate];
      goto LABEL_55;
    }

    v50 = daemon_log();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "SharingServices using high priority queue", v67, 2u);
    }

    v51 = SFHighPriorityQueue();
    [(SDXPCServer *)self->_xpcServer setDispatchQueue:v51];

    goto LABEL_54;
  }

LABEL_55:
  if (!self->_stateHandle)
  {
    v61 = _NSConcreteStackBlock;
    v62 = 3221225472;
    v63 = sub_1001774F0;
    v64 = &unk_1008CE488;
    v65 = self;
    self->_stateHandle = os_state_add_handler();
  }

  if ([v7 isAirDropAvailable] && !self->_airdropAlertManager)
  {
    v52 = objc_opt_new();
    airdropAlertManager = self->_airdropAlertManager;
    self->_airdropAlertManager = v52;

    [(SDAirDropAlertManager *)self->_airdropAlertManager activate];
  }

  v54 = +[_TtC16DaemoniOSLibrary16SDB332SetupAgent shared];
  [v54 activate];

  v55 = +[_TtC16DaemoniOSLibrary16SDB389SetupAgent shared];
  [v55 activate];

  v56 = +[SDHUDManager shared];
  [v56 start];

  if (qword_10098A000 != -1)
  {
    sub_100178228();
  }

  *v67 = 0;
  v68 = v67;
  v69 = 0x2050000000;
  v57 = qword_10098A008;
  v70 = qword_10098A008;
  if (!qword_10098A008)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v72 = sub_100177854;
    v73 = &unk_1008CDA20;
    v74 = v67;
    sub_100177854(&buf);
    v57 = *(v68 + 3);
  }

  v58 = v57;
  _Block_object_dispose(v67, 8);
  if (v57 && byte_100971A08 == 1)
  {
    v59 = [v57 sharedInstance];
    [v59 start];
  }

  else
  {
    v59 = daemon_log();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_100178250();
    }
  }

  [(SharingDaemon *)self _performMigrations];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.sharingd.daemon.started", 0, 0, 1u);
}

- (void)stop
{
  xpcServer = self->_xpcServer;
  if (xpcServer)
  {
    [(SDXPCServer *)xpcServer invalidate];
    v4 = self->_xpcServer;
    self->_xpcServer = 0;
  }

  deviceAssetMonitor = self->_deviceAssetMonitor;
  if (deviceAssetMonitor)
  {
    self->_deviceAssetMonitor = 0;
  }

  pairedDeviceAgent = self->_pairedDeviceAgent;
  if (pairedDeviceAgent)
  {
    self->_pairedDeviceAgent = 0;

    [(SDPairedDeviceAgent *)self->_pairedDeviceAgent invalidate];
  }

  activityScanner = self->_activityScanner;
  if (activityScanner)
  {
    [(SDActivityScanner *)activityScanner stop];
    v8 = self->_activityScanner;
    self->_activityScanner = 0;
  }

  activityAdvertiser = self->_activityAdvertiser;
  if (activityAdvertiser)
  {
    [(SDActivityAdvertiser *)activityAdvertiser stop];
    v10 = self->_activityAdvertiser;
    self->_activityAdvertiser = 0;
  }

  encryptionManager = self->_encryptionManager;
  if (encryptionManager)
  {
    self->_encryptionManager = 0;
  }

  payloadManager = self->_payloadManager;
  if (payloadManager)
  {
    self->_payloadManager = 0;
  }

  broadwayAgent = self->_broadwayAgent;
  if (broadwayAgent)
  {
    [(SDBroadwayAgent *)broadwayAgent invalidate];
    v14 = self->_broadwayAgent;
    self->_broadwayAgent = 0;
  }

  airDropService = self->_airDropService;
  if (airDropService)
  {
    [(SDAirDropService_objc *)airDropService stop];
    v16 = self->_airDropService;
    self->_airDropService = 0;
  }

  sharesheetManager = self->_sharesheetManager;
  if (sharesheetManager)
  {
    [(SDShareSheetSlotManager *)sharesheetManager invalidate];
    v18 = self->_sharesheetManager;
    self->_sharesheetManager = 0;
  }

  accessibilityServer = self->_accessibilityServer;
  if (accessibilityServer)
  {
    [(SDAccessibilityServer *)accessibilityServer invalidate];
    v20 = self->_accessibilityServer;
    self->_accessibilityServer = 0;
  }

  sharesheetUserDefaultsServer = self->_sharesheetUserDefaultsServer;
  if (sharesheetUserDefaultsServer)
  {
    [(SDShareSheetUserDefaultsServer *)sharesheetUserDefaultsServer invalidate];
    v22 = self->_sharesheetUserDefaultsServer;
    self->_sharesheetUserDefaultsServer = 0;
  }

  sharesheetRecipientServer = self->_sharesheetRecipientServer;
  if (sharesheetRecipientServer)
  {
    [(SDShareSheetRecipientServer *)sharesheetRecipientServer invalidate];
    v24 = self->_sharesheetRecipientServer;
    self->_sharesheetRecipientServer = 0;
  }

  collaborationUserDefaultsServer = self->_collaborationUserDefaultsServer;
  if (collaborationUserDefaultsServer)
  {
    [(SDXPCDaemon *)collaborationUserDefaultsServer _invalidate];
    v26 = self->_collaborationUserDefaultsServer;
    self->_collaborationUserDefaultsServer = 0;
  }

  listener = self->_listener;
  if (listener)
  {
    xpc_connection_cancel(listener);
    v28 = self->_listener;
    self->_listener = 0;
  }

  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  activeObjects = self->_activeObjects;

  [(NSMutableSet *)activeObjects removeAllObjects];
}

@end