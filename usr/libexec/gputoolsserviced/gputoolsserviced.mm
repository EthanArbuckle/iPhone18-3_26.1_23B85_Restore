id sub_1000014DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "response", a2);
  xpc_dictionary_set_nsobject(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

void sub_1000019FC(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failure whilst decoding timestamp for GTRejectedConnectionReport, %@", &v4, 0xCu);
}

DYGTMTLDeviceProfile *newProfileWithMTLDevice(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(DYGTMTLDeviceProfile);
  [(DYGTMTLDeviceProfile *)v2 setVersion:2];
  v3 = [v1 name];
  [(DYGTMTLDeviceProfile *)v2 setName:v3];

  v4 = [NSMutableArray arrayWithCapacity:17];
  for (i = 0; i != 17; ++i)
  {
    v6 = qword_100031F20[i];
    if ([v1 supportsFeatureSet:v6])
    {
      v7 = [NSNumber numberWithUnsignedInteger:v6];
      [v4 addObject:v7];
    }
  }

  v8 = [v4 copy];
  v26 = v2;
  [(DYGTMTLDeviceProfile *)v2 setSupportedFeatureSets:v8];

  v9 = +[NSMutableDictionary dictionary];
  if ([v1 areProgrammableSamplePositionsSupported] && objc_msgSend(v1, "maxCustomSamplePositions"))
  {
    v10 = 1;
    do
    {
      if ([v1 supportsTextureSampleCount:v10])
      {
        v11 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
        [v1 getDefaultSamplePositions:v11 count:v10];
        v12 = objc_alloc_init(NSMutableArray);
        v13 = 0;
        do
        {
          v14 = [NSValue valueWithPoint:vcvtq_f64_f32(*&v11[8 * v13])];
          [v12 addObject:v14];

          ++v13;
        }

        while (v10 != v13);
        free(v11);
        v15 = [NSArray arrayWithArray:v12];
        v16 = [NSNumber numberWithInt:v10];
        [v9 setObject:v15 forKey:v16];
      }
    }

    while ([v1 maxCustomSamplePositions] > v10++);
  }

  v18 = [NSDictionary dictionaryWithDictionary:v9];
  v19 = v26;
  [(DYGTMTLDeviceProfile *)v26 setDefaultSamplePositions:v18];

  if (objc_opt_respondsToSelector())
  {
    v20 = [NSMutableArray arrayWithCapacity:17];
    for (j = 0; j != 17; ++j)
    {
      v22 = qword_100031FA8[j];
      if ([v1 supportsFamily:v22])
      {
        v23 = [NSNumber numberWithInteger:v22];
        [v20 addObject:v23];
      }
    }

    v24 = [v20 copy];
    v19 = v26;
    [(DYGTMTLDeviceProfile *)v26 setSupportedGPUFamilies:v24];
  }

  return v19;
}

id DaemonDeviceCapabilities(void *a1)
{
  v1 = a1;
  v2 = MTLCreateSystemDefaultDevice();
  v3 = newProfileWithMTLDevice(v2);

  v4 = [v1 stringByAppendingPathComponent:@"/System/Library/Frameworks/Metal.framework"];

  v5 = [NSBundle bundleWithPath:v4];

  if (v5)
  {
    v6 = [v5 objectForInfoDictionaryKey:kCFBundleVersionKey];
  }

  else
  {
    v6 = &stru_1000413E8;
  }

  *values = *off_100040958;
  v16 = *off_100040968;
  v17 = @"main-screen-scale";
  v7 = CFArrayCreate(0, values, 5, &kCFTypeArrayCallBacks);
  v8 = MGCopyMultipleAnswers();
  CFRelease(v7);
  v12 = v3;
  v13[0] = @"gputools.contexts-info";
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v14[0] = v9;
  v14[1] = v8;
  v13[1] = @"screen-dimensions";
  v13[2] = @"metal_version";
  v13[3] = @"nativePointerSize";
  v14[2] = v6;
  v14[3] = &off_1000440A8;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v10;
}

id modifyReplayerEnvironment(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 removeObjectsForKeys:&off_100044148];
  [v1 removeObjectForKey:@"METAL_DEVICE_WRAPPER_TYPE"];
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"GPUDebugger.ReplayerEnvironment"];

  if (v3)
  {
    [v1 addEntriesFromDictionary:v3];
  }

  v4 = [v1 copy];

  return v4;
}

id DaemonCreateGuestAppTransport(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_29;
  }

  v3 = [v1 objectForKeyedSubscript:@"environment"];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_28:

LABEL_29:
      v16 = 0;
      goto LABEL_30;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v45;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        v10 = [v4 objectForKeyedSubscript:v9];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v6)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v4 = [v2 objectForKeyedSubscript:@"platformPrefix"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v12 = [v2 objectForKeyedSubscript:@"shouldLoadCapture"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_26:

      goto LABEL_27;
    }
  }

  v13 = [v2 objectForKeyedSubscript:@"shouldLoadReplayer"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  v14 = [v2 objectForKeyedSubscript:@"shouldLoadDiagnostics"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_25;
    }
  }

  v15 = [v2 objectForKeyedSubscript:@"environment"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 mutableCopy];
  }

  else
  {
    v17 = [[NSMutableDictionary alloc] initWithCapacity:2];
  }

  v19 = v17;
  v20 = [v16 objectForKeyedSubscript:@"DYLD_INSERT_LIBRARIES"];
  v21 = [v20 componentsSeparatedByString:@":"];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 mutableCopy];
  }

  else
  {
    v23 = [[NSMutableArray alloc] initWithCapacity:2];
  }

  v24 = v23;
  v25 = [v2 objectForKeyedSubscript:@"platformPrefix"];
  v26 = [v16 objectForKeyedSubscript:@"GPUTOOLS_EXTRA_PLUGIN_PATHS"];
  v27 = [v2 objectForKeyedSubscript:@"shouldLoadReplayer"];
  if (!v27)
  {
    goto LABEL_39;
  }

  v28 = v27;
  [v2 objectForKeyedSubscript:@"shouldLoadCapture"];
  v43 = v24;
  v29 = v22;
  v30 = v19;
  v31 = v20;
  v32 = v26;
  v34 = v33 = v25;
  v35 = [v34 BOOLValue];

  v25 = v33;
  v26 = v32;
  v20 = v31;
  v19 = v30;
  v22 = v29;
  v24 = v43;

  if (v35)
  {
LABEL_39:
    v36 = [@"/System/Library/PrivateFrameworks/" stringByAppendingPathComponent:@"GPUToolsCapture.framework/GPUToolsCapture"];
    if (([v24 containsObject:v36] & 1) == 0)
    {
      [v24 addObject:v36];
    }

    [v19 setObject:v36 forKeyedSubscript:@"DYMTL_TOOLS_DYLIB_PATH"];
  }

  v37 = [v2 objectForKeyedSubscript:@"shouldLoadDiagnostics"];
  v38 = [v37 BOOLValue];

  if (v38)
  {
    v39 = [@"/System/Library/PrivateFrameworks/" stringByAppendingPathComponent:@"GPUToolsDiagnostics.framework/GPUToolsDiagnostics"];
    if (([v24 containsObject:v39] & 1) == 0)
    {
      [v24 addObject:v39];
    }
  }

  v40 = [v22 count];
  if (v40 != [v24 count])
  {
    v41 = [v24 componentsJoinedByString:@":"];
    [v19 setObject:v41 forKeyedSubscript:@"DYLD_INSERT_LIBRARIES"];

    v42 = [v19 copy];
    v16 = v42;
  }

LABEL_30:

  return v16;
}

void MessagePathPush(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = xpc_uint64_create(a2);
  xpc_dictionary_array_push(v3, "_pathHistory", v4);
}

uint64_t MessagePathPop(void *a1)
{
  v1 = xpc_dictionary_array_pop(a1, "_replyPath");
  v2 = v1;
  if (v1)
  {
    value = xpc_uint64_get_value(v1);
  }

  else
  {
    value = 0;
  }

  return value;
}

uint64_t MessagePathEndsWith(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4 || !xpc_array_get_count(v4))
  {
LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  if (v3)
  {
    count = xpc_array_get_count(v5);
    if (count <= xpc_array_get_count(v3))
    {
      if (xpc_array_get_count(v3))
      {
        v8 = 0;
        v9 = -1;
        while (v8 < xpc_array_get_count(v5))
        {
          v10 = xpc_array_get_count(v3);
          v11 = xpc_array_get_count(v5);
          uint64 = xpc_array_get_uint64(v3, v10 + v9);
          if (uint64 != xpc_array_get_uint64(v5, v11 + v9))
          {
            goto LABEL_5;
          }

          ++v8;
          --v9;
          v7 = 1;
          if (v8 >= xpc_array_get_count(v3))
          {
            goto LABEL_13;
          }
        }
      }

      goto LABEL_12;
    }
  }

LABEL_5:
  v7 = 0;
LABEL_13:

  return v7;
}

BOOL MessageIsStreamReply(void *a1)
{
  v1 = xpc_dictionary_get_value(a1, "_replyPath");
  v2 = v1 != 0;

  return v2;
}

BOOL MessageHasReply(void *a1)
{
  v1 = a1;
  v2 = (xpc_dictionary_get_flag(v1, "_flags", 0) & 1) != 0 || xpc_dictionary_get_BOOL(v1, "_reply");

  return v2;
}

void MessageSetHasReply(void *a1)
{
  xdict = a1;
  xpc_dictionary_set_flag(xdict, "_flags", 0);
  xpc_dictionary_set_BOOL(xdict, "_reply", 1);
}

BOOL MessageRecordsPathHistory(void *a1)
{
  v1 = a1;
  if (xpc_dictionary_get_flag(v1, "_flags", 2))
  {
    v2 = 1;
  }

  else
  {
    v3 = xpc_dictionary_get_value(v1, "_replyStreamId");
    v2 = v3 != 0;
  }

  return v2;
}

BOOL MessageIsValid(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      v19 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Encountered an XPC error: %@", @"Message is nil"];
      v20 = v5;
      v6 = &v20;
      v7 = &v19;
      goto LABEL_8;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (a2)
    {
      v17 = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:xpc_error_string(v4)];
      v10 = [NSString stringWithFormat:@"Encountered an XPC error: %@", v9];
      v18 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *a2 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:7 userInfo:v11];
    }

    goto LABEL_11;
  }

  if (xpc_get_type(v4) != &_xpc_type_dictionary)
  {
    if (a2)
    {
      v5 = [NSString stringWithFormat:@"Encountered an XPC error: %@", @"Unexpected XPC object type", NSLocalizedDescriptionKey];
      v16 = v5;
      v6 = &v16;
      v7 = &v15;
LABEL_8:
      v8 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:1];
      *a2 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:7 userInfo:v8];

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  nserror = xpc_dictionary_get_nserror(v4, "_error");
  v12 = nserror == 0;
  if (a2 && nserror)
  {
    nserror = nserror;
    *a2 = nserror;
  }

LABEL_12:
  return v12;
}

uint64_t MessageVisit(void *a1, const char *a2)
{
  v3 = a1;
  v4 = xpc_dictionary_string_array_contains(v3, "_visited", a2);
  if ((v4 & 1) == 0)
  {
    v5 = xpc_string_create(a2);
    xpc_dictionary_array_push(v3, "_visited", v5);
  }

  return v4 ^ 1u;
}

void MessageRemoteRoutingInfoGet(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = xpc_dictionary_get_uint64(v3, "_remoteDeviceRelayPort");
  *(a2 + 8) = xpc_dictionary_get_uint64(v3, "_remoteDeviceRelayPid");
  *(a2 + 16) = xpc_dictionary_get_uint64(v3, "_remoteDeviceRelayRemotePid");
  flag = xpc_dictionary_get_flag(v3, "_flags", 6);

  *(a2 + 24) = flag;
}

void MessageRemoteRoutingInfoSet(void *a1, uint64_t a2)
{
  v3 = a1;
  xdict = v3;
  if (*a2)
  {
    xpc_dictionary_set_uint64(v3, "_remoteDeviceRelayPort", *a2);
    v3 = xdict;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    xpc_dictionary_set_uint64(xdict, "_remoteDeviceRelayPid", v4);
    v3 = xdict;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    xpc_dictionary_set_uint64(xdict, "_remoteDeviceRelayRemotePid", v5);
    v3 = xdict;
  }

  if (*(a2 + 24) == 1)
  {
    xpc_dictionary_set_flag(xdict, "_flags", 6);
    v3 = xdict;
  }
}

id allServicesForDeviceUDID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "_cmd", "allServices");
  if (v4)
  {
    xpc_dictionary_set_string(empty, "_device_dest", [v4 UTF8String]);
  }

  MessageSetHasReply(empty);
  v10 = 0;
  v6 = [v3 sendMessageWithReplySync:empty error:&v10];
  if (v6)
  {
    v7 = objc_opt_class();
    nsarray = xpc_dictionary_get_nsarray(v6, "returnValue", v7);
  }

  else
  {
    [v3 setError:0];
    nsarray = 0;
  }

  return nsarray;
}

id filteredArrayByService(void *a1, Protocol *a2)
{
  v3 = a1;
  v4 = NSStringFromProtocol(a2);
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 serviceProperties];
        v13 = [v12 protocolName];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

id filteredArrayByPID(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 processInfo];
        if ([v11 processIdentifier] == a2)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

id filteredArrayByPort(void *a1, id a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 serviceProperties];
        if ([v11 servicePort] == a2)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

id newSetWithArrayMinusArray(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[NSMutableSet alloc] initWithArray:v4];

  v6 = [[NSSet alloc] initWithArray:v3];
  [v5 minusSet:v6];

  v7 = [v5 copy];

  return v7;
}

__CFString *GTTransportArchiveDirectory()
{
  v0 = +[NSProcessInfo processInfo];
  v1 = [v0 isiOSAppOnMac];

  if (v1)
  {
    v2 = @"/tmp/com.apple.GPUToolsAgent";
  }

  else
  {
    v3 = [NSString stringWithUTF8String:getpwnam("mobile")->pw_dir];
    v2 = [v3 stringByAppendingPathComponent:@"Library/GPUTools"];
  }

  return v2;
}

uint64_t GTTransportEnvironment_init()
{
  GT_TRANSPORT_ENV = sub_100006044("MTLTRANSPORT_REPLAY_MAX_RECORD_REQUEST", 64);
  qword_100051FA0 = qword_100051FA0 & 0xFFFFFFFFFFFFFFFELL | sub_100006044("MTLTRANSPORT_REPLAY_RECORD_REQUEST", 1) & 1;
  result = sub_100006044("MTLTRANSPORT_LAUNCH_TIMEOUT", 30);
  qword_100051F98 = result;
  return result;
}

uint64_t sub_100006044(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return strtol(v3, 0, 0);
}

void xpc_dictionary_set_nsobject(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v7 = 0;
    v5 = a1;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
    xpc_dictionary_set_data(v5, a2, [v6 bytes], objc_msgSend(v6, "length"));
  }
}

void xpc_dictionary_set_nsdata(void *a1, const char *a2, id a3)
{
  if (a3)
  {
    v6 = a3;
    v7 = a3;
    xdict = a1;
    v8 = [v7 bytes];
    v9 = [v7 length];

    xpc_dictionary_set_data(xdict, a2, v8, v9);
  }
}

id xpc_dictionary_get_nsdata(void *a1, const char *a2)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, a2, &length);
  if (result)
  {
    v3 = result;
    v4 = [NSData alloc];
    return [v4 initWithBytes:v3 length:length];
  }

  return result;
}

id xpc_dictionary_get_nsdata_nocopy(void *a1, const char *a2)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, a2, &length);
  if (result)
  {
    v3 = result;
    v4 = [NSData alloc];
    return [v4 initWithBytesNoCopy:v3 length:length freeWhenDone:0];
  }

  return result;
}

void *xpc_dictionary_get_nsobject(void *a1, const char *a2, uint64_t a3)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (!nsdata_nocopy)
  {
    goto LABEL_5;
  }

  v7 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:a3 fromData:nsdata_nocopy error:&v7];
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1000062FC(void *a1, const char *a2)
{
  v2 = a1;
  v3 = [NSSet alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v3 initWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  nsobject_classes = xpc_dictionary_get_nsobject_classes(v2, a2, v12);

  return nsobject_classes;
}

uint64_t xpc_dictionary_get_nsarray(void *a1, const char *a2, uint64_t a3)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v7 = 0;
    v5 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:a3 fromData:nsdata_nocopy error:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t xpc_dictionary_get_nsdictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v9 = 0;
    v7 = [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClass:a3 objectsOfClass:a4 fromData:nsdata_nocopy error:&v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t xpc_dictionary_get_nsobject_classes(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v9 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:nsdata_nocopy error:&v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id xpc_dictionary_get_nsdictionary_any(void *a1, const char *a2)
{
  v2 = sub_1000062FC(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

const char *xpc_error_string(void *a1)
{
  result = xpc_dictionary_get_string(a1, _xpc_error_key_description);
  if (!result)
  {
    return "Unknown";
  }

  return result;
}

void xpc_dictionary_set_flag(void *a1, const char *a2, char a3)
{
  xdict = a1;
  uint64 = xpc_dictionary_get_uint64(xdict, a2);
  xpc_dictionary_set_uint64(xdict, a2, uint64 | (1 << a3));
}

id xpc_array_pop(void *a1)
{
  v1 = a1;
  count = xpc_array_get_count(v1);
  if (count)
  {
    v3 = count - 1;
    while (1)
    {
      v4 = xpc_array_get_value(v1, v3);
      if (xpc_get_type(v4) != &_xpc_type_null)
      {
        break;
      }

      if (--v3 == -1)
      {
        goto LABEL_5;
      }
    }

    v5 = xpc_null_create();
    xpc_array_set_value(v1, v3, v5);
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  return v4;
}

void xpc_dictionary_array_push(void *a1, const char *a2, void *a3)
{
  value = a3;
  v5 = a1;
  empty = xpc_dictionary_get_array(v5, a2);
  if (!empty)
  {
    empty = xpc_array_create_empty();
  }

  xpc_array_append_value(empty, value);
  xpc_dictionary_set_value(v5, a2, empty);
}

id xpc_dictionary_array_pop(void *a1, const char *a2)
{
  v3 = a1;
  v4 = xpc_dictionary_get_array(v3, a2);
  v5 = v4;
  if (v4)
  {
    v6 = xpc_array_pop(v4);
    xpc_dictionary_set_value(v3, a2, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t xpc_dictionary_string_array_contains(void *a1, const char *a2, uint64_t a3)
{
  v4 = xpc_dictionary_get_array(a1, a2);
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_array)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000695C;
    v8[3] = &unk_1000409E8;
    v8[4] = &v9;
    v8[5] = a3;
    xpc_array_apply(v5, v8);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10000695C(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (!string_ptr)
  {
    return 1;
  }

  v5 = strcmp(*(a1 + 40), string_ptr);
  result = 1;
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

id gt_xpc_dictionary_create_reply(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);

  return reply;
}

void sub_100006C00(void *a1)
{
  v1 = *(a1[4] + 32);
  if (v1)
  {
    v2 = a1[5];
    v3 = [NSNumber numberWithUnsignedLongLong:a1[6]];
    [v1 setObject:v2 forKeyedSubscript:v3];
  }
}

void sub_100006D38(void *a1)
{
  v1 = *(a1[4] + 32);
  if (v1)
  {
    v2 = a1[5];
    v3 = [NSNumber numberWithUnsignedLongLong:a1[6]];
    [v1 setObject:v2 forKeyedSubscript:v3];
  }
}

void sub_100006E2C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    v2 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
    [v1 removeObjectForKey:v2];
  }
}

void sub_100006F6C(uint64_t a1)
{
  if (xpc_dictionary_get_flag(*(a1 + 32), "_flags", 1))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(*(a1 + 40) + 32);
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          if (IsServicePort([v7 unsignedLongLongValue]))
          {
            v8 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v7];
            [v8 dispatchMessage:*(a1 + 32) replyConnection:*(a1 + 48)];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "_port");
    v10 = *(*(a1 + 40) + 32);
    v11 = [NSNumber numberWithUnsignedLongLong:uint64];
    v12 = [v10 objectForKeyedSubscript:v11];

    [v12 dispatchMessage:*(a1 + 32) replyConnection:*(a1 + 48)];
  }
}

void sub_100007230(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  IsValid = MessageIsValid(v3, &v6);
  v5 = v6;
  if (!IsValid)
  {

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100007504(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[3];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000075F0;
    v7[3] = &unk_100040AD8;
    v8 = v3;
    v9 = v5;
    v10 = a1[4];
    v11 = a1[5];
    dispatch_async(v6, v7);
  }
}

uint64_t sub_1000075F0(uint64_t a1)
{
  if (xpc_get_type(*(a1 + 32)) == &_xpc_type_error)
  {
    objc_storeStrong((*(a1 + 40) + 40), *(a1 + 32));
    v2 = 48;
  }

  else
  {
    v2 = 56;
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + v2) + 16);

  return v4();
}

void sub_1000076E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

uint64_t sub_100008870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008888(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000093FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    nserror = xpc_dictionary_get_nserror(a2, "error");
    (*(v3 + 16))(v3, nserror);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, a3);
  }
}

id sub_100009F70(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

id sub_10000A0D4(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

void sub_10000A3F0(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 protocolName];
  v7 = [v6 UTF8String];
  v8 = [a1 deviceUDID];
  v9 = 136315650;
  v10 = v7;
  v11 = 2048;
  v12 = a2;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Service Registered name:%s port:%lu udid:%@", &v9, 0x20u);
}

void DeleteAllArchives(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v26 = v1;
  v3 = [NSURL fileURLWithPath:v1];
  v4 = +[NSFileManager defaultManager];
  v25 = v3;
  v5 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:&__NSArray0__struct options:0 errorHandler:&stru_100040C00];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 pathExtension];
        v13 = [v12 caseInsensitiveCompare:@"gputrace"];

        if (!v13)
        {
          [v2 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v2;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        v20 = +[NSFileManager defaultManager];
        v27 = 0;
        v21 = [v20 removeItemAtURL:v19 error:&v27];
        v22 = v27;

        if ((v21 & 1) == 0)
        {
          if (GTCoreLogUseOsLog())
          {
            v23 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v37 = v19;
              v38 = 2112;
              v39 = v22;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to delete archive %@ %@", buf, 0x16u);
            }
          }

          else
          {
            v24 = __stderrp;
            v23 = [NSString stringWithFormat:@"Failed to delete archive %@ %@", v19, v22];
            fprintf(v24, "%s\n", [v23 UTF8String]);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v16);
  }
}

BOOL sub_10000B62C(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = [(NSError *)v3 domain];
  if ([v4 isEqualToString:NSCocoaErrorDomain])
  {
    v5 = [(NSError *)v3 code];

    if (v5 == 260)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (GTCoreLogUseOsLog())
  {
    v6 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100013128();
    }
  }

  else
  {
    v7 = __stderrp;
    v8 = [NSString stringWithFormat:@"Directory enumeration failed whilst deleting archives %@", v3];
    fprintf(v7, "%s\n", [v8 UTF8String]);
  }

LABEL_10:

  return 1;
}

uint64_t sub_10000CF90(compression_stream *a1, const uint8_t *a2, size_t a3, uint8_t *a4, size_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  a1->src_ptr = a2;
  a1->src_size = a3;
  if (!a3)
  {
LABEL_7:
    a6 = 1;
    goto LABEL_16;
  }

  while (compression_stream_process(a1, 0) != COMPRESSION_STATUS_ERROR)
  {
    if (!a1->dst_size)
    {
      if (!v13[2](v13, a4, a5, a6))
      {
        goto LABEL_15;
      }

      a1->dst_ptr = a4;
      a1->dst_size = a5;
    }

    if (!a1->src_size)
    {
      goto LABEL_7;
    }
  }

  if (!GTCoreLogUseOsLog())
  {
    v15 = __stderrp;
    v16 = [NSString stringWithFormat:@"Failed to process compression stream"];
    fprintf(v15, "%s\n", [v16 UTF8String]);

    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v14 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000133D8();
  }

  if (a6)
  {
LABEL_14:
    v17 = [NSString stringWithFormat:@"Compression failed: %@", @"Failed to process compression stream", NSLocalizedDescriptionKey];
    v21 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a6 = [NSError errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v18];

LABEL_15:
    a6 = 0;
  }

LABEL_16:

  return a6;
}

uint64_t sub_10000D2B0(compression_stream *a1, uint8_t *a2, size_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = compression_stream_process(a1, 1);
  if (v10 == COMPRESSION_STATUS_OK)
  {
    while (v9[2](v9, a2, a3, a4))
    {
      a1->dst_ptr = a2;
      a1->dst_size = a3;
      v10 = compression_stream_process(a1, 1);
      if (v10)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_14;
  }

LABEL_4:
  if (v10 != COMPRESSION_STATUS_ERROR)
  {
    if (v9[2](v9, a2, a3 - a1->dst_size, a4))
    {
      a1->dst_ptr = a2;
      a1->dst_size = a3;
      a4 = 1;
      goto LABEL_15;
    }

LABEL_14:
    a4 = 0;
    goto LABEL_15;
  }

  if (!GTCoreLogUseOsLog())
  {
    v12 = __stderrp;
    v13 = [NSString stringWithFormat:@"Failed to finalize compression stream"];
    fprintf(v12, "%s\n", [v13 UTF8String]);

    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v11 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10001340C();
  }

  if (a4)
  {
LABEL_13:
    v14 = [NSString stringWithFormat:@"Compression failed: %@", @"Failed to finalize compression stream", NSLocalizedDescriptionKey];
    v18 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v15];

    goto LABEL_14;
  }

LABEL_15:

  return a4;
}

uint64_t GTFileWriterTransferFileEntries(void *a1, void *a2, void *a3, NSString **a4, void *a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v111 = malloc_type_malloc([v10 chunkSize], 0x3260538DuLL);
  if ([v10 compressionAlgorithm])
  {
    v12 = v8;
    v105 = v9;
    v13 = v10;
    v103 = v11;
    if (![v12 count])
    {
      v45 = 1;
      goto LABEL_113;
    }

    memset(&buf, 0, sizeof(buf));
    v14 = [v13 compressionAlgorithm] - 1;
    if (v14 > 4)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_1000320B0[v14];
    }

    v108 = v13;
    if (compression_stream_init(&buf, COMPRESSION_STREAM_ENCODE, v15))
    {
      if (GTCoreLogUseOsLog())
      {
        v46 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_100013440();
        }
      }

      else
      {
        v75 = __stderrp;
        v46 = [NSString stringWithFormat:@"Failed to initialize encode compression stream"];
        fprintf(v75, "%s\n", [v46 UTF8String]);
      }

      if (a4)
      {
        *&v120 = NSLocalizedDescriptionKey;
        v67 = [NSString stringWithFormat:@"Compression failed: %@", @"Failed to initialize encode compression stream"];
        v119[0] = v67;
        v76 = [NSDictionary dictionaryWithObjects:v119 forKeys:&v120 count:1];
        *a4 = [NSError errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v76];

        v45 = 0;
LABEL_112:

        goto LABEL_113;
      }

      v45 = 0;
LABEL_113:

      goto LABEL_114;
    }

    v91 = v8;
    v93 = v11;
    v87 = v10;
    v89 = v9;
    v110 = malloc_type_malloc([v13 chunkSize], 0xE0DF840FuLL);
    buf.src_size = 0;
    buf.dst_ptr = v111;
    buf.dst_size = [v13 chunkSize];
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v96 = v12;
    v47 = v12;
    v48 = [v47 countByEnumeratingWithState:&v120 objects:v119 count:16];
    if (!v48)
    {
LABEL_81:

LABEL_110:
      v45 = sub_10000D2B0(&buf, v111, [v13 chunkSize], a4, v103);
      v67 = 0;
      v9 = v89;
      v8 = v91;
      v10 = v87;
      v11 = v93;
      v12 = v96;
LABEL_111:
      free(v110);
      compression_stream_destroy(&buf);
      goto LABEL_112;
    }

    v49 = v48;
    v50 = *v121;
    v100 = *v121;
    v101 = v47;
LABEL_52:
    v51 = 0;
    v102 = v49;
    while (1)
    {
      if (*v121 != v50)
      {
        objc_enumerationMutation(v47);
      }

      v52 = *(*(&v120 + 1) + 8 * v51);
      v53 = objc_autoreleasePoolPush();
      v54 = [v52 destination];
      if (v54)
      {
        goto LABEL_76;
      }

      if ([v52 fileSize])
      {
        break;
      }

LABEL_77:
      objc_autoreleasePoolPop(v53);
      if (++v51 == v49)
      {
        v72 = [v47 countByEnumeratingWithState:&v120 objects:v119 count:16];
        v49 = v72;
        if (v72)
        {
          goto LABEL_52;
        }

        goto LABEL_81;
      }
    }

    v55 = [NSURL alloc];
    v56 = [v52 path];
    v54 = [v55 initFileURLWithPath:v56 isDirectory:0 relativeToURL:v105];

    v57 = open([v54 fileSystemRepresentation], 0);
    if (v57 < 0)
    {
      v80 = *__error();
      if (GTCoreLogUseOsLog())
      {
        v81 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_100013474();
        }
      }

      else
      {
        v82 = __stderrp;
        v81 = [NSString stringWithFormat:@"Failed to open file %@ for reading (%d)", v54, v80];
        fprintf(v82, "%s\n", [v81 UTF8String]);
      }

      v118 = NSLocalizedDescriptionKey;
      *v115 = @"Failed to open file for reading";
      v83 = [NSDictionary dictionaryWithObjects:v115 forKeys:&v118 count:1];
      v67 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v80 userInfo:v83];

      v13 = v108;
LABEL_107:

      objc_autoreleasePoolPop(v53);
      if (!v67)
      {
        goto LABEL_110;
      }

      v9 = v89;
      v8 = v91;
      v10 = v87;
      v11 = v93;
      v12 = v96;
      if (a4)
      {
        v84 = v67;
        v45 = 0;
        *a4 = v67;
      }

      else
      {
        v45 = 0;
      }

      goto LABEL_111;
    }

    v58 = v57;
    v59 = 0;
    v60 = 0;
    while (2)
    {
      if (v59 >= [v52 fileSize])
      {
        v67 = v60;
      }

      else
      {
        v61 = [v52 fileSize] - v59;
        if (v61 >= [v13 chunkSize])
        {
          v61 = [v13 chunkSize];
        }

        v62 = v110;
        v63 = &v110[v61];
        while (v62 < v63)
        {
          v64 = read(v58, v62, v63 - v62);
          v62 += v64;
          if (v64 < 0)
          {
            goto LABEL_69;
          }
        }

        if ((v61 & 0x8000000000000000) != 0)
        {
LABEL_69:
          v68 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v69 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *v115 = 138412546;
              *&v115[4] = v54;
              v116 = 1024;
              v117 = v68;
              _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Failed to read from file %@ (%d)", v115, 0x12u);
            }
          }

          else
          {
            v70 = __stderrp;
            v69 = [NSString stringWithFormat:@"Failed to read from file %@ (%d)", v54, v68];
            fprintf(v70, "%s\n", [v69 UTF8String]);
          }

          v13 = v108;

          v113 = NSLocalizedDescriptionKey;
          v114 = @"Failed to read from file";
          v71 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          v67 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v68 userInfo:v71];

          break;
        }

        v59 += v61;
        v13 = v108;
        v65 = [v108 chunkSize];
        v112 = v60;
        v66 = sub_10000CF90(&buf, v110, v61, v111, v65, &v112, v103);
        v67 = v112;

        v60 = v67;
        if (v66)
        {
          continue;
        }
      }

      break;
    }

    close(v58);
    v47 = v101;
    if (v67)
    {
      goto LABEL_107;
    }

    v50 = v100;
    v49 = v102;
LABEL_76:

    goto LABEL_77;
  }

  v16 = v8;
  v106 = v9;
  v107 = v10;
  v92 = v11;
  v17 = v11;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v120 objects:v119 count:16];
  if (!v19)
  {

    v45 = 1;
    goto LABEL_104;
  }

  v86 = v10;
  v88 = v9;
  v90 = v8;
  v20 = 0;
  v21 = *v121;
  v95 = v17;
  v98 = *v121;
  v99 = v18;
LABEL_7:
  v22 = 0;
  v104 = v19;
  while (1)
  {
    if (*v121 != v21)
    {
      objc_enumerationMutation(v18);
    }

    v23 = *(*(&v120 + 1) + 8 * v22);
    v24 = objc_autoreleasePoolPush();
    v25 = [v23 destination];
    if (v25)
    {
      v26 = v25;
LABEL_40:

      goto LABEL_41;
    }

    if ([v23 fileSize])
    {
      break;
    }

LABEL_41:
    objc_autoreleasePoolPop(v24);
    if (++v22 == v19)
    {
      v19 = [v18 countByEnumeratingWithState:&v120 objects:v119 count:16];
      if (v19)
      {
        goto LABEL_7;
      }

      v11 = v92;
      v44 = a4;
      goto LABEL_96;
    }
  }

  v27 = [NSURL alloc];
  v28 = [v23 path];
  v26 = [v27 initFileURLWithPath:v28 isDirectory:0 relativeToURL:v106];

  v29 = open([v26 fileSystemRepresentation], 0);
  if ((v29 & 0x80000000) == 0)
  {
    v30 = v29;
    if ([v23 fileSize])
    {
      v109 = 0;
      v31 = 0;
      while (2)
      {
        v32 = [v23 fileSize] - v31;
        v33 = [v107 chunkSize];
        if (v32 >= v33 - v20)
        {
          v34 = v33 - v20;
        }

        else
        {
          v34 = v32;
        }

        v35 = v20;
        v36 = &v20[v111];
        v37 = &v20[v111 + v34];
        while (v36 < v37)
        {
          v38 = read(v30, v36, v37 - v36);
          v36 += v38;
          if (v38 < 0)
          {
            goto LABEL_30;
          }
        }

        if ((v34 & 0x8000000000000000) != 0)
        {
LABEL_30:
          v39 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v40 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.dst_ptr) = 138412546;
              *(&buf.dst_ptr + 4) = v26;
              WORD2(buf.dst_size) = 1024;
              *(&buf.dst_size + 6) = v39;
              _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to read from file %@ (%d)", &buf, 0x12u);
            }
          }

          else
          {
            v41 = __stderrp;
            v40 = [NSString stringWithFormat:@"Failed to read from file %@ (%d)", v26, v39];
            fprintf(v41, "%s\n", [v40 UTF8String]);
          }

          v42 = v39;

          v114 = NSLocalizedDescriptionKey;
          v118 = @"Failed to read from file";
          v43 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v114 count:1];
          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v42 userInfo:v43];

LABEL_36:
          v20 = v35;
          break;
        }

        v20 = &v35[v34];
        if (&v35[v34] == [v107 chunkSize])
        {
          v35 += v34;
          v113 = v109;
          v97 = (v95)[2](v95, v111, v35, &v113);
          v19 = v113;

          if (!v97)
          {
            goto LABEL_36;
          }

          v20 = 0;
          v109 = v19;
        }

        else
        {
          v19 = v109;
        }

        v31 += v34;
        if (v31 < [v23 fileSize])
        {
          continue;
        }

        break;
      }

      close(v30);
      if (v19)
      {
        v44 = a4;
        v18 = v99;
        goto LABEL_93;
      }

      v21 = v98;
      v18 = v99;
    }

    else
    {
      close(v30);
    }

    v19 = v104;
    goto LABEL_40;
  }

  v73 = *__error();
  if (GTCoreLogUseOsLog())
  {
    v74 = gt_tagged_log(0x10u);
    v44 = a4;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      sub_100013474();
    }
  }

  else
  {
    v77 = __stderrp;
    v74 = [NSString stringWithFormat:@"Failed to open file %@ for reading (%d)", v26, v73];
    fprintf(v77, "%s\n", [v74 UTF8String]);
    v44 = a4;
  }

  *v115 = NSLocalizedDescriptionKey;
  buf.dst_ptr = @"Failed to open file for reading";
  v78 = [NSDictionary dictionaryWithObjects:&buf forKeys:v115 count:1];
  v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v73 userInfo:v78];

LABEL_93:
  objc_autoreleasePoolPop(v24);

  v11 = v92;
  if (!v19)
  {
LABEL_96:
    v17 = v95;
    if (v20)
    {
      v45 = (v95)[2](v95, v111, v20, v44);
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v45 = 1;
    }

    goto LABEL_103;
  }

  v17 = v95;
  if (v44)
  {
    v79 = v19;
    v45 = 0;
    *v44 = v19;
  }

  else
  {
    v45 = 0;
  }

LABEL_103:
  v9 = v88;
  v8 = v90;
  v10 = v86;
LABEL_104:

LABEL_114:
  free(v111);

  return v45;
}

id sub_10000EAA0(void *a1, void *a2)
{
  ++dword_100051F60;
  v3 = a2;
  v4 = a1;
  v5 = [v4 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [v4 pathExtension];

  v8 = [v6 stringByAppendingFormat:@"-%04u", dword_100051F60];
  v9 = [v8 stringByAppendingPathExtension:v7];

  v10 = [v3 stringByAppendingPathComponent:v9];

  v11 = [NSURL fileURLWithPath:v10 isDirectory:1];

  return v11;
}

void sub_10000EBB8(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[6];
    v4 = *(a1[6] + 16);

    v4();
  }

  else
  {
    v5 = [*(a1[4] + 48) makeURL:a1[5]];
    (*(a1[6] + 16))();
  }
}

void sub_10000EEDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    memset(&v30, 0, sizeof(v30));
    if (stat([*(a1 + 32) fileSystemRepresentation], &v30))
    {
      if (GTCoreLogUseOsLog())
      {
        v4 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1000135E8((a1 + 32));
        }
      }

      else
      {
        v9 = __stderrp;
        v10 = [NSString stringWithFormat:@"Failed to stat directory %@ after transfer: %{darwin.errno}d", *(a1 + 32), *__error()];
        fprintf(v9, "%s\n", [v10 UTF8String]);
      }

      goto LABEL_39;
    }

    st_uid = v30.st_uid;
    st_gid = v30.st_gid;
    v7 = *(a1 + 40);
    if (GTCoreLogUseOsLog())
    {
      v8 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v36 = v7;
        v37 = 1024;
        v38 = st_uid;
        v39 = 1024;
        v40 = st_gid;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Updating owner of archive %@ to %u:%u", buf, 0x18u);
      }
    }

    else
    {
      v11 = __stdoutp;
      v8 = [NSString stringWithFormat:@"Updating owner of archive %@ to %u:%u", v7, st_uid, st_gid];
      fprintf(v11, "%s\n", [v8 UTF8String]);
    }

    if (v7)
    {
      if (chown([v7 fileSystemRepresentation], st_uid, st_gid) != -1)
      {
        v12 = +[NSFileManager defaultManager];
        v13 = [v12 enumeratorAtURL:v7 includingPropertiesForKeys:&__NSArray0__struct options:0 errorHandler:0];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v31 objects:buf count:16];
        v16 = v14;
        if (v15)
        {
          v17 = v15;
          v29 = v7;
          v18 = *v32;
          v19 = 1;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v21 = *(*(&v31 + 1) + 8 * i);
              v22 = objc_autoreleasePoolPush();
              v19 &= chown([v21 fileSystemRepresentation], st_uid, st_gid) != -1;
              objc_autoreleasePoolPop(v22);
            }

            v17 = [v14 countByEnumeratingWithState:&v31 objects:buf count:16];
          }

          while (v17);

          if (v19)
          {
            v7 = v29;
            v3 = 0;
LABEL_38:

LABEL_39:
            v26 = [*(*(a1 + 48) + 48) makeURL:*(a1 + 40)];
            (*(*(a1 + 56) + 16))();

            goto LABEL_40;
          }

          v7 = v29;
          v3 = 0;
          if (GTCoreLogUseOsLog())
          {
            v16 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_100013674();
            }
          }

          else
          {
            v25 = __stderrp;
            v16 = [NSString stringWithFormat:@"Failed to update owner of one or more files inside archive %@ after transfer", v29];
            fprintf(v25, "%s\n", [v16 UTF8String]);
          }
        }

        goto LABEL_38;
      }

      if (GTCoreLogUseOsLog())
      {
        v14 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000136E4();
        }

        goto LABEL_38;
      }

      v23 = __stderrp;
      v27 = v7;
      v28 = *__error();
      v24 = @"Failed to update owner of archive %@ after transfer: %{darwin.errno}d";
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v14 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100013770();
        }

        goto LABEL_38;
      }

      v23 = __stderrp;
      v24 = @"Invalid archive passed to UpdateArchiveOwner";
    }

    v14 = [NSString stringWithFormat:v24, v27, v28];
    fprintf(v23, "%s\n", [v14 UTF8String]);
    goto LABEL_38;
  }

  (*(*(a1 + 56) + 16))();
LABEL_40:
  [*(a1 + 32) stopAccessingSecurityScopedResource];
}

const char *sub_10000FB14(unint64_t a1)
{
  if (a1 > 5)
  {
    return "<UNKNOWN>";
  }

  else
  {
    return off_100040D38[a1];
  }
}

BOOL sub_10000FB38(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1 && [v1 chunkSize] && objc_msgSend(v2, "compressionAlgorithm") < 6;

  return v3;
}

void sub_10000FB8C(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1 + 6;
  v4 = a1[6];
  v6 = a1[4];
  v18 = 0;
  v7 = [v6 _finishSession:v4 error:&v18];
  v8 = v18;
  v9 = GTCoreLogUseOsLog();
  if (v3)
  {
    if (v9)
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1000138B8(a1 + 6, v3);
      }
    }

    else
    {
      v11 = __stdoutp;
      v12 = *v5;
      v10 = [v3 localizedDescription];
      v13 = [NSString stringWithFormat:@"Transfer session %llu failed with error %@", v12, v10];
      fprintf(v11, "%s\n", [v13 UTF8String]);
    }
  }

  else if (v7)
  {
    if (v9)
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100013958(a1 + 6, v10);
      }
    }

    else
    {
      v14 = __stdoutp;
      v10 = [NSString stringWithFormat:@"Transfer session %llu completed successfully", *v5];
      fprintf(v14, "%s\n", [v10 UTF8String]);
    }
  }

  else if (v9)
  {
    v10 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000138B8(a1 + 6, v8);
    }
  }

  else
  {
    v15 = __stdoutp;
    v16 = *v5;
    v10 = [v8 localizedDescription];
    v17 = [NSString stringWithFormat:@"Transfer session %llu failed with error %@", v16, v10];
    fprintf(v15, "%s\n", [v17 UTF8String]);
  }

  (*(a1[5] + 16))();
}

void sub_1000104E8(uint64_t a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100010804;
  v30 = sub_100010814;
  v31 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v25 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10001081C;
  v20 = &unk_100040CC8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v21 = *(a1 + 56);
  v6 = v5;
  v7 = *(a1 + 88);
  v23 = &v26;
  v24 = v7;
  v22 = v6;
  LOBYTE(v3) = GTFileWriterTransferFileEntries(v2, v3, v4, &v25, &v17);
  v8 = v25;
  if ((v3 & 1) == 0)
  {
    [*(a1 + 72) stopAccessingSecurityScopedResource];
    v11 = *(*(a1 + 80) + 16);
LABEL_7:
    v11();
    goto LABEL_13;
  }

  v9 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
  if (!dispatch_semaphore_wait(*(*(a1 + 56) + 56), v9))
  {
    if (v27[5])
    {
      [*(a1 + 72) stopAccessingSecurityScopedResource];
      v12 = v27[5];
    }

    else
    {
      dispatch_semaphore_signal(*(*(a1 + 56) + 56));
      [*(a1 + 72) stopAccessingSecurityScopedResource];
    }

    v11 = *(*(a1 + 80) + 16);
    goto LABEL_7;
  }

  if (GTCoreLogUseOsLog())
  {
    v10 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100013A3C();
    }
  }

  else
  {
    v13 = __stderrp;
    v10 = [NSString stringWithFormat:@"beginTransferSessionWithFileEntries timed out waiting for final write to complete"];
    fprintf(v13, "%s\n", [v10 UTF8String]);
  }

  v32 = NSLocalizedDescriptionKey;
  v14 = [NSString stringWithFormat:@"%@ hit a timeout: %@", @"GTFileWriterService", @"beginTransferSessionWithFileEntries timed out waiting for final write to complete", v17, v18, v19, v20, v21];
  v33 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v16 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:6 userInfo:v15];

  [*(a1 + 72) stopAccessingSecurityScopedResource];
  (*(*(a1 + 80) + 16))();

LABEL_13:
  _Block_object_dispose(&v26, 8);
}

uint64_t sub_100010804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_10001081C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [NSData dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  v7 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
  v8 = dispatch_semaphore_wait(*(a1[4] + 56), v7);
  if (!v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[7];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100010A7C;
    v19[3] = &unk_100040B48;
    v12 = a1[5];
    v13 = a1[6];
    v19[4] = a1[4];
    v19[5] = v13;
    [v12 writeFileData:v6 sessionID:v11 completionHandler:v19];
    objc_autoreleasePoolPop(v10);
    goto LABEL_10;
  }

  if (!GTCoreLogUseOsLog())
  {
    v14 = __stderrp;
    v15 = [NSString stringWithFormat:@"beginTransferSessionWithFileEntries timed out waiting for transfer to complete"];
    fprintf(v14, "%s\n", [v15 UTF8String]);

    if (!a4)
    {
      goto LABEL_10;
    }

LABEL_9:
    v20 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithFormat:@"%@ hit a timeout: %@", @"GTFileWriterService", @"beginTransferSessionWithFileEntries timed out waiting for transfer to complete"];
    v21 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:6 userInfo:v17];

    goto LABEL_10;
  }

  v9 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100013A70();
  }

  if (a4)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v8 == 0;
}

void sub_100010A7C(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (!v6)
  {
    objc_storeStrong(v5, a2);
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 56));
}

void sub_100010FFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v8 = v5;
    nserror = xpc_dictionary_get_nserror(a2, "error");

    v6 = nserror;
  }

  v9 = v6;
  (*(*(a1 + 32) + 16))();
}

void sub_100011214(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v6, "url", v3);
    nserror = xpc_dictionary_get_nserror(v6, "error");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000114D0(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v6, "url", v3);
    nserror = xpc_dictionary_get_nserror(v6, "error");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10001174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    nserror = xpc_dictionary_get_nserror(a2, "error");
    (*(v3 + 16))(v3, nserror);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, a3);
  }
}

void sub_100011904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    nserror = xpc_dictionary_get_nserror(a2, "error");
    (*(v3 + 16))(v3, nserror);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, a3);
  }
}

id sub_100011EDC(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

id sub_100012378(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "url", a2);
  xpc_dictionary_set_nserror(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

id sub_1000129FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "url", a2);
  xpc_dictionary_set_nserror(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

id sub_100012EE0(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

id sub_100013040(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

void sub_10001309C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100013128()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100013198()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100013474()
{
  sub_1000130D0();
  sub_1000130DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000134F0()
{
  sub_1000130D0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Start transfer of %@ to %@", v2, 0x16u);
}

void sub_1000135E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *__error();
  sub_100013104();
  sub_10001311C();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x12u);
}

void sub_100013674()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000136E4()
{
  v0 = *__error();
  sub_100013104();
  sub_10001311C();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
}

void sub_1000137D8()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100013848()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000138B8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = [a2 localizedDescription];
  sub_1000130EC();
  sub_10001311C();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_100013958(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Transfer session %llu completed successfully", &v3, 0xCu);
}

id FindRemoteGTFileWriterService(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = allServicesForDeviceUDID(a1, a2);
  v7 = filteredArrayByService(v6, &OBJC_PROTOCOL___GTFileWriterService);
  if ([v7 count] == 1)
  {
    v8 = [v7 firstObject];
  }

  else
  {
    v9 = filteredArrayByPID(v7, [v5 currentRemoteRelayPid]);
    v8 = [v9 firstObject];
  }

  return v8;
}

void sub_1000178C8(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1[4] + 8) setObject:v3 forKeyedSubscript:a1[5]];
  }

  (*(a1[6] + 16))();
}

void sub_100017938(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 scheme];
    v8 = [v7 isEqualToString:@"gtsandboxid"];

    if (v8)
    {
      [*(a1[4] + 8) objectForKeyedSubscript:v5];
    }

    else
    {
      sub_100017AC0(v5);
    }
    v10 = ;
    [*(a1[4] + 8) setObject:v10 forKeyedSubscript:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v9 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001B210(v6, v9);
      }
    }

    else
    {
      v11 = __stderrp;
      v12 = [v6 localizedDescription];
      v13 = [NSString stringWithFormat:@"Failed to transfer archive, %@", v12];
      fprintf(v11, "%s\n", [v13 UTF8String]);
    }

    (*(a1[6] + 16))();
  }
}

id sub_100017AC0(void *a1)
{
  v1 = a1;
  v2 = [NSURL alloc];
  v3 = GTTransportArchiveDirectory();
  v4 = [v2 initFileURLWithPath:v3 isDirectory:1];

  v5 = [v4 path];
  v6 = [v1 path];

  v7 = [v5 stringByAppendingPathComponent:v6];
  v8 = [NSURL fileURLWithPath:v7 isDirectory:1];

  return v8;
}

void sub_100017BA4(void *a1, void *a2)
{
  if (a2)
  {
    v6 = sub_100017AC0(a2);
    [*(a1[4] + 8) setObject:v6 forKeyedSubscript:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v3 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10001B2A4();
      }
    }

    else
    {
      v4 = __stderrp;
      v5 = [NSString stringWithFormat:@"Failed to transfer archive"];
      fprintf(v4, "%s\n", [v5 UTF8String]);
    }

    (*(a1[6] + 16))();
  }
}

void sub_100019508(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(xdict, "url", v3);
    v5 = nsobject;
    if (nsobject && ([nsobject path], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
    {
      string = xpc_dictionary_get_string(xdict, "sandboxExtension");
      if (string)
      {
        v9 = [NSData dataWithBytes:string length:strlen(string) + 1];
        _CFURLAttachSecurityScopeToFileURL();
      }

      v10 = *(*(a1 + 32) + 16);
    }

    else
    {
      v10 = *(*(a1 + 32) + 16);
    }

    v10();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000198D0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v5, "url", v3);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100019AA0(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v6, "url", v3);
    nserror = xpc_dictionary_get_nserror(v6, "error");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100019E88(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v6, "url", v3);
    nserror = xpc_dictionary_get_nserror(v6, "error");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10001A1A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 startAccessingSecurityScopedResource];
    xpc_dictionary_set_nsobject(*(a1 + 40), "url", v4);
    [v4 fileSystemRepresentation];
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v6 = sandbox_extension_issue_file_to_process();
    if (v6)
    {
      v7 = v6;
      xpc_dictionary_set_string(*(a1 + 40), "sandboxExtension", v6);
      free(v7);
    }

    if (v5)
    {
      [v4 stopAccessingSecurityScopedResource];
    }
  }

  [*(a1 + 32) sendMessage:{*(a1 + 40), v8, v9}];
}

id sub_10001A554(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nsobject(*(a1 + 32), "url", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

id sub_10001A850(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "url", a2);
  xpc_dictionary_set_nserror(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

id sub_10001AEB8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "url", a2);
  xpc_dictionary_set_nserror(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

uint64_t sub_10001AF44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001AF5C(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  return 0;
}

void sub_10001AF98(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10001B01C()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001B0F4()
{
  sub_1000130C4();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001B130()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001B1A0()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001B210(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  sub_1000130D0();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to transfer archive, %@", v4, 0xCu);
}

void sub_10001B2A4()
{
  sub_1000130C4();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001B2E0()
{
  sub_1000130D0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "copyIdentifier %@ to device %@", v2, 0x16u);
}

void sub_10001B434()
{
  sub_1000130C4();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001B470()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001B4E0()
{
  sub_1000130D0();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001B5C4()
{
  sub_1000130C4();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001B600()
{
  sub_1000130C4();
  sub_1000130B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_10001BB6C(void *a1)
{
  if (a1[7])
  {
    v2 = 0;
    do
    {
      v3 = a1[4];
      (*(a1[5] + 16))();
      ++v2;
    }

    while (v2 < a1[7]);
  }

  v4 = a1[4];
  v5 = *(a1[6] + 16);

  return v5();
}

void sub_10001C0AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    nsdictionary_any = xpc_dictionary_get_nsdictionary_any(a2, "data");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_10001C3D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    nsdictionary_any = xpc_dictionary_get_nsdictionary_any(a2, "result");
    (*(*(a1 + 48) + 16))();
    [*(*(a1 + 32) + 8) deregisterDispatcher:{objc_msgSend(*(a1 + 40), "dispatcherId")}];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

id sub_10001C738(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nsobject(*(a1 + 32), "data", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

void sub_10001C8E8(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(xdict, "_port", *(a1 + 56));
  xpc_dictionary_set_value(xdict, "_replyPath", *(a1 + 32));
  xpc_dictionary_set_nsobject(xdict, "data", v3);

  if (++*(*(*(a1 + 48) + 8) + 24) == *(a1 + 64))
  {
    xpc_dictionary_set_BOOL(xdict, "_endOfStream", 1);
  }

  [*(a1 + 40) sendMessage:xdict];
}

void sub_10001CB7C(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(xdict, "_port", *(a1 + 48));
  xpc_dictionary_set_value(xdict, "_replyPath", *(a1 + 32));
  xpc_dictionary_set_nsobject(xdict, "data", v3);

  MessageSetHasReply(xdict);
  v4 = [*(a1 + 40) sendMessageWithReplySync:xdict error:0];
}

id sub_10001CC24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xpc_dictionary_set_BOOL(v3, "_endOfStream", 1);
  xpc_dictionary_set_nsobject(*(a1 + 32), "result", v4);

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v5 sendMessage:v6];
}

void sub_10001CCD4(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10001CCAC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10001CD6C(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10001CCAC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10001CE04(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_10001CCBC();
  sub_10001CCAC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001D4AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    nsdata = xpc_dictionary_get_nsdata(a2, "signature");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_10001D638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    nserror = xpc_dictionary_get_nserror(v3, "error");
    if (nserror)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v6 = xpc_dictionary_get_dictionary(v4, "processState");
      if (v6)
      {
        v7 = objc_alloc_init(GTProcessState);
        [(GTProcessState *)v7 setIsSuspended:xpc_dictionary_get_BOOL(v6, "isSuspended")];
      }

      else
      {
        v8 = [NSString stringWithFormat:@"Deserialization failed for %@", @"processState", NSLocalizedDescriptionKey];
        v11 = v8;
        v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
        v7 = [NSError errorWithDomain:@"com.apple.gputools.transport" code:10 userInfo:v9];
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t start()
{
  v6 = 8;
  v7 = 0;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v7, &v6, 0, 0))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v3 = *__error();
    *buf = 67109120;
    v9 = v3;
    v4 = "Failed to read developer mode status: %{darwin.errno}d";
    v5 = 8;
    goto LABEL_8;
  }

  if (v7 != 1)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v4 = "Service prohibited from running (developer mode not enabled)";
    v5 = 2;
LABEL_8:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v4, buf, v5);
LABEL_9:
    exit(1);
  }

  MTLSetReportFailureBlock();
  v0 = objc_autoreleasePoolPush();
  GTTransportEnvironment_init();
  v1 = objc_alloc_init(GTServiceDaemon);
  [(GTServiceDaemon *)v1 enterRunLoop];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_10001E41C(id a1, unint64_t a2, const char *a3, unsigned int a4, NSString *a5)
{
  v8 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109890;
    v9[1] = v8;
    v10 = 2080;
    v11 = a3;
    v12 = 1024;
    v13 = a4;
    v14 = 2080;
    v15 = [(NSString *)a5 UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Metal Validation Error found: ! %d, %s, %d, %s", v9, 0x22u);
  }
}

uint64_t sub_10001F2A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001F2B8(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001F69C(void *a1, char a2, void *a3)
{
  v6 = a3;
  *(*(a1[4] + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

void sub_10001FAF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v6)
    {
      v9 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v7 description];
        v11 = 136315138;
        v12 = [v10 UTF8String];
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot bring app to foreground: error = %s", &v11, 0xCu);
      }
    }

    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

void sub_1000201EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v4 localizedDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error Launching Replayer: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_1000203B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSSymbolicatorCreateWithPid();
  if (CSIsNull())
  {
    Signature = 0;
  }

  else
  {
    Signature = CSSymbolicatorCreateSignature();
    CSRelease();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000205CC(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = a2;
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(*(a1 + 32), "processState", empty);
    v7 = [v5 isSuspended];

    xpc_dictionary_set_BOOL(empty, "isSuspended", v7);
  }

  xpc_dictionary_set_nserror(*(a1 + 32), "error", v8);
  [*(a1 + 40) sendMessage:*(a1 + 32)];
}

id sub_100020784(uint64_t a1, id a2)
{
  xpc_dictionary_set_nsdata(*(a1 + 32), "signature", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

uint64_t sub_100020AFC(uint64_t result)
{
  if (result)
  {
    xpc_connection_get_audit_token();
    memset(&token, 0, sizeof(token));
    v1 = SecTaskCreateWithAuditToken(0, &token);
    if (!v1)
    {
      v9 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create task from audit token", &token, 2u);
      }

      return 0;
    }

    v2 = v1;
    error = 0;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.gputools.client", &error);
    if (error)
    {
      v4 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to copy com.apple.private.gputools.client entitlement value, %@", &token, 0xCu);
      }

      v5 = error;
      goto LABEL_7;
    }

    v10 = v3;
    if (v3)
    {
      v11 = CFGetTypeID(v3);
      if (v11 != CFBooleanGetTypeID())
      {
        v5 = v10;
LABEL_7:
        CFRelease(v5);
        goto LABEL_8;
      }

      v12 = CFEqual(v10, kCFBooleanTrue);
      CFRelease(v10);
      if (v12)
      {
        goto LABEL_18;
      }
    }

LABEL_8:
    error = 0;
    v6 = SecTaskCopySigningIdentifier(v2, &error);
    if (v6)
    {
      v7 = v6;
      if (CFEqual(v6, @"com.apple.gputoolstransportd"))
      {
        v8 = ~SecTaskGetCodeSignStatus(v2) & 0x24000001;
        CFRelease(v7);
        if (v8)
        {
          goto LABEL_23;
        }

LABEL_18:
        CFRelease(v2);
        return 1;
      }
    }

    else
    {
      v13 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to retrieve signing identifier, %@", &token, 0xCu);
      }

      v7 = error;
      if (!error)
      {
        goto LABEL_23;
      }
    }

    CFRelease(v7);
LABEL_23:
    CFRelease(v2);
    return 0;
  }

  return result;
}

id sub_10002141C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1000214D0;
    applier[3] = &unk_100041140;
    v7 = *(a1 + 32);
    xpc_dictionary_apply(a2, applier);
  }

  else
  {
    xpc_dictionary_set_nserror(*(a1 + 32), "_error", a3);
  }

  return [*(a1 + 40) updateAndRelayMessage:*(a1 + 32) fromConnection:*(a1 + 48) toConnection:*(a1 + 56)];
}

id sub_100022198(void *a1)
{
  string = xpc_dictionary_get_string(a1, "_device_dest");
  if (string)
  {
    string = [NSString stringWithUTF8String:string];
  }

  return string;
}

void sub_100022854(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) handleMessage:v4 fromConnection:WeakRetained];
  }
}

uint64_t sub_1000228BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) handleDisconnection:WeakRetained];
  }

  return _objc_release_x1();
}

void sub_100022A90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_connection)
  {
    v4 = xpc_copy_description(v3);
    v5 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      name = 136315138;
      v13 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Listener: received object:%s", &name, 0xCu);
    }

    free(v4);
    goto LABEL_16;
  }

  v6 = v3;
  v7 = v6;
  if (v6)
  {
    if (!sub_100020AFC(v6))
    {
      xpc_connection_get_pid(v7);
      name = 0;
      if (task_read_for_pid())
      {
        v8 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Connected process is not debuggable", v11, 2u);
        }

        goto LABEL_11;
      }

      mach_port_deallocate(mach_task_self_, name);
    }

    [*(a1 + 32) handleConnection:v7];
    goto LABEL_16;
  }

LABEL_11:
  v9 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    pid = xpc_connection_get_pid(v7);
    name = 134217984;
    v13 = pid;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cancelling incoming connection from disallowed pid %lu", &name, 0xCu);
  }

  [*(*(a1 + 32) + 16) reportRejectedConnection:v7];
  xpc_connection_cancel(v7);
LABEL_16:
}

vm_address_t sub_10002393C(memory_object_size_t a1)
{
  address = 0;
  object_handle = 0;
  size = a1;
  memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64)
  {
    v3 = memory_entry_64;
    v4 = gt_tagged_log(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = mach_error_string(v3);
      *buf = 67109378;
      v15 = v3;
      v16 = 2080;
      v17 = v5;
      v6 = "warning: failed to create memory entry error 0x%x (%s)";
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
    }
  }

  else
  {
    v7 = vm_map(mach_task_self_, &address, a1, 0, 1, object_handle, 0, 0, 3, 3, 1u);
    if (!v7)
    {
      mach_port_deallocate(mach_task_self_, object_handle);
      return address;
    }

    v8 = v7;
    v4 = gt_tagged_log(3u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(v8);
      *buf = 67109378;
      v15 = v8;
      v16 = 2080;
      v17 = v10;
      v6 = "warning: failed to map memory error 0x%x (%s)";
      goto LABEL_10;
    }
  }

  return 0;
}

id PrettifyFenumString(void *a1, int a2, int a3)
{
  v5 = a1;
  if (v5)
  {
    v6 = v5;
    if ([v5 hasPrefix:@"kDYFE"])
    {
      v7 = [v6 substringFromIndex:5];

      v6 = v7;
    }

    v8 = [v6 rangeOfString:@"_"];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@" " options:0 range:{v8, v9}];

      v6 = v10;
    }

    v11 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@":"];

    v12 = @"-";
    if (a2)
    {
      v12 = @"+";
    }

    v13 = &stru_1000413E8;
    if (a3)
    {
      v13 = @":";
    }

    v14 = [NSString stringWithFormat:@"%@[%@%@]", v12, v11, v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id gt_tagged_log(unsigned int a1)
{
  if (a1 == 18)
  {
LABEL_5:
    v2 = &_os_log_default;
    v3 = &_os_log_default;
    goto LABEL_13;
  }

  if (a1 >= 0x11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v9) = 67109120;
      HIDWORD(v9) = a1;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "fail: Invalid log tag: %u", &v9, 8u);
    }

    goto LABEL_5;
  }

  v4 = (&unk_100051DC8 + 24 * a1);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100023DD4;
  v12 = &unk_100041328;
  LODWORD(v14) = a1;
  v13 = v4;
  if (*v4 != -1)
  {
    dispatch_once(&unk_100051DC8 + 3 * a1, &v9);
  }

  if (v4[1] && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults", v9, v10, v11, v12, v13, v14), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 BOOLForKey:v4[1]], v5, !v6))
  {
    v7 = &_os_log_disabled;
  }

  else
  {
    v7 = v4[2];
  }

  v2 = v7;
LABEL_13:

  return v2;
}

uint64_t sub_100023DD4(uint64_t a1)
{
  v2 = &(&off_100041190)[3 * *(a1 + 40)];
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    v4 = [NSString stringWithFormat:@"%s.%s.enableLog", *v2, v2[1]];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 8), v4);
  if (v3)
  {
  }

  v5 = os_log_create(*v2, v2[1]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  return _objc_release_x1();
}

uint64_t sub_100023E9C(uint64_t a1)
{
  if (qword_100051F68 == a1)
  {
    qword_100051F68 = 0;
  }

  return 0;
}

void apr_pool_destroy(apr_pool_t *p)
{
  for (i = *(p + 14); i; i = *(p + 14))
  {
    *(p + 14) = *i;
    (*(i + 16))(*(i + 8));
  }

  *(p + 14) = 0;
  while (1)
  {
    v3 = *(p + 1);
    if (!v3)
    {
      break;
    }

    apr_pool_destroy(v3);
  }

  while (1)
  {
    v4 = *(p + 4);
    if (!v4)
    {
      break;
    }

    *(p + 4) = *v4;
    (*(v4 + 16))(*(v4 + 8));
  }

  v5 = *(p + 7);
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = *(p + 7);
  do
  {
    if (sub_10002470C(*v6, 1) != 70006)
    {
      *(v6 + 8) = 0;
    }

    v6 = *(v6 + 16);
  }

  while (v6);
  v7 = v5;
  do
  {
    v8 = *(v7 + 8);
    if (v8 == 1)
    {
      sub_1000247A0(**v7, 9);
    }

    else
    {
      v9 = v8 == 4 || v8 == 2;
      if (v9 && !sub_1000247A0(**v7, 15))
      {
        LODWORD(v6) = 1;
      }
    }

    v7 = *(v7 + 16);
  }

  while (v7);
  v10 = v5;
  if (!v6)
  {
    goto LABEL_36;
  }

  v32 = xmmword_1000320F0;
  select(0, 0, 0, 0, &v32);
  v11 = 46875;
  while (2)
  {
    v12 = 0;
    v13 = v5;
    do
    {
      v14 = v12;
      if (*(v13 + 8) == 2)
      {
        v12 = 1;
        if (sub_10002470C(*v13, 1) == 70006)
        {
          goto LABEL_31;
        }

        *(v13 + 8) = 0;
      }

      v12 = v14;
LABEL_31:
      v13 = *(v13 + 16);
    }

    while (v13);
    if (v12 && v11 <= 0x2DC6BF)
    {
      *&v32 = v11 / 0xF4240;
      *(&v32 + 1) = v11 % 0xF4240;
      select(0, 0, 0, 0, &v32);
      v11 *= 2;
      continue;
    }

    break;
  }

  v10 = v5;
  do
  {
LABEL_36:
    if (*(v10 + 8) == 2)
    {
      sub_1000247A0(**v10, 9);
    }

    v10 = *(v10 + 16);
  }

  while (v10);
  do
  {
    if (*(v5 + 8))
    {
      sub_10002470C(*v5, 0);
    }

    v5 = *(v5 + 16);
  }

  while (v5);
LABEL_42:
  if (*p)
  {
    v15 = *(*(*p + 48) + 24);
    if (v15)
    {
      pthread_mutex_lock((v15 + 8));
    }

    v16 = *(p + 2);
    **(p + 3) = v16;
    if (v16)
    {
      *(v16 + 24) = *(p + 3);
    }

    if (v15)
    {
      pthread_mutex_unlock((v15 + 8));
    }
  }

  v17 = *(p + 6);
  v18 = *(p + 12);
  **(v18 + 8) = 0;
  if (*(v17 + 32) == p)
  {
    *(v17 + 24) = 0;
  }

  else
  {
    v19 = *(v17 + 24);
    if (v19)
    {
      pthread_mutex_lock((v19 + 8));
    }
  }

  v20 = 0;
  v21 = *v17;
  v22 = *(v17 + 8);
  v23 = (v17 + 40);
  v24 = *(v17 + 16);
  do
  {
    while (1)
    {
      v25 = v18;
      v18 = *v18;
      v26 = *(v25 + 16);
      if (!v22 || v24 > v26)
      {
        break;
      }

      *v25 = v20;
      v20 = v25;
      if (!v18)
      {
        goto LABEL_69;
      }
    }

    if (v26 > 0x13)
    {
      *v25 = *v23;
      *v23 = v25;
    }

    else
    {
      v27 = v23[v26];
      *v25 = v27;
      if (v21 <= v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = v21;
      }

      if (!v27)
      {
        v21 = v28;
      }

      v23[v26] = v25;
    }

    v29 = v24 > v26;
    v24 += ~v26;
    if (!v29)
    {
      v24 = 0;
    }
  }

  while (v18);
LABEL_69:
  *v17 = v21;
  *(v17 + 16) = v24;
  v30 = *(v17 + 24);
  if (v30)
  {
    pthread_mutex_unlock((v30 + 8));
  }

  if (v20)
  {
    do
    {
      v31 = *v20;
      vm_deallocate(mach_task_self_, v20, ((*(v20 + 16) << 12) + 4096));
      v20 = v31;
    }

    while (v31);
  }

  if (*(v17 + 32) == p)
  {
    sub_100024230(v17);
  }
}

uint64_t sub_100024230(vm_address_t address)
{
  v2 = 0;
  v3 = address + 40;
  do
  {
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      if (!v4)
      {
        break;
      }

      *(v3 + 8 * v2) = *v4;
      vm_deallocate(mach_task_self_, v4, ((*(v4 + 16) << 12) + 4096));
    }

    ++v2;
  }

  while (v2 != 20);
  v5 = mach_task_self_;

  return vm_deallocate(v5, address, 0xC8uLL);
}

uint64_t **sub_1000242B8(unint64_t *a1, unint64_t a2)
{
  if (a2 + 4135 >= 0x2000)
  {
    v2 = (a2 + 4135) & 0xFFFFFFFFFFFFF000;
  }

  else
  {
    v2 = 0x2000;
  }

  if (((a2 + 4135) & 0xFFFFFFFFFFFFF000) < a2 || v2 == 0)
  {
    return 0;
  }

  v4 = v2 >> 12;
  v5 = (v2 >> 12) - 1;
  if (HIDWORD(v5))
  {
    return 0;
  }

  v8 = a1[3];
  if (v8)
  {
    pthread_mutex_lock((v8 + 8));
  }

  v10 = (a1 + 5);
  v9 = *a1;
  if (v5 <= *a1)
  {
    v13 = &v10[v5];
    v6 = *v13;
    v14 = *v13 == 0;
    v15 = v5 < v9;
    if (*v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 >= v9;
    }

    if (!v16)
    {
      do
      {
        v17 = v13[1];
        ++v13;
        v6 = v17;
        v14 = v17 == 0;
        v15 = v4 < v9;
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v4 >= v9;
        }

        ++v4;
      }

      while (!v18);
    }

    if (v14)
    {
      goto LABEL_28;
    }

    v21 = *v6;
    *v13 = *v6;
    if (v21 == 0 && !v15)
    {
      v22 = v13 - 1;
      do
      {
        if (*v22--)
        {
          v24 = 1;
        }

        else
        {
          v24 = v9 == 1;
        }

        --v9;
      }

      while (!v24);
      *a1 = v9;
    }

    v12 = (*(v6 + 4) + 1);
LABEL_41:
    v25 = a1[2] + v12;
    if (v25 >= a1[1])
    {
      v25 = a1[1];
    }

    a1[2] = v25;
    v26 = a1[3];
    if (v26)
    {
      pthread_mutex_unlock((v26 + 8));
    }

    goto LABEL_45;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_28;
  }

  v11 = *(v6 + 4);
  if (v5 <= v11)
  {
LABEL_17:
    *v10 = *v6;
    v12 = (v11 + 1);
    goto LABEL_41;
  }

  while (1)
  {
    v10 = v6;
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v11 = *(v6 + 4);
    if (v5 <= v11)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  v19 = a1[3];
  if (v19)
  {
    pthread_mutex_unlock((v19 + 8));
  }

  v20 = sub_10002393C(v2);
  v6 = v20;
  if (v20)
  {
    *(v20 + 16) = v5;
    *(v20 + 32) = v20 + v2;
LABEL_45:
    *v6 = 0;
    v6[3] = (v6 + 5);
  }

  return v6;
}

apr_status_t apr_pool_create_ex(apr_pool_t **newpool, apr_pool_t *parent, apr_abortfunc_t abort_fn, apr_allocator_t *allocator)
{
  v4 = allocator;
  v5 = abort_fn;
  *newpool = 0;
  if (parent)
  {
    v7 = parent;
  }

  else
  {
    v7 = qword_100051F80;
  }

  if (!abort_fn && v7)
  {
    v5 = *(v7 + 8);
  }

  if (!allocator)
  {
    v4 = *(v7 + 6);
  }

  v8 = sub_1000242B8(v4, 0x1FD8uLL);
  if (v8)
  {
    *v8 = v8;
    v8[1] = v8;
    v9 = v8[3];
    v8[3] = v9 + 15;
    v9[12] = v8;
    v9[13] = (v9 + 15);
    v9[14] = 0;
    v9[6] = v4;
    v9[7] = 0;
    v9[4] = 0;
    v9[5] = 0;
    v9[10] = 0;
    v9[11] = v8;
    v9[8] = v5;
    v9[9] = 0;
    *v9 = v7;
    v9[1] = 0;
    if (v7)
    {
      v10 = *(*(v7 + 6) + 24);
      if (v10)
      {
        pthread_mutex_lock((v10 + 8));
      }

      v13 = *(v7 + 1);
      v12 = (v7 + 8);
      v11 = v13;
      v9[2] = v13;
      if (v13)
      {
        *(v11 + 24) = v9 + 2;
      }

      *v12 = v9;
      v9[3] = v12;
      if (v10)
      {
        pthread_mutex_unlock((v10 + 8));
      }
    }

    else
    {
      v9[2] = 0;
      v9[3] = 0;
    }

    v14 = 0;
    *newpool = v9;
  }

  else
  {
    v14 = 12;
    if (v5)
    {
      (v5)(12);
    }
  }

  return v14;
}

uint64_t *sub_100024570(uint64_t a1, unint64_t a2)
{
  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 < a2)
  {
LABEL_2:
    v4 = *(a1 + 64);
    if (v4)
    {
      v4(12);
    }

    return 0;
  }

  v6 = *(a1 + 88);
  result = v6[3];
  if (v3 <= v6[4] - result)
  {
    v6[3] = (result + v3);
    return result;
  }

  v7 = *v6;
  if (v3 <= (*v6)[4] - (*v6)[3])
  {
    v8 = *v7;
    *v7[1] = *v7;
    v8[1] = v7[1];
  }

  else
  {
    v7 = sub_1000242B8(*(a1 + 48), (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      goto LABEL_2;
    }
  }

  *(v7 + 5) = 0;
  result = v7[3];
  v7[3] = (result + v3);
  v9 = v6[1];
  v7[1] = v9;
  *v9 = v7;
  *v7 = v6;
  v6[1] = v7;
  *(a1 + 88) = v7;
  v10 = (v6[4] - v6[3]) >> 12;
  *(v6 + 5) = v10;
  if (v10 < *(*v6 + 5))
  {
    v11 = *v6;
    do
    {
      v11 = *v11;
    }

    while (*(v11 + 5) > v10);
    *v7 = *v6;
    (*v6)[1] = v6[1];
    v12 = v11[1];
    v6[1] = v12;
    *v12 = v6;
    *v6 = v11;
    v11[1] = v6;
  }

  return result;
}

uint64_t *sub_100024698(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    result = result[5];
    if (result)
    {
      *(v7 + 40) = *result;
    }

    else
    {
      result = sub_100024570(v7, 0x20uLL);
    }

    result[2] = a3;
    result[3] = a4;
    *result = *(v7 + 32);
    result[1] = a2;
    *(v7 + 32) = result;
  }

  return result;
}

uint64_t sub_10002470C(pid_t *a1, int a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  while (1)
  {
    v4 = waitpid(*a1, &v6, v3);
    if ((v4 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      return *__error();
    }
  }

  if (!v4)
  {
    return 70006;
  }

  *a1 = v4;
  if ((~v6 & 0x7F) != 0)
  {
    return 70005;
  }

  else
  {
    return 20014;
  }
}

uint64_t sub_1000247A0(pid_t a1, int a2)
{
  if (kill(a1, a2) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

apr_status_t apr_initialize(void)
{
  if (dword_100051F88++)
  {
    return 0;
  }

  if (!byte_100051F70++)
  {
    qword_100051F78 = 0;
    v4 = sub_10002393C(0xC8uLL);
    if (!v4)
    {
      byte_100051F70 = 0;
      return 12;
    }

    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 192) = 0;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    qword_100051F78 = v4;
    *(v4 + 8) = vdupq_n_s64(0x8000uLL);
    v5 = apr_pool_create_ex(&qword_100051F80, 0, 0, v4);
    if (v5)
    {
      v1 = v5;
      sub_100024230(qword_100051F78);
      qword_100051F78 = 0;
      byte_100051F70 = 0;
      return v1;
    }

    v6 = qword_100051F80;
    *(qword_100051F80 + 80) = "apr_global_pool";
    if (qword_100051F68)
    {
LABEL_20:
      newpool = 0;
      v10 = sub_1000249CC(&newpool, v6);
      if (!v10)
      {
        v11 = qword_100051F78;
        v12 = qword_100051F80;
        *(qword_100051F78 + 24) = newpool;
        *(v11 + 32) = v12;
        goto LABEL_5;
      }
    }

    else
    {
      v7 = sub_100024570(v6, 0x38uLL);
      qword_100051F68 = v7;
      v8 = *(v6 + 40);
      if (v8)
      {
        *(v6 + 40) = *v8;
      }

      else
      {
        v8 = sub_100024570(v6, 0x20uLL);
      }

      v9 = 0;
      v8[1] = v7;
      v8[2] = sub_100023E9C;
      v8[3] = sub_100024704;
      *v8 = *(v6 + 32);
      *(v6 + 32) = v8;
      while (1)
      {
        v10 = sub_1000249CC((qword_100051F68 + v9), v6);
        if (v10)
        {
          break;
        }

        v9 += 8;
        if (v9 == 56)
        {
          v6 = qword_100051F80;
          goto LABEL_20;
        }
      }
    }

    return v10;
  }

LABEL_5:
  newpool = 0;
  if (apr_pool_create_ex(&newpool, 0, 0, 0))
  {
    return 20002;
  }

  v1 = 0;
  *(newpool + 10) = "apr_initialize";
  return v1;
}

uint64_t sub_1000249CC(uint64_t ***a1, uint64_t a2)
{
  v4 = sub_100024570(a2, 0x48uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 7) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 1) = 0u;
  }

  *v4 = a2;
  result = pthread_mutex_init((v4 + 1), 0);
  if (!result)
  {
    sub_100024698(*v5, v5, sub_100024A68, sub_100024704);
    result = 0;
    *a1 = v5;
  }

  return result;
}

uint64_t *GTCapabilitiesRuntime_fromDeviceSafe(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_100024570(a2, 0x10480uLL);
  v5 = v4;
  v6 = v4 + 6176;
  if (v4)
  {
    bzero(v4, 0x10480uLL);
  }

  v7 = v3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 name];
    snprintf(v5 + 49152, 0x100uLL, "%s", [v9 UTF8String]);

    v10 = [v8 targetDeviceArchitecture];
    *v6 = [v10 cpuType];
    *(v6 + 1) = [v10 subType];
    *(v6 + 4) = [v10 version];
    *(v6 + 10) = [v10 version] >> 16;
    *(v6 + 11) = [v10 version] >> 24;
    *(v6 + 3) = [v10 versionCombined];
    v6[2] = [v10 driverVersion];

    if (*v6 == 16777235)
    {
      *(v5 + 3090) = 0u;
      v11 = IOServiceMatching("AGXAccelerator");
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v11);
      if (MatchingService)
      {
        connect = 0;
        v13 = IOServiceOpen(MatchingService, mach_task_self_, 1u, &connect);
        v14 = 0;
        if (!v13)
        {
          outputStruct = 0uLL;
          outputStructCnt = 16;
          v15 = IOConnectCallStructMethod(connect, 0x10Au, 0, 0, &outputStruct, &outputStructCnt);
          v14 = v15 == 0;
          if (!v15)
          {
            *(v5 + 3090) = outputStruct;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      *(v6 + 268) = v14;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = 0;
      v17 = (v5 + 66601);
      do
      {
        *(v17 + v16) = [v8 supportsFamily:v16 + 1001];
        ++v16;
      }

      while (v16 != 30);
      v18 = 0;
      v19 = (v5 + 66631);
      do
      {
        *(v19 + v18) = [v8 supportsFamily:v18 + 2001];
        ++v18;
      }

      while (v18 != 10);
      v20 = 0;
      v21 = (v5 + 66641);
      do
      {
        *(v21 + v20) = [v8 supportsFamily:v20 + 3001];
        ++v20;
      }

      while (v20 != 10);
      *(v5 + 66651) = 257;
      *(v5 + 66653) = [v8 supportsFamily:5001];
      *(v5 + 66654) = [v8 supportsFamily:5002];
      *(v5 + 49497) = *v17;
      *(v5 + 49505) = *(v5 + 66609);
      *(v6 + 49) = *v19;
      *(v5 + 24754) = *v21;
      *(v5 + 49510) = *(v5 + 66643);
      *(v6 + 103) = *(v5 + 66653);
    }

    v6[3] = -1;
    if (objc_opt_respondsToSelector())
    {
      v6[6] = [v8 maxThreadgroupMemoryLength];
    }

    if (objc_opt_respondsToSelector())
    {
      outputStruct = 0uLL;
      *&v255 = 0;
      [v8 maxThreadsPerThreadgroup];
      v22 = v255;
      *(v6 + 7) = outputStruct;
      v6[9] = v22;
    }

    if (objc_opt_respondsToSelector())
    {
      v6[10] = [v8 maxBufferLength];
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [v8 supportsLateEvalEvent];
    }

    else
    {
      v23 = 0;
    }

    *(v6 + 213) = v23;
    if (objc_opt_respondsToSelector())
    {
      v24 = [v8 supportsRaytracing];
    }

    else
    {
      v24 = 0;
    }

    *(v6 + 215) = v24;
    if (objc_opt_respondsToSelector())
    {
      v25 = [v8 supportsTileShaders];
    }

    else
    {
      v25 = 0;
    }

    *(v6 + 214) = v25;
    if (objc_opt_respondsToSelector())
    {
      v26 = [v8 supportsMeshShaders];
    }

    else
    {
      v26 = 0;
    }

    *(v6 + 216) = v26;
    if (objc_opt_respondsToSelector())
    {
      v27 = [v8 isMsaa32bSupported];
    }

    else
    {
      v27 = 0;
    }

    *(v6 + 142) = v27;
    if (objc_opt_respondsToSelector())
    {
      v28 = [v8 supportsBufferWithIOSurface];
    }

    else
    {
      v28 = 0;
    }

    *(v6 + 219) = v28;
    if (objc_opt_respondsToSelector())
    {
      v29 = [v8 supportsBGR10A2];
    }

    else
    {
      v29 = 0;
    }

    *(v6 + 155) = v29;
    if (objc_opt_respondsToSelector())
    {
      v30 = [v8 supportsSparseHeaps];
    }

    else
    {
      v30 = 0;
    }

    *(v6 + 223) = v30;
    if (objc_opt_respondsToSelector())
    {
      v31 = [v8 supportsSparseTextures];
    }

    else
    {
      v31 = 0;
    }

    *(v6 + 224) = v31;
    if (objc_opt_respondsToSelector())
    {
      v32 = [v8 supportsPlacementHeaps];
    }

    else
    {
      v32 = 0;
    }

    *(v6 + 222) = v32;
    if (objc_opt_respondsToSelector())
    {
      v33 = [v8 supportsComputeMemoryBarrier];
    }

    else
    {
      v33 = 0;
    }

    *(v6 + 206) = v33;
    if (objc_opt_respondsToSelector())
    {
      v34 = [v8 supportsRenderMemoryBarrier];
    }

    else
    {
      v34 = 0;
    }

    *(v6 + 207) = v34;
    if (objc_opt_respondsToSelector())
    {
      v35 = [v8 supportsPartialRenderMemoryBarrier];
    }

    else
    {
      v35 = 0;
    }

    *(v6 + 208) = v35;
    if (objc_opt_respondsToSelector())
    {
      for (i = 0; i != 16; ++i)
      {
        *(v5 + i + 49593) = [v8 supportsVertexAmplificationCount:i];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      for (j = 0; j != 32; ++j)
      {
        *(v5 + j + 49512) = [v8 supportsTextureSampleCount:j];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      for (k = 0; k != 16; ++k)
      {
        *(v5 + k + 49577) = [v8 supportsRasterizationRateMapWithLayerCount:k];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v39 = [v8 supportsProgrammableSamplePositions];
    }

    else
    {
      v39 = 0;
    }

    *(v6 + 168) = v39;
    if (objc_opt_respondsToSelector())
    {
      v40 = [v8 supportsGFXIndirectCommandBuffers];
    }

    else
    {
      v40 = 0;
    }

    *(v6 + 209) = v40;
    if (objc_opt_respondsToSelector())
    {
      v41 = [v8 supportsCMPIndirectCommandBuffers];
    }

    else
    {
      v41 = 0;
    }

    *(v6 + 210) = v41;
    if (objc_opt_respondsToSelector())
    {
      v42 = [v8 supportsIndirectDrawAndDispatch];
    }

    else
    {
      v42 = 0;
    }

    *(v6 + 212) = v42;
    if (objc_opt_respondsToSelector())
    {
      v43 = [v8 supportsMeshShadersInICB];
    }

    else
    {
      v43 = 0;
    }

    *(v6 + 211) = v43;
    if (objc_opt_respondsToSelector())
    {
      v44 = [v8 supportsMemorylessRenderTargets];
    }

    else
    {
      v44 = 0;
    }

    *(v6 + 137) = v44;
    if (objc_opt_respondsToSelector())
    {
      v45 = [v8 supportsRenderTargetTextureRotation];
    }

    else
    {
      v45 = 0;
    }

    *(v6 + 140) = v45;
    if (objc_opt_respondsToSelector())
    {
      v46 = [v8 supportsNonUniformThreadgroupSize];
    }

    else
    {
      v46 = 0;
    }

    *(v6 + 217) = v46;
    if (objc_opt_respondsToSelector())
    {
      v47 = [v8 supportsArgumentBuffersTier2];
    }

    else
    {
      v47 = 0;
    }

    *(v6 + 136) = v47;
    if (objc_opt_respondsToSelector())
    {
      v48 = [v8 supportsConcurrentComputeDispatch];
    }

    else
    {
      v48 = 0;
    }

    *(v6 + 218) = v48;
    if (objc_opt_respondsToSelector())
    {
      v49 = [v8 supportsSharedStorageHeapResources];
    }

    else
    {
      v49 = 0;
    }

    *(v6 + 221) = v49;
    if (objc_opt_respondsToSelector())
    {
      v50 = [v8 supportsSharedStorageTextures];
    }

    else
    {
      v50 = 0;
    }

    *(v6 + 138) = v50;
    if (objc_opt_respondsToSelector())
    {
      v51 = [v8 supportsSharedTextureHandles];
    }

    else
    {
      v51 = 0;
    }

    *(v6 + 139) = v51;
    if (objc_opt_respondsToSelector())
    {
      v52 = [v8 supportsDynamicAttributeStride];
    }

    else
    {
      v52 = 0;
    }

    *(v6 + 227) = v52;
    if (objc_opt_respondsToSelector())
    {
      v53 = [v8 supportsNonSquareTileShaders];
    }

    else
    {
      v53 = 0;
    }

    *(v6 + 228) = v53;
    if (objc_opt_respondsToSelector())
    {
      v54 = [v8 supportsLayeredRendering];
    }

    else
    {
      v54 = 0;
    }

    *(v6 + 229) = v54;
    if (objc_opt_respondsToSelector())
    {
      v55 = [v8 supportsViewportAndScissorArray];
    }

    else
    {
      v55 = 0;
    }

    *(v6 + 230) = v55;
    if (objc_opt_respondsToSelector())
    {
      v56 = [v8 supportsLinearTextureFromSharedBuffer];
    }

    else
    {
      v56 = 0;
    }

    *(v6 + 143) = v56;
    if (objc_opt_respondsToSelector())
    {
      v57 = [v8 supportsNonPrivateDepthStencilTextures];
    }

    else
    {
      v57 = 0;
    }

    *(v6 + 144) = v57;
    if (objc_opt_respondsToSelector())
    {
      v58 = [v8 supportsRenderToLinearTextures];
    }

    else
    {
      v58 = 0;
    }

    *(v6 + 145) = v58;
    if (objc_opt_respondsToSelector())
    {
      v59 = [v8 supportsSeparateDepthStencil];
    }

    else
    {
      v59 = 0;
    }

    *(v6 + 147) = v59;
    if (objc_opt_respondsToSelector())
    {
      v60 = [v8 supportsRelaxedTextureViewRequirements];
    }

    else
    {
      v60 = 0;
    }

    *(v6 + 148) = v60;
    if (objc_opt_respondsToSelector())
    {
      v61 = [v8 supportsVariableRateRasterization];
    }

    else
    {
      v61 = 0;
    }

    *(v6 + 238) = v61;
    if (objc_opt_respondsToSelector())
    {
      v62 = [v8 supportsExtendedVertexFormats];
    }

    else
    {
      v62 = 0;
    }

    *(v6 + 231) = v62;
    if (objc_opt_respondsToSelector())
    {
      v63 = [v8 supportsFunctionPointers];
    }

    else
    {
      v63 = 0;
    }

    *(v6 + 203) = v63;
    if (objc_opt_respondsToSelector())
    {
      v64 = [v8 supportsFunctionPointersFromRender];
    }

    else
    {
      v64 = 0;
    }

    *(v6 + 204) = v64;
    if (objc_opt_respondsToSelector())
    {
      v65 = [v8 supportsFunctionPointersFromMesh];
    }

    else
    {
      v65 = 0;
    }

    *(v6 + 205) = v65;
    if (objc_opt_respondsToSelector())
    {
      v66 = [v8 supportsDynamicLibraries];
    }

    else
    {
      v66 = 0;
    }

    *(v6 + 201) = v66;
    if (objc_opt_respondsToSelector())
    {
      v67 = [v8 supportsRenderDynamicLibraries];
    }

    else
    {
      v67 = 0;
    }

    *(v6 + 202) = v67;
    if (objc_opt_respondsToSelector())
    {
      v68 = [v8 supportsDepthClipMode];
    }

    else
    {
      v68 = 0;
    }

    *(v6 + 239) = v68;
    if (objc_opt_respondsToSelector())
    {
      v69 = [v8 supportsDepthClipModeClampExtended];
    }

    else
    {
      v69 = 0;
    }

    *(v6 + 240) = v69;
    if (objc_opt_respondsToSelector())
    {
      v70 = [v8 supportsSparseDepthAttachments];
    }

    else
    {
      v70 = 0;
    }

    *(v6 + 225) = v70;
    if (objc_opt_respondsToSelector())
    {
      v71 = [v8 supportsLossyCompression];
    }

    else
    {
      v71 = 0;
    }

    *(v6 + 146) = v71;
    if (objc_opt_respondsToSelector())
    {
      v72 = [v8 supportsTextureSwizzle];
    }

    else
    {
      v72 = 0;
    }

    *(v6 + 149) = v72;
    if (objc_opt_respondsToSelector())
    {
      v73 = [v8 supportsTextureCubeArray];
    }

    else
    {
      v73 = 0;
    }

    *(v6 + 150) = v73;
    if (objc_opt_respondsToSelector())
    {
      v74 = [v8 supportsTexture2DMultisampleArray];
    }

    else
    {
      v74 = 0;
    }

    *(v6 + 151) = v74;
    if (objc_opt_respondsToSelector())
    {
      v75 = [v8 supportsLinearTexture2DArray];
    }

    else
    {
      v75 = 0;
    }

    *(v6 + 152) = v75;
    if (objc_opt_respondsToSelector())
    {
      v76 = [v8 supports2DLinearTexArraySPI];
    }

    else
    {
      v76 = 0;
    }

    *(v6 + 153) = v76;
    if (objc_opt_respondsToSelector())
    {
      v77 = [v8 supportsRGBA10A2Gamma];
    }

    else
    {
      v77 = 0;
    }

    *(v6 + 154) = v77;
    if (objc_opt_respondsToSelector())
    {
      v78 = [v8 supportsBGR10A2];
    }

    else
    {
      v78 = 0;
    }

    *(v6 + 155) = v78;
    if (objc_opt_respondsToSelector())
    {
      v79 = [v8 supportsSRGBwrites];
    }

    else
    {
      v79 = 0;
    }

    *(v6 + 156) = v79;
    if (objc_opt_respondsToSelector())
    {
      v80 = [v8 supportsBfloat16Format];
    }

    else
    {
      v80 = 0;
    }

    *(v6 + 157) = v80;
    if (objc_opt_respondsToSelector())
    {
      v81 = [v8 supportsSamplerReductionMode];
    }

    else
    {
      v81 = 0;
    }

    *(v6 + 232) = v81;
    if (objc_opt_respondsToSelector())
    {
      v82 = [v8 supportsSamplerAddressModeClampToHalfBorder];
    }

    else
    {
      v82 = 0;
    }

    *(v6 + 233) = v82;
    if (objc_opt_respondsToSelector())
    {
      v83 = [v8 supportsCustomBorderColor];
    }

    else
    {
      v83 = 0;
    }

    *(v6 + 234) = v83;
    if (objc_opt_respondsToSelector())
    {
      v84 = [v8 supportsSamplerCompareFunction];
    }

    else
    {
      v84 = 0;
    }

    *(v6 + 235) = v84;
    if (objc_opt_respondsToSelector())
    {
      v85 = [v8 supportsBlackOrWhiteSamplerBorderColors];
    }

    else
    {
      v85 = 0;
    }

    *(v6 + 236) = v85;
    if (objc_opt_respondsToSelector())
    {
      v86 = [v8 supportsMirrorClampToEdgeSamplerMode];
    }

    else
    {
      v86 = 0;
    }

    *(v6 + 237) = v86;
    if (objc_opt_respondsToSelector())
    {
      v87 = [v8 supportsPrimitiveMotionBlur];
    }

    else
    {
      v87 = 0;
    }

    *(v6 + 158) = v87;
    if (objc_opt_respondsToSelector())
    {
      v88 = [v8 supportsRayTracingICBs];
    }

    else
    {
      v88 = 0;
    }

    *(v6 + 159) = v88;
    if (objc_opt_respondsToSelector())
    {
      v89 = [v8 supportsRayTracingExtendedVertexFormats];
    }

    else
    {
      v89 = 0;
    }

    *(v6 + 160) = v89;
    if (objc_opt_respondsToSelector())
    {
      v90 = [v8 supportsHeapAccelerationStructureAllocation];
    }

    else
    {
      v90 = 0;
    }

    *(v6 + 226) = v90;
    if (objc_opt_respondsToSelector())
    {
      v91 = [v8 supportsRayTracingPerPrimitiveData];
    }

    else
    {
      v91 = 0;
    }

    *(v6 + 161) = v91;
    if (objc_opt_respondsToSelector())
    {
      v92 = [v8 supportsRayTracingBuffersFromTables];
    }

    else
    {
      v92 = 0;
    }

    *(v6 + 162) = v92;
    if (objc_opt_respondsToSelector())
    {
      v93 = [v8 supportsRayTracingAccelerationStructureCPUDeserialization];
    }

    else
    {
      v93 = 0;
    }

    *(v6 + 163) = v93;
    if (objc_opt_respondsToSelector())
    {
      v94 = [v8 supportsRayTracingMultiLevelInstancing];
    }

    else
    {
      v94 = 0;
    }

    *(v6 + 164) = v94;
    if (objc_opt_respondsToSelector())
    {
      v95 = [v8 supportsRayTracingIndirectInstanceAccelerationStructureBuild];
    }

    else
    {
      v95 = 0;
    }

    *(v6 + 165) = v95;
    if (objc_opt_respondsToSelector())
    {
      v96 = [v8 supportsRayTracingGPUTableUpdateBuffers];
    }

    else
    {
      v96 = 0;
    }

    *(v6 + 166) = v96;
    if (objc_opt_respondsToSelector())
    {
      v97 = [v8 supportsRayTracingCurves];
    }

    else
    {
      v97 = 0;
    }

    *(v6 + 167) = v97;
    if (objc_opt_respondsToSelector())
    {
      v98 = [v8 supportsBCTextureCompression];
    }

    else
    {
      v98 = 0;
    }

    *(v6 + 241) = v98;
    if (objc_opt_respondsToSelector())
    {
      v99 = [v8 supports3DBCTextures];
    }

    else
    {
      v99 = 0;
    }

    *(v6 + 242) = v99;
    if (objc_opt_respondsToSelector())
    {
      v100 = [v8 supportsMSAADepthResolve];
    }

    else
    {
      v100 = 0;
    }

    *(v6 + 243) = v100;
    if (objc_opt_respondsToSelector())
    {
      v101 = [v8 supportsMSAAStencilResolve];
    }

    else
    {
      v101 = 0;
    }

    *(v6 + 244) = v101;
    if (objc_opt_respondsToSelector())
    {
      v102 = [v8 supportsMSAADepthResolveFilter];
    }

    else
    {
      v102 = 0;
    }

    *(v6 + 245) = v102;
    if (objc_opt_respondsToSelector())
    {
      v103 = [v8 supports32bpcMSAATextures];
    }

    else
    {
      v103 = 0;
    }

    *(v6 + 246) = v103;
    if (objc_opt_respondsToSelector())
    {
      v104 = [v8 supports32BitMSAA];
    }

    else
    {
      v104 = 0;
    }

    *(v6 + 247) = v104;
    if (objc_opt_respondsToSelector())
    {
      v105 = [v8 supportsNonPrivateMSAATextures];
    }

    else
    {
      v105 = 0;
    }

    *(v6 + 248) = v105;
    if (objc_opt_respondsToSelector())
    {
      v106 = [v8 supportsCombinedMSAAStoreAndResolveAction];
    }

    else
    {
      v106 = 0;
    }

    *(v6 + 249) = v106;
    if (objc_opt_respondsToSelector())
    {
      v107 = [v8 supportsMSAAStencilResolveFilter];
    }

    else
    {
      v107 = 0;
    }

    *(v6 + 250) = v107;
    if (objc_opt_respondsToSelector())
    {
      v108 = [v8 supportsASTCTextureCompression];
    }

    else
    {
      v108 = 0;
    }

    *(v6 + 251) = v108;
    if (objc_opt_respondsToSelector())
    {
      v109 = [v8 supports3DASTCTextures];
    }

    else
    {
      v109 = 0;
    }

    *(v6 + 252) = v109;
    if (objc_opt_respondsToSelector())
    {
      v110 = [v8 supportsASTCHDRTextureCompression];
    }

    else
    {
      v110 = 0;
    }

    *(v6 + 253) = v110;
    if (objc_opt_respondsToSelector())
    {
      v111 = [v8 supportsLimitedYUVFormats];
    }

    else
    {
      v111 = 0;
    }

    *(v6 + 254) = v111;
    if (objc_opt_respondsToSelector())
    {
      v112 = [v8 supportsExtendedYUVFormats];
    }

    else
    {
      v112 = 0;
    }

    *(v6 + 255) = v112;
    if (objc_opt_respondsToSelector())
    {
      v113 = [v8 supportsAlphaYUVFormats];
    }

    else
    {
      v113 = 0;
    }

    *(v6 + 256) = v113;
    if (objc_opt_respondsToSelector())
    {
      v114 = [v8 supportsYCBCRFormats];
    }

    else
    {
      v114 = 0;
    }

    *(v6 + 257) = v114;
    if (objc_opt_respondsToSelector())
    {
      v115 = [v8 supportsYCBCRFormatsPQ];
    }

    else
    {
      v115 = 0;
    }

    *(v6 + 258) = v115;
    if (objc_opt_respondsToSelector())
    {
      v116 = [v8 supportsYCBCRFormats12];
    }

    else
    {
      v116 = 0;
    }

    *(v6 + 259) = v116;
    if (objc_opt_respondsToSelector())
    {
      v117 = [v8 supportsYCBCRFormatsXR];
    }

    else
    {
      v117 = 0;
    }

    *(v6 + 260) = v117;
    if (objc_opt_respondsToSelector())
    {
      v118 = [v8 supportsYCBCRPackedFormatsPQ];
    }

    else
    {
      v118 = 0;
    }

    *(v6 + 261) = v118;
    if (objc_opt_respondsToSelector())
    {
      v119 = [v8 supportsYCBCRPackedFormats12];
    }

    else
    {
      v119 = 0;
    }

    *(v6 + 262) = v119;
    if (objc_opt_respondsToSelector())
    {
      v120 = [v8 supportsYCBCRPackedFormatsXR];
    }

    else
    {
      v120 = 0;
    }

    *(v6 + 263) = v120;
    if (objc_opt_respondsToSelector())
    {
      v121 = [v8 supportsPublicXR10Formats];
    }

    else
    {
      v121 = 0;
    }

    *(v6 + 264) = v121;
    if (objc_opt_respondsToSelector())
    {
      v122 = [v8 supportsExtendedXR10Formats];
    }

    else
    {
      v122 = 0;
    }

    v123 = 0;
    *(v6 + 265) = v122;
    do
    {
      v124 = word_100032148[v123];
      v257 = 0;
      v255 = 0u;
      v256 = 0u;
      outputStruct = 0u;
      MTLPixelFormatGetInfoForDevice();
      v125 = WORD4(outputStruct);
      v126 = v5 + 12 * v124;
      *v126 = DWORD2(outputStruct);
      *(v126 + 4) = v124;
      if ((v125 & 0x400) == 0)
      {
        *(v126 + 6) = BYTE1(v256);
      }

      if ((v125 & 0x461) == 1)
      {
        *(v126 + 8) = [v8 minimumLinearTextureAlignmentForPixelFormat:v124];
        *(v126 + 10) = [v8 minimumTextureBufferAlignmentForPixelFormat:v124];
      }

      ++v123;
    }

    while (v123 != 275);
    *(v6 + 267) = [MTLFXSpatialScalerDescriptor supportsDevice:v8];
    *(v6 + 266) = [MTLFXTemporalScalerDescriptor supportsDevice:v8];
    [MTLFXTemporalScalerDescriptor supportedInputContentMinScaleForDevice:v8];
    *(v5 + 16668) = v127;
    [MTLFXTemporalScalerDescriptor supportedInputContentMaxScaleForDevice:v8];
    *(v5 + 16669) = v128;
    if (NSClassFromString(@"MTLFXFrameInterpolatorDescriptor"))
    {
      if (objc_opt_respondsToSelector())
      {
        v129 = [MTLFXFrameInterpolatorDescriptor supportsDevice:v8];
      }

      else
      {
        v129 = 0;
      }

      *(v5 + 66662) = v129;
    }

    if (NSClassFromString(@"MTLFXTemporalDenoisedScalerDescriptor"))
    {
      if (objc_opt_respondsToSelector())
      {
        v130 = [MTLFXTemporalDenoisedScalerDescriptor supportsDevice:v8];
      }

      else
      {
        v130 = 0;
      }

      *(v5 + 66663) = v130;
      v131 = objc_opt_respondsToSelector();
      v132 = 0;
      v133 = 0;
      if (v131)
      {
        [MTLFXTemporalDenoisedScalerDescriptor supportedInputContentMinScaleForDevice:v8, 0.0];
      }

      *(v5 + 16670) = v133;
      if (objc_opt_respondsToSelector())
      {
        [MTLFXTemporalDenoisedScalerDescriptor supportedInputContentMaxScaleForDevice:v8];
        v132 = v134;
      }

      *(v5 + 16671) = v132;
    }

    v135 = 0;
    v136 = v5 + 49684;
    for (m = -20480; m != -20313; ++m)
    {
      if (sub_100027F08(m))
      {
        *(v136 + 4 * v135++) = m;
      }
    }

    v138 = -18432;
    v139 = 11;
    do
    {
      if (sub_100027F08(v138))
      {
        *(v136 + 4 * v135++) = v138;
      }

      ++v138;
      --v139;
    }

    while (v139);
    for (n = -16384; n != -14793; ++n)
    {
      if (sub_100027F08(n))
      {
        *(v136 + 4 * v135++) = n;
      }
    }

    v141 = 0;
    v142 = -12544;
    do
    {
      v143 = v141;
      if (sub_100027F08(v142))
      {
        *(v136 + 4 * v135++) = v142;
      }

      v142 = -12543;
      v141 = 1;
    }

    while ((v143 & 1) == 0);
    v144 = -10240;
    v145 = 103;
    do
    {
      if (sub_100027F08(v144))
      {
        *(v136 + 4 * v135++) = v144;
      }

      ++v144;
      --v145;
    }

    while (v145);
    v146 = -7168;
    v147 = 16;
    do
    {
      if (sub_100027F08(v146))
      {
        *(v136 + 4 * v135++) = v146;
      }

      ++v146;
      --v147;
    }

    while (v147);
    v148 = -6656;
    v149 = 5;
    do
    {
      if (sub_100027F08(v148))
      {
        *(v136 + 4 * v135++) = v148;
      }

      ++v148;
      --v149;
    }

    while (v149);
    v150 = -6144;
    v151 = 50;
    do
    {
      if (sub_100027F08(v150))
      {
        *(v136 + 4 * v135++) = v150;
      }

      ++v150;
      --v151;
    }

    while (v151);
    *(v136 + 4 * v135) = 0;
    *(v136 + 4 * (v135 + 1)) = -12281;
    *(v136 + 4 * (v135 + 2)) = -12280;
    *(v136 + 4 * (v135 + 3)) = -12272;
    *(v136 + 4 * (v135 + 4)) = -8183;
    *(v136 + 4 * (v135 + 5)) = -8182;
    *(v136 + 4 * (v135 + 6)) = -8181;
    qsort(v5 + 49684, v135 + 7, 4uLL, sub_100027324);
    *(v6 + 68) = v135 + 7;
    if (objc_opt_respondsToSelector())
    {
      v5[8303] = [v8 deviceCreationFlags];
    }

    if (objc_opt_respondsToSelector())
    {
      v5[8304] = [v8 sharedMemorySize];
    }

    if (objc_opt_respondsToSelector())
    {
      v5[8305] = [v8 dedicatedMemorySize];
    }

    if (objc_opt_respondsToSelector())
    {
      v5[8306] = [v8 maximumComputeSubstreams];
    }

    v152 = [v8 maxRasterizationRateLayerCount];
    v5[8307] = v152;
    if (v152 >= 0x11)
    {
      *(v6 + 88) = 1;
    }

    v5[8309] = [v8 maxAccelerationStructureTraversalDepth];
    *(v5 + 33240) = [v8 latestSupportedGenericBVHVersion];
    *(v5 + 66482) = [v8 bufferRobustnessSupport];
    if (objc_opt_respondsToSelector())
    {
      *(v5 + 66483) = [v8 halfFPConfig];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 66484) = [v8 singleFPConfig];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 66485) = [v8 doubleFPConfig];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 66486) = [v8 sparseTexturesSupport];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 66487) = [v8 defaultTextureWriteRoundingMode];
    }

    if (objc_opt_respondsToSelector())
    {
      for (ii = 0; ii != 3; ++ii)
      {
        *(v5 + ii + 66499) = [v8 supportsTextureWriteRoundingMode:ii];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 66488) = [v8 readWriteTextureSupport];
    }

    if (objc_opt_respondsToSelector())
    {
      for (jj = 0; jj != 10; ++jj)
      {
        *(v5 + jj + 66489) = [v8 supportsPrimitiveType:jj];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v155 = [v8 supportPriorityBand];
    }

    else
    {
      v155 = 0;
    }

    *(v5 + 66504) = v155;
    if (objc_opt_respondsToSelector())
    {
      v156 = [v8 isQuadDataSharingSupported];
    }

    else
    {
      v156 = 0;
    }

    *(v5 + 66505) = v156;
    if (objc_opt_respondsToSelector())
    {
      v157 = [v8 supportsLargeFramebufferConfigs];
    }

    else
    {
      v157 = 0;
    }

    *(v5 + 66506) = v157;
    if (objc_opt_respondsToSelector())
    {
      v158 = [v8 supports32BitFloatFiltering];
    }

    else
    {
      v158 = 0;
    }

    *(v5 + 66507) = v158;
    if (objc_opt_respondsToSelector())
    {
      v159 = [v8 requiresRaytracingEmulation];
    }

    else
    {
      v159 = 0;
    }

    *(v5 + 66598) = v159;
    if (objc_opt_respondsToSelector())
    {
      v160 = [v8 requiresBFloat16Emulation];
    }

    else
    {
      v160 = 0;
    }

    *(v5 + 66599) = v160;
    if (objc_opt_respondsToSelector())
    {
      v161 = [v8 supportsCountingOcclusionQuery];
    }

    else
    {
      v161 = 0;
    }

    *(v5 + 66508) = v161;
    if (objc_opt_respondsToSelector())
    {
      v162 = [v8 supportsBaseVertexInstanceDrawing];
    }

    else
    {
      v162 = 0;
    }

    *(v5 + 66509) = v162;
    if (objc_opt_respondsToSelector())
    {
      v163 = [v8 supportsMipLevelsSmallerThanBlockSize];
    }

    else
    {
      v163 = 0;
    }

    *(v5 + 66510) = v163;
    if (objc_opt_respondsToSelector())
    {
      v164 = [v8 supportsRenderPassWithoutRenderTarget];
    }

    else
    {
      v164 = 0;
    }

    *(v5 + 66511) = v164;
    if (objc_opt_respondsToSelector())
    {
      v165 = [v8 supportsSeparateVisibilityAndShadingRate];
    }

    else
    {
      v165 = 0;
    }

    *(v5 + 66512) = v165;
    if (objc_opt_respondsToSelector())
    {
      v166 = [v8 supportsDynamicControlPointCount];
    }

    else
    {
      v166 = 0;
    }

    *(v5 + 66513) = v166;
    if (objc_opt_respondsToSelector())
    {
      v167 = [v8 supportsTessellation];
    }

    else
    {
      v167 = 0;
    }

    *(v5 + 66514) = v167;
    if (objc_opt_respondsToSelector())
    {
      v168 = [v8 supportsIndirectTessellation];
    }

    else
    {
      v168 = 0;
    }

    *(v5 + 66515) = v168;
    if (objc_opt_respondsToSelector())
    {
      v169 = [v8 supportsFP32TessFactors];
    }

    else
    {
      v169 = 0;
    }

    *(v5 + 66516) = v169;
    if (objc_opt_respondsToSelector())
    {
      v170 = [v8 supportsUnalignedVertexFetch];
    }

    else
    {
      v170 = 0;
    }

    *(v5 + 66517) = v170;
    if (objc_opt_respondsToSelector())
    {
      v171 = [v8 supportsBinaryArchives];
    }

    else
    {
      v171 = 0;
    }

    *(v5 + 66518) = v171;
    if (objc_opt_respondsToSelector())
    {
      v172 = [v8 supportsForceSeamsOnCubemaps];
    }

    else
    {
      v172 = 0;
    }

    *(v5 + 66519) = v172;
    if (objc_opt_respondsToSelector())
    {
      v173 = [v8 supportsAnisoSampleFix];
    }

    else
    {
      v173 = 0;
    }

    *(v5 + 66520) = v173;
    if (objc_opt_respondsToSelector())
    {
      v174 = [v8 supportsIndirectWritableTextures];
    }

    else
    {
      v174 = 0;
    }

    *(v5 + 66521) = v174;
    if (objc_opt_respondsToSelector())
    {
      v175 = [v8 supportsBufferPrefetchStatistics];
    }

    else
    {
      v175 = 0;
    }

    *(v5 + 66522) = v175;
    if (objc_opt_respondsToSelector())
    {
      v176 = [v8 supportsMutableTier1ArgumentBuffers];
    }

    else
    {
      v176 = 0;
    }

    *(v5 + 66523) = v176;
    if (objc_opt_respondsToSelector())
    {
      v177 = [v8 supportsIndirectStageInRegion];
    }

    else
    {
      v177 = 0;
    }

    *(v5 + 66524) = v177;
    if (objc_opt_respondsToSelector())
    {
      v178 = [v8 supportsIndirectTextures];
    }

    else
    {
      v178 = 0;
    }

    *(v5 + 66525) = v178;
    if (objc_opt_respondsToSelector())
    {
      v179 = [v8 supportsReadWriteTextureArgumentsTier2];
    }

    else
    {
      v179 = 0;
    }

    *(v5 + 66526) = v179;
    if (objc_opt_respondsToSelector())
    {
      v180 = [v8 supportsBufferBoundsChecking];
    }

    else
    {
      v180 = 0;
    }

    *(v5 + 66527) = v180;
    if (objc_opt_respondsToSelector())
    {
      v181 = [v8 supportsInterchangeTiled];
    }

    else
    {
      v181 = 0;
    }

    *(v5 + 66528) = v181;
    if (objc_opt_respondsToSelector())
    {
      v182 = [v8 supportsExplicitVisibilityGroups];
    }

    else
    {
      v182 = 0;
    }

    *(v5 + 66529) = v182;
    if (objc_opt_respondsToSelector())
    {
      v183 = [v8 supportsForkJoin];
    }

    else
    {
      v183 = 0;
    }

    *(v5 + 66530) = v183;
    if (objc_opt_respondsToSelector())
    {
      v184 = [v8 supportsDevicePartitioning];
    }

    else
    {
      v184 = 0;
    }

    *(v5 + 66531) = v184;
    if (objc_opt_respondsToSelector())
    {
      v185 = [v8 supportsQuadReduction];
    }

    else
    {
      v185 = 0;
    }

    *(v5 + 66532) = v185;
    if (objc_opt_respondsToSelector())
    {
      v186 = [v8 supportsVirtualSubstreams];
    }

    else
    {
      v186 = 0;
    }

    *(v5 + 66533) = v186;
    if (objc_opt_respondsToSelector())
    {
      v187 = [v8 supportsCommandBufferJump];
    }

    else
    {
      v187 = 0;
    }

    *(v5 + 66534) = v187;
    if (objc_opt_respondsToSelector())
    {
      v188 = [v8 supportsPrimitiveRestartOverride];
    }

    else
    {
      v188 = 0;
    }

    *(v5 + 66535) = v188;
    if (objc_opt_respondsToSelector())
    {
      v189 = [v8 supportsStreamingCodecSignaling];
    }

    else
    {
      v189 = 0;
    }

    *(v5 + 66536) = v189;
    if (objc_opt_respondsToSelector())
    {
      v190 = [v8 supportsGlobalVariableRelocation];
    }

    else
    {
      v190 = 0;
    }

    *(v5 + 66537) = v190;
    if (objc_opt_respondsToSelector())
    {
      v191 = [v8 supportsGlobalVariableRelocationRender];
    }

    else
    {
      v191 = 0;
    }

    *(v5 + 66538) = v191;
    if (objc_opt_respondsToSelector())
    {
      v192 = [v8 supportsGlobalVariableRelocationCompute];
    }

    else
    {
      v192 = 0;
    }

    *(v5 + 66539) = v192;
    if (objc_opt_respondsToSelector())
    {
      v193 = [v8 supportsTLS];
    }

    else
    {
      v193 = 0;
    }

    *(v5 + 66540) = v193;
    if (objc_opt_respondsToSelector())
    {
      v194 = [v8 supportsOpenCLTextureWriteSwizzles];
    }

    else
    {
      v194 = 0;
    }

    *(v5 + 66541) = v194;
    if (objc_opt_respondsToSelector())
    {
      v195 = [v8 supportsFixedLinePointFillDepthGradient];
    }

    else
    {
      v195 = 0;
    }

    *(v5 + 66542) = v195;
    if (objc_opt_respondsToSelector())
    {
      v196 = [v8 supportsFragmentOnlyEncoders];
    }

    else
    {
      v196 = 0;
    }

    *(v5 + 66543) = v196;
    if (objc_opt_respondsToSelector())
    {
      v197 = [v8 supportsDeadlineProfile];
    }

    else
    {
      v197 = 0;
    }

    *(v5 + 66544) = v197;
    if (objc_opt_respondsToSelector())
    {
      v198 = [v8 supportsFillTexture];
    }

    else
    {
      v198 = 0;
    }

    *(v5 + 66545) = v198;
    if (objc_opt_respondsToSelector())
    {
      v199 = [v8 supportsSetThreadgroupPackingDisabled];
    }

    else
    {
      v199 = 0;
    }

    *(v5 + 66546) = v199;
    if (objc_opt_respondsToSelector())
    {
      v200 = [v8 supportsPipelineLibraries];
    }

    else
    {
      v200 = 0;
    }

    *(v5 + 66547) = v200;
    if (objc_opt_respondsToSelector())
    {
      v201 = [v8 supportsCompressedTextureViewSPI];
    }

    else
    {
      v201 = 0;
    }

    *(v5 + 66548) = v201;
    if (objc_opt_respondsToSelector())
    {
      v202 = [v8 supportsPerformanceStateAssertion];
    }

    else
    {
      v202 = 0;
    }

    *(v5 + 66549) = v202;
    if (objc_opt_respondsToSelector())
    {
      v203 = [v8 supportsStackOverflowErrorCode];
    }

    else
    {
      v203 = 0;
    }

    *(v5 + 66550) = v203;
    if (objc_opt_respondsToSelector())
    {
      v204 = [v8 supportsIABHashForTools];
    }

    else
    {
      v204 = 0;
    }

    *(v5 + 66551) = v204;
    if (objc_opt_respondsToSelector())
    {
      v205 = [v8 supportsRayTracingTraversalMetrics];
    }

    else
    {
      v205 = 0;
    }

    *(v5 + 66552) = v205;
    if (objc_opt_respondsToSelector())
    {
      v206 = [v8 supportsInt64];
    }

    else
    {
      v206 = 0;
    }

    *(v5 + 66553) = v206;
    if (objc_opt_respondsToSelector())
    {
      v207 = [v8 supportsNonZeroTextureWriteLOD];
    }

    else
    {
      v207 = 0;
    }

    *(v5 + 66554) = v207;
    if (objc_opt_respondsToSelector())
    {
      v208 = [v8 supportsInvariantVertexPosition];
    }

    else
    {
      v208 = 0;
    }

    *(v5 + 66555) = v208;
    if (objc_opt_respondsToSelector())
    {
      v209 = [v8 supportsProgrammableBlending];
    }

    else
    {
      v209 = 0;
    }

    *(v5 + 66556) = v209;
    if (objc_opt_respondsToSelector())
    {
      v210 = [v8 supportsFastMathInfNaNPropagation];
    }

    else
    {
      v210 = 0;
    }

    *(v5 + 66557) = v210;
    if (objc_opt_respondsToSelector())
    {
      v211 = [v8 supportsQueryTextureLOD];
    }

    else
    {
      v211 = 0;
    }

    *(v5 + 66558) = v211;
    if (objc_opt_respondsToSelector())
    {
      v212 = [v8 supportsShaderLODAverage];
    }

    else
    {
      v212 = 0;
    }

    *(v5 + 66559) = v212;
    if (objc_opt_respondsToSelector())
    {
      v213 = [v8 supportsPacked32TextureBufferWrites];
    }

    else
    {
      v213 = 0;
    }

    *(v5 + 66560) = v213;
    if (objc_opt_respondsToSelector())
    {
      v214 = [v8 supportsFragmentBufferWrites];
    }

    else
    {
      v214 = 0;
    }

    *(v5 + 66561) = v214;
    if (objc_opt_respondsToSelector())
    {
      v215 = [v8 supportsAtomicFloat];
    }

    else
    {
      v215 = 0;
    }

    *(v5 + 66562) = v215;
    if (objc_opt_respondsToSelector())
    {
      v216 = [v8 supportsNorm16BCubicFiltering];
    }

    else
    {
      v216 = 0;
    }

    *(v5 + 66563) = v216;
    if (objc_opt_respondsToSelector())
    {
      v217 = [v8 supportsTextureOutOfBoundsReads];
    }

    else
    {
      v217 = 0;
    }

    *(v5 + 66564) = v217;
    if (objc_opt_respondsToSelector())
    {
      v218 = [v8 supportsMemoryOrderAtomics];
    }

    else
    {
      v218 = 0;
    }

    *(v5 + 66565) = v218;
    if (objc_opt_respondsToSelector())
    {
      v219 = [v8 supportsPullModelInterpolation];
    }

    else
    {
      v219 = 0;
    }

    *(v5 + 66566) = v219;
    if (objc_opt_respondsToSelector())
    {
      v220 = [v8 supportsSIMDGroupMatrix];
    }

    else
    {
      v220 = 0;
    }

    *(v5 + 66567) = v220;
    if (objc_opt_respondsToSelector())
    {
      v221 = [v8 supportsSIMDShuffleAndFill];
    }

    else
    {
      v221 = 0;
    }

    *(v5 + 66568) = v221;
    if (objc_opt_respondsToSelector())
    {
      v222 = [v8 supportsAtomicUlongVoidMinMax];
    }

    else
    {
      v222 = 0;
    }

    *(v5 + 66569) = v222;
    if (objc_opt_respondsToSelector())
    {
      v223 = [v8 supportsFloat16BCubicFiltering];
    }

    else
    {
      v223 = 0;
    }

    *(v5 + 66570) = v223;
    if (objc_opt_respondsToSelector())
    {
      v224 = [v8 supportsFloat16InfNanFiltering];
    }

    else
    {
      v224 = 0;
    }

    *(v5 + 66571) = v224;
    if (objc_opt_respondsToSelector())
    {
      v225 = [v8 supportsRTZRounding];
    }

    else
    {
      v225 = 0;
    }

    *(v5 + 66572) = v225;
    if (objc_opt_respondsToSelector())
    {
      v226 = [v8 supportsQuadGroup];
    }

    else
    {
      v226 = 0;
    }

    *(v5 + 66573) = v226;
    if (objc_opt_respondsToSelector())
    {
      v227 = [v8 supportsImageBlocks];
    }

    else
    {
      v227 = 0;
    }

    *(v5 + 66574) = v227;
    if (objc_opt_respondsToSelector())
    {
      v228 = [v8 supportsImageBlockSampleCoverageControl];
    }

    else
    {
      v228 = 0;
    }

    *(v5 + 66575) = v228;
    if (objc_opt_respondsToSelector())
    {
      v229 = [v8 supportsShaderBarycentricCoordinates];
    }

    else
    {
      v229 = 0;
    }

    *(v5 + 66576) = v229;
    if (objc_opt_respondsToSelector())
    {
      v230 = [v8 supportsSIMDGroup];
    }

    else
    {
      v230 = 0;
    }

    *(v5 + 66577) = v230;
    if (objc_opt_respondsToSelector())
    {
      v231 = [v8 supportsShaderMinLODClamp];
    }

    else
    {
      v231 = 0;
    }

    *(v5 + 66578) = v231;
    if (objc_opt_respondsToSelector())
    {
      v232 = [v8 supportsSIMDShufflesAndBroadcast];
    }

    else
    {
      v232 = 0;
    }

    *(v5 + 66579) = v232;
    if (objc_opt_respondsToSelector())
    {
      v233 = [v8 supportsQuadShufflesAndBroadcast];
    }

    else
    {
      v233 = 0;
    }

    *(v5 + 66580) = v233;
    if (objc_opt_respondsToSelector())
    {
      v234 = [v8 supportsSIMDReduction];
    }

    else
    {
      v234 = 0;
    }

    *(v5 + 66581) = v234;
    if (objc_opt_respondsToSelector())
    {
      v235 = [v8 supportsRasterOrderGroups];
    }

    else
    {
      v235 = 0;
    }

    *(v5 + 66582) = v235;
    if (objc_opt_respondsToSelector())
    {
      v236 = [v8 supportsRasterOrderGroupsColorAttachment];
    }

    else
    {
      v236 = 0;
    }

    *(v5 + 66583) = v236;
    if (objc_opt_respondsToSelector())
    {
      v237 = [v8 supportsNativeHardwareFP16];
    }

    else
    {
      v237 = 0;
    }

    *(v5 + 66584) = v237;
    if (objc_opt_respondsToSelector())
    {
      v238 = [v8 supportsRaytracingFromRender];
    }

    else
    {
      v238 = 0;
    }

    *(v5 + 66585) = v238;
    if (objc_opt_respondsToSelector())
    {
      v239 = [v8 supportsArrayOfTextures];
    }

    else
    {
      v239 = 0;
    }

    *(v5 + 66586) = v239;
    if (objc_opt_respondsToSelector())
    {
      v240 = [v8 supportsArrayOfSamplers];
    }

    else
    {
      v240 = 0;
    }

    *(v5 + 66587) = v240;
    if (objc_opt_respondsToSelector())
    {
      v241 = [v8 supportsReadWriteBufferArguments];
    }

    else
    {
      v241 = 0;
    }

    *(v5 + 66588) = v241;
    if (objc_opt_respondsToSelector())
    {
      v242 = [v8 supportsPostDepthCoverage];
    }

    else
    {
      v242 = 0;
    }

    *(v5 + 66589) = v242;
    if (objc_opt_respondsToSelector())
    {
      v243 = [v8 supportsBfloat16Buffers];
    }

    else
    {
      v243 = 0;
    }

    *(v5 + 66590) = v243;
    if (objc_opt_respondsToSelector())
    {
      v244 = [v8 supportsComputeCompressedTextureWrite];
    }

    else
    {
      v244 = 0;
    }

    *(v5 + 66591) = v244;
    if (objc_opt_respondsToSelector())
    {
      v245 = [v8 supportsStencilFeedback];
    }

    else
    {
      v245 = 0;
    }

    *(v5 + 66592) = v245;
    if (objc_opt_respondsToSelector())
    {
      v246 = [v8 supportsRenderTextureWrites];
    }

    else
    {
      v246 = 0;
    }

    *(v5 + 66593) = v246;
    if (objc_opt_respondsToSelector())
    {
      v247 = [v8 supportsReadWriteTextureArguments];
    }

    else
    {
      v247 = 0;
    }

    *(v5 + 66594) = v247;
    if (objc_opt_respondsToSelector())
    {
      v248 = [v8 supportsReadWriteTextureCubeArguments];
    }

    else
    {
      v248 = 0;
    }

    *(v5 + 66595) = v248;
    if (objc_opt_respondsToSelector())
    {
      v249 = [v8 supportsWritableArrayOfTextures];
    }

    else
    {
      v249 = 0;
    }

    *(v5 + 66596) = v249;
    if (objc_opt_respondsToSelector())
    {
      v250 = [v8 supportsExtendedSamplerLODBiasRange];
    }

    else
    {
      v250 = 0;
    }

    *(v5 + 66661) = v250;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      *(v6 + 88) = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v251 = [v8 limits];
      *(v5 + 8259) = *v251;
      *(v5 + 8261) = v251[1];
      *(v5 + 8263) = v251[2];
      *(v5 + 8265) = v251[3];
      *(v5 + 8267) = v251[4];
      *(v5 + 8269) = v251[5];
      v5[8271] = *(v251 + 12);
      v5[8272] = *(v251 + 13);
      *(v5 + 16546) = *(v251 + 28);
      *(v5 + 66188) = *(v251 + 120);
      *(v5 + 66204) = *(v251 + 136);
      *(v5 + 66220) = *(v251 + 152);
      *(v5 + 66236) = *(v251 + 168);
      *(v5 + 66252) = *(v251 + 184);
      *(v5 + 66268) = *(v251 + 200);
      *(v5 + 66284) = *(v251 + 216);
      *(v5 + 66300) = *(v251 + 232);
      *(v5 + 66316) = *(v251 + 31);
      v5[8291] = *(v251 + 32);
    }

    if (objc_opt_respondsToSelector())
    {
      v252 = [v8 supportsIntersectionFunctionBuffers];
    }

    else
    {
      v252 = 0;
    }

    *(v5 + 66664) = v252;
  }

  else
  {
    *(v6 + 88) = 1;
  }

  return v5;
}

uint64_t sub_100027324(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

uint64_t GTCapabilitiesRuntime_heapTextureInfoCompatible(uint64_t *a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = *a1;
      v10 = *(*a1 + v6);
      if (*(a2 + 12 * *(v10 + 34)))
      {
        v11 = v22;
        v12 = objc_alloc_init(MTLTextureDescriptor);
        [v12 setTextureType:*(v10 + 49)];
        [v12 setPixelFormat:*(v10 + 34)];
        [v12 setWidth:*(v10 + 24)];
        [v12 setHeight:*(v10 + 32)];
        [v12 setDepth:*(v10 + 30)];
        [v12 setMipmapLevelCount:*(v10 + 45)];
        [v12 setSampleCount:*(v10 + 47)];
        [v12 setArrayLength:*(v10 + 28)];
        [v12 setUsage:*(v10 + 20)];
        [v12 setResourceOptions:*(v10 + 36)];
        if (objc_opt_respondsToSelector())
        {
          [v12 setSwizzleKey:*(v10 + 16)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 setRotation:*(v10 + 46)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 setAllowGPUOptimizedContents:*(v10 + 38) != 0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 setSparseSurfaceDefaultValue:*(v10 + 48)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 setWriteSwizzleEnabled:*(v10 + 50) != 0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 setCompressionType:*(v10 + 41)];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v12 setLossyCompressionMode:*(v10 + 41)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 setCompressionFootprint:*(v10 + 39)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 setCompressionMode:*(v10 + 40)];
        }

        [v12 setAllowGPUOptimizedContents:*(v10 + 38) != 0];
        [v12 setFramebufferOnly:*(v10 + 43) != 0];
        [v12 setIsDrawable:*(v10 + 44) != 0];
        v13 = [v11 heapTextureSizeAndAlignWithDescriptor:v12];
        v15 = v14;

        v16 = v9 + v6;
        v17 = *(v9 + v6 + 8);
        v18 = *(v16 + 16);

        v20 = v17 >= v15 && v18 <= v13;
        v8 &= v20;
        v5 = *(a1 + 2);
      }

      ++v7;
      v6 += 24;
    }

    while (v7 < v5);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t GTCapabilitiesRuntime_heapAccelerationStructureInfoCompatible(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a2 + 49623) == 1 && *(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    LODWORD(v8) = 1;
    do
    {
      v9 = (*a1 + v6);
      v10 = [v5 heapAccelerationStructureSizeAndAlignWithSize:*v9];
      v13 = v9[1] >= v11 && v9[2] <= v10;
      v8 = v13 & v8;
      ++v7;
      v6 += 24;
    }

    while (v7 < *(a1 + 8));
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id GTCapabilitiesRuntime_serialize(const uint8_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 66688;
  v13 = 66688;
  v14 = a2;
  if (a2)
  {
    v5 = a2;
    v6 = sub_100024570(a3, 0x10480uLL);
    v7 = v6;
    if (v6)
    {
      bzero(v6, 0x10480uLL);
    }

    v4 = compression_encode_buffer(v7, 0x10480uLL, a1, 0x10480uLL, 0, v5);
  }

  else
  {
    v7 = a1;
  }

  v11 = 9;
  v12 = 1;
  v8 = objc_alloc_init(NSMutableData);
  [v8 appendBytes:&v12 length:4];
  [v8 appendBytes:&v11 length:4];
  [v8 appendBytes:&v14 length:8];
  [v8 appendBytes:&v13 length:8];
  [v8 appendBytes:v7 length:v4];
  v9 = [v8 copy];

  return v9;
}

uint8_t *sub_100027834(const uint8_t *a1, size_t a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  if (a4 <= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = a4;
  }

  v11 = sub_100024570(a6, v10);
  v12 = v11;
  if (v11)
  {
    bzero(v11, v10);
    if (a3)
    {
      if (compression_decode_buffer(v12, a4, a1, a2, 0, a3) == a4)
      {
        return v12;
      }
    }

    else if (a2 >= a4)
    {
      memcpy(v12, a1, a4);
      return v12;
    }

    return 0;
  }

  return v12;
}

uint64_t GTCapabilitiesHeapAccelerationStructureInfo_deserialize(void *a1, uint64_t a2, _BYTE *a3)
{
  v13[0] = 0;
  v13[1] = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v5 = a1;
  v6 = [v5 length];
  v7 = [v5 bytes];

  if (v6 <= 3 || (v8 = *v7, *v7 >= 2u) || (v6 & 0xFFFFFFFFFFFFFFFCLL) == 4 || (v6 & 0xFFFFFFFFFFFFFFF8) == 8 || (v6 & 0xFFFFFFFFFFFFFFF0) == 0x10)
  {
LABEL_8:
    if (a3)
    {
      result = 0;
      *a3 = 1;
      return result;
    }

    return 0;
  }

  v10 = *(v7 + 2);
  if (v10)
  {
    v11 = *(v7 + 3);
    v12 = sub_100027834(v7 + 32, v6 - 32, *(v7 + 1), v11 * v10, v11 * v10, a2);
    if (v12)
    {
      sub_100027A04(v12, v13, v11, v10, v8, a3, a2);
      return v13[0];
    }

    goto LABEL_8;
  }

  return 0;
}

char *sub_100027A04(char *result, uint64_t a2, unint64_t a3, uint64_t a4, int a5, _BYTE *a6, uint64_t a7)
{
  if (a5 == 1 && (v11 = result, v12 = 24 * a4, (result = sub_100024570(a7, 24 * a4)) != 0))
  {
    v13 = result;
    bzero(result, v12);
    if (a3 >= 0x18)
    {
      v14 = 24;
    }

    else
    {
      v14 = a3;
    }

    v15 = v13;
    v16 = a4;
    do
    {
      result = memcpy(v15, v11, v14);
      v15 += 24;
      v11 += a3;
      --v16;
    }

    while (v16);
    *a2 = v13;
    *(a2 + 8) = a4;
  }

  else if (a6)
  {
    *a6 = 1;
  }

  return result;
}

uint64_t GTCapabilitiesHeapTextureInfo_deserialize(void *a1, uint64_t a2, _BYTE *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v5 = a1;
  v6 = [v5 length];
  v7 = [v5 bytes];

  if (v6 <= 3 || (v8 = *v7, v8 >= 2) || (v6 & 0xFFFFFFFFFFFFFFFCLL) == 4 || (v6 & 0xFFFFFFFFFFFFFFF8) == 8 || v6 - 16 <= 0x17)
  {
LABEL_8:
    if (a3)
    {
      result = 0;
      *a3 = 1;
      return result;
    }

    return 0;
  }

  v10 = *(v7 + 2);
  if (v10)
  {
    v11 = *(v7 + 3);
    v12 = *(v7 + 4);
    v13 = sub_100027834(v7 + 40, v6 - 40, *(v7 + 1), (v12 + v11) * v10, (v12 + v11) * v10, a2);
    if (v13)
    {
      sub_100027BE8(v13, v14, v11, v12, v10, v8, a3, a2);
      return v14[0];
    }

    goto LABEL_8;
  }

  return 0;
}

void sub_100027BE8(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  if (a6 == 1)
  {
    v14 = 24 * a5;
    v15 = sub_100024570(a8, 24 * a5);
    if (v15)
    {
      v16 = v15;
      v40 = a2;
      v41 = a7;
      bzero(v15, v14);
      if (a3 >= 0x10)
      {
        v17 = 16;
      }

      else
      {
        v17 = a3;
      }

      v18 = 1;
      v19 = a1;
      v20 = a5;
      do
      {
        memcpy(&v16[v18], v19, v17);
        v18 += 3;
        v19 += a3;
        --v20;
      }

      while (v20);
      v21 = 0;
      v22 = &a1[a5 * a3];
      while (1)
      {
        bzero(&v44, 0x250uLL);
        v23 = 0;
        v24 = 0;
        v43[0] = 56;
        do
        {
          v24 += (v43[v23++] + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        while (v23 != 75);
        v25 = sub_100024570(a8, v24);
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = &v22[v21 * a4];
        bzero(v25, v24);
        v28 = 0;
        v29 = v26;
        do
        {
          if (((v43[v28] + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          v29 = (v29 + ((v43[v28] + 7) & 0xFFFFFFFFFFFFFFF8));
          v43[v28++] = v30;
        }

        while (v28 != 75);
        v31 = v43[0];
        *(v43[0] + 48) = 512;
        *v31 = xmmword_100032378;
        *(v31 + 16) = unk_100032388;
        *(v31 + 32) = xmmword_100032398;
        v32 = *v27;
        *(v31 + 49) = *(v27 + 1);
        *(v31 + 34) = *(v27 + 2);
        *(v31 + 24) = *(v27 + 3);
        *(v31 + 32) = *(v27 + 4);
        *(v31 + 30) = *(v27 + 5);
        *(v31 + 45) = *(v27 + 6);
        *(v31 + 47) = *(v27 + 7);
        *(v31 + 28) = *(v27 + 8);
        v33 = 72;
        if (v32 < 3)
        {
          v33 = 80;
        }

        v34 = &v27[v33];
        *(v31 + 43) = *v34;
        *(v31 + 44) = *(v34 + 1);
        if (v32)
        {
          *(v31 + 20) = *(v34 + 2);
          if (v32 <= 3)
          {
            if (v32 == 3)
            {
              *(v31 + 36) = *(v34 + 16) | (16 * *(v34 + 12));
            }
          }

          else
          {
            v35 = v34[24];
            *(v31 + 46) = v35;
            v36 = *(v34 + 10);
            v37 = v36 | (16 * *(v34 + 8));
            *(v31 + 36) = v36 | (16 * *(v34 + 16));
            if (v32 >= 0x15)
            {
              *(v31 + 38) = *(v34 + 6);
              *(v31 + 40) = *(v34 + 7);
              if (v32 != 21)
              {
                *(v31 + 8) = *(v34 + 8);
                *(v31 + 42) = *(v34 + 9);
                if (v32 >= 0x23)
                {
                  v38 = *(v34 + 22);
                  v39 = *(v34 + 24);
                  *(v31 + 16) = v34[80] | (*(v34 + 22) << 8) | (*(v34 + 24) << 16) | (*(v34 + 26) << 24);
                  if (v32 >= 0x27)
                  {
                    *(v31 + 16) = *(v34 + 14);
                    if (v32 >= 0x2A)
                    {
                      *(v31 + 36) = v37 | (*(v34 + 60) << 8);
                      *v31 = *(v34 + 16);
                      *(v31 + 48) = *(v34 + 17);
                      *(v31 + 50) = *(v34 + 18);
                      if (v32 >= 0x31)
                      {
                        *(v31 + 41) = *(v34 + 19);
                        *(v31 + 39) = *(v34 + 20);
                      }
                    }
                  }
                }
              }
            }

            if (v35 == 255)
            {
              *(v31 + 46) = 0;
            }
          }
        }

        v16[3 * v21++] = v26;
        if (v21 == a5)
        {
          *v40 = v16;
          *(v40 + 8) = a5;
          return;
        }
      }

      a7 = v41;
    }
  }

  if (a7)
  {
    *a7 = 1;
  }
}

uint64_t sub_100027F08(int a1)
{
  result = 1;
  if (a1 > -12545)
  {
    if (a1 > -8184)
    {
      if (a1 <= -6145)
      {
        if ((a1 + 7168) < 0x10 || (a1 + 6656) < 5 || (a1 + 8183) < 3)
        {
          return result;
        }
      }

      else if ((a1 + 6144) < 0x32 || !a1)
      {
        return result;
      }

      return 0;
    }

    if ((a1 + 10240) >= 0x67 && ((a1 + 12281) > 9 || ((1 << (a1 - 7)) & 0x203) == 0) && (a1 + 12544) >= 2)
    {
      return 0;
    }
  }

  else
  {
    if (a1 > -18433)
    {
      switch(a1)
      {
        case -16384:
        case -16383:
        case -16382:
        case -16381:
        case -16380:
        case -16379:
        case -16378:
        case -16377:
        case -16376:
        case -16375:
        case -16374:
        case -16373:
        case -16372:
        case -16371:
        case -16370:
        case -16369:
        case -16368:
        case -16367:
        case -16366:
        case -16365:
        case -16364:
        case -16363:
        case -16362:
        case -16361:
        case -16360:
        case -16359:
        case -16358:
        case -16357:
        case -16356:
        case -16355:
        case -16354:
        case -16353:
        case -16352:
        case -16351:
        case -16350:
        case -16349:
        case -16348:
        case -16347:
        case -16346:
        case -16345:
        case -16344:
        case -16343:
        case -16342:
        case -16341:
        case -16340:
        case -16339:
        case -16338:
        case -16337:
        case -16336:
        case -16335:
        case -16334:
        case -16333:
        case -16332:
        case -16331:
        case -16330:
        case -16329:
        case -16328:
        case -16327:
        case -16326:
        case -16325:
        case -16324:
        case -16323:
        case -16322:
        case -16321:
        case -16320:
        case -16319:
        case -16318:
        case -16317:
        case -16316:
        case -16315:
        case -16314:
        case -16313:
        case -16312:
        case -16311:
        case -16310:
        case -16309:
        case -16308:
        case -16307:
        case -16306:
        case -16305:
        case -16304:
        case -16303:
        case -16302:
        case -16301:
        case -16300:
        case -16299:
        case -16298:
        case -16297:
        case -16296:
        case -16295:
        case -16294:
        case -16293:
        case -16292:
        case -16291:
        case -16290:
        case -16289:
        case -16288:
        case -16287:
        case -16286:
        case -16285:
        case -16284:
        case -16283:
        case -16282:
        case -16281:
        case -16280:
        case -16279:
        case -16278:
        case -16277:
        case -16276:
        case -16275:
        case -16274:
        case -16273:
        case -16272:
        case -16271:
        case -16270:
        case -16269:
        case -16268:
        case -16267:
        case -16266:
        case -16265:
        case -16264:
        case -16263:
        case -16262:
        case -16261:
        case -16260:
        case -16259:
        case -16258:
        case -16257:
        case -16256:
        case -16255:
        case -16254:
        case -16253:
        case -16252:
        case -16251:
        case -16250:
        case -16249:
        case -16248:
        case -16247:
        case -16246:
        case -16245:
        case -16244:
        case -16243:
        case -16242:
        case -16241:
        case -16240:
        case -16239:
        case -16238:
        case -16237:
        case -16236:
        case -16235:
        case -16234:
        case -16233:
        case -16232:
        case -16231:
        case -16230:
        case -16229:
        case -16228:
        case -16227:
        case -16226:
        case -16225:
        case -16224:
        case -16223:
        case -16222:
        case -16221:
        case -16220:
        case -16219:
        case -16218:
        case -16217:
        case -16216:
        case -16215:
        case -16214:
        case -16213:
        case -16212:
        case -16211:
        case -16210:
        case -16209:
        case -16208:
        case -16207:
        case -16206:
        case -16205:
        case -16204:
        case -16203:
        case -16202:
        case -16201:
        case -16200:
        case -16199:
        case -16198:
        case -16197:
        case -16196:
        case -16195:
        case -16194:
        case -16193:
        case -16192:
        case -16191:
        case -16190:
        case -16189:
        case -16188:
        case -16187:
        case -16186:
        case -16185:
        case -16184:
        case -16183:
        case -16182:
        case -16181:
        case -16180:
        case -16179:
        case -16178:
        case -16177:
        case -16176:
        case -16175:
        case -16174:
        case -16173:
        case -16172:
        case -16171:
        case -16170:
        case -16169:
        case -16168:
        case -16167:
        case -16166:
        case -16165:
        case -16164:
        case -16163:
        case -16162:
        case -16161:
        case -16160:
        case -16159:
        case -16158:
        case -16157:
        case -16156:
        case -16155:
        case -16154:
        case -16153:
        case -16152:
        case -16151:
        case -16150:
        case -16149:
        case -16148:
        case -16147:
        case -16146:
        case -16145:
        case -16144:
        case -16143:
        case -16142:
        case -16141:
        case -16140:
        case -16139:
        case -16138:
        case -16137:
        case -16136:
        case -16135:
        case -16134:
        case -16133:
        case -16132:
        case -16131:
        case -16130:
        case -16129:
        case -16128:
        case -16127:
        case -16126:
        case -16125:
        case -16124:
        case -16123:
        case -16122:
        case -16121:
        case -16120:
        case -16119:
        case -16118:
        case -16117:
        case -16116:
        case -16115:
        case -16114:
        case -16113:
        case -16112:
        case -16111:
        case -16110:
        case -16109:
        case -16108:
        case -16107:
        case -16106:
        case -16105:
        case -16104:
        case -16103:
        case -16102:
        case -16101:
        case -16100:
        case -16099:
        case -16098:
        case -16097:
        case -16096:
        case -16095:
        case -16094:
        case -16093:
        case -16092:
        case -16091:
        case -16090:
        case -16089:
        case -16088:
        case -16087:
        case -16086:
        case -16085:
        case -16084:
        case -16083:
        case -16082:
        case -16081:
        case -16080:
        case -16079:
        case -16078:
        case -16077:
        case -16076:
        case -16075:
        case -16074:
        case -16073:
        case -16072:
        case -16071:
        case -16070:
        case -16069:
        case -16068:
        case -16067:
        case -16066:
        case -16065:
        case -16064:
        case -16063:
        case -16062:
        case -16061:
        case -16060:
        case -16059:
        case -16058:
        case -16057:
        case -16056:
        case -16055:
        case -16054:
        case -16053:
        case -16052:
        case -16051:
        case -16050:
        case -16049:
        case -16048:
        case -16047:
        case -16046:
        case -16045:
        case -16044:
        case -16043:
        case -16042:
        case -16041:
        case -16040:
        case -16039:
        case -16038:
        case -16037:
        case -16036:
        case -16035:
        case -16034:
        case -16033:
        case -16032:
        case -16031:
        case -16030:
        case -16029:
        case -16028:
        case -16027:
        case -16026:
        case -16025:
        case -16024:
        case -16023:
        case -16022:
        case -16021:
        case -16020:
        case -16019:
        case -16018:
        case -16017:
        case -16016:
        case -16015:
        case -16014:
        case -16013:
        case -16012:
        case -16011:
        case -16010:
        case -16009:
        case -16008:
        case -16007:
        case -16006:
        case -16005:
        case -16004:
        case -16003:
        case -16002:
        case -16001:
        case -16000:
        case -15999:
        case -15998:
        case -15997:
        case -15996:
        case -15995:
        case -15994:
        case -15993:
        case -15992:
        case -15991:
        case -15990:
        case -15989:
        case -15988:
        case -15987:
        case -15986:
        case -15985:
        case -15984:
        case -15983:
        case -15982:
        case -15981:
        case -15980:
        case -15979:
        case -15978:
        case -15977:
        case -15976:
        case -15975:
        case -15974:
        case -15973:
        case -15972:
        case -15971:
        case -15970:
        case -15969:
        case -15968:
        case -15967:
        case -15966:
        case -15965:
        case -15964:
        case -15963:
        case -15962:
        case -15961:
        case -15960:
        case -15959:
        case -15958:
        case -15957:
        case -15956:
        case -15955:
        case -15954:
        case -15953:
        case -15952:
        case -15951:
        case -15950:
        case -15949:
        case -15948:
        case -15947:
        case -15946:
        case -15945:
        case -15944:
        case -15943:
        case -15942:
        case -15941:
        case -15940:
        case -15939:
        case -15938:
        case -15937:
        case -15936:
        case -15935:
        case -15934:
        case -15933:
        case -15932:
        case -15931:
        case -15930:
        case -15929:
        case -15928:
        case -15927:
        case -15926:
        case -15925:
        case -15924:
        case -15923:
        case -15922:
        case -15921:
        case -15920:
        case -15919:
        case -15918:
        case -15917:
        case -15916:
        case -15915:
        case -15914:
        case -15913:
        case -15912:
        case -15911:
        case -15910:
        case -15909:
        case -15908:
        case -15907:
        case -15906:
        case -15905:
        case -15904:
        case -15903:
        case -15902:
        case -15901:
        case -15900:
        case -15899:
        case -15898:
        case -15897:
        case -15896:
        case -15895:
        case -15894:
        case -15893:
        case -15892:
        case -15891:
        case -15890:
        case -15889:
        case -15888:
        case -15887:
        case -15886:
        case -15885:
        case -15884:
        case -15883:
        case -15882:
        case -15881:
        case -15880:
        case -15879:
        case -15878:
        case -15877:
        case -15876:
        case -15875:
        case -15874:
        case -15873:
        case -15872:
        case -15871:
        case -15870:
        case -15869:
        case -15868:
        case -15867:
        case -15866:
        case -15865:
        case -15864:
        case -15863:
        case -15862:
        case -15861:
        case -15860:
        case -15859:
        case -15858:
        case -15857:
        case -15856:
        case -15855:
        case -15854:
        case -15853:
        case -15852:
        case -15851:
        case -15850:
        case -15849:
        case -15848:
        case -15847:
        case -15846:
        case -15845:
        case -15844:
        case -15843:
        case -15842:
        case -15841:
        case -15840:
        case -15839:
        case -15838:
        case -15837:
        case -15836:
        case -15835:
        case -15834:
        case -15833:
        case -15832:
        case -15831:
        case -15830:
        case -15829:
        case -15828:
        case -15827:
        case -15826:
        case -15825:
        case -15824:
        case -15823:
        case -15822:
        case -15821:
        case -15820:
        case -15819:
        case -15818:
        case -15817:
        case -15816:
        case -15815:
        case -15814:
        case -15813:
        case -15812:
        case -15811:
        case -15810:
        case -15809:
        case -15808:
        case -15807:
        case -15806:
        case -15805:
        case -15804:
        case -15803:
        case -15802:
        case -15801:
        case -15800:
        case -15799:
        case -15798:
        case -15797:
        case -15796:
        case -15795:
        case -15794:
        case -15793:
        case -15792:
        case -15791:
        case -15790:
        case -15789:
        case -15788:
        case -15787:
        case -15786:
        case -15785:
        case -15784:
        case -15783:
        case -15782:
        case -15781:
        case -15780:
        case -15779:
        case -15778:
        case -15777:
        case -15776:
        case -15775:
        case -15774:
        case -15773:
        case -15772:
        case -15771:
        case -15770:
        case -15769:
        case -15768:
        case -15767:
        case -15766:
        case -15765:
        case -15764:
        case -15763:
        case -15762:
        case -15761:
        case -15760:
        case -15759:
        case -15758:
        case -15757:
        case -15756:
        case -15755:
        case -15754:
        case -15753:
        case -15752:
        case -15751:
        case -15750:
        case -15749:
        case -15748:
        case -15747:
        case -15746:
        case -15745:
        case -15744:
        case -15743:
        case -15742:
        case -15741:
        case -15740:
        case -15739:
        case -15738:
        case -15737:
        case -15736:
        case -15735:
        case -15734:
        case -15733:
        case -15732:
        case -15731:
        case -15730:
        case -15729:
        case -15728:
        case -15727:
        case -15726:
        case -15725:
        case -15724:
        case -15723:
        case -15722:
        case -15721:
        case -15720:
        case -15719:
        case -15718:
        case -15717:
        case -15716:
        case -15715:
        case -15714:
        case -15713:
        case -15712:
        case -15711:
        case -15710:
        case -15709:
        case -15708:
        case -15707:
        case -15706:
        case -15705:
        case -15704:
        case -15703:
        case -15702:
        case -15701:
        case -15700:
        case -15699:
        case -15698:
        case -15695:
        case -15693:
        case -15692:
        case -15691:
        case -15690:
        case -15689:
        case -15688:
        case -15685:
        case -15683:
        case -15680:
        case -15676:
        case -15675:
        case -15674:
        case -15673:
        case -15672:
        case -15671:
        case -15668:
        case -15666:
        case -15665:
        case -15664:
        case -15662:
        case -15661:
        case -15660:
        case -15659:
        case -15658:
        case -15657:
        case -15656:
        case -15655:
        case -15654:
        case -15653:
        case -15652:
        case -15651:
        case -15650:
        case -15649:
        case -15648:
        case -15647:
        case -15646:
        case -15645:
        case -15644:
        case -15643:
        case -15642:
        case -15641:
        case -15640:
        case -15639:
        case -15638:
        case -15637:
        case -15636:
        case -15635:
        case -15634:
        case -15633:
        case -15632:
        case -15631:
        case -15630:
        case -15629:
        case -15628:
        case -15627:
        case -15626:
        case -15625:
        case -15624:
        case -15623:
        case -15622:
        case -15621:
        case -15620:
        case -15619:
        case -15618:
        case -15615:
        case -15614:
        case -15613:
        case -15612:
        case -15610:
        case -15609:
        case -15608:
        case -15607:
        case -15606:
        case -15605:
        case -15604:
        case -15603:
        case -15602:
        case -15601:
        case -15600:
        case -15599:
        case -15598:
        case -15597:
        case -15596:
        case -15595:
        case -15594:
        case -15593:
        case -15592:
        case -15591:
        case -15590:
        case -15589:
        case -15588:
        case -15587:
        case -15586:
        case -15585:
        case -15584:
        case -15583:
        case -15582:
        case -15581:
        case -15580:
        case -15579:
        case -15578:
        case -15577:
        case -15576:
        case -15575:
        case -15570:
        case -15569:
        case -15568:
        case -15567:
        case -15566:
        case -15565:
        case -15564:
        case -15563:
        case -15562:
        case -15561:
        case -15560:
        case -15559:
        case -15558:
        case -15557:
        case -15556:
        case -15552:
        case -15551:
        case -15550:
        case -15549:
        case -15548:
        case -15547:
        case -15546:
        case -15545:
        case -15544:
        case -15541:
        case -15540:
        case -15539:
        case -15538:
        case -15537:
        case -15536:
        case -15535:
        case -15534:
        case -15533:
        case -15532:
        case -15531:
        case -15530:
        case -15529:
        case -15526:
        case -15525:
        case -15524:
        case -15523:
        case -15522:
        case -15521:
        case -15520:
        case -15519:
        case -15511:
        case -15509:
        case -15508:
        case -15506:
        case -15505:
        case -15504:
        case -15503:
        case -15502:
        case -15501:
        case -15500:
        case -15499:
        case -15498:
        case -15497:
        case -15496:
        case -15495:
        case -15494:
        case -15493:
        case -15492:
        case -15491:
        case -15490:
        case -15489:
        case -15488:
        case -15487:
        case -15486:
        case -15475:
        case -15474:
        case -15473:
        case -15472:
        case -15471:
        case -15470:
        case -15469:
        case -15468:
        case -15467:
        case -15466:
        case -15465:
        case -15464:
        case -15463:
        case -15462:
        case -15461:
        case -15460:
        case -15459:
        case -15458:
        case -15457:
        case -15456:
        case -15455:
        case -15454:
        case -15453:
        case -15452:
        case -15451:
        case -15450:
        case -15449:
        case -15448:
        case -15447:
        case -15446:
        case -15445:
        case -15444:
        case -15443:
        case -15442:
        case -15441:
        case -15440:
        case -15439:
        case -15438:
        case -15437:
        case -15436:
        case -15435:
        case -15434:
        case -15433:
        case -15432:
        case -15431:
        case -15430:
        case -15429:
        case -15428:
        case -15427:
        case -15426:
        case -15425:
        case -15424:
        case -15423:
        case -15422:
        case -15421:
        case -15420:
        case -15419:
        case -15418:
        case -15417:
        case -15416:
        case -15415:
        case -15414:
        case -15412:
        case -15411:
        case -15410:
        case -15406:
        case -15405:
        case -15404:
        case -15403:
        case -15401:
        case -15400:
        case -15399:
        case -15398:
        case -15397:
        case -15396:
        case -15395:
        case -15394:
        case -15393:
        case -15392:
        case -15391:
        case -15390:
        case -15389:
        case -15388:
        case -15387:
        case -15386:
        case -15385:
        case -15384:
        case -15383:
        case -15382:
        case -15381:
        case -15366:
        case -15365:
        case -15364:
        case -15363:
        case -15362:
        case -15361:
        case -15360:
        case -15359:
        case -15358:
        case -15357:
        case -15356:
        case -15355:
        case -15354:
        case -15353:
        case -15352:
        case -15351:
        case -15350:
        case -15349:
        case -15348:
        case -15347:
        case -15346:
        case -15345:
        case -15344:
        case -15343:
        case -15342:
        case -15341:
        case -15340:
        case -15339:
        case -15338:
        case -15337:
        case -15336:
        case -15335:
        case -15334:
        case -15333:
        case -15332:
        case -15331:
        case -15330:
        case -15329:
        case -15328:
        case -15327:
        case -15325:
        case -15324:
        case -15323:
        case -15322:
        case -15321:
        case -15320:
        case -15319:
        case -15318:
        case -15317:
        case -15316:
        case -15315:
        case -15314:
        case -15313:
        case -15312:
        case -15311:
        case -15310:
        case -15309:
        case -15308:
        case -15307:
        case -15306:
        case -15305:
        case -15304:
        case -15303:
        case -15302:
        case -15301:
        case -15300:
        case -15299:
        case -15298:
        case -15297:
        case -15296:
        case -15295:
        case -15294:
        case -15293:
        case -15292:
        case -15291:
        case -15290:
        case -15289:
        case -15288:
        case -15287:
        case -15285:
        case -15284:
        case -15283:
        case -15282:
        case -15281:
        case -15280:
        case -15279:
        case -15278:
        case -15277:
        case -15276:
        case -15275:
        case -15274:
        case -15273:
        case -15272:
        case -15270:
        case -15267:
        case -15266:
        case -15265:
        case -15264:
        case -15263:
        case -15262:
        case -15261:
        case -15260:
        case -15259:
        case -15258:
        case -15257:
        case -15255:
        case -15254:
        case -15253:
        case -15252:
        case -15251:
        case -15250:
        case -15249:
        case -15246:
        case -15245:
        case -15242:
        case -15241:
        case -15240:
        case -15239:
        case -15238:
        case -15237:
        case -15236:
        case -15235:
        case -15234:
        case -15233:
        case -15232:
        case -15231:
        case -15230:
        case -15229:
        case -15228:
        case -15227:
        case -15226:
        case -15225:
        case -15224:
        case -15223:
        case -15220:
        case -15219:
        case -15218:
        case -15217:
        case -15212:
        case -15211:
        case -15210:
        case -15209:
        case -15208:
        case -15207:
        case -15206:
        case -15205:
        case -15204:
        case -15200:
        case -15198:
        case -15197:
        case -15196:
        case -15195:
        case -15194:
        case -15190:
        case -15189:
        case -15182:
        case -15181:
        case -15180:
        case -15179:
        case -15178:
        case -15176:
        case -15175:
        case -15174:
        case -15173:
        case -15172:
        case -15171:
        case -15170:
        case -15169:
        case -15168:
        case -15167:
        case -15166:
        case -15165:
        case -15164:
        case -15163:
        case -15162:
        case -15161:
        case -15160:
        case -15158:
        case -15157:
        case -15156:
        case -15155:
        case -15154:
        case -15153:
        case -15152:
        case -15151:
        case -15150:
        case -15149:
        case -15146:
        case -15143:
        case -15142:
        case -15141:
        case -15140:
        case -15139:
        case -15138:
        case -15137:
        case -15136:
        case -15135:
        case -15134:
        case -15131:
        case -15130:
        case -15128:
        case -15127:
        case -15119:
        case -15118:
        case -15117:
        case -15115:
        case -15114:
        case -15113:
        case -15112:
        case -15111:
        case -15109:
        case -15108:
        case -15107:
        case -15106:
        case -15105:
        case -15104:
        case -15100:
        case -15096:
        case -15095:
        case -15094:
        case -15093:
        case -15092:
        case -15091:
        case -15089:
        case -15088:
        case -15086:
        case -15085:
        case -15084:
        case -15083:
        case -15082:
        case -15081:
        case -15076:
        case -15075:
        case -15068:
        case -15060:
        case -15059:
        case -15058:
        case -15057:
        case -15056:
        case -15055:
        case -15054:
        case -15053:
        case -15052:
        case -15051:
        case -15050:
        case -15049:
        case -15048:
        case -15047:
        case -15044:
        case -15043:
        case -15042:
        case -15041:
        case -15040:
        case -15039:
        case -15038:
        case -15037:
        case -15036:
        case -15035:
        case -15034:
        case -15033:
        case -15032:
        case -15031:
        case -15030:
        case -15029:
        case -15028:
        case -15027:
        case -15026:
        case -15025:
        case -15024:
        case -15023:
        case -15022:
        case -15021:
        case -15020:
        case -15019:
        case -15018:
        case -15017:
        case -15016:
        case -14999:
        case -14998:
        case -14997:
        case -14976:
        case -14973:
        case -14972:
        case -14971:
        case -14970:
        case -14969:
        case -14968:
        case -14966:
        case -14965:
        case -14963:
        case -14960:
        case -14959:
        case -14958:
        case -14957:
        case -14956:
        case -14954:
        case -14952:
        case -14950:
        case -14949:
        case -14948:
        case -14947:
        case -14946:
        case -14945:
        case -14944:
        case -14943:
        case -14942:
        case -14941:
        case -14940:
        case -14939:
        case -14938:
        case -14935:
        case -14933:
        case -14932:
        case -14930:
        case -14928:
        case -14927:
        case -14926:
        case -14925:
        case -14924:
        case -14923:
        case -14922:
        case -14921:
        case -14920:
        case -14919:
        case -14918:
        case -14917:
        case -14916:
        case -14915:
        case -14914:
        case -14913:
        case -14912:
        case -14911:
        case -14910:
        case -14909:
        case -14908:
        case -14907:
        case -14906:
        case -14905:
        case -14904:
        case -14903:
        case -14902:
        case -14901:
        case -14900:
        case -14899:
        case -14898:
        case -14897:
        case -14896:
        case -14895:
        case -14894:
        case -14893:
        case -14892:
        case -14891:
        case -14890:
        case -14889:
        case -14888:
        case -14887:
        case -14886:
        case -14885:
        case -14884:
        case -14879:
        case -14878:
        case -14877:
        case -14876:
        case -14875:
        case -14874:
        case -14873:
        case -14872:
        case -14871:
        case -14870:
        case -14869:
        case -14868:
        case -14867:
        case -14866:
        case -14865:
        case -14864:
        case -14863:
        case -14862:
        case -14861:
        case -14860:
        case -14859:
        case -14858:
        case -14857:
        case -14856:
        case -14855:
        case -14854:
        case -14853:
        case -14852:
        case -14851:
        case -14850:
        case -14849:
        case -14848:
        case -14847:
        case -14846:
        case -14845:
        case -14844:
        case -14843:
        case -14842:
        case -14841:
        case -14840:
        case -14839:
        case -14838:
        case -14837:
        case -14836:
        case -14835:
        case -14834:
        case -14833:
        case -14832:
        case -14831:
        case -14830:
        case -14829:
        case -14828:
        case -14827:
        case -14826:
        case -14825:
        case -14824:
        case -14823:
        case -14822:
        case -14819:
        case -14818:
        case -14816:
        case -14815:
        case -14814:
        case -14813:
        case -14812:
        case -14811:
        case -14810:
        case -14809:
        case -14808:
        case -14807:
        case -14806:
        case -14805:
        case -14804:
        case -14803:
        case -14802:
        case -14801:
        case -14800:
        case -14799:
        case -14798:
        case -14797:
        case -14796:
        case -14795:
        case -14794:
          return result;
        case -15697:
        case -15696:
        case -15694:
        case -15687:
        case -15686:
        case -15684:
        case -15682:
        case -15681:
        case -15679:
        case -15678:
        case -15677:
        case -15670:
        case -15669:
        case -15667:
        case -15663:
        case -15617:
        case -15616:
        case -15611:
        case -15574:
        case -15573:
        case -15572:
        case -15571:
        case -15555:
        case -15554:
        case -15553:
        case -15543:
        case -15542:
        case -15528:
        case -15527:
        case -15518:
        case -15517:
        case -15516:
        case -15515:
        case -15514:
        case -15513:
        case -15512:
        case -15510:
        case -15507:
        case -15485:
        case -15484:
        case -15483:
        case -15482:
        case -15481:
        case -15480:
        case -15479:
        case -15478:
        case -15477:
        case -15476:
        case -15413:
        case -15409:
        case -15408:
        case -15407:
        case -15402:
        case -15380:
        case -15379:
        case -15378:
        case -15377:
        case -15376:
        case -15375:
        case -15374:
        case -15373:
        case -15372:
        case -15371:
        case -15370:
        case -15369:
        case -15368:
        case -15367:
        case -15326:
        case -15286:
        case -15271:
        case -15269:
        case -15268:
        case -15256:
        case -15248:
        case -15247:
        case -15244:
        case -15243:
        case -15222:
        case -15221:
        case -15216:
        case -15215:
        case -15214:
        case -15213:
        case -15203:
        case -15202:
        case -15201:
        case -15199:
        case -15193:
        case -15192:
        case -15191:
        case -15188:
        case -15187:
        case -15186:
        case -15185:
        case -15184:
        case -15183:
        case -15177:
        case -15159:
        case -15148:
        case -15147:
        case -15145:
        case -15144:
        case -15133:
        case -15132:
        case -15129:
        case -15126:
        case -15125:
        case -15124:
        case -15123:
        case -15122:
        case -15121:
        case -15120:
        case -15116:
        case -15110:
        case -15103:
        case -15102:
        case -15101:
        case -15099:
        case -15098:
        case -15097:
        case -15090:
        case -15087:
        case -15080:
        case -15079:
        case -15078:
        case -15077:
        case -15074:
        case -15073:
        case -15072:
        case -15071:
        case -15070:
        case -15069:
        case -15067:
        case -15066:
        case -15065:
        case -15064:
        case -15063:
        case -15062:
        case -15061:
        case -15046:
        case -15045:
        case -15015:
        case -15014:
        case -15013:
        case -15012:
        case -15011:
        case -15010:
        case -15009:
        case -15008:
        case -15007:
        case -15006:
        case -15005:
        case -15004:
        case -15003:
        case -15002:
        case -15001:
        case -15000:
        case -14996:
        case -14995:
        case -14994:
        case -14993:
        case -14992:
        case -14991:
        case -14990:
        case -14989:
        case -14988:
        case -14987:
        case -14986:
        case -14985:
        case -14984:
        case -14983:
        case -14982:
        case -14981:
        case -14980:
        case -14979:
        case -14978:
        case -14977:
        case -14975:
        case -14974:
        case -14967:
        case -14964:
        case -14962:
        case -14961:
        case -14955:
        case -14953:
        case -14951:
        case -14937:
        case -14936:
        case -14934:
        case -14931:
        case -14929:
        case -14883:
        case -14882:
        case -14881:
        case -14880:
        case -14821:
        case -14820:
        case -14817:
          return 0;
        default:
          if ((a1 + 18432) >= 0xB)
          {
            return 0;
          }

          break;
      }

      return result;
    }

    if ((a1 + 20376) >= 0x3F)
    {
      v3 = (a1 + 20480);
      if (v3 > 0x34 || v3 == 33)
      {
        v4 = (a1 + 20426);
        if (v4 > 0x30 || v4 == 18)
        {
          return 0;
        }
      }
    }
  }

  return result;
}