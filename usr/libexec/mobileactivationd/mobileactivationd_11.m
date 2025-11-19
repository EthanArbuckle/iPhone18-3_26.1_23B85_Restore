id copy_sfr_manifest()
{
  v0 = +[DeviceType sharedInstance];
  v1 = [@"IODeviceTree" stringByAppendingString:@":/chosen/iBoot"];
  v2 = [(DeviceType *)v0 copyDeviceTreeInt:v1 key:@"sfr-manifest-size" defaultValue:0];

  if (!v2 || ![v2 unsignedIntValue])
  {
    v6 = 0;
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v3 = +[DeviceType sharedInstance];
  v4 = [@"IODeviceTree" stringByAppendingString:@":/chosen/iBoot"];
  v5 = [(DeviceType *)v3 copyDeviceTreeProperty:v4 key:@"sfr-manifest-data"];

  v6 = isNSData(v5);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v5 length];

  if (v7)
  {
    v6 = [v5 subdataWithRange:{0, objc_msgSend(v2, "unsignedIntValue")}];

    if (v6)
    {
      v6 = v6;
      v5 = v6;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

BOOL bridge_init_server(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_queue_create("com.apple.mobileactivationd.bridge", 0);
  [@"com.apple.mobileactivationd.bridge" UTF8String];
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();
  if (remote_service_listener)
  {
    v8 = v4;
    v9 = v3;
    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
  }

  else
  {
    maLog("bridge_init_server", 0, @"Failed to create remote listener.");
  }

  return remote_service_listener != 0;
}

void __bridge_init_server_block_invoke(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_remote_connection)
  {
    xpc_remote_connection_set_target_queue();
    v5 = *(a1 + 40);
    v6 = v3;
    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
  }

  else
  {
    v4 = xpc_copy_description(v3);
    maLog("bridge_init_server_block_invoke", 0, @"Unexpected event: %s", v4);
    if (v4)
    {
      free(v4);
    }
  }
}

void __bridge_init_server_block_invoke_2(uint64_t a1, id a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v10 = 0;
    v11 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_33;
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v4 = @"Error";
    MobileActivationError = createMobileActivationError("bridge_init_server_block_invoke_2", 126, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid XPC message.");
LABEL_4:
    v6 = MobileActivationError;
    v43 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v27 = xpc_dictionary_get_value(v3, [@"BridgeXPCRequestEncodedDictionary" UTF8String]);
  if (!v27)
  {
    v4 = @"Error";
    MobileActivationError = createMobileActivationError("bridge_init_server_block_invoke_2", 133, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"XPC message missing key (%@) : %@", @"BridgeXPCRequestEncodedDictionary", v3);
    goto LABEL_4;
  }

  v28 = v27;
  v7 = _CFXPCCreateCFObjectFromXPCObject();
  v29 = isNSDictionary(v7);

  v43 = v28;
  if (v29)
  {
    v30 = [v7 objectForKeyedSubscript:@"HostProcessName"];
    v31 = isNSString(v30);

    if (!v31)
    {

      v30 = @"unknown";
    }

    v32 = [*(a1 + 32) dark];
    data_ark_set(v32, 0, @"HostProcessName", v30, 0);

    v33 = [v7 objectForKeyedSubscript:@"Command"];
    v34 = isNSString(v33);

    v40 = v33;
    v41 = v30;
    if (v34)
    {
      v35 = [v7 objectForKeyedSubscript:@"Options"];
      v39 = v35;
      if (v35 && (v36 = isNSDictionary(v35), v36, !v36))
      {
        v4 = @"Error";
        v37 = createMobileActivationError("bridge_init_server_block_invoke_2", 161, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid key: %@", @"Options");
      }

      else
      {
        maLog("bridge_init_server_block_invoke_2", 0, @"Host connection (%@): %@", v30, v33);
        v4 = @"Error";
        v37 = createMobileActivationError("bridge_init_server_block_invoke_2", 432, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Received unknown command: %@", v33);
      }

      v6 = v37;
    }

    else
    {
      v4 = @"Error";
      v6 = createMobileActivationError("bridge_init_server_block_invoke_2", 154, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Request missing required key: %@", @"Command");
      v39 = 0;
    }

    goto LABEL_6;
  }

  v4 = @"Error";
  v6 = createMobileActivationError("bridge_init_server_block_invoke_2", 140, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary from XPC message.");
LABEL_5:
  v39 = 0;
  v40 = 0;
  v41 = 0;
LABEL_6:
  v8 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v11 = v6;
  if ([(__CFString *)v10 isEqualToString:v10])
  {
    maLog("send_reply", 0, @"Error occurred processing host-bridge request: %@", v11);
  }

  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v42 = v7;
  if (v12)
  {
    v13 = &__NSDictionary0__struct;
    p_isa = &v11->super.isa;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    p_isa = &v11->super.isa;
    if (isKindOfClass)
    {
      v21 = [(NSError *)v11 localizedDescription];
      v22 = [(NSError *)v11 userInfo];
      p_isa = [NSString stringWithFormat:@"%@ (%@)", v21, v22];
    }

    v44 = v10;
    v45 = p_isa;
    v13 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  }

  v23 = _CFXPCCreateXPCObjectFromCFObject();
  if (v23)
  {
    v24 = a1;
    reply = xpc_dictionary_create_reply(v9);
    if (reply)
    {
      v26 = reply;
      xpc_dictionary_set_value(reply, [@"BridgeXPCResponseEncodedDictionary" UTF8String], v23);
      xpc_remote_connection_send_message();
    }

    else
    {
      maLog("send_reply", 0, @"Failed to create XPC reply.");
    }

    a1 = v24;
  }

  else
  {
    maLog("send_reply", 0, @"Failed to create XPC dictionary.");
  }

  v18 = v42;
  v19 = v43;
  v17 = v40;
  v15 = v41;
  v16 = v39;
LABEL_33:
  v38 = [*(a1 + 32) dark];
  data_ark_remove(v38, 0, @"HostProcessName");
}

uint64_t copyRTCResetCount()
{
  if (&_TMGetRTCResetCount)
  {
    return TMGetRTCResetCount();
  }

  else
  {
    return 0;
  }
}

NSError *parseDERCertificatesFromChain(void *a1, NSError **a2)
{
  v3 = a1;
  v4 = v3;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  if (!v3)
  {
    MobileActivationError = createMobileActivationError("parseDERCertificatesFromChain", 106, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
LABEL_11:
    v7 = MobileActivationError;
    v8 = 0;
    goto LABEL_12;
  }

  v5 = [v3 bytes];
  v6 = CTParseCertificateSet(v5, [v4 length] + v5, v15, 3, &v14);
  if (v6 || !v14)
  {
    MobileActivationError = createMobileActivationError("parseDERCertificatesFromChain", 115, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to parse certificate set: 0x%08x", v6);
    goto LABEL_11;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = v7;
  if (v7)
  {
    if (v14)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = [[NSData alloc] initWithBytes:*&v15[v9] length:*(&v15[v9] + 1)];
        [(NSError *)v8 setObject:v11 atIndexedSubscript:v9];

        v9 = ++v10;
      }

      while (v14 > v10);
    }

    v8 = v8;
    v7 = 0;
  }

LABEL_12:
  if (a2 && !v8)
  {
    v7 = v7;
    *a2 = v7;
  }

  return v8;
}

uint64_t evaluateUCRTTrust(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = CTEvaluateUcrtTestRoot([v5 bytes], objc_msgSend(v5, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), 0, 0);
    if (!v7)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_9;
    }

    MobileActivationError = createMobileActivationError("evaluateUCRTTrust", 153, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to evaluate trust: 0x%08x", v7);
  }

  else
  {
    MobileActivationError = createMobileActivationError("evaluateUCRTTrust", 147, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  }

  v9 = MobileActivationError;
  if (a3)
  {
    v9 = v9;
    v10 = 0;
    *a3 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

uint64_t evaluateUCRTTrustWithCerts(__SecCertificate *a1, __SecCertificate *a2, __SecCertificate *a3, int a4, id a5, NSError **a6)
{
  v11 = a5;
  v12 = v11;
  error = 0;
  if (!a1 || !a2 || !a3)
  {
    MobileActivationError = createMobileActivationError("evaluateUCRTTrustWithCerts", 180, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
LABEL_20:
    v20 = MobileActivationError;
    v14 = 0;
LABEL_21:
    v17 = 0;
LABEL_22:
    v15 = 0;
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  if (v11)
  {
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = +[NSDate date];
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  [(NSDate *)v12 timeIntervalSinceReferenceDate];
  if (!SecCertificateIsValid() || ([(NSDate *)v12 timeIntervalSinceReferenceDate], (SecCertificateIsValid() & 1) == 0))
  {
    MobileActivationError = createMobileActivationError("evaluateUCRTTrustWithCerts", 196, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Certificate is expired.");
    goto LABEL_20;
  }

LABEL_11:
  v14 = objc_alloc_init(NSMutableData);
  if (!v14)
  {
    v20 = createMobileActivationError("evaluateUCRTTrustWithCerts", 205, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.");
    goto LABEL_21;
  }

  v15 = SecCertificateCopyData(a1);
  if (!v15)
  {
    v20 = createMobileActivationError("evaluateUCRTTrustWithCerts", 211, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    v17 = 0;
    goto LABEL_23;
  }

  [v14 appendData:v15];
  v16 = SecCertificateCopyData(a2);

  if (!v16)
  {
    v20 = createMobileActivationError("evaluateUCRTTrustWithCerts", 219, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    v17 = 0;
LABEL_36:
    v15 = 0;
    goto LABEL_24;
  }

  [v14 appendData:v16];
  v17 = SecCertificateCopyData(a3);

  if (!v17)
  {
    v20 = createMobileActivationError("evaluateUCRTTrustWithCerts", 227, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    goto LABEL_22;
  }

  [v14 appendData:v17];
  v18 = SecCertificateCopyKey(a3);
  v16 = v18;
  if (!v18)
  {
    v20 = createMobileActivationError("evaluateUCRTTrustWithCerts", 241, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy public key.");
    goto LABEL_36;
  }

  v15 = SecKeyCopyExternalRepresentation(v18, &error);
  if (v15)
  {
    v26 = 0;
    v19 = evaluateUCRTTrust(v14, v15, &v26);
    v20 = v26;
    if (v19)
    {
      v21 = 1;
LABEL_27:
      CFRelease(v16);
      v23 = v21;
      goto LABEL_28;
    }

    v25 = createMobileActivationError("evaluateUCRTTrustWithCerts", 254, @"com.apple.MobileActivation.ErrorDomain", -1, v20, @"Failed to verify UCRT.");

    v20 = v25;
  }

  else
  {
    v20 = createMobileActivationError("evaluateUCRTTrustWithCerts", 247, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy public key data.");
  }

LABEL_24:
  if (a6)
  {
    v22 = v20;
    *a6 = v20;
  }

  v21 = 0;
  v23 = 0;
  if (v16)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (error)
  {
    CFRelease(error);
  }

  return v23;
}

uint64_t evaluateBAATrust(void *a1, void *a2, int a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  if (v7)
  {
    v9 = [v7 bytes];
    v10 = [v7 length];
    v11 = [v8 bytes];
    v12 = [v8 length];
    if (a3)
    {
      v13 = CTEvaluateBAASystemTestRoot(v9, v10, v11, v12, 0, 0, 0);
      if (v13)
      {
LABEL_4:
        MobileActivationError = createMobileActivationError("evaluateBAATrust", 290, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to evaluate trust: 0x%08x", v13);
        goto LABEL_6;
      }
    }

    else
    {
      v13 = CTEvaluateBAAUserTestRoot(v9, v10, v11, v12, 0, 0, 0);
      if (v13)
      {
        goto LABEL_4;
      }
    }

    v15 = 0;
    v16 = 1;
    goto LABEL_11;
  }

  MobileActivationError = createMobileActivationError("evaluateBAATrust", 280, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
LABEL_6:
  v15 = MobileActivationError;
  if (a4)
  {
    v15 = v15;
    v16 = 0;
    *a4 = v15;
  }

  else
  {
    v16 = 0;
  }

LABEL_11:

  return v16;
}

uint64_t evaluateBAATrustWithCerts(__SecCertificate *a1, __SecCertificate *a2, __SecCertificate *a3, int a4, int a5, id a6, NSError **a7)
{
  v13 = a6;
  v14 = v13;
  error = 0;
  if (!a1 || !a2 || !a3)
  {
    MobileActivationError = createMobileActivationError("evaluateBAATrustWithCerts", 317, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
LABEL_20:
    v24 = MobileActivationError;
    v16 = 0;
LABEL_24:
    v20 = 0;
LABEL_25:
    v19 = 0;
LABEL_26:
    v22 = 0;
    goto LABEL_27;
  }

  if (v13)
  {
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = +[NSDate date];
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  [(NSDate *)v14 timeIntervalSinceReferenceDate];
  if (!SecCertificateIsValid() || ([(NSDate *)v14 timeIntervalSinceReferenceDate], (SecCertificateIsValid() & 1) == 0))
  {
    MobileActivationError = createMobileActivationError("evaluateBAATrustWithCerts", 333, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Certificate is expired.");
    goto LABEL_20;
  }

LABEL_11:
  v16 = objc_alloc_init(NSMutableData);
  if (!v16)
  {
    v26 = createMobileActivationError("evaluateBAATrustWithCerts", 342, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.");
LABEL_23:
    v24 = v26;
    goto LABEL_24;
  }

  v17 = SecCertificateCopyData(a1);
  if (!v17)
  {
    v26 = createMobileActivationError("evaluateBAATrustWithCerts", 348, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    goto LABEL_23;
  }

  v18 = v17;
  [v16 appendData:v17];
  v19 = SecCertificateCopyData(a2);

  if (!v19)
  {
    v24 = createMobileActivationError("evaluateBAATrustWithCerts", 356, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    v20 = 0;
    goto LABEL_26;
  }

  [v16 appendData:v19];
  v20 = SecCertificateCopyData(a3);

  if (!v20)
  {
    v24 = createMobileActivationError("evaluateBAATrustWithCerts", 364, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    goto LABEL_25;
  }

  [v16 appendData:v20];
  v21 = SecCertificateCopyKey(a3);
  v22 = v21;
  if (v21)
  {
    v19 = SecKeyCopyExternalRepresentation(v21, &error);
    if (v19)
    {
      v31 = 0;
      v23 = evaluateBAATrust(v16, v19, a4, &v31);
      v24 = v31;
      if (v23)
      {
        v25 = 1;
LABEL_30:
        CFRelease(v22);
        v28 = v25;
        goto LABEL_31;
      }

      v30 = createMobileActivationError("evaluateBAATrustWithCerts", 391, @"com.apple.MobileActivation.ErrorDomain", -1, v24, @"Failed to verify BAA certificate.");

      v24 = v30;
    }

    else
    {
      v24 = createMobileActivationError("evaluateBAATrustWithCerts", 384, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy public key data.");
    }
  }

  else
  {
    v24 = createMobileActivationError("evaluateBAATrustWithCerts", 378, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy public key.");
    v19 = 0;
  }

LABEL_27:
  if (a7)
  {
    v27 = v24;
    *a7 = v24;
  }

  v25 = 0;
  v28 = 0;
  if (v22)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (error)
  {
    CFRelease(error);
  }

  return v28;
}

uint64_t evaluateAppleSSLTrust(void *a1, void *a2, uint64_t a3, NSError **a4)
{
  v7 = a1;
  v8 = a2;
  if (v7)
  {
    v9 = 1;
    v10 = CTEvaluateAppleSSLWithOptionalTemporalCheck([v7 bytes], objc_msgSend(v7, "length"), objc_msgSend(v8, "UTF8String"), objc_msgSend(v8, "length"), a3, 0, 1);
    if (!v10)
    {
      v12 = 0;
      goto LABEL_9;
    }

    MobileActivationError = createMobileActivationError("evaluateAppleSSLTrust", 430, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to evaluate trust: 0x%08x", v10);
  }

  else
  {
    MobileActivationError = createMobileActivationError("evaluateAppleSSLTrust", 418, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  }

  v12 = MobileActivationError;
  if (a4)
  {
    v12 = v12;
    v9 = 0;
    *a4 = v12;
  }

  else
  {
    v9 = 0;
  }

LABEL_9:

  return v9;
}

uint64_t evaluateAccessoryTrust(void *a1, void *a2, uint64_t a3, NSError **a4)
{
  v6 = a1;
  v7 = a2;
  if (v6)
  {
    v8 = CTEvaluateBAAAccessory([v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"), 0, 0, 0, 0);
    if (!v8)
    {
      v10 = 0;
      v11 = 1;
      goto LABEL_9;
    }

    MobileActivationError = createMobileActivationError("evaluateAccessoryTrust", 459, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to evaluate trust: 0x%08x", v8);
  }

  else
  {
    MobileActivationError = createMobileActivationError("evaluateAccessoryTrust", 453, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  }

  v10 = MobileActivationError;
  if (a4)
  {
    v10 = v10;
    v11 = 0;
    *a4 = v10;
  }

  else
  {
    v11 = 0;
  }

LABEL_9:

  return v11;
}

uint64_t evaluateAccessoryTrustWithCerts(__SecCertificate *a1, __SecCertificate *a2, __SecCertificate *a3, int a4, int a5, id a6, NSError **a7)
{
  v12 = a6;
  v13 = v12;
  error = 0;
  if (!a1 || !a2 || !a3)
  {
    MobileActivationError = createMobileActivationError("evaluateAccessoryTrustWithCerts", 486, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
LABEL_20:
    v21 = MobileActivationError;
    v15 = 0;
LABEL_21:
    v18 = 0;
LABEL_22:
    v16 = 0;
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  if (v12)
  {
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = +[NSDate date];
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  [(NSDate *)v13 timeIntervalSinceReferenceDate];
  if (!SecCertificateIsValid() || ([(NSDate *)v13 timeIntervalSinceReferenceDate], (SecCertificateIsValid() & 1) == 0))
  {
    MobileActivationError = createMobileActivationError("evaluateAccessoryTrustWithCerts", 502, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Certificate is expired.");
    goto LABEL_20;
  }

LABEL_11:
  v15 = objc_alloc_init(NSMutableData);
  if (!v15)
  {
    v21 = createMobileActivationError("evaluateAccessoryTrustWithCerts", 511, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.");
    goto LABEL_21;
  }

  v16 = SecCertificateCopyData(a1);
  if (!v16)
  {
    v21 = createMobileActivationError("evaluateAccessoryTrustWithCerts", 517, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    v18 = 0;
    goto LABEL_23;
  }

  [v15 appendData:v16];
  v17 = SecCertificateCopyData(a2);

  if (!v17)
  {
    v21 = createMobileActivationError("evaluateAccessoryTrustWithCerts", 525, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    v18 = 0;
LABEL_36:
    v16 = 0;
    goto LABEL_24;
  }

  [v15 appendData:v17];
  v18 = SecCertificateCopyData(a3);

  if (!v18)
  {
    v21 = createMobileActivationError("evaluateAccessoryTrustWithCerts", 533, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.");
    goto LABEL_22;
  }

  [v15 appendData:v18];
  v19 = SecCertificateCopyKey(a3);
  v17 = v19;
  if (!v19)
  {
    v21 = createMobileActivationError("evaluateAccessoryTrustWithCerts", 547, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy public key.");
    goto LABEL_36;
  }

  v16 = SecKeyCopyExternalRepresentation(v19, &error);
  if (v16)
  {
    v27 = 0;
    v20 = evaluateAccessoryTrust(v15, v16, 0, &v27);
    v21 = v27;
    if (v20)
    {
      v22 = 1;
LABEL_27:
      CFRelease(v17);
      v24 = v22;
      goto LABEL_28;
    }

    v26 = createMobileActivationError("evaluateAccessoryTrustWithCerts", 560, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Failed to verify MFi certificate.");

    v21 = v26;
  }

  else
  {
    v21 = createMobileActivationError("evaluateAccessoryTrustWithCerts", 553, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy public key data.");
  }

LABEL_24:
  if (a7)
  {
    v23 = v21;
    *a7 = v21;
  }

  v22 = 0;
  v24 = 0;
  if (v17)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (error)
  {
    CFRelease(error);
  }

  return v24;
}

uint64_t FindMyRemoveActivationLock(uint64_t a1, uint64_t a2, NSError **a3)
{
  v4 = createMobileActivationError("FindMyRemoveActivationLock", 404, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Operation not supported on this platform.");
  if (a3)
  {
    v4 = v4;
    *a3 = v4;
  }

  return 0;
}

id FindMyCopyMaskedActivationLockUserName(void *a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v2 = dispatch_semaphore_create(0);
  if (!v2)
  {
    v7 = createMobileActivationError("_FindMyCopyMaskedActivationLockUserNameiOS", 312, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create semaphore.");
LABEL_10:
    v8 = v22[5];
    v22[5] = v7;

    goto LABEL_11;
  }

  if (!objc_opt_class())
  {
    v7 = createMobileActivationError("_FindMyCopyMaskedActivationLockUserNameiOS", 317, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"FindMyDevice is not supported on this platform.");
    goto LABEL_10;
  }

  v3 = +[FMDFMIPManager sharedInstance];

  if (!v3)
  {
    v7 = createMobileActivationError("_FindMyCopyMaskedActivationLockUserNameiOS", 322, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to load FMDFMMManager class.");
    goto LABEL_10;
  }

  v4 = +[FMDFMIPManager sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3254779904;
  v11[2] = ___FindMyCopyMaskedActivationLockUserNameiOS_block_invoke;
  v11[3] = &__block_descriptor_56_e8_32s40r48r_e43_v24__0__FMDActivationLockInfo_8__NSError_16l;
  v13 = &v21;
  v14 = &v15;
  v5 = v2;
  v12 = v5;
  [(FMDFMIPManager *)v4 activationLockInfoFromDeviceWithCompletion:v11];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (!v22[5])
  {
    v6 = v16[5];
    if (!a1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!v6)
  {
    *a1 = v22[5];
  }

LABEL_14:
  v9 = v6;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v9;
}

void sub_1002F8884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t FindMyDeviceIsActivationLocked(void *a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  if (!v2)
  {
    v7 = createMobileActivationError("_FindMyDeviceIsActivationLockediOS", 249, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create semaphore.");
LABEL_10:
    v8 = v19[5];
    v19[5] = v7;

LABEL_11:
    v6 = 0;
    if (!a1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!objc_opt_class())
  {
    v7 = createMobileActivationError("_FindMyDeviceIsActivationLockediOS", 254, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"FindMyDevice is not supported on this platform.");
    goto LABEL_10;
  }

  v3 = +[FMDFMIPManager sharedInstance];

  if (!v3)
  {
    v7 = createMobileActivationError("_FindMyDeviceIsActivationLockediOS", 259, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to load FMDFMMManager class.");
    goto LABEL_10;
  }

  v4 = +[FMDFMIPManager sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3254779904;
  v10[2] = ___FindMyDeviceIsActivationLockediOS_block_invoke;
  v10[3] = &__block_descriptor_56_e8_32s40r48r_e20_v20__0B8__NSError_12l;
  v12 = &v18;
  v13 = &v14;
  v5 = v2;
  v11 = v5;
  [(FMDFMIPManager *)v4 isActivationLockEnabledWithCompletion:v10];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v19[5])
  {
    goto LABEL_11;
  }

  v6 = *(v15 + 24);
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v6 & 1) == 0)
  {
    *a1 = v19[5];
  }

LABEL_14:

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v6 & 1;
}

void sub_1002F8B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

BOOL FindMyDeviceIsEnabled(NSError **a1)
{
  if (!objc_opt_class())
  {
    MobileActivationError = createMobileActivationError("_FindMyDeviceIsEnablediOS", 370, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"FindMyDevice is not supported on this platform.");
    goto LABEL_7;
  }

  v2 = +[FMDFMIPManager sharedInstance];
  if (!v2)
  {
    MobileActivationError = createMobileActivationError("_FindMyDeviceIsEnablediOS", 376, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate FMIP manager.");
LABEL_7:
    v6 = MobileActivationError;
    v5 = 0;
    if (!a1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v3 = v2;
  v4 = [(FMDFMIPManager *)v2 fmipAccount];
  v5 = v4 != 0;

  v6 = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v5)
  {
    v6 = v6;
    *a1 = v6;
  }

LABEL_10:

  return v5;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void post_notification(void *a1)
{
  if (a1)
  {
    v1 = a1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v1, v1, 0, 1u);
  }
}

uint64_t store_fairplay_blob(void *a1, void *a2, NSError **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = isNSData(v6);

  if (!v7)
  {
    v11 = createMobileActivationError("store_fairplay_blob", 103, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v8 = 0;
    goto LABEL_7;
  }

  v31 = 0;
  v8 = lockcrypto_decode_pem(v6, "CONTAINER", &v31);
  v9 = v31;
  if (!v8)
  {
    v11 = createMobileActivationError("store_fairplay_blob", 109, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to decode fairplay data.");

LABEL_7:
    v12 = 0;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_27;
  }

  v30 = a3;
  v29 = data_ark_copy(v5, @"com.apple.fairplay", @"FairPlayContextID");
  v10 = isNSNumber(v29);

  if (!v10)
  {
    v15 = 1;
    while (1)
    {
      v16 = v5;
      memset(v33, 0, sizeof(v33));
      v32 = 0;
      v17 = 0;
      v18 = v9;
      if (!is_product_fpga())
      {
        break;
      }

LABEL_19:

      v11 = v18;
      v23 = v17 & v15;
      v9 = v11;
      v15 = 0;
      if ((v23 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    zxcm2Qme0x(0, 0, v33);
    if (v19)
    {
      MobileActivationError = createMobileActivationError("create_fairplay_context", 56, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query fairplay HW info: %ld", v19);
    }

    else
    {
      v21 = XtCqEf5X(0, v33, "/private/var/mobile/Media/iTunes_Control/iTunes", &v32);
      if (!v21 && v32)
      {
        v22 = [NSNumber numberWithUnsignedInt:?];
        data_ark_set(v16, @"com.apple.fairplay", @"FairPlayContextID", v22, 0);
        v17 = 0;
        v18 = v9;
LABEL_18:

        goto LABEL_19;
      }

      MobileActivationError = createMobileActivationError("create_fairplay_context", 62, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to initialize fairplay context: %ld", v21);
    }

    v22 = MobileActivationError;
    v17 = 1;
    v18 = v22;
    goto LABEL_18;
  }

  v11 = v9;
LABEL_20:
  v12 = data_ark_copy(v5, @"com.apple.fairplay", @"FairPlayContextID");

  v24 = isNSNumber(v12);
  if (!v24)
  {
    v27 = createMobileActivationError("store_fairplay_blob", 124, @"com.apple.MobileActivation.ErrorDomain", -1, v11, @"Failed to create fairplay context.");

    v11 = v27;
    a3 = v30;
    if (v30)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  [v12 unsignedIntValue];
  [v8 bytes];
  [v8 length];
  DLHL();
  a3 = v30;
  if (!v25)
  {
    v14 = 1;
    goto LABEL_27;
  }

  v26 = createMobileActivationError("store_fairplay_blob", 130, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to import key vault: %d", v25);

  v11 = v26;
  if (!v30)
  {
    goto LABEL_23;
  }

LABEL_8:
  v13 = v11;
  v14 = 0;
  *a3 = v11;
LABEL_27:

  return v14;
}

uint64_t copy_keys_and_certs(void *a1, id a2, char **a3, char **a4, char **a5, SecIdentityRef *a6, NSError **a7)
{
  privateKeyRef = 0;
  identityRef = 0;
  cf = 0;
  v46 = @"UseSystemKeychainSharediPadOnly";
  v47 = &__kCFBooleanTrue;
  v12 = a2;
  v13 = a1;
  v41 = 0;
  v36 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  identity = load_identity(&identityRef, v13, v12, v36, 0, &v41);

  v15 = v41;
  if (identity)
  {
    v16 = identityRef == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    MobileActivationError = createMobileActivationError("copy_keys_and_certs", 175, @"com.apple.MobileActivation.ErrorDomain", -1, v15, @"Failed to load device identity.");
LABEL_7:
    v18 = MobileActivationError;
    v19 = 0;
    v20 = 0;
LABEL_8:
    v21 = 0;
    goto LABEL_9;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_28;
  }

  SecIdentityCopyPrivateKey(identityRef, &privateKeyRef);
  if (!privateKeyRef)
  {
    MobileActivationError = createMobileActivationError("copy_keys_and_certs", 182, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy private key.");
    goto LABEL_7;
  }

  v40 = v15;
  v20 = lockcrypto_create_pem_from_key(privateKeyRef, "RSA PRIVATE KEY", &v40);
  v27 = v40;

  if (!v20)
  {
    v18 = createMobileActivationError("copy_keys_and_certs", 188, @"com.apple.MobileActivation.ErrorDomain", -1, v27, @"Failed to create pem data for private key.");
    v19 = 0;
    v21 = 0;
    goto LABEL_50;
  }

  v15 = v27;
LABEL_28:
  if (!(a4 | a5))
  {
    v34 = a6;
    v19 = 0;
    v26 = 0;
    v21 = 0;
LABEL_35:
    v22 = 0;
    v23 = 0;
    goto LABEL_36;
  }

  SecIdentityCopyCertificate(identityRef, &cf);
  if (!cf)
  {
    v18 = createMobileActivationError("copy_keys_and_certs", 196, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate from device identity.");
    v19 = 0;
    goto LABEL_8;
  }

  if (a5)
  {
    v29 = SecCertificateCopyData(cf);
    v21 = v29;
    if (v29)
    {
      v39 = v15;
      v19 = lockcrypto_create_pem(v29, "CERTIFICATE", &v39);
      v27 = v39;

      if (v19)
      {
        v15 = v27;
        goto LABEL_54;
      }

      v18 = createMobileActivationError("copy_keys_and_certs", 209, @"com.apple.MobileActivation.ErrorDomain", -1, v27, @"Failed to create pem data for certificate.");
LABEL_50:
      v22 = 0;
      v23 = 0;
LABEL_51:
      v15 = v27;
      goto LABEL_10;
    }

    v18 = createMobileActivationError("copy_keys_and_certs", 203, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate data.");
    v19 = 0;
LABEL_9:
    v22 = 0;
    v23 = 0;
LABEL_10:

    if (a7)
    {
      v24 = v18;
      v25 = 0;
      v26 = 0;
      *a7 = v18;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v15 = v18;
    goto LABEL_18;
  }

  v19 = 0;
  v21 = 0;
LABEL_54:
  v34 = a6;
  if (!a4)
  {
    v26 = 0;
    goto LABEL_35;
  }

  v45 = cf;
  v22 = [NSArray arrayWithObjects:&v45 count:1];
  v38 = v15;
  v23 = lockcrypto_extract_public(v22, &v38);
  v27 = v38;

  if (!v23)
  {
    v18 = createMobileActivationError("copy_keys_and_certs", 222, @"com.apple.MobileActivation.ErrorDomain", -1, v27, @"Failed to extract public key from certificate chain.");
    goto LABEL_51;
  }

  v37 = v27;
  v33 = v27;
  v26 = lockcrypto_create_pem_from_key(v23, "RSA PUBLIC KEY", &v37);
  v15 = v37;

  if (!v26)
  {
    v18 = createMobileActivationError("copy_keys_and_certs", 228, @"com.apple.MobileActivation.ErrorDomain", -1, v15, @"Failed to create pem data for public key.");
    goto LABEL_10;
  }

LABEL_36:
  if (a3 && v20)
  {
    v30 = v20;
    *a3 = v20;
  }

  if (a4 && v26)
  {
    v31 = v26;
    *a4 = v26;
  }

  if (a5 && v19)
  {
    v32 = v19;
    *a5 = v19;
  }

  v25 = 1;
  if (v34 && identityRef)
  {
    CFRetain(identityRef);
    *v34 = identityRef;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
  }

  privateKeyRef = 0;
  if (v23)
  {
    CFRelease(v23);
  }

  if (identityRef)
  {
    CFRelease(identityRef);
  }

  identityRef = 0;

  return v25;
}

id copy_device_certificate(NSError **a1)
{
  v3 = 0;
  copy_keys_and_certs(@"lockdown-identities", @"com.apple.lockdown.identity.activation", 0, 0, &v3, 0, a1);
  v1 = v3;

  return v1;
}

id copy_activation_record(void *a1)
{
  v1 = load_activation_records(a1);
  if ([v1 count])
  {
    v2 = [v1 allValues];
    v3 = [v2 objectAtIndex:0];
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = 0;
  }

  if (is_internal_build())
  {
    v5 = [NSUserDefaults alloc];
    v6 = [v5 persistentDomainForName:@"com.apple.mobileactivationd"];

    v7 = [v6 objectForKeyedSubscript:@"ManufacturingDataOverride"];
    v8 = isNSDictionary(v7);

    if (v8)
    {
      v9 = [v6 objectForKeyedSubscript:@"ManufacturingDataOverride"];
      [v4 setObject:v9 forKeyedSubscript:@"ManufacturingData"];
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [v4 copy];

  return v10;
}

uint64_t load_and_validate_activation_record(void *a1, void *a2, char *a3, NSError **a4)
{
  v7 = a1;
  v8 = copy_activation_record(v7);
  if (!v8)
  {
    v16 = createMobileActivationError("load_and_validate_activation_record", 312, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Could not find an activation record.");
    v12 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = v9;
  if (!v9)
  {
    v16 = createMobileActivationError("load_and_validate_activation_record", 318, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v12 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }

LABEL_10:
    v17 = v16;
    v18 = 0;
    v19 = 0;
    *a4 = v16;
    goto LABEL_18;
  }

  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseCommittedUIK"];
  if (is_internal_build())
  {
    v11 = [NSUserDefaults alloc];
    v12 = [v11 persistentDomainForName:@"com.apple.mobileactivationd"];

    v13 = [v12 objectForKeyedSubscript:@"UseQACertificates"];
    v14 = isNSNumber(v13);

    if (v14)
    {
      v15 = [v12 objectForKeyedSubscript:@"UseQACertificates"];
      [v10 setObject:v15 forKeyedSubscript:@"UseQACertificates"];
    }
  }

  else
  {
    v12 = 0;
  }

  v27 = 0;
  v20 = verify_activation_record(v7, v8, v10, &v27);
  v16 = v27;
  if (v20)
  {
    v18 = 0;
    v19 = 1;
    goto LABEL_18;
  }

  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseFactoryCertificates"];
  [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"UseQACertificates"];
  v26 = v16;
  v21 = verify_activation_record(v7, v8, v10, &v26);
  v22 = v26;

  if (v21)
  {
    v18 = 1;
    v19 = 1;
    v16 = v22;
    goto LABEL_18;
  }

  v16 = createMobileActivationError("load_and_validate_activation_record", 349, @"com.apple.MobileActivation.ErrorDomain", -1, v22, @"Failed to validate activation record.");

  if (a4)
  {
    goto LABEL_10;
  }

LABEL_17:
  v18 = 0;
  v19 = 0;
LABEL_18:
  if (a3)
  {
    *a3 = v18;
  }

  v23 = v19 ^ 1;
  if (!a2)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v8;
    *a2 = v8;
  }

  return v19;
}

BOOL send_activation_record_to_mc(void *a1, NSError **a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  if (!v4)
  {
    v5 = createMobileActivationError("send_activation_record_to_mc", 378, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"ManagedConfirguation is not supported on this platform.");
    if (a2)
    {
      v5 = v5;
      v8 = 0;
      v6 = 0;
      *a2 = v5;
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v5 = objc_opt_class();
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v3 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
  v7 = isNSString(v6);

  if (v7)
  {
    v11 = @"DeviceConfigurationFlags";
    v12 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = +[MCProfileConnection sharedConnection];
    [v9 lockdownDidReceiveActivationRecord:v8];

    v5 = 0;
  }

  else
  {
    v5 = 0;
    v8 = 0;
  }

LABEL_9:

  return v4 != 0;
}

uint64_t store_software_update_configuration_flags(void *a1, NSError **a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"SoftwareUpdate"];

    if (!v5)
    {
      v12 = 0;
      v6 = 0;
      goto LABEL_11;
    }

    v6 = [v4 objectForKeyedSubscript:@"SoftwareUpdate"];
    v7 = isNSDictionary(v6);

    if (v7)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v8 = getSUManagerClientClass_softClass;
      v20 = getSUManagerClientClass_softClass;
      if (!getSUManagerClientClass_softClass)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3254779904;
        v16[2] = __getSUManagerClientClass_block_invoke;
        v16[3] = &__block_descriptor_40_e8_32r_e5_v8__0l;
        v16[4] = &v17;
        __getSUManagerClientClass_block_invoke(v16);
        v8 = v18[3];
      }

      v9 = v8;
      _Block_object_dispose(&v17, 8);
      v10 = objc_alloc_init(v8);
      if (v10)
      {
        v11 = v10;
        [v10 setMandatorySoftwareUpdateDictionary:v6];

        v12 = 0;
LABEL_11:
        v13 = 1;
        goto LABEL_16;
      }

      MobileActivationError = createMobileActivationError("store_software_update_configuration_flags", 425, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate SUManager.");
    }

    else
    {
      MobileActivationError = createMobileActivationError("store_software_update_configuration_flags", 419, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid software update record.");
    }

    v12 = MobileActivationError;
    if (!a2)
    {
LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = createMobileActivationError("store_software_update_configuration_flags", 412, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v6 = 0;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  v12 = v12;
  v13 = 0;
  *a2 = v12;
LABEL_16:

  return v13;
}

void sub_1002FA150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSUManagerClientClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!SoftwareUpdateServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = __SoftwareUpdateServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = off_1003D11F8;
    v5 = 0;
    SoftwareUpdateServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SoftwareUpdateServicesLibraryCore_frameworkLibrary)
  {
    __getSUManagerClientClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SUManagerClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSUManagerClientClass_block_invoke_cold_1();
  }

  getSUManagerClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SoftwareUpdateServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SoftwareUpdateServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id talkToServerWithError(void *a1, id a2, int a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = a1;
  v56 = a4;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__4;
  v96 = __Block_byref_object_dispose__4;
  v97 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__4;
  v86 = __Block_byref_object_dispose__4;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__4;
  v80 = __Block_byref_object_dispose__4;
  v81 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__4;
  v74 = __Block_byref_object_dispose__4;
  v75 = 0;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v69[3] = -1;
  if (!v11)
  {
    v21 = createMobileActivationError("talkToServerWithError", 175, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v22 = v71[5];
    v71[5] = v21;

LABEL_15:
    v53 = 0;
    v54 = 0;
    v19 = 0;
    v20 = 0;
    v15 = 0;
LABEL_16:
    v16 = 0;
    v27 = 0;
    v28 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v12 = dispatch_semaphore_create(0);
  v13 = v77[5];
  v77[5] = v12;

  if (!v77[5])
  {
    v23 = createMobileActivationError("talkToServerWithError", 181, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create semaphore.");
    v24 = v71[5];
    v71[5] = v23;

    goto LABEL_15;
  }

  v14 = objc_alloc_init(MANetworkServiceClientVersion);
  v15 = v14;
  if (!v14)
  {
    v25 = createMobileActivationError("talkToServerWithError", 187, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create delegate.");
    v26 = v71[5];
    v71[5] = v25;

    goto LABEL_15;
  }

  [(MANetworkServiceClientVersion *)v14 setAllowInvalidCert:a2];
  v16 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  if (!v16)
  {
    v32 = createMobileActivationError("talkToServerWithError", 195, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query session configuration.");
    v33 = v71[5];
    v71[5] = v32;

    v53 = 0;
    v54 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_16;
  }

  if (v56)
  {
    v17 = [v56 objectForKey:@"NetworkProxyHost"];
    v18 = [v56 objectForKey:@"NetworkProxyPort"];
    v54 = [v56 objectForKey:@"SOCKSProxyHost"];
    v53 = [v56 objectForKey:@"SOCKSProxyPort"];
    v19 = [v56 objectForKey:@"NetworkServiceType"];
    v20 = [v56 objectForKey:@"NetworkSecondaryIdentifier"];
    if (v17)
    {
      a2 = isNSString(v17);
      if (!a2)
      {
        goto LABEL_11;
      }

      if (!v18)
      {
LABEL_34:
        if (v19)
        {
          v48 = isNSString(v19);
          if (!v48)
          {
            v49 = 1;
            goto LABEL_54;
          }

          if (!v20)
          {
            v49 = 0;
            goto LABEL_41;
          }
        }

        else if (!v20)
        {
          v49 = 0;
          goto LABEL_54;
        }

        v36 = isNSString(v20);
        v49 = v36 == 0;

        if (v19)
        {
LABEL_41:

          if (!v18)
          {
            goto LABEL_42;
          }

          goto LABEL_55;
        }

LABEL_54:
        if (!v18)
        {
LABEL_42:
          if (!v17)
          {
            goto LABEL_43;
          }

          goto LABEL_56;
        }

LABEL_55:

        if (!v17)
        {
LABEL_43:
          if (v49)
          {
            goto LABEL_57;
          }

LABEL_44:
          if (v54)
          {
            v37 = isNSString(v54);
            a2 = v37;
            if (!v37)
            {
              goto LABEL_61;
            }

            if (v53)
            {
              v38 = v53;
              goto LABEL_50;
            }
          }

          else
          {
            v38 = v53;
            if (v53)
            {
LABEL_50:
              v39 = isNSNumber(v38);

              if (v54)
              {

                if (!v39)
                {
                  goto LABEL_61;
                }

                goto LABEL_65;
              }

              if (v39)
              {
                v54 = 0;
                goto LABEL_65;
              }

LABEL_61:
              v42 = createMobileActivationError("talkToServerWithError", 213, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid SOCKS proxy dictionary: {%@, %@, %@}", v54, v53, v19);
              v43 = v71[5];
              v71[5] = v42;

              goto LABEL_58;
            }

            v54 = 0;
          }

          v53 = 0;
LABEL_65:
          if (v19)
          {
            [(NSURLSessionConfiguration *)v16 set_CTDataConnectionServiceType:v19];
            if ([v19 isEqualToString:kCTDataConnectionServiceTypeOTAActivation])
            {
              if ([v18 isEqualToNumber:&off_1003FBD08])
              {
                [(NSURLSessionConfiguration *)v16 set_requiresSecureHTTPSProxyConnection:1];
              }
            }
          }

          if (v20)
          {
            [(NSURLSessionConfiguration *)v16 set_sourceApplicationSecondaryIdentifier:v20];
          }

          if (v17 && v18)
          {
            v44 = [v11 URL];
            v45 = [v44 scheme];
            v50 = [v45 isEqualToString:@"https"];

            if (v50)
            {
              v102[0] = kCFStreamPropertyHTTPSProxyHost;
              v102[1] = kCFStreamPropertyHTTPSProxyPort;
              v103[0] = v17;
              v103[1] = v18;
              v46 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:2];
            }

            else
            {
              v100[0] = kCFStreamPropertyHTTPProxyHost;
              v100[1] = kCFStreamPropertyHTTPProxyPort;
              v101[0] = v17;
              v101[1] = v18;
              v46 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:2];
            }

            [(NSURLSessionConfiguration *)v16 setConnectionProxyDictionary:v46];
          }

          if (v54 && v53)
          {
            v98[0] = @"SOCKSProxy";
            v98[1] = @"SOCKSPort";
            v99[0] = v54;
            v99[1] = v53;
            v98[2] = @"SOCKSEnable";
            v99[2] = &__kCFBooleanTrue;
            v47 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:3];
            [(NSURLSessionConfiguration *)v16 setConnectionProxyDictionary:v47];
          }

          goto LABEL_29;
        }

LABEL_56:

        if (v49)
        {
          goto LABEL_57;
        }

        goto LABEL_44;
      }
    }

    else if (!v18)
    {
      goto LABEL_34;
    }

    v7 = isNSNumber(v18);
    if (!v7)
    {
      if (!v17)
      {
LABEL_57:
        v40 = createMobileActivationError("talkToServerWithError", 208, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid proxy dictionary: {%@, %@, %@}", v17, v18, v19);
        v41 = v71[5];
        v71[5] = v40;

        goto LABEL_58;
      }

LABEL_11:

      goto LABEL_57;
    }

    goto LABEL_34;
  }

  v53 = 0;
  v54 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = 0;
LABEL_29:
  if (a3)
  {
    [(NSURLSessionConfiguration *)v16 setWaitsForConnectivity:1];
  }

  [v11 timeoutInterval];
  [(NSURLSessionConfiguration *)v16 setTimeoutIntervalForResource:?];
  v27 = [NSURLSession sessionWithConfiguration:v16 delegate:v15 delegateQueue:0];
  if (v27)
  {
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3254779904;
    v57[2] = __talkToServerWithError_block_invoke;
    v57[3] = &__block_descriptor_120_e8_32s40s48s56s64s72r80r88r96r104r112r_e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
    v63 = &v88;
    v64 = &v92;
    v65 = v69;
    v66 = &v70;
    v58 = v11;
    v16 = v16;
    v59 = v16;
    v19 = v19;
    v60 = v19;
    v20 = v20;
    v61 = v20;
    v15 = v15;
    v62 = v15;
    v67 = &v82;
    v68 = &v76;
    v28 = [(NSURLSession *)v27 dataTaskWithRequest:v58 completionHandler:v57];

    [(NSURLSessionDataTask *)v28 resume];
    dispatch_semaphore_wait(v77[5], 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_17;
  }

  v34 = createMobileActivationError("talkToServerWithError", 268, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create session.");
  v35 = v71[5];
  v71[5] = v34;

LABEL_58:
  v27 = 0;
  v28 = 0;
LABEL_17:
  [(NSURLSession *)v27 invalidateAndCancel];
  if (a5)
  {
    *a5 = v93[5];
  }

  if (a6)
  {
    *a6 = v89[3];
  }

  v29 = v83[5];
  if (a7 && !v29)
  {
    *a7 = v71[5];
    v29 = v83[5];
  }

  v30 = v29;
  _Block_object_dispose(v69, 8);

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);

  return v30;
}

void sub_1002FB0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __talkToServerWithError_block_invoke(uint64_t a1, id a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  *(*(*(a1 + 72) + 8) + 24) = [v9 statusCode];
  v10 = [v9 allHeaderFields];

  v11 = *(*(a1 + 80) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (v7 && !v8)
  {
    v13 = [NSData dataWithData:v7];
    v14 = *(*(a1 + 104) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
    goto LABEL_16;
  }

  if (mobileactivationErrorHasDomainAndErrorCode(v8, NSURLErrorDomain, 0xFFFFFFFFFFFFFC17))
  {
    v16 = -18;
LABEL_14:
    *(*(*(a1 + 88) + 8) + 24) = v16;
    goto LABEL_15;
  }

  if (mobileactivationErrorHasDomainAndErrorCode(v8, NSURLErrorDomain, 0xFFFFFFFFFFFFFC19))
  {
    v16 = -19;
    goto LABEL_14;
  }

  if (mobileactivationErrorHasDomainAndErrorCode(v8, NSURLErrorDomain, 0xFFFFFFFFFFFFFC0FLL))
  {
    v16 = -17;
    goto LABEL_14;
  }

  if (mobileactivationErrorHasDomainAndErrorCode(v8, NSURLErrorDomain, 0xFFFFFFFFFFFFFC15))
  {
    v16 = -20;
    goto LABEL_14;
  }

  if (mobileactivationErrorHasDomainAndErrorCode(v8, kCFErrorDomainCFNetwork, 0x136))
  {
    v16 = -21;
    goto LABEL_14;
  }

LABEL_15:
  v26 = *(*(*(a1 + 88) + 8) + 24);
  v15 = [*(a1 + 32) URL];
  v17 = [*(a1 + 40) connectionProxyDictionary];
  v19 = *(a1 + 48);
  v18 = *(a1 + 56);
  v20 = +[NSURLSessionTask description];
  v21 = *(*(*(a1 + 72) + 8) + 24);
  v22 = [*(a1 + 64) lastNetworkError];
  v23 = createMobileActivationError("talkToServerWithError_block_invoke", 290, @"com.apple.MobileActivation.ErrorDomain", v26, v8, @"Failed to send HTTP request to %@ (proxy settings: %@ // service type: %@ // secondary identifier: %@ // session: %@): %ld (%@)", v15, v17, v19, v18, v20, v21, v22);
  v24 = *(*(a1 + 96) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

LABEL_16:
  dispatch_semaphore_signal(*(*(*(a1 + 112) + 8) + 40));
}

void __copy_helper_block_e8_32s40s48s56s64s72r80r88r96r104r112r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  v9 = *(a2 + 112);

  _Block_object_assign((a1 + 112), v9, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72r80r88r96r104r112r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);

  v2 = *(a1 + 32);
}

id copyCellularProxyDictionary(char a1, NSError **a2)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  if (!v4)
  {
    MobileActivationError = createMobileActivationError("copyCellularProxyDictionary", 348, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to dictionary.");
    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    v12 = [CoreTelephonyClient alloc];
    v13 = dispatch_get_global_queue(0, 0);
    v5 = [v12 initWithQueue:v13];

    if (v5)
    {
      a2 = [v5 getCurrentDataSubscriptionContextSync:0];
      v14 = [[CTBundle alloc] initWithBundleType:1];
      v9 = v14;
      v6 = 0;
      v7 = 0;
      v10 = 0;
      if (a2 && v14)
      {
        v6 = [v5 copyCarrierBundleValue:a2 key:@"OTAActivationProxyHost" bundleType:v14 error:0];
        v7 = [v5 copyCarrierBundleValue:a2 key:@"OTAActivationProxyPort" bundleType:v9 error:0];
        v15 = [a2 uuid];
        v10 = [v15 UUIDString];
      }

      v8 = kCTDataConnectionServiceTypeOTAActivation;
      if (v8)
      {
        [v4 setObject:v8 forKeyedSubscript:@"NetworkServiceType"];
      }

      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    MobileActivationError = createMobileActivationError("copyCellularProxyDictionary", 357, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create Telephony client.");
LABEL_18:
    v18 = MobileActivationError;
    v17 = v18;
    if (a2)
    {
      v19 = v18;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      v7 = 0;
      v6 = 0;
      v5 = 0;
      v16 = 0;
      *a2 = v17;
      a2 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v8 = 0;
      v7 = 0;
      v6 = 0;
      v5 = 0;
      v16 = 0;
    }

    goto LABEL_21;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  a2 = 0;
  v9 = 0;
  v10 = @"com.apple.CommCenter.CellularPlanProvisioning";
LABEL_12:
  [v4 setObject:v10 forKeyedSubscript:@"NetworkSecondaryIdentifier"];
LABEL_13:
  if (v6 && v7)
  {
    [v4 setObject:v6 forKeyedSubscript:@"NetworkProxyHost"];
    [v4 setObject:v7 forKeyedSubscript:@"NetworkProxyPort"];
  }

  v16 = v4;
  v17 = 0;
LABEL_21:
  v20 = v16;

  return v16;
}

uint64_t performMigration(void *a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __performMigration_block_invoke;
  block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
  v3 = a1;
  v7 = v3;
  if (performMigration_onceToken != -1)
  {
    dispatch_once(&performMigration_onceToken, block);
  }

  v4 = performMigration_retval;
  if (a2 && (performMigration_retval & 1) == 0)
  {
    *a2 = performMigration_localError;
    v4 = performMigration_retval;
  }

  return v4;
}

void __performMigration_block_invoke(uint64_t a1)
{
  v2 = copySignpostLoggingHandle();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PerformMigration", "", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v15 = createMobileActivationError("performMigration_block_invoke", 2049, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input(s).");
    goto LABEL_90;
  }

  v4 = v3;
  v5 = +[GestaltHlpr getSharedInstance];
  v6 = [v5 copyAnswer:@"BuildVersion"];

  v7 = isNSString(v6);
  if (!v7)
  {
    v16 = createMobileActivationError("perform_data_migration", 1704, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"BuildVersion");
    v8 = 0;
    v17 = 0;
LABEL_74:
    v110 = v16;
    v19 = 0;
    v18 = v16;
LABEL_75:

    goto LABEL_76;
  }

  v8 = data_ark_copy(v4, 0, @"BuildVersion");
  v9 = isNSString(v8);

  if (!v9)
  {

    v8 = &stru_1003F3678;
  }

  v10 = +[GestaltHlpr getSharedInstance];
  v11 = [v10 copyAnswer:@"ProductVersion"];

  v161 = v11;
  v12 = isNSString(v11);

  if (!v12)
  {
    v16 = createMobileActivationError("perform_data_migration", 1715, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"ProductVersion");
    v17 = 0;
    v7 = v11;
    goto LABEL_74;
  }

  v13 = data_ark_copy(v4, 0, @"ProductVersion");
  v14 = isNSString(v13);

  if (v14)
  {
    v160 = v13;
  }

  else
  {

    v160 = &stru_1003F3678;
  }

  v7 = v11;
  if (([v6 isEqualToString:v8] & 1) == 0)
  {
    maLog("perform_data_migration", 0, @"Upgrade from %@ (%@) to %@ (%@) detected.", v8, v160, v6, v11);
    v167 = 0;
    v20 = perform_sydro_data_migration_tasks(v4, &v167);
    v21 = v167;
    if ((v20 & 1) == 0)
    {
      v16 = createMobileActivationError("perform_data_migration", 1733, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Failed to perform data migration task.");

LABEL_73:
      v17 = v160;
      goto LABEL_74;
    }

    v157 = v8;
    v158 = v6;
    v22 = v4;
    v23 = +[GestaltHlpr getSharedInstance];
    v24 = [v23 copyAnswer:@"BuildVersion"];

    v25 = isNSString(v24);
    v156 = v4;
    v159 = v22;
    if (!v25)
    {
      v31 = createMobileActivationError("perform_dawn_data_migration_tasks", 1612, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"BuildVersion");
      obj = 0;
      v162 = 0;
      v152 = 0;
      v154 = 0;
      v26 = 0;
      v32 = 0;
LABEL_28:
      v33 = v31;
      v34 = 0;
      v35 = v31;
      v7 = v11;
      goto LABEL_37;
    }

    v26 = data_ark_copy(v22, 0, @"BuildVersion");
    v27 = isNSString(v26);

    if (!v27)
    {

      v26 = &stru_1003F3678;
    }

    v28 = +[GestaltHlpr getSharedInstance];
    v29 = [v28 copyAnswer:@"ProductVersion"];

    v150 = v29;
    v30 = isNSString(v29);

    if (v30)
    {
      if ([v24 isEqualToString:v26])
      {
        obj = 0;
        v162 = 0;
LABEL_36:
        v35 = 0;
        v152 = 0;
        v154 = 0;
        v34 = 1;
        v31 = v21;
        v7 = v11;
        v32 = v150;
        goto LABEL_37;
      }

      v36 = copy_legacy_dcrt_path();
      v37 = [v36 stringByAppendingPathComponent:@"dcrt.der"];

      v38 = copy_dcrt_path();
      v162 = [v38 stringByAppendingPathComponent:@"dcrt.der"];

      obj = v37;
      v39 = [[NSData alloc] initWithContentsOfFile:v37];
      if (!v39)
      {
        goto LABEL_36;
      }

      *buf = 0;
      v154 = v39;
      v40 = parseDERCertificatesFromChain(v39, buf);
      v41 = *buf;
      v42 = v41;
      if (v40)
      {
        v149 = v41;
        v43 = [(NSError *)v40 objectAtIndexedSubscript:0];
        v44 = SecCertificateCreateWithData(0, v43);

        v152 = v40;
        if (v44)
        {
          *handler = v149;
          cf = v44;
          v45 = certificatePublicKeyMatchesSystemPublicKey(2, 9, v44, handler);
          v35 = *handler;

          if (v45)
          {
            v147 = a1;
            v46 = +[NSFileManager defaultManager];
            v47 = copy_dcrt_path();
            *&v177 = NSFilePosixPermissions;
            *&v186 = &off_1003FBD38;
            v48 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v177 count:1];
            *v194 = v35;
            v49 = [(NSFileManager *)v46 createDirectoryAtPath:v47 withIntermediateDirectories:1 attributes:v48 error:v194];
            v50 = *v194;

            if (v49)
            {
              maLog("perform_dawn_data_migration_tasks", 0, @"Moving DCRT from legacy path to system location.");
              v51 = +[NSFileManager defaultManager];
              [(NSFileManager *)v51 removeItemAtPath:v162 error:0];

              v52 = +[NSFileManager defaultManager];
              v192[0] = v50;
              v53 = obj;
              v54 = [(NSFileManager *)v52 copyItemAtPath:obj toPath:v162 error:v192];
              v35 = v192[0];

              if (v54)
              {
                maLog("perform_dawn_data_migration_tasks", 0, @"Successfuly moved DCRT to system location.");
                a1 = v147;
                v7 = v161;
LABEL_96:
                v144 = +[NSFileManager defaultManager];
                [(NSFileManager *)v144 removeItemAtPath:v53 error:0];

                v34 = 1;
                v31 = v21;
LABEL_100:
                v32 = v150;
                CFRelease(cf);
LABEL_37:

                v55 = v31;
                if (v34)
                {
                  v153 = v55;
                  v155 = v159;
                  v56 = +[NSFileManager defaultManager];
                  v57 = copy_splunk_directory_path();
                  v190[0] = NSFilePosixPermissions;
                  v192[0] = &off_1003FBD38;
                  v58 = [NSDictionary dictionaryWithObjects:v192 forKeys:v190 count:1];
                  v172[0] = 0;
                  v59 = [(NSFileManager *)v56 createDirectoryAtPath:v57 withIntermediateDirectories:1 attributes:v58 error:v172];
                  v60 = v172[0];

                  v8 = v157;
                  v6 = v158;
                  v151 = v59;
                  if (v59)
                  {
                    v148 = a1;
                    v61 = +[NSFileManager defaultManager];
                    v62 = copy_software_update_splunk_directory_path();
                    v63 = [NSURL URLWithString:v62];
                    v64 = [(NSFileManager *)v61 contentsOfDirectoryAtURL:v63 includingPropertiesForKeys:0 options:4 error:0];

                    *v188 = 0u;
                    v189 = 0u;
                    v186 = 0u;
                    v187 = 0u;
                    obja = v64;
                    v65 = [(NSArray *)obja countByEnumeratingWithState:&v186 objects:buf count:16];
                    if (v65)
                    {
                      v66 = v65;
                      v67 = *v187;
                      do
                      {
                        v68 = 0;
                        v163 = v66;
                        do
                        {
                          if (*v187 != v67)
                          {
                            objc_enumerationMutation(obja);
                          }

                          v69 = *(*(&v186 + 1) + 8 * v68);
                          v70 = [v69 pathExtension];
                          v71 = [v70 isEqualToString:@"splunklog"];

                          if (v71)
                          {
                            v72 = copy_splunk_directory_path();
                            v73 = [v69 lastPathComponent];
                            v74 = [v72 stringByAppendingPathComponent:v73];

                            v75 = +[NSFileManager defaultManager];
                            [(NSFileManager *)v75 removeItemAtPath:v74 error:0];

                            v76 = +[NSFileManager defaultManager];
                            v77 = [v69 path];
                            v170[0] = v60;
                            v78 = [(NSFileManager *)v76 copyItemAtPath:v77 toPath:v74 error:v170];
                            v79 = v170[0];

                            if (v78)
                            {
                              v80 = [v69 path];
                              maLog("performRestoreLogMigrationTasks", 0, @"Successfully copied %@ to %@.", v80, v74);
                            }

                            else
                            {
                              v81 = copyLoggingHandle();
                              if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
                              {
                                v82 = [v69 path];
                                v83 = copy_splunk_directory_path();
                                *handler = 138412802;
                                *&handler[4] = v82;
                                *&handler[12] = 2112;
                                *&handler[14] = v83;
                                *&handler[22] = 2112;
                                v175 = v79;
                                _os_log_fault_impl(&_mh_execute_header, v81, OS_LOG_TYPE_FAULT, "Failed to copy %@ to %@: %@", handler, 0x20u);
                              }

                              v80 = v79;
                              v79 = 0;
                            }

                            v66 = v163;

                            v60 = v79;
                          }

                          v68 = v68 + 1;
                        }

                        while (v66 != v68);
                        v66 = [(NSArray *)obja countByEnumeratingWithState:&v186 objects:buf count:16];
                      }

                      while (v66);
                    }

                    v84 = &_CTServerConnectionCopyPostponementStatus_ptr;
                    v85 = +[NSFileManager defaultManager];
                    v86 = copy_software_update_log_directory_path();
                    v87 = [NSURL URLWithString:v86];
                    v88 = [(NSFileManager *)v85 contentsOfDirectoryAtURL:v87 includingPropertiesForKeys:0 options:4 error:0];

                    *v179 = 0u;
                    v180 = 0u;
                    v177 = 0u;
                    v178 = 0u;
                    objb = v88;
                    v89 = [(NSArray *)objb countByEnumeratingWithState:&v177 objects:handler count:16];
                    if (v89)
                    {
                      v90 = v89;
                      v91 = *v178;
                      do
                      {
                        for (i = 0; i != v90; i = i + 1)
                        {
                          if (*v178 != v91)
                          {
                            objc_enumerationMutation(objb);
                          }

                          v93 = *(*(&v177 + 1) + 8 * i);
                          v94 = copy_log_directory_path();
                          v95 = [v93 lastPathComponent];
                          v96 = [v94 stringByAppendingPathComponent:v95];

                          v97 = [v84[326] defaultManager];
                          [v97 removeItemAtPath:v96 error:0];

                          v98 = [v84[326] defaultManager];
                          v99 = [v93 path];
                          v168[0] = v60;
                          v100 = [v98 copyItemAtPath:v99 toPath:v96 error:v168];
                          v101 = v168[0];

                          if (v100)
                          {
                            v102 = [v93 path];
                            maLog("performRestoreLogMigrationTasks", 0, @"Successfully copied %@ to %@.", v102, v96);
                            v60 = v101;
                          }

                          else
                          {
                            v103 = copyLoggingHandle();
                            if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
                            {
                              v104 = [v93 path];
                              *v194 = 138412802;
                              *&v194[4] = v104;
                              *&v194[12] = 2112;
                              *&v194[14] = v96;
                              *&v194[22] = 2112;
                              v195 = v101;
                              _os_log_fault_impl(&_mh_execute_header, v103, OS_LOG_TYPE_FAULT, "Failed to copy %@ to %@: %@", v194, 0x20u);
                            }

                            v60 = 0;
                            v102 = v101;
                          }

                          v84 = &_CTServerConnectionCopyPostponementStatus_ptr;
                        }

                        v90 = [(NSArray *)objb countByEnumeratingWithState:&v177 objects:handler count:16];
                      }

                      while (v90);
                    }

                    v105 = v153;
                    v106 = v153;
                    a1 = v148;
                    v4 = v156;
                    v8 = v157;
                    v6 = v158;
                  }

                  else
                  {
                    v107 = copy_splunk_directory_path();
                    v106 = createMobileActivationError("performRestoreLogMigrationTasks", 139, @"com.apple.MobileActivation.ErrorDomain", -1, v60, @"Failed to create %@.", v107);

                    v108 = v106;
                    v60 = v106;
                    v4 = v156;
                    v105 = v153;
                  }

                  v16 = v106;
                  v7 = v161;
                  if (v151)
                  {
                    if (is_dsp_device())
                    {
                      data_ark_set(v155, 0, @"ActivationExpired", &__kCFBooleanTrue, 1);
                    }

                    v19 = 1;
                    data_ark_set(v155, 0, @"PreSydroDataMigrationCompleted", &__kCFBooleanTrue, 1);
                    data_ark_set(v155, 0, @"PreDawnDataMigrationCompleted", &__kCFBooleanTrue, 1);
                    data_ark_set(v155, 0, @"BuildVersion", v6, 1);
                    data_ark_set(v155, 0, @"ProductVersion", v161, 1);
                    rollSplunkLogUUID(v155);
                    v18 = 0;
                    v17 = v160;
                    goto LABEL_75;
                  }

                  v109 = createAndLogError("perform_data_migration", 1743, @"com.apple.MobileActivation.ErrorDomain", -1, v16, @"Failed to perform restore log migration task.");

                  v16 = v109;
                }

                else
                {
                  v16 = createMobileActivationError("perform_data_migration", 1738, @"com.apple.MobileActivation.ErrorDomain", -1, v55, @"Failed to perform data migration task.");

                  v4 = v156;
                  v8 = v157;
                  v6 = v158;
                }

                goto LABEL_73;
              }

              v31 = createMobileActivationError("perform_dawn_data_migration_tasks", 1664, @"com.apple.MobileActivation.ErrorDomain", -1, v35, @"Failed to copy %@ to %@.", obj, v162);
            }

            else
            {
              v35 = copy_dcrt_path();
              v31 = createMobileActivationError("perform_dawn_data_migration_tasks", 1654, @"com.apple.MobileActivation.ErrorDomain", -1, v50, @"Failed to create %@.", v35);
            }

            a1 = v147;
            v7 = v161;

            v145 = v31;
            v34 = 0;
            v35 = v31;
            goto LABEL_100;
          }

          v7 = v11;
          v53 = obj;
          goto LABEL_96;
        }

        v31 = createMobileActivationError("perform_dawn_data_migration_tasks", 1648, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.");

        goto LABEL_27;
      }

      v31 = createMobileActivationError("perform_dawn_data_migration_tasks", 1642, @"com.apple.MobileActivation.ErrorDomain", -1, v41, @"Failed to parse DCRT DER cert chain.");
    }

    else
    {
      v31 = createMobileActivationError("perform_dawn_data_migration_tasks", 1623, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"ProductVersion");
      obj = 0;
      v162 = 0;
      v154 = 0;
    }

    v152 = 0;
LABEL_27:
    v32 = v150;
    goto LABEL_28;
  }

  v18 = 0;
  v19 = 1;
  v17 = v160;
LABEL_76:

  v111 = v18;
  if (v19)
  {
    v112 = *(a1 + 32);
    if (v112)
    {
      v113 = v112;
      data_ark_register_set_notification(v113, 0, @"BrickState", @"com.apple.mobile.lockdown.brick_state", 8);
      data_ark_register_set_notification(v113, 0, @"ActivationState", @"com.apple.mobile.lockdown.activation_state", 8);
      data_ark_register_set_notification(v113, 0, @"CollectionLastPerformed", @"com.apple.mobile.activation.collection_performed", 2);
      data_ark_register_set_notification(v113, 0, @"UCRTOOBLastPerformed", @"com.apple.mobile.activation.ucrt_oob_performed", 2);
      data_ark_register_set_notification(v113, 0, @"DCRTOOBLastPerformed", @"com.apple.mobile.activation.dcrt_oob_performed", 2);
      v114 = v111;
    }

    else
    {
      v116 = 0;
      v114 = createMobileActivationError("register_notifications", 1779, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid intput.");
    }

    v117 = v114;
    if (v112)
    {
      v118 = *(a1 + 32);
      if (v118)
      {
        v119 = [@"com.apple.mobileactivationd.factoryactivation" UTF8String];
        *buf = _NSConcreteStackBlock;
        v182 = 3254779904;
        v183 = __register_xpc_activities_block_invoke;
        v184 = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v120 = v118;
        v185 = v120;
        xpc_activity_register(v119, XPC_ACTIVITY_CHECK_IN, buf);
        v121 = [@"com.apple.mobileactivationd.collection" UTF8String];
        *handler = _NSConcreteStackBlock;
        *&handler[8] = 3254779904;
        *&handler[16] = __register_xpc_activities_block_invoke_771;
        v175 = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v122 = v120;
        v176 = v122;
        xpc_activity_register(v121, XPC_ACTIVITY_CHECK_IN, handler);
        v123 = [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String];
        *&v186 = _NSConcreteStackBlock;
        *(&v186 + 1) = 3254779904;
        *&v187 = __register_xpc_activities_block_invoke_772;
        *(&v187 + 1) = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v124 = v122;
        v188[0] = v124;
        xpc_activity_register(v123, XPC_ACTIVITY_CHECK_IN, &v186);
        v125 = [@"com.apple.mobileactivationd.DCRT.OOB" UTF8String];
        *&v177 = _NSConcreteStackBlock;
        *(&v177 + 1) = 3254779904;
        *&v178 = __register_xpc_activities_block_invoke_773;
        *(&v178 + 1) = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v126 = v124;
        v179[0] = v126;
        xpc_activity_register(v125, XPC_ACTIVITY_CHECK_IN, &v177);
        v127 = [@"com.apple.mobileactivationd.SDCRT.OOB" UTF8String];
        *v194 = _NSConcreteStackBlock;
        *&v194[8] = 3254779904;
        *&v194[16] = __register_xpc_activities_block_invoke_774;
        v195 = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v128 = v126;
        v196 = v128;
        xpc_activity_register(v127, XPC_ACTIVITY_CHECK_IN, v194);
        v129 = [@"com.apple.mobileactivationd.DCRT.OOB.LoadSpreading" UTF8String];
        v192[0] = _NSConcreteStackBlock;
        v192[1] = 3254779904;
        v192[2] = __register_xpc_activities_block_invoke_775;
        v192[3] = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v130 = v128;
        v193 = v130;
        xpc_activity_register(v129, XPC_ACTIVITY_CHECK_IN, v192);
        v131 = [@"com.apple.mobileactivationd.SDCRT.OOB.LoadSpreading" UTF8String];
        v190[0] = _NSConcreteStackBlock;
        v190[1] = 3254779904;
        v190[2] = __register_xpc_activities_block_invoke_776;
        v190[3] = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v132 = v130;
        v191 = v132;
        xpc_activity_register(v131, XPC_ACTIVITY_CHECK_IN, v190);
        v133 = [@"com.apple.mobileactivationd.splunklogging" UTF8String];
        v172[0] = _NSConcreteStackBlock;
        v172[1] = 3254779904;
        v172[2] = __register_xpc_activities_block_invoke_777;
        v172[3] = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v134 = v132;
        v173 = v134;
        xpc_activity_register(v133, XPC_ACTIVITY_CHECK_IN, v172);
        v135 = [@"com.apple.mobileactivationd.splunklogging.daily" UTF8String];
        v170[0] = _NSConcreteStackBlock;
        v170[1] = 3254779904;
        v170[2] = __register_xpc_activities_block_invoke_778;
        v170[3] = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v136 = v134;
        v171 = v136;
        xpc_activity_register(v135, XPC_ACTIVITY_CHECK_IN, v170);
        v137 = [@"com.apple.mobileactivationd.splunklogging.rollidentifier" UTF8String];
        v168[0] = _NSConcreteStackBlock;
        v168[1] = 3254779904;
        v168[2] = __register_xpc_activities_block_invoke_779;
        v168[3] = &__block_descriptor_40_e8_32s_e33_v16__0__NSObject_OS_xpc_object__8l;
        v169 = v136;
        xpc_activity_register(v137, XPC_ACTIVITY_CHECK_IN, v168);

        v138 = v185;
        v139 = v117;
      }

      else
      {
        v138 = createMobileActivationError("register_xpc_activities", 1807, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid intput(s).");
        v139 = v138;
      }

      v15 = v139;
      if (v118)
      {
        dealwith_activation(*(a1 + 32), 0);
        performMigration_retval = 1;
      }

      else
      {
        v140 = createAndLogError("performMigration_block_invoke", 2064, @"com.apple.MobileActivation.ErrorDomain", -1, v15, @"Failed to register XPC activities.");

        v15 = v140;
      }

      goto LABEL_90;
    }

    v15 = createAndLogError("performMigration_block_invoke", 2059, @"com.apple.MobileActivation.ErrorDomain", -1, v117, @"Failed to register notifications.");
    v115 = v117;
  }

  else
  {
    v15 = createAndLogError("performMigration_block_invoke", 2054, @"com.apple.MobileActivation.ErrorDomain", -1, v111, @"Data migration failed.");
    v115 = v111;
  }

LABEL_90:
  v141 = performMigration_localError;
  performMigration_localError = v15;
  v142 = v15;

  data_ark_set(*(a1 + 32), 0, @"DataMigrationCompleted", &__kCFBooleanTrue, 0);
  v143 = copySignpostLoggingHandle();
  if (os_signpost_enabled(v143))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v143, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "performMigration", "", buf, 2u);
  }
}

uint64_t dealwith_activation(void *a1, NSError **a2)
{
  v3 = a1;
  v26 = 0;
  v4 = data_ark_copy(v3, 0, @"ActivationState");
  v5 = isNSString(v4);

  if (!v5)
  {
    v5 = @"Unactivated";
  }

  if (use_hactivation())
  {
    maLog("dealwith_activation", 0, @"Hactivation is enabled, short circuiting activation state to Activated.");
    data_ark_set(v3, 0, @"ActivationState", @"Activated", 0);
    data_ark_set(v3, 0, @"BrickState", &__kCFBooleanFalse, 0);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v11 = load_and_validate_activation_record(v3, &v25, &v26, &v24);
    v7 = v25;
    v12 = v24;
    if (v11)
    {
      if (v26 == 1)
      {
        v9 = createAndLogError("dealwith_activation", 3484, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid activation record type (actual, expected): (factory, production)");

        v13 = copyLoggingHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          dealwith_activation_cold_2();
        }

        handle_deactivate(v3, 1);
        v6 = 0;
        v8 = 0;
        v10 = 0;
      }

      else
      {
        if (data_ark_exists(v3, 0, @"CollectionLastPerformed"))
        {
          v16 = copy_suinfo_directory_path();
          v8 = [v16 stringByAppendingPathComponent:@"psc.sui"];

          if (v8)
          {
            v17 = +[NSFileManager defaultManager];
            v18 = [(NSFileManager *)v17 fileExistsAtPath:v8 isDirectory:0];

            if ((v18 & 1) == 0)
            {
              v19 = data_ark_copy(v3, 0, @"CollectionLastPerformed");
              maLog("dealwith_activation", 0, @"suinfo from %@ is now missing.", v19);

              data_ark_remove(v3, 0, @"PCRTToken");
              data_ark_remove(v3, 0, @"CollectionLastPerformed");
            }
          }
        }

        else
        {
          v8 = 0;
        }

        v20 = data_ark_copy(v3, 0, @"ActivationExpired");
        v6 = isNSNumber(v20);

        if ([v6 BOOLValue])
        {
          maLog("dealwith_activation", 0, @"Activation has expired, deactivating device.");
          handle_deactivate(v3, 1);
          v10 = 0;
        }

        else
        {
          data_ark_set(v3, 0, @"BrickState", &__kCFBooleanFalse, 1);
          if (v26 == 1)
          {
            data_ark_set(v3, 0, @"ActivationState", @"FactoryActivated", 0);
            v10 = 1;
          }

          else
          {
            v10 = 1;
            data_ark_set(v3, 0, @"ActivationState", @"Activated", 1);
          }
        }

        v9 = v12;
      }
    }

    else
    {
      v9 = createAndLogError("dealwith_activation", 3468, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to load or validate activation record.");

      if ([(__CFString *)v5 isEqualToString:@"Activated"])
      {
        v14 = copyLoggingHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          dealwith_activation_cold_1();
        }

        writeSplunkLog(v3, 34, -1, "dealwith_activation", 3472, 0, @"%@", v15, v9);
      }

      handle_deactivate(v3, 1);
      v6 = 0;
      v8 = 0;
      v10 = 0;
    }
  }

  v21 = data_ark_copy(v3, 0, @"ActivationState");
  maLog("dealwith_activation", 0, @"Activation State: %@", v21);

  data_ark_set(v3, 0, @"ActivationExpired", &__kCFBooleanFalse, 1);
  if (a2 && (v10 & 1) == 0)
  {
    v22 = v9;
    *a2 = v9;
  }

  return v10;
}

id preSydroDataMigrationCompleted(void *a1)
{
  v1 = data_ark_copy(a1, 0, @"PreSydroDataMigrationCompleted");
  v2 = isNSNumber(v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v1 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void issueDCRT(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = copyMobileActivationSerialQueue();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3254779904;
  v16[2] = __issueDCRT_block_invoke;
  v16[3] = &__block_descriptor_64_e8_32s40s48s56bs_e5_v8__0l;
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v20 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  dispatch_async(v11, v16);
}

void __issueDCRT_block_invoke(uint64_t a1)
{
  v107 = 0;
  v108[0] = &v107;
  v108[1] = 0x3032000000;
  v108[2] = __Block_byref_object_copy__5;
  v108[3] = __Block_byref_object_dispose__5;
  v109 = 0;
  v77 = @"DCRTIssuanceInFlight";
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__5;
  v105 = __Block_byref_object_dispose__5;
  v106 = 0;
  v98 = 0;
  v99[0] = &v98;
  v99[1] = 0x3032000000;
  v99[2] = __Block_byref_object_copy__5;
  v99[3] = __Block_byref_object_dispose__5;
  v100 = 0;
  cf = 0;
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"sdcrtAttestation"];
  v3 = v2;
  v4 = v108;
  if (v2)
  {
    v5 = isNSNumber(v2);
    v6 = v5 == 0;

    if (v6)
    {
      v9 = createMobileActivationError("issueDCRT_block_invoke", 2160, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"sdcrtAttestation");
      goto LABEL_19;
    }
  }

  if ([v3 BOOLValue])
  {
    v7 = @"SDCRTIssuanceInFlight";

    v69 = 3;
    v72 = 10;
    v70 = @"SDAK";
    v77 = v7;
    v8 = @"SDCRT";
  }

  else
  {
    v69 = 1;
    v72 = 9;
    v70 = @"DAK";
    v8 = @"DCRT";
  }

  v74 = v8;
  if (is_virtual_machine())
  {
    v9 = createMobileActivationError("issueDCRT_block_invoke", 2173, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"%@ not supported on virtual machines.", v74);
LABEL_19:
    v22 = 0;
    v19 = 0;
    v75 = 0;
    v76 = 0;
LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  v76 = [*(a1 + 32) objectForKeyedSubscript:@"IgnoreExistingDCRT"];
  if (v76)
  {
    v10 = isNSNumber(v76);
    v11 = v10 == 0;

    if (v11)
    {
      v9 = createMobileActivationError("issueDCRT_block_invoke", 2181, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"IgnoreExistingDCRT");
      v22 = 0;
      v19 = 0;
      v75 = 0;
      goto LABEL_20;
    }
  }

  v75 = copyDCRT(*(a1 + 40), 0, 0, *(a1 + 32), 0);
  v12 = [v76 BOOLValue];
  if (v75)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) != 0 || (v14 = v108[0], obj = *(v108[0] + 40), v15 = parseDERCertificatesFromChain(v75, &obj), objc_storeStrong((v14 + 40), obj), v16 = v102[5], v102[5] = v15, v16, (v17 = v102[5]) == 0))
  {
    v19 = 0;
  }

  else
  {
    v18 = [v17 objectAtIndexedSubscript:0];
    v19 = SecCertificateCreateWithData(kCFAllocatorDefault, v18);

    if (v19)
    {
      v20 = v108[0];
      v95 = *(v108[0] + 40);
      v21 = certificatePublicKeyMatchesSystemPublicKey(2, v72, v19, &v95);
      objc_storeStrong((v20 + 40), v95);
      if (v21)
      {
        v110 = @"RKCertification";
        v111 = v75;
        v9 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        v22 = 0;
        v23 = 0;
        v4 = v99;
LABEL_21:
        v24 = *(*v4 + 40);
        *(*v4 + 40) = v9;

        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        goto LABEL_22;
      }
    }
  }

  v31 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
  if (v31 || (v31 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularOTAProxy"]) != 0 || (v31 = objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"SOCKSProxyHost")) != 0)
  {
  }

  else
  {
    v52 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyPort"];
    v53 = v52 == 0;

    if (v53)
    {
      v54 = v108[0];
      v94 = *(v108[0] + 40);
      v55 = networkReachable(&v94);
      objc_storeStrong((v54 + 40), v94);
      if (!v55)
      {
        v9 = createMobileActivationError("issueDCRT_block_invoke", 2208, @"com.apple.MobileActivation.ErrorDomain", -17, *(v108[0] + 40), @"Network is unavailable.");
        v22 = 0;
        goto LABEL_20;
      }
    }
  }

  v22 = data_ark_copy(*(a1 + 40), 0, v77);
  v32 = isNSNumber(v22);
  v33 = v32 == 0;

  if (v33)
  {

    v22 = &__kCFBooleanFalse;
  }

  if ([v22 BOOLValue])
  {
    v9 = createMobileActivationError("issueDCRT_block_invoke", 2221, @"com.apple.MobileActivation.ErrorDomain", -13, 0, @"Another %@ request is already in flight.", v74);
    goto LABEL_20;
  }

  v34 = [*(a1 + 32) objectForKeyedSubscript:?];
  v35 = isNSNumber(v34);

  if (v35)
  {
    v23 = [*(a1 + 32) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    [v23 doubleValue];
    if (v36 <= 0.0)
    {
      v9 = createMobileActivationError("issueDCRT_block_invoke", 2230, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v23);
      goto LABEL_21;
    }
  }

  else
  {
    v23 = 0;
  }

  v37 = v108[0];
  v93 = *(v108[0] + 40);
  v38 = libaks_system_key_operate(v72, 1, &v93);
  objc_storeStrong((v37 + 40), v93);
  if ((v38 & 1) == 0)
  {
    v9 = createMobileActivationError("issueDCRT_block_invoke", 2238, @"com.apple.MobileActivation.ErrorDomain", -1, *(v108[0] + 40), @"Failed to bump %@.", v70);
    goto LABEL_21;
  }

  v39 = v108[0];
  v92 = *(v108[0] + 40);
  is_legacy = security_committed_uik_is_legacy(&v92);
  objc_storeStrong((v39 + 40), v92);
  if (!is_legacy)
  {
    v41 = *(v108[0] + 40);
    if (v41)
    {
      v9 = createMobileActivationError("issueDCRT_block_invoke", 2250, @"com.apple.MobileActivation.ErrorDomain", -1, v41, @"Failed to query legacy UIK support.");
      goto LABEL_21;
    }
  }

  v65 = platform_supports_activation() ^ 1 | is_legacy;
  if (v65)
  {
    v67 = 0;
    v42 = 1;
  }

  else
  {
    v43 = *(a1 + 40);
    v44 = v108[0];
    v91 = *(v108[0] + 40);
    v67 = copyUCRT(v43, &v91);
    objc_storeStrong((v44 + 40), v91);
    if (!v67)
    {
      v9 = createMobileActivationError("issueDCRT_block_invoke", 2267, @"com.apple.MobileActivation.ErrorDomain", -4, *(v108[0] + 40), @"UCRT is unavailable.");
      goto LABEL_21;
    }

    v42 = 0;
  }

  v45 = v108[0];
  v90 = *(v108[0] + 40);
  v28 = libaks_system_key_collection(v72, 3, v42, 0, &v90);
  objc_storeStrong((v45 + 40), v90);
  if (!v28)
  {
    if (v65)
    {
      v56 = "SIK";
    }

    else
    {
      v56 = "UIK";
    }

    v57 = createMobileActivationError("issueDCRT_block_invoke", 2274, @"com.apple.MobileActivation.ErrorDomain", -11, *(v108[0] + 40), @"Failed to attest %@ to %s.", v70, v56);
    goto LABEL_70;
  }

  v46 = v108[0];
  v89 = *(v108[0] + 40);
  v27 = libaks_system_key_get_public(v72, 3, &v89);
  objc_storeStrong((v46 + 40), v89);
  if (!v27)
  {
    v57 = createMobileActivationError("issueDCRT_block_invoke", 2282, @"com.apple.MobileActivation.ErrorDomain", -1, *(v108[0] + 40), @"Failed to query %@ public key.", v70);
LABEL_70:
    v27 = 0;
    goto LABEL_71;
  }

  v73 = SecAccessControlCreate();
  if (v73)
  {
    v47 = kSecAttrAccessibleUntilReboot;
    if (SecAccessControlSetProtection())
    {
      v48 = *(a1 + 32);
      v49 = v108[0];
      v88 = *(v108[0] + 40);
      ReferenceKeyBlob = createReferenceKeyBlob(v73, 0, v48, &v88);
      objc_storeStrong((v49 + 40), v88);
      if (ReferenceKeyBlob)
      {
        v50 = v108[0];
        v87 = *(v108[0] + 40);
        v29 = security_create_external_representation(ReferenceKeyBlob, 0, &v87);
        objc_storeStrong((v50 + 40), v87);
        if (v29)
        {
          v25 = objc_alloc_init(NSMutableDictionary);
          if (v25)
          {
            v64 = copy_required_dcrt_oids();
            [v25 setObject:v64 forKeyedSubscript:@"OIDSToInclude"];

            [v25 setObject:v28 forKeyedSubscript:@"ClientAttestationData"];
            [v25 setObject:v27 forKeyedSubscript:@"ClientAttestationPublicKey"];
            v66 = [NSNumber numberWithBool:v65 & 1];
            [v25 setObject:v66 forKeyedSubscript:@"scrtAttestation"];

            [v25 setObject:v3 forKeyedSubscript:@"sdcrtAttestation"];
            if ([v3 BOOLValue])
            {
              v51 = [NSNumber numberWithUnsignedInt:2];
            }

            else
            {
              v51 = [NSNumber numberWithUnsignedInt:0];
            }

            v62 = v51;
            [v25 setObject:v51 forKeyedSubscript:@"CertType"];

            if (v23)
            {
              [v25 setObject:v23 forKeyedSubscript:@"NetworkTimeoutInterval"];
            }

            data_ark_set(*(a1 + 40), 0, v77, &__kCFBooleanTrue, 0);
            v63 = *(a1 + 40);
            v68 = *(a1 + 48);
            v78[0] = _NSConcreteStackBlock;
            v78[1] = 3254779904;
            v78[2] = __issueDCRT_block_invoke_2;
            v78[3] = &__block_descriptor_96_e8_32s40s48s56s64bs72r80r88r_e34_v24__0__NSDictionary_8__NSError_16l;
            v84 = &v107;
            v79 = v74;
            v80 = *(a1 + 32);
            v85 = &v101;
            v81 = *(a1 + 40);
            v86 = &v98;
            v82 = v77;
            v83 = *(a1 + 56);
            issueClientCertificateWithReferenceKey(v63, v68, v29, v69, v25, v78);

            v26 = 1;
            v61 = v79;
            goto LABEL_80;
          }

          v60 = createMobileActivationError("issueDCRT_block_invoke", 2316, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
        }

        else
        {
          v60 = createMobileActivationError("issueDCRT_block_invoke", 2308, @"com.apple.MobileActivation.ErrorDomain", -1, *(v108[0] + 40), @"Failed to encode RK as data.");
          v29 = 0;
        }

LABEL_79:
        v26 = 0;
        v25 = 0;
        v61 = *(v108[0] + 40);
        *(v108[0] + 40) = v60;
LABEL_80:

        CFRelease(v73);
        if (ReferenceKeyBlob)
        {
          CFRelease(ReferenceKeyBlob);
        }

        goto LABEL_72;
      }

      v59 = createMobileActivationError("issueDCRT_block_invoke", 2302, @"com.apple.MobileActivation.ErrorDomain", -1, *(v108[0] + 40), @"Failed to create reference key.");
    }

    else
    {
      v59 = createMobileActivationError("issueDCRT_block_invoke", 2296, @"com.apple.MobileActivation.ErrorDomain", -1, cf, @"Failed to set ACL protection to %@.", v47);
    }

    v60 = v59;
    v29 = 0;
    ReferenceKeyBlob = 0;
    goto LABEL_79;
  }

  v57 = createMobileActivationError("issueDCRT_block_invoke", 2291, @"com.apple.MobileActivation.ErrorDomain", -1, cf, @"Failed to create access control.");
LABEL_71:
  v58 = *(v108[0] + 40);
  *(v108[0] + 40) = v57;

  v29 = 0;
  v26 = 0;
  v25 = 0;
LABEL_72:
  if (v67)
  {
    CFRelease(v67);
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v19)
  {
    CFRelease(v19);
  }

  if ((v26 & 1) == 0)
  {
    v30 = *(a1 + 56);
    if (v30)
    {
      (*(v30 + 16))(v30, *(v99[0] + 40), *(v108[0] + 40));
    }
  }

  _Block_object_dispose(&v98, 8);

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v107, 8);
}

void sub_1002FEA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 224), 8);
  _Block_object_dispose((v45 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void issueClientCertificateWithReferenceKey(void *a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = copyMobileActivationSerialQueue();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3254779904;
  v22[2] = __issueClientCertificateWithReferenceKey_block_invoke;
  v22[3] = &__block_descriptor_76_e8_32s40s48s56s64bs_e5_v8__0l;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v28 = a4;
  v27 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  dispatch_async(v16, v22);
}

void __issueDCRT_block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = copyMobileActivationSerialQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3254779904;
  v15[2] = __issueDCRT_block_invoke_3;
  v15[3] = &__block_descriptor_112_e8_32s40s48s56s64s72s80bs88r96r104r_e5_v8__0l;
  v16 = v6;
  v8 = *(a1 + 72);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = v5;
  v22 = *(a1 + 80);
  v9 = *(a1 + 48);
  v23 = *(a1 + 88);
  v10 = *(a1 + 56);
  *&v11 = *(a1 + 64);
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  *v20 = v12;
  *v21 = v11;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, v15);
}

void __issueDCRT_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = createMobileActivationError("issueDCRT_block_invoke_3", 2341, @"com.apple.MobileActivation.ErrorDomain", -1, v2, @"Failed to retrieve %@.", *(a1 + 40));
    v4 = *(*(a1 + 88) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    v6 = v5;
LABEL_9:

    v14 = 0;
    goto LABEL_10;
  }

  v7 = [*(a1 + 48) mutableCopy];
  v8 = [*(a1 + 56) objectForKeyedSubscript:@"ServerResponseDate"];
  [v7 setObject:v8 forKeyedSubscript:@"ServerResponseDate"];

  v9 = [*(a1 + 56) objectForKeyedSubscript:@"RKCertification"];
  v10 = isNSArray(v9);
  v11 = *(*(a1 + 96) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(*(a1 + 96) + 8) + 40);
  if (!v13 || [v13 count] != 2)
  {
    v22 = createMobileActivationError("issueDCRT_block_invoke_3", 2350, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", *(a1 + 40));
    v23 = *(*(a1 + 88) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v6 = v7;
    goto LABEL_9;
  }

  v14 = objc_alloc_init(NSMutableData);
  if (!v14)
  {
    MobileActivationError = createMobileActivationError("issueDCRT_block_invoke_3", 2356, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create data.");
LABEL_15:
    v20 = MobileActivationError;
    v21 = *(a1 + 88);
    goto LABEL_16;
  }

  v15 = [*(*(*(a1 + 96) + 8) + 40) objectAtIndexedSubscript:0];
  [v14 appendData:v15];

  v16 = [*(*(*(a1 + 96) + 8) + 40) objectAtIndexedSubscript:1];
  [v14 appendData:v16];

  v17 = *(a1 + 64);
  v18 = *(*(a1 + 88) + 8);
  obj = *(v18 + 40);
  v19 = storeDCRT(v17, v14, v7, &obj);
  objc_storeStrong((v18 + 40), obj);
  if ((v19 & 1) == 0)
  {
    MobileActivationError = createMobileActivationError("issueDCRT_block_invoke_3", 2364, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 88) + 8) + 40), @"Failed to store %@.", *(a1 + 40));
    goto LABEL_15;
  }

  v30 = @"RKCertification";
  v31 = v14;
  v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v21 = *(a1 + 104);
LABEL_16:
  v27 = *(v21 + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v20;

LABEL_10:
  data_ark_set(*(a1 + 64), 0, *(a1 + 72), &__kCFBooleanFalse, 0);
  v25 = *(a1 + 80);
  if (v25)
  {
    (*(v25 + 16))(v25, *(*(*(a1 + 104) + 8) + 40), *(*(*(a1 + 88) + 8) + 40));
  }
}

void __copy_helper_block_e8_32s40s48s56s64s72s80b88r96r104r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  _Block_object_assign((a1 + 80), *(a2 + 80), 7);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  _Block_object_assign((a1 + 96), *(a2 + 96), 8);
  v10 = *(a2 + 104);

  _Block_object_assign((a1 + 104), v10, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88r96r104r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 104), 8);
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56s64b72r80r88r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  _Block_object_assign((a1 + 64), *(a2 + 64), 7);
  _Block_object_assign((a1 + 72), *(a2 + 72), 8);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  v8 = *(a2 + 88);

  _Block_object_assign((a1 + 88), v8, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72r80r88r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);
  _Block_object_dispose(*(a1 + 72), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56b(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v7, 7);
}

void __destroy_helper_block_e8_32s40s48s56s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void issueCollection(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = copyMobileActivationSerialQueue();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3254779904;
  v16[2] = __issueCollection_block_invoke;
  v16[3] = &__block_descriptor_64_e8_32s40s48s56bs_e5_v8__0l;
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v20 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  dispatch_async(v11, v16);
}

void __issueCollection_block_invoke(uint64_t a1)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__5;
  v48 = __Block_byref_object_dispose__5;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__5;
  v42 = __Block_byref_object_dispose__5;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = 0;
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
  v3 = isNSNumber(v2);

  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    [v4 doubleValue];
    if (v5 <= 0.0)
    {
      v6 = createMobileActivationError("issueCollection_block_invoke", 2413, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v4);
LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = data_ark_copy(*(a1 + 40), 0, @"ActivationState");
  v8 = isNSString(v7);
  v9 = v39[5];
  v39[5] = v8;

  if (([v39[5] isEqualToString:@"Activated"] & 1) == 0)
  {
    v6 = createMobileActivationError("issueCollection_block_invoke", 2422, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated (%@).", v39[5]);
    goto LABEL_12;
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"IgnoreExistingCollection"];
  v11 = v10;
  if (!v10 || (v12 = isNSNumber(v10), v12, v12))
  {
    if (([v11 BOOLValue] & 1) == 0 && collectionAlreadyPerformed(*(a1 + 40)))
    {
      v13 = 0;
      goto LABEL_15;
    }

    v16 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
    if (v16 || (v16 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularOTAProxy"]) != 0 || (v16 = objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"SOCKSProxyHost")) != 0)
    {
    }

    else
    {
      v21 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyPort"];

      if (!v21)
      {
        v22 = v45;
        obj = v45[5];
        v23 = networkReachable(&obj);
        objc_storeStrong(v22 + 5, obj);
        if (!v23)
        {
          v6 = createMobileActivationError("issueCollection_block_invoke", 2445, @"com.apple.MobileActivation.ErrorDomain", -17, v45[5], @"Network is unavailable.");
          goto LABEL_13;
        }
      }
    }

    v13 = data_ark_copy(*(a1 + 40), 0, @"InFieldCollectionInFlight");
    v17 = isNSNumber(v13);

    if (!v17)
    {

      v13 = &__kCFBooleanFalse;
    }

    if (![v13 BOOLValue])
    {
      data_ark_set(*(a1 + 40), 0, @"InFieldCollectionInFlight", &__kCFBooleanTrue, 0);
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      v20 = *(a1 + 48);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3254779904;
      v24[2] = __issueCollection_block_invoke_2;
      v24[3] = &__block_descriptor_80_e8_32s40s48bs56r64r72r_e48_v40__0__NSData_8__NSDictionary_16q24__NSError_32l;
      v28 = &v38;
      v25 = v18;
      v29 = &v44;
      v11 = v11;
      v26 = v11;
      v27 = *(a1 + 56);
      v30 = &v32;
      performInFieldCollection(v25, v19, v20, v24);

      goto LABEL_17;
    }

    v6 = createMobileActivationError("issueCollection_block_invoke", 2458, @"com.apple.MobileActivation.ErrorDomain", -13, 0, @"Another collection request is already in flight.");
    goto LABEL_14;
  }

  v6 = createMobileActivationError("issueCollection_block_invoke", 2431, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"IgnoreExistingCollection");
LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = v45[5];
  v45[5] = v6;

LABEL_15:
  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, v33[5], v45[5]);
  }

LABEL_17:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
}

void sub_1002FFB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL collectionAlreadyPerformed(void *a1)
{
  v1 = data_ark_copy(a1, 0, @"CollectionLastPerformed");
  v2 = isNSString(v1);

  v6 = 0;
  if (v2)
  {
    v3 = copy_suinfo_directory_path();
    v2 = [v3 stringByAppendingPathComponent:@"psc.sui"];

    if (!v2 || (v4 = +[NSFileManager defaultManager], v5 = [(NSFileManager *)v4 fileExistsAtPath:v2 isDirectory:0], v4, v5))
    {
      v6 = 1;
    }
  }

  return v6;
}

void performInFieldCollection(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = dispatch_get_global_queue(0, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3254779904;
  v16[2] = __performInFieldCollection_block_invoke;
  v16[3] = &__block_descriptor_64_e8_32s40s48s56bs_e5_v8__0l;
  v17 = v8;
  v18 = v7;
  v19 = v9;
  v20 = v10;
  v12 = v9;
  v13 = v7;
  v14 = v8;
  v15 = v10;
  dispatch_async(v11, v16);
}

void __issueCollection_block_invoke_2(uint64_t a1, id a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __issueCollection_block_invoke_3;
  block[3] = &__block_descriptor_112_e8_32s40s48s56s64s72bs80r88r96r_e5_v8__0l;
  v12 = *(a1 + 56);
  v23 = *(a1 + 32);
  v21 = *(a1 + 64);
  v13 = *(a1 + 40);
  v30 = a4;
  v24 = v13;
  v25 = v11;
  v26 = v10;
  v27 = v9;
  *&v14 = *(a1 + 48);
  *(&v14 + 1) = v12;
  *&v15 = v21;
  *(&v15 + 1) = *(a1 + 72);
  v29 = v15;
  *v28 = v14;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  v20 = copyMobileActivationSerialQueue();
  dispatch_async(v20, v19);
}

uint64_t __issueCollection_block_invoke_3(uint64_t a1)
{
  v2 = data_ark_copy(*(a1 + 32), 0, @"ActivationState");
  v3 = isNSString(v2);
  v4 = *(*(a1 + 80) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (([*(*(*(a1 + 80) + 8) + 40) isEqualToString:@"Activated"] & 1) == 0)
  {
    MobileActivationError = createMobileActivationError("issueCollection_block_invoke_3", 2480, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated (%@).", *(*(*(a1 + 80) + 8) + 40));
    goto LABEL_11;
  }

  if (([*(a1 + 40) BOOLValue] & 1) != 0 || !collectionAlreadyPerformed(*(a1 + 32)))
  {
    v6 = *(a1 + 104);
    if (v6 != 200)
    {
      if (v6)
      {
        if (v6 != -1)
        {
          v22 = *(a1 + 48);
          v23 = [NSHTTPURLResponse localizedStringForStatusCode:*(a1 + 104)];
          v24 = createMobileActivationError("issueCollection_block_invoke_3", 2495, @"com.apple.MobileActivation.ServerErrorDomain", v6, v22, @"Server error: %ld (%@)", v6, v23);

          v25 = *(a1 + 104);
          v26 = [NSHTTPURLResponse localizedStringForStatusCode:v25];
          v27 = createMobileActivationError("issueCollection_block_invoke_3", 2495, @"com.apple.MobileActivation.ErrorDomain", -6, v24, @"Server error: %ld (%@)", v25, v26);

          v28 = *(*(a1 + 88) + 8);
          v14 = *(v28 + 40);
          *(v28 + 40) = v27;
          goto LABEL_12;
        }

        v7 = *(a1 + 48);
        v8 = @"Internal error.";
        v9 = 2489;
      }

      else
      {
        v7 = *(a1 + 48);
        v8 = @"Network communication error.";
        v9 = 2492;
      }

      MobileActivationError = createMobileActivationError("issueCollection_block_invoke_3", v9, @"com.apple.MobileActivation.ErrorDomain", -6, v7, v8);
LABEL_11:
      v11 = MobileActivationError;
      v12 = *(*(a1 + 88) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
      v14 = v13;
LABEL_12:

      goto LABEL_13;
    }

    v19 = [*(a1 + 56) objectForKeyedSubscript:@"X-Apple-Invalid-Reason"];
    v20 = [*(a1 + 56) objectForKeyedSubscript:@"X-Apple-Retry-After"];
    v21 = isNSString(v19);
    if (v21)
    {

LABEL_26:
      v30 = *(a1 + 104);
      v31 = *(a1 + 48);
      v32 = [NSHTTPURLResponse localizedStringForStatusCode:v30];
      v33 = createMobileActivationError("issueCollection_block_invoke_3", 2503, @"com.apple.MobileActivation.ServerErrorDomain", v30, v31, @"Server error: %ld (%@) / %@ / %@", v30, v32, v19, v20);

      v34 = *(a1 + 104);
      v35 = [NSHTTPURLResponse localizedStringForStatusCode:v34];
      v36 = createMobileActivationError("issueCollection_block_invoke_3", 2503, @"com.apple.MobileActivation.ErrorDomain", -6, v33, @"Server error: %ld (%@) / %@ / %@", v34, v35, v19, v20);

      v37 = *(*(a1 + 88) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;
LABEL_27:

      v14 = v19;
      goto LABEL_12;
    }

    v29 = isNSNumber(v20);

    if (v29)
    {
      goto LABEL_26;
    }

    if (!*(a1 + 64))
    {
      v56 = createMobileActivationError("issueCollection_block_invoke_3", 2508, @"com.apple.MobileActivation.ErrorDomain", -6, *(a1 + 48), @"Invalid server response.");
      v57 = *(*(a1 + 88) + 8);
      v58 = *(v57 + 40);
      *(v57 + 40) = v56;
      v38 = v58;
      goto LABEL_27;
    }

    v39 = +[GestaltHlpr getSharedInstance];
    v40 = [v39 copyAnswer:@"BuildVersion"];

    v41 = isNSString(v40);
    if (v41)
    {
      v42 = [[MACollectionInterface alloc] initWithContext:*(a1 + 32)];
      if (v42)
      {
        v43 = v42;
        v44 = *(a1 + 64);
        v45 = *(*(a1 + 88) + 8);
        obj = *(v45 + 40);
        v46 = [NSJSONSerialization JSONObjectWithData:v44 options:0 error:&obj];
        objc_storeStrong((v45 + 40), obj);
        if (!v46)
        {
          v63 = createMobileActivationError("issueCollection_block_invoke_3", 2526, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to deserialize JSON data: %@", *(*(*(a1 + 88) + 8) + 40));
          v64 = *(*(a1 + 88) + 8);
          v65 = *(v64 + 40);
          *(v64 + 40) = v63;

          v38 = v43;
          goto LABEL_27;
        }

        v47 = [(MACollectionInterface *)v46 objectForKeyedSubscript:@"suinfo"];
        v48 = isNSString(v47);

        if (v48)
        {
          v49 = [[NSData alloc] initWithBase64EncodedString:v47 options:1];
          if (v49)
          {
            v50 = v49;
            v51 = *(*(a1 + 88) + 8);
            v74 = *(v51 + 40);
            v52 = [(MACollectionInterface *)v43 processSUInfo:v49 withError:&v74];
            objc_storeStrong((v51 + 40), v74);
            if (v52)
            {
              data_ark_remove(*(a1 + 32), 0, @"PCRTToken");
              v53 = [*(a1 + 56) objectForKeyedSubscript:@"x-iservice-token"];
              v54 = isNSString(v53);

              if (v54)
              {
                data_ark_set(*(a1 + 32), 0, @"PCRTToken", v53, 1);
              }

              data_ark_set(*(a1 + 32), 0, @"CollectionLastPerformed", v40, 1);

              v55 = v53;
            }

            else
            {
              v71 = createMobileActivationError("issueCollection_block_invoke_3", 2543, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to process SUInfo: %@", *(*(*(a1 + 88) + 8) + 40));
              v72 = *(*(a1 + 88) + 8);
              v73 = *(v72 + 40);
              *(v72 + 40) = v71;

              v55 = v40;
            }

            v70 = v50;
            goto LABEL_48;
          }

          v66 = createMobileActivationError("issueCollection_block_invoke_3", 2538, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode SUInfo.");
        }

        else
        {
          v66 = createMobileActivationError("issueCollection_block_invoke_3", 2532, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid SUInfo: %@", v47);
        }

        v67 = v66;
        v68 = *(*(a1 + 88) + 8);
        v69 = *(v68 + 40);
        *(v68 + 40) = v67;

        v70 = v40;
LABEL_48:

        v38 = v46;
        goto LABEL_27;
      }

      v59 = createMobileActivationError("issueCollection_block_invoke_3", 2520, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create collection interface.");
    }

    else
    {
      v59 = createMobileActivationError("issueCollection_block_invoke_3", 2514, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve OS build.");
    }

    v60 = v59;
    v61 = *(*(a1 + 88) + 8);
    v62 = *(v61 + 40);
    *(v61 + 40) = v60;

    v38 = v40;
    goto LABEL_27;
  }

LABEL_13:
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v15 = copyLoggingHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138543362;
      v77 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to perform collection: %{public}@", buf, 0xCu);
    }

    if (*(a1 + 104) && (mobileactivationErrorHasDomainAndErrorCode(*(*(*(a1 + 88) + 8) + 40), @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFEALL) & 1) == 0)
    {
      writeSplunkLog(*(a1 + 32), 16, *(a1 + 104), "issueCollection_block_invoke", 2564, 0, @"%@", v17, *(*(*(a1 + 88) + 8) + 40));
    }
  }

  data_ark_set(*(a1 + 32), 0, @"InFieldCollectionInFlight", &__kCFBooleanFalse, 0);
  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 88) + 8) + 40));
  }

  return result;
}

void __copy_helper_block_e8_32s40s48s56s64s72b80r88r96r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  _Block_object_assign((a1 + 72), *(a2 + 72), 7);
  _Block_object_assign((a1 + 80), *(a2 + 80), 8);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  v9 = *(a2 + 96);

  _Block_object_assign((a1 + 96), v9, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80r88r96r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);
  _Block_object_dispose(*(a1 + 80), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48b56r64r72r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  _Block_object_assign((a1 + 48), *(a2 + 48), 7);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  v6 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v6, 8);
}

void __destroy_helper_block_e8_32s40s48s56r64r72r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);

  v2 = *(a1 + 32);
}

void issueUCRT(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = copyMobileActivationSerialQueue();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3254779904;
  v16[2] = __issueUCRT_block_invoke;
  v16[3] = &__block_descriptor_64_e8_32s40s48s56bs_e5_v8__0l;
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v20 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  dispatch_async(v11, v16);
}

void __issueUCRT_block_invoke(uint64_t a1)
{
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__5;
  v57 = __Block_byref_object_dispose__5;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__5;
  v51 = __Block_byref_object_dispose__5;
  v52 = 0;
  if (!is_virtual_machine())
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:@"IgnoreExistingUCRT"];
    v3 = v11;
    if (v11)
    {
      v12 = isNSNumber(v11);

      if (!v12)
      {
        v2 = createMobileActivationError("issueUCRT_block_invoke", 2612, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid option (%@).", @"IgnoreExistingUCRT");
        goto LABEL_3;
      }
    }

    v13 = v54;
    obj = v54[5];
    is_legacy = security_committed_uik_is_legacy(&obj);
    objc_storeStrong(v13 + 5, obj);
    if (!is_legacy)
    {
      v15 = v54[5];
      if (v15)
      {
        v2 = createMobileActivationError("issueUCRT_block_invoke", 2618, @"com.apple.MobileActivation.ErrorDomain", -1, v15, @"Failed to query legacy UIK support.");
        goto LABEL_3;
      }
    }

    v8 = data_ark_copy(*(a1 + 40), 0, @"UCRTHealingRequired");
    v16 = isNSNumber(v8);

    if (!v16)
    {

      v8 = &__kCFBooleanFalse;
    }

    v7 = data_ark_copy(*(a1 + 40), 0, @"UIKUpgradeRequired");
    v17 = isNSNumber(v7);

    if (!v17)
    {

      v7 = &__kCFBooleanFalse;
    }

    v18 = *(a1 + 40);
    v19 = v54;
    v45 = v54[5];
    v20 = copyUCRT(v18, &v45);
    objc_storeStrong(v19 + 5, v45);
    v21 = [v3 BOOLValue];
    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1;
    }

    if (((v22 | is_legacy) & 1) == 0 && ([v8 BOOLValue] & 1) == 0 && !objc_msgSend(v7, "BOOLValue"))
    {
      v9 = 0;
      v30 = 0;
      v6 = 0;
      v5 = 0;
LABEL_39:
      CFRelease(v20);
LABEL_40:
      if (v30)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

    v23 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
    if (v23 || (v23 = [*(a1 + 32) objectForKeyedSubscript:@"UseCellularOTAProxy"]) != 0 || (v23 = objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"SOCKSProxyHost")) != 0)
    {
    }

    else
    {
      v33 = [*(a1 + 32) objectForKeyedSubscript:@"SOCKSProxyPort"];

      if (!v33)
      {
        v34 = v54;
        v44 = v54[5];
        v35 = networkReachable(&v44);
        objc_storeStrong(v34 + 5, v44);
        if (!v35)
        {
          v32 = createMobileActivationError("issueUCRT_block_invoke", 2648, @"com.apple.MobileActivation.ErrorDomain", -17, v54[5], @"Network is unavailable.");
          v5 = 0;
          v6 = 0;
          v30 = 0;
          v9 = 0;
          goto LABEL_37;
        }
      }
    }

    v9 = data_ark_copy(*(a1 + 40), 0, @"UCRTIssuanceInFlight");
    v24 = isNSNumber(v9);

    if (!v24)
    {

      v9 = &__kCFBooleanFalse;
    }

    if ([v9 BOOLValue])
    {
      v25 = createMobileActivationError("issueUCRT_block_invoke", 2661, @"com.apple.MobileActivation.ErrorDomain", -13, 0, @"Another UCRT request is already in flight.");
    }

    else
    {
      v26 = objc_alloc_init(NSMutableDictionary);
      if (v26)
      {
        v5 = [*(a1 + 32) mutableCopy];

        [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"UseCommittedUIK"];
        v27 = objc_alloc_init(NSMutableDictionary);
        v28 = v27;
        if (v27)
        {
          [v27 setObject:*(a1 + 48) forKeyedSubscript:@"clientName"];
          data_ark_set(*(a1 + 40), 0, @"UCRTIssuanceInFlight", &__kCFBooleanTrue, 0);
          v29 = *(a1 + 40);
          v36 = *(a1 + 48);
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3254779904;
          v37[2] = __issueUCRT_block_invoke_2;
          v37[3] = &__block_descriptor_80_e8_32s40s48s56bs64r72r_e48_v40__0__NSData_8__NSDictionary_16q24__NSError_32l;
          v42 = &v53;
          v5 = v5;
          v38 = v5;
          v39 = *(a1 + 40);
          v6 = v28;
          v40 = v6;
          v41 = *(a1 + 56);
          v43 = &v47;
          v30 = 1;
          performUCRTOOB(v29, 1, v36, v5, v37);

          v31 = v38;
          goto LABEL_38;
        }

        v32 = createMobileActivationError("issueUCRT_block_invoke", 2678, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
        goto LABEL_36;
      }

      v25 = createMobileActivationError("issueUCRT_block_invoke", 2669, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    }

    v32 = v25;
    v5 = 0;
LABEL_36:
    v6 = 0;
    v30 = 0;
LABEL_37:
    v31 = v54[5];
    v54[5] = v32;
LABEL_38:

    if (!v20)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v2 = createMobileActivationError("issueUCRT_block_invoke", 2604, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"UCRT not supported on virtual machines.");
  v3 = 0;
LABEL_3:
  v4 = v54[5];
  v54[5] = v2;

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_4:
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v48[5], v54[5]);
  }

LABEL_6:

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
}

void sub_100301314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void performUCRTOOB(void *a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a2)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = dispatch_get_global_queue(0, 0);
    v18 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 3254779904;
    v19 = ___performUCRTHealingOOB_block_invoke;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = dispatch_get_global_queue(0, 0);
    v18 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 3254779904;
    v19 = ___performUCRTOOB_block_invoke;
  }

  v22 = v19;
  v23 = &__block_descriptor_64_e8_32s40s48s56bs_e5_v8__0l;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  dispatch_async(v17, &v20);
}

void __issueUCRT_block_invoke_2(uint64_t a1, id a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = copyMobileActivationSerialQueue();
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3254779904;
  v23[2] = __issueUCRT_block_invoke_3;
  v23[3] = &__block_descriptor_112_e8_32s40s48s56s64s72s80bs88r96r_e5_v8__0l;
  v31 = a4;
  v13 = *(a1 + 64);
  v24 = v11;
  v25 = v9;
  v29 = v13;
  v26 = v10;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  *v27 = v19;
  *v28 = v18;
  v30 = *(a1 + 72);
  v20 = v10;
  v21 = v9;
  v22 = v11;
  dispatch_async(v12, v23);
}

uint64_t __issueUCRT_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 104);
  switch(v2)
  {
    case 200:
      if (!*(a1 + 40))
      {
        v3 = *(a1 + 32);
        v4 = @"Invalid server response.";
        v5 = 2707;
        goto LABEL_15;
      }

      v6 = [*(a1 + 48) objectForKeyedSubscript:@"Date"];
      if (!v6)
      {
        MobileActivationError = createMobileActivationError("issueUCRT_block_invoke_3", 2713, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve server response date.");
        goto LABEL_16;
      }

      v7 = v6;
      v8 = objc_alloc_init(NSDateFormatter);
      if (!v8)
      {
        v35 = createMobileActivationError("issueUCRT_block_invoke_3", 2719, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate date formatter.");
        v36 = *(*(a1 + 88) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;

        v27 = v7;
        goto LABEL_17;
      }

      v9 = v8;
      v10 = *(*(a1 + 88) + 8);
      obj = *(v10 + 40);
      v11 = [v8 dateFromServerString:v7 withError:&obj];
      objc_storeStrong((v10 + 40), obj);
      if (!v11)
      {
        v38 = createMobileActivationError("issueUCRT_block_invoke_3", 2725, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 88) + 8) + 40), @"Failed to convert date string.");
        v39 = *(*(a1 + 88) + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;

        v27 = v9;
        goto LABEL_17;
      }

      v12 = +[GestaltHlpr getSharedInstance];
      v13 = [v12 copyAnswer:@"BuildVersion"];

      v14 = isNSString(v13);
      if (v14)
      {
        [*(a1 + 56) setObject:v11 forKeyedSubscript:@"ServerResponseDate"];
        v15 = *(a1 + 40);
        v17 = *(a1 + 56);
        v16 = *(a1 + 64);
        v18 = *(*(a1 + 88) + 8);
        v45 = *(v18 + 40);
        v19 = storeUCRT(v16, v15, v17, &v45);
        objc_storeStrong((v18 + 40), v45);
        if (v19)
        {
          data_ark_set(*(a1 + 64), 0, @"UCRTOOBLastPerformed", v13, 1);
          data_ark_remove(*(a1 + 64), 0, @"UCRTOOBForbiddenCount");
          data_ark_remove(*(a1 + 64), 0, @"UCRTOOBRetryAttempt");
          data_ark_remove(*(a1 + 64), 0, @"UCRTUpgradeRequired");
          data_ark_remove(*(a1 + 64), 0, @"UCRTHealingRequired");
          data_ark_remove(*(a1 + 64), 0, @"UIKUpgradeRequired");
LABEL_29:

          v27 = v13;
          goto LABEL_17;
        }

        v41 = createMobileActivationError("issueUCRT_block_invoke_3", 2740, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 88) + 8) + 40), @"Failed to store UCRT.");
      }

      else
      {
        v41 = createMobileActivationError("issueUCRT_block_invoke_3", 2731, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve OS build.");
      }

      v42 = v41;
      v43 = *(*(a1 + 88) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      goto LABEL_29;
    case 0:
      v3 = *(a1 + 32);
      v4 = @"Network communication error.";
      v5 = 2699;
      goto LABEL_15;
    case -1:
      v3 = *(a1 + 32);
      v4 = @"Internal error.";
      v5 = 2696;
LABEL_15:
      MobileActivationError = createMobileActivationError("issueUCRT_block_invoke_3", v5, @"com.apple.MobileActivation.ErrorDomain", -6, v3, v4);
LABEL_16:
      v29 = MobileActivationError;
      v30 = *(*(a1 + 88) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
      v27 = v31;
      goto LABEL_17;
  }

  v20 = *(a1 + 32);
  v21 = [NSHTTPURLResponse localizedStringForStatusCode:v2];
  v22 = createMobileActivationError("issueUCRT_block_invoke_3", 2702, @"com.apple.MobileActivation.ServerErrorDomain", v2, v20, @"Server error: %ld (%@)", v2, v21);

  v23 = *(a1 + 104);
  v24 = [NSHTTPURLResponse localizedStringForStatusCode:v23];
  v25 = createMobileActivationError("issueUCRT_block_invoke_3", 2702, @"com.apple.MobileActivation.ErrorDomain", -6, v22, @"Server error: %ld (%@)", v23, v24);

  v26 = *(*(a1 + 88) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;
LABEL_17:

  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v33 = *(a1 + 104);
    if (v33)
    {
      writeSplunkLog(*(a1 + 64), 32, v33, "issueUCRT_block_invoke_3", 2758, *(a1 + 72), @"%@", v32, *(*(*(a1 + 88) + 8) + 40));
    }
  }

  data_ark_set(*(a1 + 64), 0, @"UCRTIssuanceInFlight", &__kCFBooleanFalse, 0);
  result = *(a1 + 80);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 96) + 8) + 40), *(*(*(a1 + 88) + 8) + 40));
  }

  return result;
}

void __copy_helper_block_e8_32s40s48s56s64s72s80b88r96r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  _Block_object_assign((a1 + 80), *(a2 + 80), 7);
  _Block_object_assign((a1 + 88), *(a2 + 88), 8);
  v10 = *(a2 + 96);

  _Block_object_assign((a1 + 96), v10, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88r96r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 96), 8);
  _Block_object_dispose(*(a1 + 88), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56b64r72r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  _Block_object_assign((a1 + 56), *(a2 + 56), 7);
  _Block_object_assign((a1 + 64), *(a2 + 64), 8);
  v7 = *(a2 + 72);

  _Block_object_assign((a1 + 72), v7, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64r72r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 72), 8);
  _Block_object_dispose(*(a1 + 64), 8);

  v2 = *(a1 + 32);
}

void __issueClientCertificateWithReferenceKey_block_invoke(uint64_t a1)
{
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__5;
  v90 = __Block_byref_object_dispose__5;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__5;
  v84 = __Block_byref_object_dispose__5;
  v85 = 0;
  v79 = 0;
  if (*(a1 + 32) && *(a1 + 40) && *(a1 + 48))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = [v2 objectForKeyedSubscript:@"scrtAttestation"];
      v4 = isNSNumber(v3);

      if (v4)
      {
        v5 = [*(a1 + 56) objectForKeyedSubscript:@"scrtAttestation"];
        v59 = [v5 BOOLValue];
      }

      else
      {
        v59 = 0;
      }

      v16 = [*(a1 + 56) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
      v17 = isNSNumber(v16);

      if (v17)
      {
        v7 = [*(a1 + 56) objectForKeyedSubscript:@"NetworkTimeoutInterval"];
        [v7 doubleValue];
        if (v18 <= 0.0)
        {
          v6 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 2813, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v7);
          goto LABEL_8;
        }
      }

      else
      {
        v7 = 0;
      }

      v19 = [*(a1 + 56) objectForKeyedSubscript:@"CertType"];
      v20 = isNSNumber(v19);

      if (v20)
      {
        v8 = [*(a1 + 56) objectForKeyedSubscript:@"CertType"];
        v21 = [NSNumber numberWithUnsignedInt:0];
        if ([v8 isEqualToNumber:v21])
        {
        }

        else
        {
          v22 = [NSNumber numberWithUnsignedInt:1];
          if ([v8 isEqualToNumber:v22])
          {
          }

          else
          {
            v23 = [NSNumber numberWithUnsignedInt:2];
            v24 = [v8 isEqualToNumber:v23];

            if ((v24 & 1) == 0)
            {
              v6 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 2822, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"CertType", v8);
              goto LABEL_9;
            }
          }
        }

        v25 = [NSNumber numberWithUnsignedInt:1];
        v26 = [v8 isEqualToNumber:v25];

        if (v26)
        {
          v15 = 0;
          v14 = 1;
        }

        else
        {
          v27 = [NSNumber numberWithUnsignedInt:2];
          v15 = [v8 isEqualToNumber:v27];

          v14 = 0;
        }
      }

      else
      {
        v8 = 0;
        v14 = 0;
        v15 = 0;
      }

      v9 = [*(a1 + 56) objectForKeyedSubscript:@"ClientNameSuffix"];

      if (v9)
      {
        v28 = [*(a1 + 56) objectForKeyedSubscript:@"ClientNameSuffix"];
        v9 = isNSString(v28);

        if (!v9)
        {
          v6 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 2836, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid type for option %@", @"ClientNameSuffix");
          goto LABEL_9;
        }
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v59 = 0;
      v14 = 0;
      v15 = 0;
      v9 = 0;
    }

    v29 = data_ark_copy(*(a1 + 32), 0, @"ActivationState");
    v10 = isNSString(v29);

    if (!v10)
    {
      v10 = @"Unactivated";
    }

    if (v59)
    {
      v30 = 0;
      v12 = 0;
      goto LABEL_37;
    }

    if (([(__CFString *)v10 isEqualToString:@"Activated"]& 1) == 0)
    {
      v6 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 2849, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", v10);
      goto LABEL_10;
    }

    v35 = *(a1 + 32);
    v36 = v87;
    obj = v87[5];
    v30 = copyUCRT(v35, &obj);
    objc_storeStrong(v36 + 5, obj);
    if (!v30)
    {
      v48 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 2855, @"com.apple.MobileActivation.ErrorDomain", -1, v87[5], @"Failed to copy UCRT.");
      v49 = v87[5];
      v87[5] = v48;

      if (mobileactivationErrorHasDomainAndErrorCode(v87[5], @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFCLL))
      {
        data_ark_remove(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
        data_ark_set(*(a1 + 32), 0, @"UCRTHealingRequired", &__kCFBooleanTrue, 1);
        v50 = copyLoggingHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Scheduled UCRT OOB to attempt recovery of missing UCRT.", buf, 2u);
        }

        scheduleXPCActivity(*(a1 + 32), [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String], 5u, 1, 0x3000u, 0x1000u, &__block_literal_global_5);
      }

      goto LABEL_11;
    }

    v37 = v87;
    v76 = v87[5];
    v38 = deleteLegacyUIKIfMismatched(v30, &v79, &v76);
    objc_storeStrong(v37 + 5, v76);
    if (v38)
    {
      if (v79 == 1)
      {
        maLog("issueClientCertificateWithReferenceKey_block_invoke_2", 0, @"Legacy UIK purged.");
        data_ark_remove(*(a1 + 32), 0, @"UIKUpgradeRequired");
      }

      v39 = data_ark_copy(*(a1 + 32), 0, @"UCRTHealingRequired");
      v40 = v81[5];
      v81[5] = v39;

      v41 = isNSNumber(v81[5]);
      if (!v41)
      {
        v42 = v81[5];
        v81[5] = &__kCFBooleanFalse;
      }

      v12 = data_ark_copy(*(a1 + 32), 0, @"UCRTOOBForbidden");
      v43 = isNSNumber(v12);

      if (!v43)
      {

        v12 = &__kCFBooleanFalse;
      }

      if (![v81[5] BOOLValue])
      {
LABEL_37:
        v31 = [*(a1 + 56) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
        if (v31 || (v31 = [*(a1 + 56) objectForKeyedSubscript:@"UseCellularOTAProxy"]) != 0 || (v31 = objc_msgSend(*(a1 + 56), "objectForKeyedSubscript:", @"SOCKSProxyHost")) != 0)
        {
        }

        else
        {
          v52 = [*(a1 + 56) objectForKeyedSubscript:@"SOCKSProxyPort"];

          if (!v52)
          {
            v53 = v87;
            v74 = v87[5];
            v58 = networkReachable(&v74);
            objc_storeStrong(v53 + 5, v74);
            if (!v58)
            {
              v54 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_2", 2932, @"com.apple.MobileActivation.ErrorDomain", -17, v87[5], @"Network is unavailable.");
              v33 = 0;
              v34 = v87[5];
              v87[5] = v54;
LABEL_42:

              if (!v30)
              {
LABEL_65:
                if (v33)
                {
                  goto LABEL_14;
                }

                goto LABEL_12;
              }

LABEL_64:
              CFRelease(v30);
              goto LABEL_65;
            }
          }
        }

        v32 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3254779904;
        block[2] = __issueClientCertificateWithReferenceKey_block_invoke_3;
        block[3] = &__block_descriptor_111_e8_32s40s48s56s64s72s80bs88r96r_e5_v8__0l;
        v61 = *(a1 + 40);
        v62 = v9;
        v68 = &v86;
        v63 = *(a1 + 56);
        v64 = *(a1 + 48);
        v70 = *(a1 + 72);
        v65 = v7;
        v71 = v59;
        v72 = v14;
        v73 = v15;
        v66 = *(a1 + 32);
        v69 = &v80;
        v67 = *(a1 + 64);
        dispatch_async(v32, block);

        v33 = 1;
        v34 = v61;
        goto LABEL_42;
      }

      v44 = v87;
      v75 = v87[5];
      v45 = ucrtHealingSupported(&v75);
      objc_storeStrong(v44 + 5, v75);
      v46 = v87[5];
      if (v46)
      {
        v47 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_2", 2907, @"com.apple.MobileActivation.ErrorDomain", -1, v46, @"Failed to query UCRT healing support.");
      }

      else
      {
        if (v45)
        {
          v55 = [v12 BOOLValue];
          if (v55)
          {
            v56 = 2917;
          }

          else
          {
            v56 = 2921;
          }

          if (v55)
          {
            MobileActivationError = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_2", v56, @"com.apple.MobileActivation.ErrorDomain", -16, 0, @"UCRT healing required but not supported (max failure retries attempted).");
          }

          else
          {
            MobileActivationError = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_2", v56, @"com.apple.MobileActivation.ErrorDomain", -16, 0, @"UCRT healing required but not performed yet (try again later).");
          }
        }

        else
        {
          MobileActivationError = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_2", 2912, @"com.apple.MobileActivation.ErrorDomain", -16, 0, @"UCRT healing required but not supported (user signed into non-HSA2 iCloud account).");
        }

        v47 = MobileActivationError;
      }
    }

    else
    {
      v47 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_2", 2878, @"com.apple.MobileActivation.ErrorDomain", -1, v87[5], @"Failed to delete invalid legacy UIK.");
      v12 = 0;
    }

    v51 = v87[5];
    v87[5] = v47;

    v33 = 0;
    goto LABEL_64;
  }

  v6 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 2801, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input(s).");
  v7 = 0;
LABEL_8:
  v8 = 0;
LABEL_9:
  v9 = 0;
  v10 = 0;
LABEL_10:
  v11 = v87[5];
  v87[5] = v6;

LABEL_11:
  v12 = 0;
LABEL_12:
  v13 = *(a1 + 64);
  if (v13)
  {
    (*(v13 + 16))(v13, 0, v87[5]);
  }

LABEL_14:

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);
}

void sub_100302A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void ucrt_oob_activity_handler(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3254779904;
      block[2] = __ucrt_oob_activity_handler_block_invoke;
      block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v12 = v3;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
      v6 = copyMobileActivationSerialQueue();
      dispatch_async(v6, v5);

      v7 = v12;
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3254779904;
      v9[2] = __ucrt_oob_activity_handler_block_invoke_3;
      v9[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
      v10 = v3;
      v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v9);
      v8 = copyMobileActivationSerialQueue();
      dispatch_async(v8, v5);

      v7 = v10;
    }
  }

  else
  {
    maLog("ucrt_oob_activity_handler", 0, @"Invalid input.");
  }
}

uint64_t deleteLegacyUIKIfMismatched(__SecCertificate *a1, _BYTE *a2, NSError **a3)
{
  v19 = 0;
  is_legacy = security_committed_uik_is_legacy(&v19);
  v7 = v19;
  v8 = v7;
  if (is_legacy || !v7)
  {
    if (is_legacy)
    {
      v18 = v7;
      v13 = certificatePublicKeyMatchesSystemPublicKey(2, 2, a1, &v18);
      v14 = v18;

      if (v13)
      {
        v8 = v14;
      }

      else
      {
        v17 = v14;
        v15 = security_delete_legacy_uik(&v17);
        v8 = v17;

        if ((v15 & 1) == 0)
        {
          MobileActivationError = createMobileActivationError("deleteLegacyUIKIfMismatched", 1563, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to delete legacy UIK.");
          goto LABEL_4;
        }
      }

      if (a2)
      {
        *a2 = v13 ^ 1;
      }
    }

    v12 = 1;
    goto LABEL_15;
  }

  MobileActivationError = createMobileActivationError("deleteLegacyUIKIfMismatched", 1552, @"com.apple.MobileActivation.ErrorDomain", -1, v7, @"Failed to query legacy UIK support.");
LABEL_4:
  v10 = MobileActivationError;

  if (a3)
  {
    v11 = v10;
    v12 = 0;
    *a3 = v10;
  }

  else
  {
    v12 = 0;
  }

  v8 = v10;
LABEL_15:

  return v12;
}

uint64_t ucrtHealingSupported(void *a1)
{
  v11 = 0;
  IsEnabled = FindMyDeviceIsEnabled(&v11);
  v3 = v11;
  v4 = v3;
  if (IsEnabled)
  {
    v10 = v3;
    IsHSA2 = primaryICloudAccountIsHSA2(&v10);
    v6 = v10;

    if (IsHSA2 && !v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v3;
    if (!v3)
    {
LABEL_4:
      v7 = 1;
      goto LABEL_9;
    }
  }

  if (a1)
  {
    v8 = v6;
    v7 = 0;
    *a1 = v6;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

void __issueClientCertificateWithReferenceKey_block_invoke_3(uint64_t a1)
{
  v2 = createBAAClientName(*(a1 + 32), *(a1 + 40));
  error = 0;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  if (!v3)
  {
    v18 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 2963, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v19 = *(*(a1 + 88) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v107 = 0;
    v108 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  [v3 setObject:v2 forKeyedSubscript:@"clientName"];
  v5 = [*(a1 + 48) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
  v6 = isNSNumber(v5);

  v105 = v2;
  if (v6)
  {
    v7 = [*(a1 + 48) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
    v107 = v7;
    if (is_product_cellular() && [v7 BOOLValue])
    {
      v8 = *(*(a1 + 88) + 8);
      v128 = *(v8 + 40);
      v9 = copyCellularProxyDictionary(1, &v128);
      objc_storeStrong((v8 + 40), v128);
      if (!v9)
      {
        v10 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 2974, @"com.apple.MobileActivation.ErrorDomain", -2, *(*(*(a1 + 88) + 8) + 40), @"Failed to query cellular network proxy info.");
        v11 = *(*(a1 + 88) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v108 = 0;
LABEL_8:
        v106 = 0;
        LOBYTE(v21) = 0;
        goto LABEL_56;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v107 = 0;
  }

  v22 = [*(a1 + 48) objectForKeyedSubscript:@"UseCellularOTAProxy"];
  v23 = isNSNumber(v22);

  if (!v23)
  {
    v106 = 0;
LABEL_17:
    v103 = 0;
    goto LABEL_18;
  }

  v24 = [*(a1 + 48) objectForKeyedSubscript:@"UseCellularOTAProxy"];
  v106 = v24;
  if (!is_product_cellular() || ![v24 BOOLValue])
  {
    goto LABEL_17;
  }

  v25 = *(*(a1 + 88) + 8);
  v127 = *(v25 + 40);
  v17 = copyCellularProxyDictionary(0, &v127);
  objc_storeStrong((v25 + 40), v127);

  if (!v17)
  {
    v45 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 2987, @"com.apple.MobileActivation.ErrorDomain", -2, *(*(*(a1 + 88) + 8) + 40), @"Failed to query cellular network proxy info.");
    v46 = *(*(a1 + 88) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = v45;

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v108 = 0;
    v9 = 0;
    LOBYTE(v21) = 0;
    v2 = v105;
    goto LABEL_56;
  }

  v103 = 1;
  v9 = v17;
LABEL_18:
  v26 = [*(a1 + 48) objectForKeyedSubscript:@"SOCKSProxyHost"];
  v27 = isNSString(v26);
  if (!v27)
  {
LABEL_21:

    goto LABEL_23;
  }

  v28 = v27;
  v29 = v4;
  v30 = v9;
  v31 = [*(a1 + 48) objectForKeyedSubscript:@"SOCKSProxyPort"];
  v32 = isNSNumber(v31);

  if (v32)
  {
    v132[0] = @"SOCKSProxyHost";
    v26 = [*(a1 + 48) objectForKeyedSubscript:@"SOCKSProxyHost"];
    v133[0] = v26;
    v132[1] = @"SOCKSProxyPort";
    v33 = [*(a1 + 48) objectForKeyedSubscript:@"SOCKSProxyPort"];
    v133[1] = v33;
    v9 = [NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:2];

    v4 = v29;
    goto LABEL_21;
  }

  v9 = v30;
  v4 = v29;
LABEL_23:
  if (is_internal_build())
  {
    v34 = [NSUserDefaults alloc];
    v35 = [v34 persistentDomainForName:@"com.apple.mobileactivationd"];

    v36 = [v35 objectForKeyedSubscript:@"UseReverseProxy"];
    v37 = isNSNumber(v36);
    v108 = v35;
    if (v37)
    {
      v38 = v37;
      cf = v4;
      v39 = v9;
      v40 = [v35 objectForKeyedSubscript:@"UseReverseProxy"];
      v41 = [v40 BOOLValue];

      if (v41)
      {
        if (v39)
        {
          v9 = v39;
          v42 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 3003, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Cannot set both '%@' override and '%@'/'%@' option.", @"UseReverseProxy", @"UseCellularBootstrapProxy", @"UseCellularOTAProxy");
          v43 = *(*(a1 + 88) + 8);
          v44 = *(v43 + 40);
          *(v43 + 40) = v42;

          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          LOBYTE(v21) = 0;
          v2 = v105;
          v4 = cf;
          goto LABEL_56;
        }

        v9 = copyReverseProxyDictionary(0, 0, 0);
      }

      else
      {
        v9 = v39;
      }

      v4 = cf;
    }

    else
    {
    }
  }

  else
  {
    v108 = 0;
  }

  v104 = v9;
  v48 = [*(a1 + 48) objectForKeyedSubscript:@"SigningKeyAttributes"];
  v49 = isNSDictionary(v48);
  if (!v49)
  {
    v56 = 0;
    goto LABEL_38;
  }

  v50 = v49;
  v51 = [*(a1 + 48) objectForKeyedSubscript:@"SigningKeyAttributes"];
  v52 = kSecUseSystemKeychain;
  v53 = [v51 objectForKeyedSubscript:kSecUseSystemKeychain];
  v54 = isNSNumber(v53);

  if (v54)
  {
    v48 = [*(a1 + 48) objectForKeyedSubscript:@"SigningKeyAttributes"];
    v55 = [v48 objectForKeyedSubscript:v52];
    v56 = [v55 BOOLValue];

LABEL_38:
    goto LABEL_40;
  }

  v56 = 0;
LABEL_40:
  v57 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
  if (v57)
  {
    v58 = v57;
    v130[0] = kSecAttrIsPermanent;
    v130[1] = kSecAttrTokenID;
    v131[0] = &__kCFBooleanFalse;
    v131[1] = kSecAttrTokenIDAppleKeyStore;
    v130[2] = kSecAttrTokenOID;
    v130[3] = kSecAttrAccessControl;
    v131[2] = *(a1 + 56);
    v131[3] = v57;
    v130[4] = kSecUseSystemKeychain;
    v59 = [NSNumber numberWithBool:v56];
    v131[4] = v59;
    v16 = [NSDictionary dictionaryWithObjects:v131 forKeys:v130 count:5];

    v60 = SecKeyCreateWithData(+[NSData data], v16, &error);
    if (!v60)
    {
      v72 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 3034, @"com.apple.MobileActivation.ErrorDomain", -2, error, @"Failed to convert RK data blob.");
      v73 = *(*(a1 + 88) + 8);
      v74 = *(v73 + 40);
      *(v73 + 40) = v72;

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v17 = 0;
      LOBYTE(v21) = 0;
      v2 = v105;
LABEL_54:
      CFRelease(v58);
      goto LABEL_55;
    }

    v61 = *(a1 + 48);
    v62 = *(*(a1 + 88) + 8);
    obj = *(v62 + 40);
    cfa = v60;
    v13 = create_baa_info(v60, v61, &obj);
    objc_storeStrong((v62 + 40), obj);
    v2 = v105;
    if (v13)
    {
      v63 = *(*(a1 + 88) + 8);
      v124 = *(v63 + 40);
      v125 = 0;
      v64 = createXMLRequest(v13, &v125, &v124);
      v14 = v125;
      objc_storeStrong((v63 + 40), v124);
      if (v64)
      {
        v65 = +[GestaltHlpr getSharedInstance];
        v17 = [v65 copyAnswer:@"UniqueDeviceID"];

        v21 = isNSString(v17);
        if (v21)
        {
          v66 = createUserAgentValue(*(a1 + 32), *(a1 + 40));
          v15 = v66;
          v67 = *(a1 + 104);
          if (v67 == 1)
          {
            v68 = @" (DCRT)";
          }

          else
          {
            if (v67 != 3)
            {
              goto LABEL_67;
            }

            v68 = @" (SDCRT)";
          }

          v86 = [v66 stringByAppendingString:v68];

          v15 = v86;
LABEL_67:
          if (v15)
          {
            [v14 setValue:v15 forHTTPHeaderField:@"User-Agent"];
            [v14 setValue:v17 forHTTPHeaderField:@"x-jmet-deviceid"];
            v87 = is_virtual_machine();
            v88 = &VMBAA_URL;
            if (!v87)
            {
              v88 = &BAA_URL;
            }

            v89 = [NSURL URLWithString:*v88];
            [v14 setURL:v89];

            v90 = *(a1 + 64);
            if (v90)
            {
              [v90 doubleValue];
              [v14 setTimeoutInterval:?];
            }

            if (is_internal_build())
            {
              v91 = [v108 objectForKeyedSubscript:?];
              v92 = isNSString(v91);

              if (v92)
              {
                v93 = [v108 objectForKeyedSubscript:@"BAAOverrideURL"];
                v94 = [NSURL URLWithString:v93];
                [v14 setURL:v94];
              }
            }

            v21 = dispatch_get_global_queue(0, 0);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3254779904;
            block[2] = __issueClientCertificateWithReferenceKey_block_invoke_4;
            block[3] = &__block_descriptor_128_e8_32s40s48s56s64s72s80s88s96bs104r112r_e5_v8__0l;
            v120 = *(a1 + 104);
            v95 = *(a1 + 88);
            v2 = v105;
            block[4] = v105;
            v118 = v95;
            v14 = v14;
            v110 = v14;
            v111 = v107;
            v112 = v106;
            v121 = v103;
            v113 = v104;
            v122 = *(a1 + 108);
            v114 = v108;
            v123 = *(a1 + 109);
            v115 = *(a1 + 72);
            v96 = v4;
            v97 = *(a1 + 96);
            v116 = v96;
            v119 = v97;
            v117 = *(a1 + 80);
            dispatch_async(v21, block);

            LOBYTE(v21) = 1;
          }

          else
          {
            v98 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 3067, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.");
            v99 = *(*(a1 + 88) + 8);
            v100 = *(v99 + 40);
            *(v99 + 40) = v98;

            LOBYTE(v21) = 0;
            v2 = v105;
          }

          goto LABEL_53;
        }

        v83 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 3051, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query %@.", @"UniqueDeviceID");
        v84 = *(*(a1 + 88) + 8);
        v85 = *(v84 + 40);
        *(v84 + 40) = v83;

        v15 = 0;
LABEL_53:
        CFRelease(cfa);
        goto LABEL_54;
      }

      v78 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 3045, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 88) + 8) + 40), @"Failed to create XML request.");
      v79 = *(*(a1 + 88) + 8);
      v80 = *(v79 + 40);
      *(v79 + 40) = v78;
    }

    else
    {
      v75 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 3040, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 88) + 8) + 40), @"Failed to create BAA info.");
      v76 = *(*(a1 + 88) + 8);
      v77 = *(v76 + 40);
      *(v76 + 40) = v75;

      v14 = 0;
    }

    v15 = 0;
    v17 = 0;
    LOBYTE(v21) = 0;
    goto LABEL_53;
  }

  v69 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_3", 3019, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
  v70 = *(*(a1 + 88) + 8);
  v71 = *(v70 + 40);
  *(v70 + 40) = v69;

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  LOBYTE(v21) = 0;
  v2 = v105;
LABEL_55:
  v9 = v104;
LABEL_56:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if ((v21 & 1) == 0)
  {
    if ((mobileactivationErrorHasDomainAndErrorCode(*(*(*(a1 + 88) + 8) + 40), @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFDLL) & 1) == 0)
    {
      writeSplunkLog(*(a1 + 72), 17, -1, "issueClientCertificateWithReferenceKey_block_invoke", 3338, v4, @"%@", v81, *(*(*(a1 + 88) + 8) + 40));
    }

    v82 = *(a1 + 80);
    if (v82)
    {
      (*(v82 + 16))(v82, 0, *(*(*(a1 + 88) + 8) + 40));
    }
  }
}

void __issueClientCertificateWithReferenceKey_block_invoke_4(uint64_t a1)
{
  v169 = 0;
  v2 = *(a1 + 120);
  if (v2 > 3)
  {
    goto LABEL_37;
  }

  v3 = [NSString stringWithFormat:off_1003D1948[v2], *(a1 + 32)];
  if (!v3)
  {
    v2 = *(a1 + 120);
LABEL_37:
    v44 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_4", 3128, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid certificate type: %d", v2);
    v45 = *(*(a1 + 104) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = v44;

    v148 = 0;
    cf = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v6 = 0;
LABEL_38:
    v35 = 0;
    v150 = 0;
    v23 = 0;
    v22 = 0;
    v32 = 0;
    goto LABEL_39;
  }

  v4 = v3;
  v5 = copy_log_directory_path();
  v6 = [v5 stringByAppendingPathComponent:v4];

  if (!v6)
  {
    v60 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke_4", 3134, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create log filename.");
    v61 = *(*(a1 + 104) + 8);
    v62 = *(v61 + 40);
    *(v61 + 40) = v60;

    v148 = 0;
    cf = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_38;
  }

  if (is_internal_build() || (*(a1 + 120) - 1) <= 2)
  {
    v7 = formatURLRequest(*(a1 + 40));
    v8 = [v6 stringByAppendingString:@"_request.txt"];
    [(NSMutableString *)v7 writeToFile:v8 atomically:0 encoding:4 error:0];
  }

  v145 = v6;
  if (is_product_cellular())
  {
    if ([*(a1 + 48) BOOLValue])
    {
      v9 = +[MATelephonyInfo sharedInstance];
      v10 = *(*(a1 + 104) + 8);
      v168 = *(v10 + 40);
      v11 = [(MATelephonyInfo *)v9 setCellularBootstrapAssertion:1 withError:&v168];
      objc_storeStrong((v10 + 40), v168);

      if ((v11 & 1) == 0)
      {
        v12 = copyLoggingHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          __issueClientCertificateWithReferenceKey_block_invoke_4_cold_1();
        }
      }
    }

    if ([*(a1 + 56) BOOLValue])
    {
      v13 = +[MATelephonyInfo sharedInstance];
      v14 = *(*(a1 + 104) + 8);
      v167 = *(v14 + 40);
      v15 = [(MATelephonyInfo *)v13 setOTAActivationAssertion:1 withError:&v167];
      objc_storeStrong((v14 + 40), v167);

      if ((v15 & 1) == 0)
      {
        v16 = copyLoggingHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          __issueClientCertificateWithReferenceKey_block_invoke_4_cold_2();
        }
      }
    }
  }

  v17 = a1 + 104;
  v18 = *(a1 + 40);
  v19 = *(a1 + 124);
  v20 = *(a1 + 64);
  v21 = *(*(a1 + 104) + 8);
  v165 = *(v21 + 40);
  v166 = 0;
  v22 = talkToServerWithError(v18, 0, v19, v20, &v166, &v169, &v165);
  v23 = v166;
  objc_storeStrong((v21 + 40), v165);
  if (is_product_cellular())
  {
    if ([*(a1 + 48) BOOLValue])
    {
      v24 = +[MATelephonyInfo sharedInstance];
      v25 = *(*v17 + 8);
      v164 = *(v25 + 40);
      v26 = [(MATelephonyInfo *)v24 setCellularBootstrapAssertion:0 withError:&v164];
      objc_storeStrong((v25 + 40), v164);

      if ((v26 & 1) == 0)
      {
        v27 = copyLoggingHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          __issueClientCertificateWithReferenceKey_block_invoke_4_cold_3();
        }
      }
    }

    if ([*(a1 + 56) BOOLValue])
    {
      v28 = +[MATelephonyInfo sharedInstance];
      v29 = *(*v17 + 8);
      v163 = *(v29 + 40);
      v30 = [(MATelephonyInfo *)v28 setOTAActivationAssertion:0 withError:&v163];
      objc_storeStrong((v29 + 40), v163);

      if ((v30 & 1) == 0)
      {
        v31 = copyLoggingHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          __issueClientCertificateWithReferenceKey_block_invoke_4_cold_4();
        }
      }
    }
  }

  v32 = v145;
  if (is_internal_build() || (*(a1 + 120) - 1) <= 2)
  {
    v33 = formatURLResponse(v22, v169, v23);
    v34 = [v145 stringByAppendingString:@"_response.txt"];
    [(NSMutableString *)v33 writeToFile:v34 atomically:0 encoding:4 error:0];
  }

  v35 = v169;
  if (v169 == 400)
  {
    v73 = -6;
    v144 = v22;
    v74 = v23;
    if ((*(a1 + 125) & 1) == 0)
    {
      v75 = lockcrypto_decode_error(v22, 0);
      v76 = [v75 isEqualToString:@"29:ECC signature verification failed: signature incorrect."];

      if (v76)
      {
        v73 = -16;
      }

      v151 = v73;
      v35 = v169;
      goto LABEL_70;
    }

    v35 = 400;
LABEL_66:
    v151 = -6;
LABEL_70:
    v77 = *(*(*v17 + 8) + 40);
    v78 = [NSHTTPURLResponse localizedStringForStatusCode:v35];
    v79 = [v74 objectForKeyedSubscript:@"HUMBUG_XHEADER_STATUS"];
    v80 = lockcrypto_decode_error(v144, 0);
    v81 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3190, @"com.apple.MobileActivation.ServerErrorDomain", v35, v77, @"Server error: %ld (%@) // %@ (%@)", v35, v78, v79, v80);

    v82 = v169;
    v83 = [NSHTTPURLResponse localizedStringForStatusCode:v169];
    v84 = v74;
    v85 = [v74 objectForKeyedSubscript:@"HUMBUG_XHEADER_STATUS"];
    v86 = lockcrypto_decode_error(v144, 0);
    v87 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3190, @"com.apple.MobileActivation.ErrorDomain", v151, v81, @"Server error: %ld (%@) // %@ (%@)", v82, v83, v85, v86);

    v88 = v85;
    v22 = v144;

    v89 = v83;
    v23 = v84;

    v90 = *(*(a1 + 104) + 8);
    v91 = *(v90 + 40);
    *(v90 + 40) = v87;

    v148 = 0;
    cf = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v6 = 0;
    v35 = 0;
    v150 = 0;
    v32 = v145;
    goto LABEL_39;
  }

  if (v169 != 200)
  {
    if (!v169)
    {
      v36 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3171, @"com.apple.MobileActivation.ErrorDomain", -6, *(*(*v17 + 8) + 40), @"Network communication error.");
      v37 = *(*v17 + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;

      v148 = 0;
      cf = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v6 = 0;
LABEL_75:
      v150 = 0;
      goto LABEL_39;
    }

    v144 = v22;
    v74 = v23;
    goto LABEL_66;
  }

  if (!v22)
  {
    v92 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3195, @"com.apple.MobileActivation.ErrorDomain", -6, *(*(*v17 + 8) + 40), @"Failed to retrieve client certificate.");
    v93 = *(*v17 + 8);
    v94 = *(v93 + 40);
    *(v93 + 40) = v92;

    v148 = 0;
    cf = 0;
    v40 = 0;
    v41 = 0;
LABEL_73:
    v42 = 0;
    v43 = 0;
LABEL_74:
    v6 = 0;
    v35 = 0;
    goto LABEL_75;
  }

  v41 = [v23 objectForKeyedSubscript:@"Date"];
  if (!v41)
  {
    v95 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3201, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve server response date.");
    v96 = *(*v17 + 8);
    v97 = *(v96 + 40);
    *(v96 + 40) = v95;

    v148 = 0;
    cf = 0;
    v40 = 0;
    goto LABEL_73;
  }

  v63 = (a1 + 104);
  v64 = objc_alloc_init(NSDateFormatter);
  v43 = v64;
  if (!v64)
  {
    v98 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3207, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate date formatter.");
    v99 = *(*v63 + 8);
    v100 = *(v99 + 40);
    *(v99 + 40) = v98;

    v148 = 0;
    cf = 0;
    v40 = 0;
    v42 = 0;
    goto LABEL_74;
  }

  v65 = *(*v63 + 8);
  obj = *(v65 + 40);
  v66 = [v64 dateFromServerString:v41 withError:&obj];
  v67 = (v65 + 40);
  v42 = v66;
  objc_storeStrong(v67, obj);
  if (!v42)
  {
    v105 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3213, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v63 + 8) + 40), @"Failed to convert date string.");
    v106 = *(*v63 + 8);
    v107 = *(v106 + 40);
    *(v106 + 40) = v105;

    v148 = 0;
    cf = 0;
    v40 = 0;
    goto LABEL_74;
  }

  v143 = v42;
  v68 = *(*v63 + 8);
  v161 = *(v68 + 40);
  v35 = lockcrypto_decode_pems(v22, "CERTIFICATE", &v161);
  objc_storeStrong((v68 + 40), v161);
  if (!v35 || [v35 count] != 2)
  {
    v101 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3219, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v63 + 8) + 40), @"Failed to decode certificates.");
    v102 = *v63;
LABEL_78:
    v103 = *(v102 + 8);
    v104 = *(v103 + 40);
    *(v103 + 40) = v101;

    v148 = 0;
    cf = 0;
    v40 = 0;
    v6 = 0;
    v150 = 0;
    v42 = v143;
    goto LABEL_39;
  }

  v142 = v35;
  if (is_internal_build())
  {
    v69 = [*(a1 + 72) objectForKeyedSubscript:@"UseQACertificates"];
    v70 = isNSNumber(v69);

    if (v70)
    {
      v71 = [*(a1 + 72) objectForKeyedSubscript:@"UseQACertificates"];
      v72 = [v71 BOOLValue];
    }

    else
    {
      v72 = 0;
    }

    v35 = v142;
  }

  else
  {
    v72 = 0;
  }

  if (*(a1 + 126) == 1)
  {
    if (is_virtual_machine())
    {
      v101 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3231, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Certificate type (%d) is not supported on virtual machines.", *(a1 + 120));
      v102 = *(a1 + 104);
      goto LABEL_78;
    }

    v112 = 3;
  }

  else
  {
    v108 = *(a1 + 127);
    v109 = is_virtual_machine();
    if (v108 == 1)
    {
      if (v109)
      {
        v110 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3238, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Certificate type (%d) is not supported on virtual machines.", *(a1 + 120));
        v111 = *(a1 + 104);
LABEL_104:
        v125 = *(v111 + 8);
        v126 = *(v125 + 40);
        *(v125 + 40) = v110;

        v148 = 0;
        cf = 0;
        v40 = 0;
        v6 = 0;
LABEL_106:
        v150 = 0;
        v35 = v142;
        v42 = v143;
        goto LABEL_39;
      }

      v112 = 5;
    }

    else if (v109)
    {
      v112 = 4;
    }

    else if (*(a1 + 125))
    {
      v112 = 2;
    }

    else
    {
      v112 = 1;
    }
  }

  v113 = *(*v63 + 8);
  v160 = *(v113 + 40);
  v114 = copyRootCertificate(v112, v72, &v160);
  objc_storeStrong((v113 + 40), v160);
  if (!v114)
  {
    v110 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3253, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v63 + 8) + 40), @"Failed to load BAA root CA certificate.");
    v111 = *v63;
    goto LABEL_104;
  }

  v115 = *(*v63 + 8);
  v159 = *(v115 + 40);
  v141 = lockcrypto_cert_from_pem_data(v114, &v159);
  objc_storeStrong((v115 + 40), v159);
  v6 = v114;
  if (!v141)
  {
    v127 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3259, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v63 + 8) + 40), @"Failed to create certificate from pem data.");
    v128 = *(*v63 + 8);
    v129 = *(v128 + 40);
    *(v128 + 40) = v127;

    v148 = 0;
    cf = 0;
    v40 = 0;
    goto LABEL_106;
  }

  v147 = v114;
  v35 = v142;
  v116 = [v142 objectAtIndexedSubscript:0];
  v117 = SecCertificateCreateWithData(kCFAllocatorDefault, v116);

  cf = v117;
  if (!v117)
  {
    v130 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3265, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.");
    v131 = *(*v63 + 8);
    v132 = *(v131 + 40);
    *(v131 + 40) = v130;

    cf = 0;
LABEL_109:
    v148 = 0;
    v150 = 0;
    v42 = v143;
    v6 = v147;
    goto LABEL_114;
  }

  v118 = [v142 objectAtIndexedSubscript:1];
  v119 = SecCertificateCreateWithData(kCFAllocatorDefault, v118);

  if (!v119)
  {
    v133 = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3271, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.");
    v134 = *(*v63 + 8);
    v135 = *(v134 + 40);
    *(v134 + 40) = v133;

    goto LABEL_109;
  }

  v120 = v119;
  v121 = *(a1 + 125);
  v122 = *(*(a1 + 104) + 8);
  v152 = (v122 + 40);
  v6 = v147;
  v148 = v120;
  if (*(a1 + 126) == 1)
  {
    v158 = *(v122 + 40);
    v123 = evaluateAccessoryTrustWithCerts(cf, v120, v141, v121, 1, v143, &v158);
    objc_storeStrong(v152, v158);
    if ((v123 & 1) == 0)
    {
      MobileActivationError = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3279, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v63 + 8) + 40), @"Failed to verify MFi certificate.");
LABEL_113:
      v138 = MobileActivationError;
      v139 = *(*v63 + 8);
      v140 = *(v139 + 40);
      *(v139 + 40) = v138;

      v150 = 0;
      v42 = v143;
      goto LABEL_114;
    }
  }

  else
  {
    v157 = *(v122 + 40);
    v136 = evaluateBAATrustWithCerts(cf, v120, v141, v121, 1, v143, &v157);
    objc_storeStrong(v152, v157);
    if ((v136 & 1) == 0)
    {
      MobileActivationError = createMobileActivationError("issueClientCertificateWithReferenceKey_block_invoke", 3284, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v63 + 8) + 40), @"Failed to verify BAA certificate.");
      goto LABEL_113;
    }
  }

  v171[0] = v142;
  v170[0] = @"RKCertification";
  v170[1] = @"ServerResponseCode";
  v137 = [NSNumber numberWithInteger:v169];
  v170[2] = @"ServerResponseDate";
  v42 = v143;
  v171[1] = v137;
  v171[2] = v143;
  v150 = [NSDictionary dictionaryWithObjects:v171 forKeys:v170 count:3];

LABEL_114:
  v40 = v141;
LABEL_39:
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v47 = v169 == 0;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    writeSplunkLog(*(a1 + 80), 17, v169, "issueClientCertificateWithReferenceKey_block_invoke", 3296, *(a1 + 88), @"%@", v39, *(*(*(a1 + 104) + 8) + 40));
    v146 = v6;
    v48 = v35;
    v49 = v42;
    v50 = v43;
    v51 = v41;
    v52 = v22;
    v53 = v23;
    v54 = v32;
    v55 = copyMobileActivationSerialQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __issueClientCertificateWithReferenceKey_block_invoke_2;
    block[3] = &__block_descriptor_56_e8_32s40r48r_e5_v8__0l;
    v155 = *(a1 + 112);
    v56 = *(a1 + 80);
    v57 = *(a1 + 104);
    v154 = v56;
    v156 = v57;
    dispatch_async(v55, block);
    v58 = v55;
    v32 = v54;
    v23 = v53;
    v22 = v52;
    v41 = v51;
    v43 = v50;
    v42 = v49;
    v35 = v48;
    v6 = v146;
  }

  v59 = *(a1 + 96);
  if (v59)
  {
    (*(v59 + 16))(v59, v150, *(*(*(a1 + 104) + 8) + 40));
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v148)
  {
    CFRelease(v148);
  }
}

void __issueClientCertificateWithReferenceKey_block_invoke_2(uint64_t a1)
{
  v2 = data_ark_copy(*(a1 + 32), 0, @"UCRTHealingRequired");
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = isNSNumber(*(*(*(a1 + 40) + 8) + 40));
  if (!v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = &__kCFBooleanFalse;
  }

  if (mobileactivationErrorHasDomainAndErrorCode(*(*(*(a1 + 48) + 8) + 40), @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFF0) && ([*(*(*(a1 + 40) + 8) + 40) BOOLValue] & 1) == 0)
  {
    data_ark_remove(*(a1 + 32), 0, @"UCRTOOBRetryAttempt");
    data_ark_set(*(a1 + 32), 0, @"UCRTHealingRequired", &__kCFBooleanTrue, 1);
    v8 = copyLoggingHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scheduled UCRT OOB to attempt mismatch recovery.", v9, 2u);
    }

    scheduleXPCActivity(*(a1 + 32), [@"com.apple.mobileactivationd.UCRT.OOB" UTF8String], 5u, 1, 0x3000u, 0x1000u, &__block_literal_global_310);
  }
}

void __copy_helper_block_e8_32s40s48s56s64s72s80s88s96b104r112r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  _Block_object_assign((a1 + 96), *(a2 + 96), 7);
  _Block_object_assign((a1 + 104), *(a2 + 104), 8);
  v12 = *(a2 + 112);

  _Block_object_assign((a1 + 112), v12, 8);
}

void __destroy_helper_block_e8_32s40s48s56s64s72s80s88s96s104r112r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 112), 8);
  _Block_object_dispose(*(a1 + 104), 8);

  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40s48s56s64b(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v8, 7);
}

void __destroy_helper_block_e8_32s40s48s56s64s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

BOOL dcrtOOBAlreadyPerformed(void *a1, int a2, uint64_t a3)
{
  v6 = @"DCRTOOBForbidden";
  v7 = a1;
  v8 = objc_alloc_init(NSMutableDictionary);
  if (a2)
  {
    v9 = @"SDCRTOOBForbidden";

    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"sdcrtAttestation"];
    v6 = v9;
  }

  v10 = [NSNumber numberWithBool:a3];
  [v8 setObject:v10 forKeyedSubscript:@"CanonicalizeDcrtOIDs"];

  v11 = data_ark_copy(v7, 0, v6);
  v12 = copyDCRT(v7, 0, 0, v8, 0);

  v13 = 1;
  if (!v12)
  {
    v14 = isNSNumber(v11);
    if (!v14 || (v15 = v14, v16 = [v11 BOOLValue], v15, (v16 & 1) == 0))
    {
      v13 = 0;
    }
  }

  return v13;
}

uint64_t ucrtOOBAlreadyPerformed(void *a1)
{
  v1 = a1;
  v2 = data_ark_copy(v1, 0, @"UCRTOOBForbidden");
  v3 = copyUCRT(v1, 0);

  if (v3)
  {
    CFRelease(v3);
  }

  else
  {
    v5 = isNSNumber(v2);
    if (!v5 || (v6 = v5, v7 = [v2 BOOLValue], v6, (v7 & 1) == 0))
    {
      v4 = 0;
      goto LABEL_7;
    }
  }

  v4 = 1;
LABEL_7:

  return v4;
}

void handle_deactivate(void *a1, int a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = copy_activation_records_directory_path();
    delete_an_item(v4);

    v5 = copy_uik_path();
    delete_an_item(v5);

    v6 = copy_regulatory_images_directory_path();
    v7 = [v6 stringByAppendingPathComponent:@"regulatory_images.plist"];
    delete_an_item(v7);

    v22 = @"UseSystemKeychainSharediPadOnly";
    v23 = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = 0;
    v9 = delete_identity(@"lockdown-identities", @"com.apple.lockdown.identity.activation", v8, &v21);
    v10 = v21;
    if ((v9 & 1) == 0)
    {
      maLog("handle_deactivate", 0, @"Failed to delete device identity: %@", v10);
    }

    v11 = copy_ucrt_path();
    delete_an_item(v11);

    v20 = v10;
    v12 = libaks_system_key_operate(2, 1, &v20);
    v13 = v20;

    if ((v12 & 1) == 0)
    {
      v14 = copyLoggingHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        handle_deactivate_cold_1();
      }
    }

    v19 = v13;
    v15 = libaks_system_key_operate(2, 2, &v19);
    v16 = v19;

    if ((v15 & 1) == 0)
    {
      v17 = copyLoggingHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        handle_deactivate_cold_2();
      }
    }

    data_ark_remove(v3, 0, @"UCRTOOBForbidden");
    data_ark_remove(v3, 0, @"UCRTOOBForbiddenCount");
    data_ark_remove(v3, 0, @"DCRTOOBForbidden");
    data_ark_remove(v3, 0, @"DCRTOOBForbiddenCount");
    data_ark_remove(v3, 0, @"SDCRTOOBForbidden");
    data_ark_remove(v3, 0, @"SDCRTOOBForbiddenCount");
    data_ark_remove(v3, 0, @"UCRTHealingRequired");
    data_ark_remove(v3, 0, @"UCRTUpgradeRequired");
    data_ark_remove(v3, 0, @"UIKUpgradeRequired");
    data_ark_remove(v3, 0, @"LastActivated");
    data_ark_remove(v3, 0, @"ActivationExpired");
  }

  else
  {
    v16 = 0;
  }

  data_ark_set(v3, 0, @"BrickState", &__kCFBooleanTrue, 1);
  data_ark_set(v3, 0, @"ActivationState", @"Unactivated", 1);
  xpc_activity_unregister([@"com.apple.mobileactivationd.factoryactivation" UTF8String]);
  v18 = gFactoryActivationTransaction;
  gFactoryActivationTransaction = 0;
}

id load_activation_records(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableDictionary);
  if (is_factory_activated(v1))
  {
    v3 = data_ark_copy(v1, 0, @"FactoryActivationRecord");
    if (v3)
    {
      [v2 setObject:v3 forKey:@"DEFAULT_RECORD"];
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    if (!v2)
    {
      goto LABEL_36;
    }

LABEL_34:
    if (![v2 count])
    {

      v2 = 0;
    }

    goto LABEL_36;
  }

  v7 = +[NSFileManager defaultManager];
  v8 = copy_activation_records_directory_path();
  v9 = [NSURL URLWithString:v8];
  v55 = NSURLIsRegularFileKey;
  v10 = [NSArray arrayWithObjects:&v55 count:1];
  v11 = [(NSFileManager *)v7 enumeratorAtURL:v9 includingPropertiesForKeys:v10 options:0 errorHandler:&__block_literal_global_338];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v11;
  v12 = [(NSDirectoryEnumerator *)obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v46 = v2;
    v45 = v1;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v14 = 0;
    v15 = *v51;
    v16 = NSURLIsRegularFileKey;
    do
    {
      v17 = 0;
      v47 = v13;
      do
      {
        v18 = v14;
        if (*v51 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v50 + 1) + 8 * v17);
        v49 = 0;
        [v19 getResourceValue:&v49 forKey:v16 error:0];
        v14 = v49;

        if ([v14 BOOLValue])
        {
          v20 = [v19 path];
          v21 = load_dict(v20);

          if (v21)
          {
            v22 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:@"LDActivationVersion"];
            v23 = isNSNumber(v22);

            if (v23 && [v23 integerValue] <= 1)
            {
              maLog("load_activation_records", 0, @"Deleting out-of-date activation record");
              v24 = [v19 path];
              delete_an_item(v24);
            }

            else
            {
              v25 = v5;
              v26 = [v19 path];
              v27 = [v26 lastPathComponent];
              v28 = [v27 isEqualToString:@"activation_record.plist"];

              v29 = @"DEFAULT_RECORD";
              if (v28 & 1) != 0 || (v30 = [v19 path], v31 = objc_msgSend(v30, "lastPathComponent"), v32 = objc_msgSend(v31, "isEqualToString:", @"pod_record.plist"), v31, v30, v29 = @"POD_RECORD", (v32) || (v33 = objc_msgSend(v19, "path"), v34 = objc_msgSend(v33, "lastPathComponent"), v35 = objc_msgSend(v34, "isEqualToString:", @"unlock_record.plist"), v34, v33, v29 = @"UNLOCK_RECORD", (v35) || (v36 = objc_msgSend(v19, "path"), v37 = objc_msgSend(v36, "lastPathComponent"), v38 = objc_msgSend(v37, "isEqualToString:", @"wildcard_record.plist"), v37, v36, v29 = @"WILDCARD_RECORD", (v38) || (v39 = objc_msgSend(v19, "path"), v40 = objc_msgSend(v39, "lastPathComponent"), v41 = objc_msgSend(v40, "isEqualToString:", @"care_flag.plist"), v40, v39, v29 = @"CARE_FLAG_RECORD", v41))
              {
                v5 = v29;
              }

              else
              {
                v5 = v25;
              }

              v16 = NSURLIsRegularFileKey;
              if (v5)
              {
                [v46 setObject:v21 forKey:v5];
              }
            }

            v4 = v21;
            v6 = v23;
          }

          else
          {
            maLog("load_activation_records", 0, @"Could not load %@", v19);
            v4 = 0;
          }

          v13 = v47;
        }

        v17 = v17 + 1;
      }

      while (v13 != v17);
      v42 = [(NSDirectoryEnumerator *)obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      v13 = v42;
    }

    while (v42);

    v1 = v45;
    v2 = v46;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v3 = 0;
  if (v2)
  {
    goto LABEL_34;
  }

LABEL_36:
  v43 = v2;

  return v2;
}

id is_factory_activated(void *a1)
{
  v1 = data_ark_copy(a1, 0, @"ActivationState");
  v2 = isNSString(v1);

  v3 = [v2 isEqualToString:@"FactoryActivated"];
  return v3;
}

void delete_an_item(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [(NSFileManager *)v2 fileExistsAtPath:v1];

  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v7 = 0;
    v5 = [(NSFileManager *)v4 removeItemAtPath:v1 error:&v7];
    v6 = v7;

    if (v5)
    {
      maLog("delete_an_item", 0, @"Successfully deleted %@", v1);
    }

    else
    {
      maLog("delete_an_item", 0, @"Failed to delete %@: %@", v1, v6);
    }
  }
}

id extract_account_token(void *a1, NSError **a2)
{
  v3 = a1;
  v4 = isNSDictionary(v3);

  if (!v4)
  {
    MobileActivationError = createMobileActivationError("extract_account_token", 3626, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
LABEL_7:
    v7 = MobileActivationError;
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [v3 objectForKeyedSubscript:@"AccountToken"];
  v4 = isNSData(v5);

  if (!v4)
  {
    MobileActivationError = createMobileActivationError("extract_account_token", 3632, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Activation record is missing the account token XML.");
    goto LABEL_7;
  }

  v13 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v13];
  v7 = v13;
  v8 = isNSDictionary(v6);

  if (!v8)
  {
    v9 = createMobileActivationError("extract_account_token", 3638, @"com.apple.MobileActivation.ErrorDomain", -1, v7, @"Failed to serialize data.");

    v6 = 0;
    v7 = v9;
  }

LABEL_8:
  if (a2 && !v6)
  {
    v11 = v7;
    *a2 = v7;
  }

  return v6;
}

uint64_t verify_activation_record_certificates(void *a1, void *a2, void *a3, NSError **a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_17:
    v29 = 0;
    goto LABEL_18;
  }

  v10 = [v8 objectForKeyedSubscript:@"UseFactoryCertificates"];
  v11 = isNSNumber(v10);

  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:@"UseFactoryCertificates"];
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  v17 = [v9 objectForKeyedSubscript:@"UseQACertificates"];
  v18 = isNSNumber(v17);

  if (v18)
  {
    v19 = [v9 objectForKeyedSubscript:@"UseQACertificates"];
    v14 = [v19 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  v20 = [v9 objectForKeyedSubscript:@"UseCommittedUIK"];
  v21 = isNSNumber(v20);

  if (v21)
  {
    v22 = [v9 objectForKeyedSubscript:@"UseCommittedUIK"];
    v15 = [v22 BOOLValue];
  }

  else
  {
    v15 = 0;
  }

  v23 = [v9 objectForKeyedSubscript:@"UseEnhancedValidation"];
  v24 = isNSNumber(v23);

  if (v24)
  {
    v25 = [v9 objectForKeyedSubscript:@"UseEnhancedValidation"];
    v16 = [v25 BOOLValue];
  }

  else
  {
    v16 = 0;
  }

  v26 = [v9 objectForKeyedSubscript:@"SkipUCRTValidation"];
  v27 = isNSNumber(v26);

  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = [v9 objectForKeyedSubscript:@"SkipUCRTValidation"];
  v29 = [v28 BOOLValue];

LABEL_18:
  v30 = [v7 objectForKeyedSubscript:@"UniqueDeviceCertificate"];
  v81 = v7;
  v82 = v6;
  v86 = v30;
  if (!v30)
  {
    goto LABEL_25;
  }

  v31 = isNSData(v30);

  if (!v31)
  {
    v32 = createMobileActivationError("verify_activation_record_certificates", 3730, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid value for UCRT.");
    v76 = 0;
    v77 = 0;
    v33 = 0;
    v34 = 0;
    v84 = 0;
    v85 = 0;
    public_with_intermediate = 0;
    cf = 0;
    v79 = 0;
LABEL_82:
    v78 = 0;
    v80 = 0;
    goto LABEL_83;
  }

  if (v13)
  {
    v32 = createMobileActivationError("verify_activation_record_certificates", 3735, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Unsupported key in activation record for requested validation type (factory): %@", @"UniqueDeviceCertificate");
LABEL_22:
    v77 = 0;
    v33 = 0;
    v34 = 0;
    v84 = 0;
    v85 = 0;
LABEL_80:
    public_with_intermediate = 0;
    cf = 0;
    v79 = 0;
    v76 = 0;
    goto LABEL_81;
  }

  if (v29)
  {
LABEL_25:
    v36 = 0;
    v85 = 0;
    goto LABEL_26;
  }

  v101 = 0;
  v57 = lockcrypto_cert_from_pem_data(v86, &v101);
  v58 = v101;
  v85 = v57;
  if (!v57)
  {
    v32 = createMobileActivationError("verify_activation_record_certificates", 3742, @"com.apple.MobileActivation.ErrorDomain", -1, v58, @"Failed to create certificate from pem data.");

    goto LABEL_22;
  }

  if (v16)
  {
    if (v15)
    {
      v59 = 2;
    }

    else
    {
      v59 = 3;
    }

    v100 = v58;
    v60 = certificatePublicKeyMatchesSystemPublicKey(v59, 2, v57, &v100);
    v36 = v100;

    if ((v60 & 1) == 0)
    {
      MobileActivationError = createMobileActivationError("verify_activation_record_certificates", 3748, @"com.apple.MobileActivation.ErrorDomain", -1, v36, @"UCRT public key does not match UIK public key.");
      goto LABEL_77;
    }

    v58 = v36;
  }

  v99 = v58;
  v61 = verify_ucrt(v86, v9, &v99);
  v36 = v99;

  if ((v61 & 1) == 0)
  {
    writeSplunkLog(v6, 5, -1, "verify_activation_record_certificates", 3754, 0, 0, v62, v74);
    MobileActivationError = createMobileActivationError("verify_activation_record_certificates", 3755, @"com.apple.MobileActivation.ErrorDomain", -1, v36, @"Failed to verify UCRT.");
LABEL_77:
    v32 = MobileActivationError;

    v77 = 0;
    v33 = 0;
    goto LABEL_78;
  }

LABEL_26:
  if (((v14 | v13) & 1) == 0)
  {
    v42 = [v7 objectForKeyedSubscript:@"AccountTokenCertificate"];
    v34 = isNSData(v42);

    if (!v34)
    {
      v32 = createMobileActivationError("verify_activation_record_certificates", 3797, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve account token certificate from activation record.");

      v77 = 0;
      v33 = 0;
LABEL_79:
      v84 = 0;
      goto LABEL_80;
    }

    v95 = v36;
    v43 = lockcrypto_cert_from_pem_data(v34, &v95);
    v44 = v95;

    v80 = v34;
    if (v43)
    {
      v79 = v43;
      if (v16)
      {
        v45 = [v7 objectForKeyedSubscript:@"DeviceCertificate"];
        v46 = isNSData(v45);

        if (v46)
        {
          v94 = v44;
          v47 = lockcrypto_cert_from_pem_data(v46, &v94);
          v48 = v94;

          v78 = v46;
          if (v47)
          {
            cf = v47;
            v93 = v48;
            public_with_intermediate = copyRootCertificate(14, 0, &v93);
            v49 = v93;

            if (!public_with_intermediate)
            {
              v32 = createMobileActivationError("verify_activation_record_certificates", 3828, @"com.apple.MobileActivation.ErrorDomain", -1, v49, @"Failed to load iPhone CA certificate.");

              v77 = 0;
              v33 = 0;
              v34 = 0;
              v84 = 0;
              goto LABEL_106;
            }

            v92 = v49;
            v38 = lockcrypto_cert_from_pem_data(public_with_intermediate, &v92);
            v50 = v92;

            v84 = v38;
            if (!v38)
            {
              v77 = public_with_intermediate;
              v32 = createMobileActivationError("verify_activation_record_certificates", 3834, @"com.apple.MobileActivation.ErrorDomain", -1, v50, @"Failed to create certificate from pem data.");

              v33 = 0;
              v34 = 0;
              v84 = 0;
              public_with_intermediate = 0;
              v76 = 0;
              v31 = 0;
              goto LABEL_56;
            }

            v91 = v50;
            v51 = copyRootCertificate(12, 0, &v91);
            v52 = v91;

            if (v51)
            {
              v90 = v52;
              v34 = lockcrypto_cert_from_pem_data(v51, &v90);
              v53 = v51;
              v54 = v90;

              if (!v34)
              {
                v32 = createMobileActivationError("verify_activation_record_certificates", 3850, @"com.apple.MobileActivation.ErrorDomain", -1, v54, @"Failed to create certificate from pem data.");

                v33 = 0;
                v73 = v53;
                public_with_intermediate = 0;
                v76 = 0;
                v77 = v73;
                goto LABEL_107;
              }

              v77 = v53;
              v89 = v54;
              v55 = lockcrypto_verify_device_cert(cf, v34, v84, &v89);
              v56 = v89;

              if (v55)
              {
                v102[0] = v43;
                v102[1] = v84;
                v31 = [NSArray arrayWithObjects:v102 count:2];
                v88 = v56;
                public_with_intermediate = lockcrypto_extract_public_with_intermediate(v31, &v88);
                v41 = v88;

                if (!public_with_intermediate)
                {
                  v32 = createMobileActivationError("verify_activation_record_certificates", 3867, @"com.apple.MobileActivation.ErrorDomain", -1, v41, @"Failed to extract public key from production cert chain.");

                  v33 = 0;
                  v76 = 0;
                  goto LABEL_83;
                }

                v33 = 0;
                v76 = 0;
                goto LABEL_62;
              }

              v32 = createMobileActivationError("verify_activation_record_certificates", 3857, @"com.apple.MobileActivation.ErrorDomain", -1, v56, @"Failed to verify device certificate.");

              v33 = 0;
            }

            else
            {
              v32 = createMobileActivationError("verify_activation_record_certificates", 3844, @"com.apple.MobileActivation.ErrorDomain", -1, v52, @"Failed to load device CA certificate.");

              v77 = 0;
              v33 = 0;
              v34 = 0;
            }
          }

          else
          {
            v32 = createMobileActivationError("verify_activation_record_certificates", 3818, @"com.apple.MobileActivation.ErrorDomain", -1, v48, @"Failed to create certificate from pem data.");

            v77 = 0;
            v33 = 0;
            v34 = 0;
            cf = 0;
            v84 = 0;
          }

          public_with_intermediate = 0;
LABEL_106:
          v76 = 0;
LABEL_107:
          v31 = 0;
          goto LABEL_83;
        }

        v32 = createMobileActivationError("verify_activation_record_certificates", 3812, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve device certificate from activation record.");

        v77 = 0;
        v33 = 0;
        v34 = 0;
        v84 = 0;
        public_with_intermediate = 0;
      }

      else
      {
        public_with_intermediate = SecCertificateCopyKey(v43);
        if (public_with_intermediate)
        {
          v41 = v44;
          v76 = 0;
          v77 = 0;
          v33 = 0;
          v34 = 0;
          cf = 0;
          v84 = 0;
          v31 = 0;
          v78 = 0;
          goto LABEL_62;
        }

        v32 = createMobileActivationError("verify_activation_record_certificates", 3873, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve certificate public key.");

        v77 = 0;
        v33 = 0;
        v34 = 0;
        v84 = 0;
      }

      cf = 0;
    }

    else
    {
      v32 = createMobileActivationError("verify_activation_record_certificates", 3803, @"com.apple.MobileActivation.ErrorDomain", -1, v44, @"Failed to create certificate from pem data.");

      v77 = 0;
      v33 = 0;
      v34 = 0;
      cf = 0;
      v84 = 0;
      public_with_intermediate = 0;
      v79 = 0;
    }

    v76 = 0;
    v31 = 0;
    v78 = 0;
LABEL_83:
    v64 = 0;
    goto LABEL_84;
  }

  if (v14)
  {
    v37 = 13;
  }

  else
  {
    v37 = 10;
  }

  v98 = v36;
  v38 = copyRootCertificate(v37, v14, &v98);
  v39 = v98;

  if (!v38)
  {
    v32 = createMobileActivationError("verify_activation_record_certificates", 3768, @"com.apple.MobileActivation.ErrorDomain", -1, v39, @"Failed to load activation certificate.");

    v76 = 0;
    v77 = 0;
    v33 = 0;
    v34 = 0;
    cf = 0;
    v84 = 0;
    public_with_intermediate = 0;
    v78 = 0;
    v79 = 0;
    v31 = 0;
    v80 = 0;
LABEL_56:
    v64 = 0;
    goto LABEL_85;
  }

  v97 = v39;
  v77 = v38;
  v33 = lockcrypto_cert_from_pem_data(v38, &v97);
  v40 = v97;

  if (!v33)
  {
    v32 = createMobileActivationError("verify_activation_record_certificates", 3774, @"com.apple.MobileActivation.ErrorDomain", -1, v40, @"Failed to create certificate from pem data.");

LABEL_78:
    v34 = 0;
    goto LABEL_79;
  }

  v103 = v33;
  v96 = v40;
  v76 = [NSArray arrayWithObjects:&v103 count:1];
  public_with_intermediate = lockcrypto_extract_public(v76, &v96);
  v41 = v96;

  if (!public_with_intermediate)
  {
    v32 = createMobileActivationError("verify_activation_record_certificates", 3788, @"com.apple.MobileActivation.ErrorDomain", -1, v41, @"Failed to extract the public key from the factory cert chain.");

    v34 = 0;
    cf = 0;
    v84 = 0;
    v79 = 0;
LABEL_81:
    v31 = 0;
    goto LABEL_82;
  }

  v34 = 0;
  cf = 0;
  v84 = 0;
  v78 = 0;
  v79 = 0;
  v31 = 0;
  v80 = 0;
LABEL_62:
  v65 = [v7 objectForKeyedSubscript:@"AccountToken"];
  v66 = v7;
  v64 = isNSData(v65);

  if (!v64)
  {
    v32 = createMobileActivationError("verify_activation_record_certificates", 3883, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to retrieve account token from activation record.");

LABEL_84:
    v38 = 0;
    goto LABEL_85;
  }

  v67 = [v66 objectForKeyedSubscript:@"AccountTokenSignature"];
  v38 = isNSData(v67);

  if (v38)
  {
    v87 = v41;
    v68 = lockcrypto_verify(public_with_intermediate, v38, v64, &v87);
    v32 = v87;

    if (v68)
    {
      v69 = 1;
      if (!v33)
      {
        goto LABEL_88;
      }

LABEL_87:
      CFRelease(v33);
      goto LABEL_88;
    }

    v70 = createMobileActivationError("verify_activation_record_certificates", 3894, @"com.apple.MobileActivation.ErrorDomain", -1, v32, @"Failed to verify account token signature.");

    v32 = v70;
  }

  else
  {
    v32 = createMobileActivationError("verify_activation_record_certificates", 3889, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to retrieve account token signature from activation record.");
  }

LABEL_85:
  if (a4)
  {
    v71 = v32;
    v69 = 0;
    *a4 = v32;
    if (!v33)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v69 = 0;
  if (v33)
  {
    goto LABEL_87;
  }

LABEL_88:
  if (v34)
  {
    CFRelease(v34);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (public_with_intermediate)
  {
    CFRelease(public_with_intermediate);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  return v69;
}

uint64_t verify_activation_record(void *a1, void *a2, void *a3, NSError **a4)
{
  v72 = a1;
  v6 = a2;
  v7 = a3;
  v8 = isNSDictionary(v6);

  v71 = v6;
  if (!v8)
  {
    maLog("verify_activation_record", 0, @"activation record is invalid");
    v16 = 0;
    v17 = 0;
    v70 = 0;
    v73 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
LABEL_17:
    v69 = 0;
    v74 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_32;
  }

  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"UseFactoryCertificates"];
    v10 = isNSNumber(v9);

    if (v10)
    {
      v11 = [v7 objectForKeyedSubscript:@"UseFactoryCertificates"];
      [v11 BOOLValue];
    }

    v12 = [v7 objectForKeyedSubscript:@"UseEnhancedValidation"];
    v13 = isNSNumber(v12);

    if (v13)
    {
      v14 = [v7 objectForKeyedSubscript:@"UseEnhancedValidation"];
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = 0;
    }

    v21 = [v7 objectForKeyedSubscript:@"SkipActivationRandomnessCheck"];
    v22 = isNSNumber(v21);

    if (v22)
    {
      v23 = [v7 objectForKeyedSubscript:@"SkipActivationRandomnessCheck"];
      v24 = [v23 BOOLValue];

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  v24 = 0;
LABEL_13:
  v76 = 0;
  v17 = extract_account_token(v6, &v76);
  v25 = v76;
  v26 = v25;
  if (!v17)
  {
    v16 = createMobileActivationError("verify_activation_record", 3983, @"com.apple.MobileActivation.ErrorDomain", -1, v25, @"Failed to retrieve account token.");

    v70 = 0;
    v73 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v63 = v24;
  v64 = v25;
  v27 = [v7 objectForKeyedSubscript:@"ActivationRandomness"];
  v28 = isNSString(v27);

  v66 = v15;
  if (v28)
  {
    v70 = [v7 objectForKeyedSubscript:@"ActivationRandomness"];
  }

  else
  {
    v70 = 0;
  }

  v31 = +[GestaltHlpr getSharedInstance];
  v32 = [v31 copyAnswer:@"SerialNumber"];

  v33 = +[GestaltHlpr getSharedInstance];
  v18 = [v33 copyAnswer:@"UniqueDeviceID"];

  v8 = [v17 objectForKeyedSubscript:@"ActivationRandomness"];
  v34 = [v17 objectForKeyedSubscript:@"SerialNumber"];
  v74 = [v17 objectForKeyedSubscript:@"UniqueDeviceID"];
  v65 = [v17 objectForKeyedSubscript:@"MobileEquipmentIdentifier"];
  v30 = [v17 objectForKeyedSubscript:@"InternationalMobileEquipmentIdentity"];
  v73 = v32;
  v35 = isNSString(v32);
  v69 = v34;
  if (v35)
  {
    v36 = v34;
    v37 = isNSString(v34);

    if (v37)
    {
      LODWORD(v35) = [v32 isEqualToString:v36];
    }

    else
    {
      LODWORD(v35) = 0;
    }
  }

  v38 = isNSString(v18);
  if (v38)
  {
    v39 = v38;
    v40 = isNSString(v74);

    if (v40)
    {
      if (v35 & [v18 isEqualToString:v74])
      {
        if (v66)
        {
          v41 = +[GestaltHlpr getSharedInstance];
          v42 = [v41 copyAnswer:@"MobileEquipmentIdentifier"];

          v43 = +[GestaltHlpr getSharedInstance];
          v44 = [v43 copyAnswer:@"InternationalMobileEquipmentIdentity"];
          v45 = v43;
          v46 = v44;

          v67 = v46;
          v62 = v42;
          if (v46 | v30)
          {
            v47 = isNSString(v46);
            v29 = v65;
            if (v47)
            {
              v48 = v47;
              v49 = isNSString(v30);

              if (v49)
              {
                v50 = [v67 isEqualToString:v30] ^ 1;
              }

              else
              {
                v50 = 1;
              }

              v42 = v62;
            }

            else
            {
              v50 = 1;
            }
          }

          else
          {
            v50 = 0;
            v29 = v65;
          }

          if (v42 | v29)
          {
            v54 = isNSString(v42);
            if (v54 && (v55 = v54, v56 = isNSString(v29), v56, v55, v56))
            {
              v57 = [v62 isEqualToString:v29] ^ 1;
            }

            else
            {
              v57 = 1;
            }
          }

          else
          {
            v57 = 0;
          }

          if ((v63 & 1) == 0)
          {
            if (!v70 || (v61 = isNSString(v8), v61, !v61) || ([v70 isEqualToString:v8] & 1) == 0)
            {
              MobileActivationError = createMobileActivationError("verify_activation_record", 4057, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid Randomness (actual, expected): %@, %@", v8, v70);
              goto LABEL_58;
            }
          }

          if ((v50 | v57) == 1)
          {
            MobileActivationError = createMobileActivationError("verify_activation_record", 4064, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid IMEI/MEID.");
LABEL_58:
            v16 = MobileActivationError;

LABEL_59:
            v19 = v62;
            v20 = v67;
            goto LABEL_32;
          }
        }

        else
        {
          v62 = 0;
          v67 = 0;
          v29 = v65;
        }

        v75 = v64;
        v59 = verify_activation_record_certificates(v72, v71, v7, &v75);
        v16 = v75;

        if (v59)
        {
          v52 = 1;
          v19 = v62;
          goto LABEL_34;
        }

        v60 = createMobileActivationError("verify_activation_record", 4071, @"com.apple.MobileActivation.ErrorDomain", -1, v16, @"Failed to verify activation record certificate.");

        v16 = v60;
        goto LABEL_59;
      }
    }
  }

  v16 = createMobileActivationError("verify_activation_record", 4016, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid Serial/UDID.");

  v19 = 0;
  v20 = 0;
  v29 = v65;
LABEL_32:
  if (!a4)
  {
    v52 = 0;
    goto LABEL_36;
  }

  v67 = v20;
  v51 = v16;
  *a4 = v16;
  v52 = 0;
LABEL_34:
  v20 = v67;
LABEL_36:

  return v52;
}

uint64_t handle_activate(void *a1, void *a2, void *a3, NSError **a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v147 = v6;
  v137 = v8;
  v138 = v7;
  if (!v6 || !v7)
  {
    v20 = createMobileActivationError("handle_activate", 4117, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v146 = 0;
    v11 = 0;
LABEL_12:
    v133 = 0;
    v134 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v136 = 0;
    v25 = 0;
    v143 = 0;
    v13 = 0;
LABEL_13:
    v142 = 0;
    v26 = 0;
LABEL_14:
    v139 = 0;
    v140 = 0;
    v141 = 0;
    cf = 0;
    goto LABEL_15;
  }

  v9 = v8;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = v10;
  if (!v10)
  {
    v20 = createMobileActivationError("handle_activate", 4123, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v146 = 0;
    goto LABEL_12;
  }

  if (v9)
  {
    [(NSError *)v10 addEntriesFromDictionary:v9];
  }

  v12 = [v7 objectForKeyedSubscript:@"ActivationRecord"];
  v13 = isNSDictionary(v12);

  v143 = v11;
  v146 = v12;
  if (!v13)
  {
    v20 = createMobileActivationError("handle_activate", 4133, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Message does not contain a valid activation record.");
    v11 = 0;
    v133 = 0;
    v134 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v136 = 0;
    v25 = 0;
    goto LABEL_13;
  }

  if (is_internal_build())
  {
    v14 = [NSUserDefaults alloc];
    v15 = [v14 persistentDomainForName:@"com.apple.mobileactivationd"];

    v16 = [v15 objectForKeyedSubscript:@"UseQACertificates"];
    v17 = isNSNumber(v16);

    if (v17)
    {
      v18 = [v15 objectForKeyedSubscript:@"UseQACertificates"];
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = 0;
    }

    v30 = [v15 objectForKeyedSubscript:@"DSPExpirationDate"];
    v31 = isNSString(v30);

    v136 = v15;
    if (v31)
    {
      v132 = [v15 objectForKeyedSubscript:@"DSPExpirationDate"];
    }

    else
    {
      v132 = 0;
    }
  }

  else
  {
    v136 = 0;
    v132 = 0;
    v19 = 0;
  }

  v32 = [(NSError *)v11 objectForKeyedSubscript:@"UseFactoryCertificates"];
  v33 = isNSNumber(v32);
  if (!v33)
  {

LABEL_36:
    v26 = v132;
    [(NSError *)v11 setObject:&__kCFBooleanFalse forKeyedSubscript:@"UseFactoryCertificates"];
    v43 = [NSNumber numberWithBool:v19];
    [(NSError *)v11 setObject:v43 forKeyedSubscript:@"UseQACertificates"];

    [(NSError *)v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseEnhancedValidation"];
    [(NSError *)v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseEnhancedValidationWithVersionCheck"];
    v163 = 0;
    v6 = v147;
    LOBYTE(v43) = verify_activation_record(v147, v12, v11, &v163);
    v11 = v163;
    if (v43)
    {
      v42 = 0;
      goto LABEL_46;
    }

    v20 = createMobileActivationError("handle_activate", 4192, @"com.apple.MobileActivation.ErrorDomain", -1, v11, @"Failed to validate activation record with production certificates.");
    v44 = v11;
LABEL_39:

    v11 = 0;
    v134 = 0;
    v21 = 0;
LABEL_40:
    v133 = 0;
    v22 = 0;
    v23 = 0;
LABEL_60:
    v24 = 0;
    v25 = 0;
    v13 = 0;
    v142 = 0;
    goto LABEL_14;
  }

  v34 = v33;
  v35 = [(NSError *)v11 objectForKeyedSubscript:@"UseFactoryCertificates"];
  v36 = [v35 BOOLValue];

  if (!v36)
  {
    v12 = v146;
    goto LABEL_36;
  }

  [(NSError *)v11 setObject:&__kCFBooleanFalse forKeyedSubscript:@"UseQACertificates"];
  [(NSError *)v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseEnhancedValidation"];
  [(NSError *)v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseEnhancedValidationWithVersionCheck"];
  v165 = 0;
  v37 = verify_activation_record(v147, v146, v11, &v165);
  v20 = v165;
  v26 = v132;
  if (v37)
  {
LABEL_42:
    v11 = 0;
    v6 = v147;
    if (v20)
    {
      v133 = 0;
      v134 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      cf = 0;
      goto LABEL_15;
    }

    v42 = 1;
    goto LABEL_45;
  }

  v38 = createMobileActivationError("handle_activate", 4160, @"com.apple.MobileActivation.ErrorDomain", -1, v20, @"Failed to validate activation record with factory certificates.");

  if (!is_internal_build() || !is_virtual_machine())
  {
    v20 = v38;
    goto LABEL_42;
  }

  [(NSError *)v11 setObject:&__kCFBooleanFalse forKeyedSubscript:@"UseFactoryCertificates"];
  v39 = [NSNumber numberWithBool:v19];
  [(NSError *)v11 setObject:v39 forKeyedSubscript:@"UseQACertificates"];

  v164 = v38;
  v6 = v147;
  v40 = verify_activation_record(v147, v146, v11, &v164);
  v41 = v164;

  if ((v40 & 1) == 0)
  {
    v20 = createMobileActivationError("handle_activate", 4171, @"com.apple.MobileActivation.ErrorDomain", -1, v41, @"Failed to validate activation record with production certificates.");
    v44 = v41;
    goto LABEL_39;
  }

  v11 = 0;
  v42 = 0;
LABEL_45:
  v12 = v146;
LABEL_46:
  v162 = v11;
  v23 = extract_account_token(v12, &v162);
  v45 = v162;

  if (!v23)
  {
    v20 = createMobileActivationError("handle_activate", 4200, @"com.apple.MobileActivation.ErrorDomain", -1, v45, @"Failed to retrieve account token.");

    v11 = 0;
    v133 = 0;
    v134 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_60;
  }

  v125 = v42;
  v46 = v6;
  v47 = v12;
  v48 = v47;
  v146 = v47;
  v128 = v23;
  if (v47)
  {
    v49 = [v47 objectForKeyedSubscript:@"RegulatoryImages"];
    v50 = isNSArray(v49);

    v51 = [v48 objectForKeyedSubscript:@"RegulatoryInfo"];
    v48 = isNSData(v51);

    if (!(v50 | v48))
    {
      v62 = 0;
      v60 = 0;
      v48 = 0;
      v50 = 0;
      v58 = 0;
      v57 = 0;
      goto LABEL_63;
    }

    v126 = v46;
    v52 = copy_regulatory_images_directory_path();
    if (v52)
    {
      v53 = +[NSFileManager defaultManager];
      v170 = NSFilePosixPermissions;
      v171 = &off_1003FBD50;
      v54 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
      v167 = 0;
      v55 = [(NSFileManager *)v53 createDirectoryAtPath:v52 withIntermediateDirectories:1 attributes:v54 error:&v167];
      v56 = v167;

      if (v55)
      {
        v57 = [v52 stringByAppendingPathComponent:@"regulatory_images.plist"];

        v58 = objc_alloc_init(NSMutableDictionary);
        if (!v58)
        {
          v63 = createMobileActivationError("store_regulatory_images", 272, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");

          v60 = 0;
LABEL_121:
          v52 = v57;
          goto LABEL_68;
        }

        v59 = +[GestaltHlpr getSharedInstance];
        v60 = [v59 copyAnswer:@"ProductVersion"];

        if (!v60)
        {
          v63 = createMobileActivationError("store_regulatory_images", 278, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve product version.");
          v64 = v56;
          goto LABEL_120;
        }

        [v58 setObject:v60 forKeyedSubscript:@"ProductVersion"];
        if (v50)
        {
          [v58 setObject:v50 forKeyedSubscript:@"RegulatoryImages"];
        }

        v46 = v126;
        if (v48)
        {
          [v58 setObject:v48 forKeyedSubscript:@"RegulatoryInfo"];
        }

        v166 = v56;
        v61 = store_dict(v57, v58, &v166);
        v62 = v166;

        if ((v61 & 1) == 0)
        {
          v63 = createMobileActivationError("store_regulatory_images", 293, @"com.apple.MobileActivation.ErrorDomain", -1, v62, @"Failed to store regulatory images at %@.", v57);
          v64 = v62;
LABEL_120:

          goto LABEL_121;
        }

LABEL_63:
        v65 = 1;
        v63 = v45;
        goto LABEL_69;
      }

      v63 = createMobileActivationError("store_regulatory_images", 264, @"com.apple.MobileActivation.ErrorDomain", -1, v56, @"Failed to create %@.", v52);
    }

    else
    {
      v63 = createMobileActivationError("store_regulatory_images", 259, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve regulatory images path.");
    }

    v58 = 0;
  }

  else
  {
    v126 = v46;
    v63 = createMobileActivationError("store_regulatory_images", 249, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.");
    v52 = 0;
    v58 = 0;
    v50 = 0;
  }

  v60 = 0;
LABEL_68:
  v66 = v63;
  v65 = 0;
  v62 = v63;
  v57 = v52;
  v46 = v126;
LABEL_69:

  v67 = v146;
  v68 = v63;

  if ((v65 & 1) == 0)
  {
    v20 = createMobileActivationError("handle_activate", 4206, @"com.apple.MobileActivation.ErrorDomain", -1, v68, @"Failed to store regulatory images.");

    v133 = 0;
    v134 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v13 = 0;
    v141 = 0;
    v142 = 0;
    v139 = 0;
    v140 = 0;
    cf = 0;
    v6 = v147;
    v26 = v132;
    v11 = v128;
    goto LABEL_15;
  }

  v144 = v68;
  if (v125)
  {
    v69 = @"FactoryActivated";
  }

  else
  {
    v69 = @"Activated";
  }

  v21 = v69;
  if ([(__CFString *)v21 isEqualToString:@"FactoryActivated"])
  {
    v11 = v128;
    if (!is_product_cellular())
    {
      v6 = v147;
      v26 = v132;
      goto LABEL_101;
    }

    data_ark_set(v46, 0, @"FactoryActivationRecord", v146, 0);
    v161 = v68;
    v70 = deliver_baseband_ticket(v46, v128, v21, &v161);
    v71 = v161;

    v6 = v147;
    v26 = v132;
    if (v70)
    {
      v144 = v71;
LABEL_101:
      data_ark_remove(v46, 0, @"LastActivated");
      [@"com.apple.mobileactivationd.factoryactivation" UTF8String];
      v96 = os_transaction_create();
      v97 = gFactoryActivationTransaction;
      gFactoryActivationTransaction = v96;

      v98 = [@"com.apple.mobileactivationd.factoryactivation" UTF8String];
      v159[0] = _NSConcreteStackBlock;
      v159[1] = 3254779904;
      v159[2] = __handle_activate_block_invoke;
      v159[3] = &__block_descriptor_40_e8_32s_e17_v16__0__DataArk_8l;
      v127 = v46;
      v160 = v46;
      scheduleXPCActivity(v160, v98, 0x5460u, 0, 0, 0, v159);

      v123 = 0;
      v124 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      cf = 0;
LABEL_102:
      v99 = [v67 objectForKeyedSubscript:@"FairPlayKeyData"];
      v100 = isNSData(v99);

      v134 = v100;
      if (!v100)
      {
        v22 = v124;
        goto LABEL_110;
      }

      v129 = v23;
      v148 = v144;
      v101 = store_fairplay_blob(v127, v100, &v148);
      v102 = v148;

      v22 = v124;
      if (v101)
      {
        v144 = v102;
        v23 = v129;
LABEL_110:
        v104 = +[GestaltHlpr getSharedInstance];
        v105 = [v104 copyAnswer:@"BuildVersion"];

        v106 = isNSString(v105);
        v133 = v105;
        if (v106)
        {
          data_ark_set(v127, 0, @"ActivationState", v21, v125 ^ 1);
          data_ark_set(v127, 0, @"LastActivated", v105, v125 ^ 1);
          data_ark_set(v127, 0, @"BrickState", &__kCFBooleanFalse, v125 ^ 1);
          v131 = 1;
          v13 = v123;
          goto LABEL_18;
        }

        v20 = createMobileActivationError("handle_activate", 4409, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve build version.");

        goto LABEL_117;
      }

      v20 = createMobileActivationError("handle_activate", 4397, @"com.apple.MobileActivation.ErrorDomain", -1, v102, @"Failed to store fairplay blob.");

      v133 = 0;
LABEL_115:
      v23 = v129;
LABEL_117:
      v13 = v123;
      goto LABEL_15;
    }

    v20 = createMobileActivationError("handle_activate", 4223, @"com.apple.MobileActivation.ErrorDomain", -1, v71, @"Failed to deliver baseband ticket.");

    v134 = 0;
    goto LABEL_40;
  }

  v158 = v68;
  v72 = send_activation_record_to_mc(v146, &v158);
  v73 = v158;

  v11 = v128;
  if (!v72)
  {
    [@"com.apple.mobileactivationd" UTF8String];
    if (!os_variant_is_darwinos() || (mobileactivationErrorHasDomainAndErrorCode(v73, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFDLL) & 1) == 0)
    {
      v20 = createMobileActivationError("handle_activate", 4253, @"com.apple.MobileActivation.ErrorDomain", -1, v73, @"Failed to send activation record to managed configuration.");

      v133 = 0;
      v134 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      cf = 0;
      v6 = v147;
      v26 = v132;
      goto LABEL_15;
    }
  }

  v157 = v73;
  updated = store_software_update_configuration_flags(v146, &v157);
  v75 = v157;

  v26 = v132;
  if ((updated & 1) == 0)
  {
    MobileActivationError = createMobileActivationError("handle_activate", 4262, @"com.apple.MobileActivation.ErrorDomain", -1, v75, @"Failed to store software update configuration flags.");
LABEL_126:
    v20 = MobileActivationError;
    v110 = v75;
    goto LABEL_127;
  }

  if (is_product_cellular())
  {
    v156 = v75;
    v76 = deliver_baseband_ticket(v46, v128, v21, &v156);
    v77 = v156;

    if ((v76 & 1) == 0)
    {
      v20 = createMobileActivationError("handle_activate", 4269, @"com.apple.MobileActivation.ErrorDomain", -1, v77, @"Failed to deliver baseband ticket.");
      v110 = v77;
LABEL_127:

      v133 = 0;
      v134 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      cf = 0;
      v6 = v147;
      goto LABEL_15;
    }

    v75 = v77;
  }

  if (!is_product_audio_accessory())
  {
    if (!getMSDKManagedDeviceClass() || (v78 = [getMSDKManagedDeviceClass() sharedInstance], v79 = objc_msgSend(v78, "clearOwnershipWarning"), v78, (v79 & 1) == 0))
    {
      v107 = @"Failed to update demo device ownership warning.";
      v108 = 4276;
      v109 = -1;
LABEL_125:
      MobileActivationError = createMobileActivationError("handle_activate", v108, @"com.apple.MobileActivation.ErrorDomain", v109, 0, v107);
      goto LABEL_126;
    }
  }

  v80 = [v146 objectForKeyedSubscript:@"DeviceCertificate"];
  v81 = isNSData(v80);

  if (!v81)
  {
    v107 = @"Activation record does not contain device certificate.";
    v108 = 4285;
    v109 = -2;
    goto LABEL_125;
  }

  v168 = @"UseSystemKeychainSharediPadOnly";
  v169 = &__kCFBooleanTrue;
  v82 = [NSDictionary dictionaryWithObjects:&v169 forKeys:&v168 count:1];
  v127 = v46;
  v24 = data_ark_copy(v46, 0, @"PrivateKey");
  v83 = isNSData(v24);
  v155 = v75;
  v124 = v81;
  v145 = v82;
  v84 = store_pem_as_identity(v83, v81, @"lockdown-identities", @"com.apple.lockdown.identity.activation", v82, &v155);
  v85 = v155;

  if ((v84 & 1) == 0)
  {
    v20 = createMobileActivationError("handle_activate", 4295, @"com.apple.MobileActivation.ErrorDomain", -1, v85, @"Failed to store activation identity.");

    v133 = 0;
    v134 = 0;
    v23 = 0;
    v13 = 0;
    v141 = 0;
    v142 = 0;
    v139 = 0;
    v140 = 0;
    cf = 0;
    v6 = v147;
    v22 = v124;
    v25 = v145;
    goto LABEL_15;
  }

  post_notification(@"com.apple.mobile.lockdown.activation_identity_changed");
  v129 = [v146 objectForKeyedSubscript:@"UniqueDeviceCertificate"];
  v86 = isNSData(v129);
  if (v86)
  {

    v6 = v147;
    v25 = v82;
LABEL_90:
    v87 = isNSData(v129);

    if (!v87)
    {
      v123 = 0;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      cf = 0;
      goto LABEL_133;
    }

    v154 = v85;
    v88 = lockcrypto_decode_pems(v129, "CERTIFICATE", &v154);
    v89 = v154;

    if (v88)
    {
      v123 = v88;
      v90 = [v88 objectAtIndexedSubscript:0];
      v91 = SecCertificateCreateWithData(kCFAllocatorDefault, v90);

      if (v91)
      {
        v153 = v89;
        cf = v91;
        v92 = lockcrypto_copy_certificate_validity_date(v91, 0, &v153);
        v93 = v153;

        v142 = v92;
        if (v92)
        {
          if (!is_dsp_device())
          {
            v139 = 0;
            v141 = 0;
            goto LABEL_144;
          }

          v94 = v132;
          if (!v132)
          {
            v94 = @"2025-07-20T12:00:00-0700";
          }

          v95 = objc_alloc_init(NSDateFormatter);
          [v95 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
          v139 = v95;
          v132 = v94;
          v141 = [v95 dateFromString:v94];
          if (v141)
          {
            if ([v141 compare:v142] == -1)
            {
              v20 = createMobileActivationError("handle_activate", 4347, @"com.apple.MobileActivation.ErrorDomain", -23, 0, @"Activation has expired (%@ < %@).", v141, v142);

              v133 = 0;
              v134 = 0;
              v140 = 0;
LABEL_155:
              v6 = v147;
              v26 = v132;
              goto LABEL_156;
            }

LABEL_144:
            v116 = +[GestaltHlpr getSharedInstance];
            v117 = [v116 copyAnswer:@"DeviceSupportsBatteryInformation"];

            v140 = v117;
            v118 = isNSNumber(v117);

            if (v118)
            {
              if ([v117 BOOLValue])
              {
                v152 = v93;
                v119 = setBatteryDateOfFirtUse(v142, &v152);
                v120 = v152;

                if ((v119 & 1) == 0)
                {
                  v20 = createMobileActivationError("handle_activate", 4365, @"com.apple.MobileActivation.ErrorDomain", -1, v120, @"Failed to set battery date of first use.");
                  v122 = v120;
                  goto LABEL_154;
                }

                v93 = v120;
              }

              v151 = v93;
              v121 = storeUCRT(v127, v129, v143, &v151);
              v85 = v151;

              if (v121)
              {
                v67 = v146;
                v6 = v147;
                v26 = v132;
                v25 = v145;
LABEL_133:
                v150 = v85;
                v112 = store_activation_record(v67, &v150);
                v113 = v150;

                if (v112)
                {
                  v149 = v113;
                  v114 = set_eligibility_input(v67, &v149);
                  v144 = v149;

                  if (v114)
                  {
                    v67 = v146;
                    v23 = v129;
                    goto LABEL_102;
                  }

                  v115 = createMobileActivationError("handle_activate", 4387, @"com.apple.MobileActivation.ErrorDomain", -1, v144, @"Failed to set eligibility input.");

                  v133 = 0;
                  v134 = 0;
                  v20 = v115;
                }

                else
                {
                  v20 = createMobileActivationError("handle_activate", 4380, @"com.apple.MobileActivation.ErrorDomain", -1, v113, @"Failed to store activation record.");

                  v133 = 0;
                  v134 = 0;
                }

                v22 = v124;
                goto LABEL_115;
              }

              v20 = createMobileActivationError("handle_activate", 4372, @"com.apple.MobileActivation.ErrorDomain", -1, v85, @"Failed to store UCRT.");
              v122 = v85;
            }

            else
            {
              v20 = createMobileActivationError("handle_activate", 4359, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve '%@'.", @"DeviceSupportsBatteryInformation");
              v122 = v93;
            }

LABEL_154:

            v133 = 0;
            v134 = 0;
            goto LABEL_155;
          }

          v26 = v94;
          v20 = createMobileActivationError("handle_activate", 4339, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create date from %@ (must be in format '%@').", v94, v95);

          v133 = 0;
          v134 = 0;
          v140 = 0;
          v141 = 0;
          v6 = v147;
        }

        else
        {
          v20 = createMobileActivationError("handle_activate", 4325, @"com.apple.MobileActivation.ErrorDomain", -1, v93, @"Failed to copy certificate validity date.");

          v133 = 0;
          v134 = 0;
          v141 = 0;
          v142 = 0;
          v139 = 0;
          v140 = 0;
        }
      }

      else
      {
        v20 = createMobileActivationError("handle_activate", 4319, @"com.apple.MobileActivation.ErrorDomain", -1, v89, @"Failed to create certificate from pem data.");

        v133 = 0;
        v134 = 0;
        v141 = 0;
        v142 = 0;
        v139 = 0;
        v140 = 0;
        cf = 0;
      }

LABEL_156:
      v22 = v124;
      v25 = v145;
      goto LABEL_115;
    }

    v20 = createMobileActivationError("handle_activate", 4313, @"com.apple.MobileActivation.ErrorDomain", -1, v89, @"Failed to query certificate(s) from pem data.");
    v111 = v89;
    goto LABEL_137;
  }

  v6 = v147;
  v25 = v82;
  if (is_internal_build() && is_virtual_machine())
  {
    goto LABEL_90;
  }

  v20 = createMobileActivationError("handle_activate", 4306, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Activation record does not contain a UCRT.");
  v111 = v85;
LABEL_137:

  v133 = 0;
  v134 = 0;
  v13 = 0;
  v141 = 0;
  v142 = 0;
  v139 = 0;
  v140 = 0;
  cf = 0;
  v22 = v124;
  v23 = v129;
LABEL_15:
  handle_deactivate(v6, 1);
  v144 = v20;
  if (a4)
  {
    v27 = v20;
    v131 = 0;
    *a4 = v20;
  }

  else
  {
    v131 = 0;
  }

LABEL_18:
  v28 = data_ark_copy(v6, 0, @"ActivationState");
  maLog("handle_activate", 0, @"Activation State: %@", v28);

  if (cf)
  {
    CFRelease(cf);
  }

  return v131;
}

void factory_activation_activity_handler(void *a1)
{
  v1 = a1;
  v2 = copyMobileActivationSerialQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __factory_activation_activity_handler_block_invoke;
  block[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

id getMSDKManagedDeviceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSDKManagedDeviceClass_softClass;
  v7 = getMSDKManagedDeviceClass_softClass;
  if (!getMSDKManagedDeviceClass_softClass)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3254779904;
    v3[2] = __getMSDKManagedDeviceClass_block_invoke;
    v3[3] = &__block_descriptor_40_e8_32r_e5_v8__0l;
    v3[4] = &v4;
    __getMSDKManagedDeviceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1003098A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t store_activation_record(void *a1, NSError **a2)
{
  v3 = a1;
  v4 = copy_activation_records_directory_path();
  if (!v4)
  {
    v12 = createMobileActivationError("store_activation_record", 319, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve activation records path.");
    goto LABEL_7;
  }

  v5 = +[NSFileManager defaultManager];
  v19 = NSFilePosixPermissions;
  v20 = &off_1003FBD50;
  v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v18 = 0;
  v7 = [(NSFileManager *)v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v6 error:&v18];
  v8 = v18;

  if ((v7 & 1) == 0)
  {
    v12 = createMobileActivationError("store_activation_record", 325, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to create %@.", v4);

LABEL_7:
    v10 = 0;
    if (!a2)
    {
LABEL_10:
      v13 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v14 = v12;
    v13 = 0;
    *a2 = v12;
LABEL_11:
    v9 = v4;
    goto LABEL_12;
  }

  v9 = [v4 stringByAppendingPathComponent:@"activation_record.plist"];

  v10 = [NSMutableDictionary dictionaryWithDictionary:v3];
  v11 = [NSNumber numberWithUnsignedChar:2];
  [(NSMutableDictionary *)v10 setObject:v11 forKeyedSubscript:@"LDActivationVersion"];

  v17 = v8;
  LOBYTE(v11) = store_dict(v9, v10, &v17);
  v12 = v17;

  if ((v11 & 1) == 0)
  {
    v15 = createMobileActivationError("store_activation_record", 335, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to write activation record to %@.", v9);

    v4 = v9;
    v12 = v15;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v13 = 1;
LABEL_12:

  return v13;
}

uint64_t handle_unbrick(void *a1, void *a2)
{
  v6 = 0;
  v3 = dealwith_activation(a1, &v6);
  v4 = v6;
  if (a2 && (v3 & 1) == 0)
  {
    v4 = v4;
    *a2 = v4;
  }

  return v3;
}

uint64_t handle_recert(void *a1, void *a2, void *a3, NSError **a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v55 = v8;
  v56 = v6;
  if (!v7)
  {
    v31 = createMobileActivationError("handle_recert", 4468, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Input invalid.");
    v13 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v33 = 0;
    v22 = 0;
    v26 = 0;
    v11 = 0;
LABEL_23:
    v32 = 0;
    v54 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = v10;
  if (!v10)
  {
    v31 = createMobileActivationError("handle_recert", 4474, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v13 = 0;
LABEL_22:
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v33 = 0;
    v22 = 0;
    v26 = 0;
    goto LABEL_23;
  }

  if (v9)
  {
    [v10 addEntriesFromDictionary:v9];
  }

  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseEnhancedValidation"];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseEnhancedValidationWithVersionCheck"];
  v12 = [v7 objectForKeyedSubscript:@"certify-me"];
  v13 = isNSDictionary(v12);

  if (!v13)
  {
    v31 = createMobileActivationError("handle_recert", 4487, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Message did not contain a certification record.");
    goto LABEL_22;
  }

  v60 = 0;
  v14 = extract_account_token(v13, &v60);
  v15 = v60;
  v48 = v14;
  if (!v14)
  {
    v34 = createMobileActivationError("handle_recert", 4493, @"com.apple.MobileActivation.ErrorDomain", -1, v15, @"Failed to retrieve account token.");

    v31 = v34;
    goto LABEL_22;
  }

  v16 = [v9 objectForKeyedSubscript:@"ReCertRandomness"];
  v17 = isNSString(v16);

  if (!v17)
  {
    v36 = createMobileActivationError("handle_recert", 4499, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid nonce.");

    v31 = v36;
    v18 = 0;
LABEL_31:
    v33 = 0;
    v22 = 0;
    v32 = 0;
    v54 = 0;
    v26 = v48;
    goto LABEL_24;
  }

  v18 = [v14 objectForKeyedSubscript:@"ActivationRandomness"];
  v19 = isNSString(v18);

  if (!v19)
  {
    v37 = createMobileActivationError("handle_recert", 4505, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"No activation randomness in the record.");

    v31 = v37;
    v17 = 0;
    goto LABEL_31;
  }

  v47 = v18;
  if (([v16 isEqualToString:v18] & 1) == 0)
  {
    v38 = createMobileActivationError("handle_recert", 4510, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"The randomness does not match.");

    v31 = v38;
LABEL_34:
    v17 = 0;
    v33 = 0;
    v22 = 0;
LABEL_35:
    v32 = 0;
    v54 = 0;
    v18 = v47;
    v26 = v48;
    goto LABEL_24;
  }

  data_ark_remove(v6, 0, @"ReCertRandomness");
  v59 = v15;
  v20 = verify_activation_record_certificates(v6, v13, v11, &v59);
  v21 = v59;

  if ((v20 & 1) == 0)
  {
    v39 = createMobileActivationError("handle_recert", 4520, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Could not verify record with production certificates.");

    v31 = v39;
    goto LABEL_34;
  }

  v22 = [v13 objectForKeyedSubscript:@"DeviceCertificate"];
  v23 = isNSData(v22);

  if (!v23)
  {
    v40 = createMobileActivationError("handle_recert", 4526, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Activation record does not contain device certificate.");

    v31 = v40;
    v17 = 0;
    v33 = 0;
    goto LABEL_35;
  }

  v53 = v21;
  v17 = data_ark_copy(v6, 0, @"ActivationState");
  v24 = isNSString(v17);

  if (!v24)
  {
    v25 = @"Unactivated";

    v17 = v25;
  }

  v18 = v47;
  v26 = v48;
  if (([(__CFString *)v17 isEqualToString:@"Activated"]& 1) == 0)
  {
    v41 = createMobileActivationError("handle_recert", 4536, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", v17);

    v31 = v41;
    v33 = 0;
    goto LABEL_23;
  }

  v46 = v22;
  v63 = @"UseSystemKeychainSharediPadOnly";
  v64 = &__kCFBooleanTrue;
  v58 = v53;
  v45 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v27 = delete_identity(@"lockdown-identities", @"com.apple.lockdown.identity.activation", v45, &v58);
  v51 = v58;

  if (v27)
  {
    v61 = @"UseSystemKeychainSharediPadOnly";
    v62 = &__kCFBooleanTrue;
    v28 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v49 = data_ark_copy(v6, 0, @"PrivateKey");
    v29 = isNSData(v49);
    v57 = v51;
    v22 = v46;
    v54 = v28;
    v44 = store_pem_as_identity(v29, v46, @"lockdown-identities", @"com.apple.lockdown.identity.activation", v28, &v57);
    v30 = v57;

    if (v44)
    {
      post_notification(@"com.apple.mobile.lockdown.activation_identity_changed");
      v52 = 1;
      v31 = v30;
      v32 = v45;
      goto LABEL_26;
    }

    v43 = createMobileActivationError("handle_recert", 4556, @"com.apple.MobileActivation.ErrorDomain", -1, v30, @"Failed to store activation identity.");

    v31 = v43;
    v32 = v45;
    v33 = v49;
  }

  else
  {
    v42 = createMobileActivationError("handle_recert", 4546, @"com.apple.MobileActivation.ErrorDomain", -1, v51, @"Failed to delete existing identity.");

    v31 = v42;
    v33 = 0;
    v54 = 0;
    v32 = v45;
    v22 = v46;
  }

LABEL_24:
  if (!a4)
  {
    v52 = 0;
    goto LABEL_28;
  }

  v49 = v33;
  v31 = v31;
  v52 = 0;
  *a4 = v31;
LABEL_26:
  v33 = v49;
LABEL_28:

  return v52;
}

id __factory_activation_activity_handler_block_invoke(uint64_t a1)
{
  result = is_factory_activated(*(a1 + 32));
  if (result)
  {
    maLog("factory_activation_activity_handler_block_invoke", 0, @"Time's up Cinderella, rebooting!");

    return _reboot3(0x8000000000000000);
  }

  return result;
}

void dcrt_oob_load_spreading_activity_handler(void *a1, char a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = __dcrt_oob_load_spreading_activity_handler_block_invoke;
  v5[3] = &__block_descriptor_41_e8_32s_e5_v8__0l;
  v7 = a2;
  v6 = a1;
  v2 = v6;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v5);
  v4 = copyMobileActivationSerialQueue();
  dispatch_async(v4, v3);
}

void __dcrt_oob_load_spreading_activity_handler_block_invoke(uint64_t a1)
{
  v2 = kMASDCRTUpgradeRequired;
  if (!*(a1 + 40))
  {
    v2 = kMADCRTUpgradeRequired;
  }

  v3 = *v2;
  v4 = kMASDCRTOOBActivityID;
  if (!*(a1 + 40))
  {
    v4 = kMADCRTOOBActivityID;
  }

  v5 = *v4;
  if (*(a1 + 40))
  {
    v6 = @"SDCRT";
  }

  else
  {
    v6 = @"DCRT";
  }

  v7 = v6;
  if (!dcrtOOBAlreadyPerformed(*(a1 + 32), *(a1 + 40), 1))
  {
    data_ark_set(*(a1 + 32), 0, v3, &__kCFBooleanTrue, 1);
    v8 = copyLoggingHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ is missing 1+ canonical OIDs. Scheduling %{public}@ OOB activity.", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = [(__CFString *)v5 UTF8String];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __dcrt_oob_load_spreading_activity_handler_block_invoke_522;
    v11[3] = &__block_descriptor_33_e17_v16__0__DataArk_8l;
    v12 = *(a1 + 40);
    scheduleXPCActivity(v9, v10, 5u, 1, 0x4000u, 0x1000u, v11);
  }
}

void dcrt_oob_activity_handler(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = @"DCRTUpgradeRequired";
  v7 = @"DCRTOOBRetryAttempt";
  v8 = @"DCRTIssuanceInFlight";
  v9 = @"com.apple.mobileactivationd.DCRT.OOB";
  v10 = @"DCRTOOBForbidden";
  v11 = @"DCRTOOBLastPerformed";
  v12 = @"DCRTOOBForbiddenCount";
  if (v5)
  {
    v29 = v11;
    v13 = a3;
    if (a2)
    {
      v24 = @"SDCRTUpgradeRequired";

      v27 = @"SDCRTOOBRetryAttempt";
      v25 = @"SDCRTIssuanceInFlight";

      v14 = @"com.apple.mobileactivationd.SDCRT.OOB";
      v15 = @"SDCRTOOBForbidden";

      v16 = v5;
      v17 = @"SDCRTOOBLastPerformed";

      v18 = @"SDCRTOOBForbiddenCount";
      v19 = v25;
      v7 = v27;
      v26 = v15;
      v28 = v19;
      v9 = v14;
      v29 = v17;
      v5 = v16;
      v12 = v18;
      v6 = v24;
      v20 = @"SDCRT";
      if (!v13)
      {
LABEL_4:
        block[0] = _NSConcreteStackBlock;
        block[1] = 3254779904;
        block[2] = __dcrt_oob_activity_handler_block_invoke_525;
        block[3] = &__block_descriptor_105_e8_32s40s48s56s64s72s80s88s96s_e5_v8__0l;
        v31 = v5;
        v6 = v6;
        v32 = v6;
        v40 = a2;
        v7 = v7;
        v33 = v7;
        v8 = v28;
        v34 = v8;
        v35 = v20;
        v9 = v9;
        v36 = v9;
        v10 = v26;
        v37 = v10;
        v11 = v29;
        v38 = v11;
        v12 = v12;
        v39 = v12;
        v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
        v22 = copyMobileActivationSerialQueue();
        dispatch_async(v22, v21);

        goto LABEL_9;
      }
    }

    else
    {
      v26 = v10;
      v28 = v8;
      v20 = @"DCRT";
      if (!v13)
      {
        goto LABEL_4;
      }
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3254779904;
    v41[2] = __dcrt_oob_activity_handler_block_invoke;
    v41[3] = &__block_descriptor_57_e8_32s40s48s_e5_v8__0l;
    v42 = v5;
    v7 = v7;
    v43 = v7;
    v9 = v9;
    v44 = v9;
    v45 = a2;
    v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v41);
    v23 = copyMobileActivationSerialQueue();
    dispatch_async(v23, v21);

    v10 = v26;
    v8 = v28;
    v11 = v29;
    goto LABEL_9;
  }

  v21 = copyLoggingHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
  }

LABEL_9:
}

void __dcrt_oob_activity_handler_block_invoke(uint64_t a1)
{
  data_ark_remove(*(a1 + 32), 0, *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) UTF8String];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __dcrt_oob_activity_handler_block_invoke_2;
  v4[3] = &__block_descriptor_33_e17_v16__0__DataArk_8l;
  v5 = *(a1 + 56);
  scheduleXPCActivity(v2, v3, 5u, 1, 0x4000u, 0x1000u, v4);
}

void __dcrt_oob_activity_handler_block_invoke_525(uint64_t a1)
{
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__5;
  v109 = __Block_byref_object_dispose__5;
  v110 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__5;
  v103 = __Block_byref_object_dispose__5;
  v104 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__5;
  v93 = __Block_byref_object_dispose__5;
  v94 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__5;
  v87 = __Block_byref_object_dispose__5;
  v88 = 0;
  v2 = data_ark_copy(*(a1 + 32), 0, *(a1 + 40));
  v3 = v84[5];
  v84[5] = v2;

  v4 = isNSNumber(v84[5]);
  v5 = v4 == 0;

  if (v5)
  {
    v6 = v84[5];
    v84[5] = &__kCFBooleanFalse;
  }

  if (dcrtOOBAlreadyPerformed(*(a1 + 32), *(a1 + 104), 0) && ![v84[5] BOOLValue] || (v7 = data_ark_copy(*(a1 + 32), 0, @"ActivationState"), v8 = isNSString(v7), v9 = v106[5], v106[5] = v8, v9, v7, use_hactivation()) || is_virtual_machine() || (objc_msgSend(v106[5], "isEqualToString:", @"Activated") & 1) == 0)
  {
    data_ark_remove(*(a1 + 32), 0, *(a1 + 40));
    v17 = 0;
    v18 = 0;
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v10 = data_ark_copy(*(a1 + 32), 0, *(a1 + 48));
  v11 = v100[5];
  v100[5] = v10;

  v12 = isNSNumber(v100[5]);
  v13 = v12 == 0;

  if (v13)
  {
    v16 = &off_1003FBD20;
  }

  else
  {
    v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v100[5] unsignedLongLongValue] + 1);
    v15 = v100[5];
    v100[5] = v14;

    if ([v100[5] unsignedLongLongValue] <= 6)
    {
      goto LABEL_16;
    }

    v16 = [NSNumber numberWithUnsignedInt:?];
  }

  v20 = v100[5];
  v100[5] = v16;

LABEL_16:
  data_ark_set(*(a1 + 32), 0, *(a1 + 48), v100[5], 1);
  [v100[5] doubleValue];
  v22 = exp2(v21);
  *(v96 + 6) = (v22 * 60.0);
  v18 = data_ark_copy(*(a1 + 32), 0, *(a1 + 56));
  v23 = isNSNumber(v18);
  v24 = v23 == 0;

  if (v24)
  {

    v18 = &__kCFBooleanFalse;
  }

  if ([v18 BOOLValue])
  {
    v25 = copyLoggingHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 64);
      v27 = *(v96 + 6);
      *buf = 138543874;
      v112 = v26;
      v113 = 2114;
      v114 = v26;
      v115 = 1024;
      v116 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Another %{public}@ request is already in flight, rescheduling %{public}@ OOB for %d seconds.", buf, 0x1Cu);
    }

    v28 = *(a1 + 32);
    v29 = [*(a1 + 72) UTF8String];
    v30 = *(v96 + 6);
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = __dcrt_oob_activity_handler_block_invoke_527;
    v81[3] = &__block_descriptor_33_e17_v16__0__DataArk_8l;
    v82 = *(a1 + 104);
    scheduleXPCActivity(v28, v29, v30, 1, 0x4000u, 0x1000u, v81);
    v17 = 0;
    goto LABEL_12;
  }

  v17 = data_ark_copy(*(a1 + 32), 0, @"UCRTIssuanceInFlight");
  v31 = isNSNumber(v17);
  v32 = v31 == 0;

  if (v32)
  {

    v17 = &__kCFBooleanFalse;
  }

  if ([v17 BOOLValue])
  {
    v33 = copyLoggingHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 64);
      v35 = *(v96 + 6);
      *buf = 138543618;
      v112 = v34;
      v113 = 1024;
      LODWORD(v114) = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "UCRT request is in flight, rescheduling %{public}@ OOB for %d seconds.", buf, 0x12u);
    }

    v36 = *(a1 + 32);
    v37 = [*(a1 + 72) UTF8String];
    v38 = *(v96 + 6);
    v39 = v80;
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v40 = __dcrt_oob_activity_handler_block_invoke_528;
LABEL_36:
    v39[2] = v40;
    v39[3] = &__block_descriptor_33_e17_v16__0__DataArk_8l;
    *(v39 + 32) = *(a1 + 104);
    scheduleXPCActivity(v36, v37, v38, 1, 0x4000u, 0x1000u, v39);
    goto LABEL_12;
  }

  if ((ucrtOOBAlreadyPerformed(*(a1 + 32)) & 1) == 0)
  {
    v47 = copyLoggingHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 64);
      v49 = *(v96 + 6);
      *buf = 138543618;
      v112 = v48;
      v113 = 1024;
      LODWORD(v114) = v49;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "UCRT OOB not performed yet. Rescheduling %{public}@ OOB for %d seconds.", buf, 0x12u);
    }

    v36 = *(a1 + 32);
    v37 = [*(a1 + 72) UTF8String];
    v38 = *(v96 + 6);
    v39 = v79;
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v40 = __dcrt_oob_activity_handler_block_invoke_529;
    goto LABEL_36;
  }

  v78 = 0;
  v41 = ucrtHealingSupported(&v78);
  v42 = v78;
  if (!v42)
  {
    data_ark_set(*(a1 + 32), 0, *(a1 + 56), &__kCFBooleanTrue, 0);
    v50 = copyLoggingHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 64);
      *buf = 138543362;
      v112 = v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Performing %{public}@ OOB.", buf, 0xCu);
    }

    [*(a1 + 72) UTF8String];
    v52 = os_transaction_create();
    v53 = v90[5];
    v90[5] = v52;

    v54 = *(a1 + 32);
    v55 = *(a1 + 104);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3254779904;
    v59[2] = __dcrt_oob_activity_handler_block_invoke_531;
    v59[3] = &__block_descriptor_146_e8_32s40s48s56s64s72s80s88s96s104r112r120r128r136r_e34_v24__0__NSDictionary_8__NSError_16l;
    v69 = &v83;
    v60 = v54;
    v56 = *(a1 + 40);
    v74 = *(a1 + 104);
    v61 = v56;
    v70 = &v105;
    v75 = v41;
    v62 = *(a1 + 80);
    v63 = *(a1 + 64);
    v64 = *(a1 + 88);
    v65 = *(a1 + 96);
    v66 = *(a1 + 48);
    v71 = &v99;
    v72 = &v95;
    v67 = *(a1 + 72);
    v68 = *(a1 + 56);
    v73 = &v89;
    performDCRTOOB(v60, v55, v59);

    goto LABEL_12;
  }

  v19 = v42;
  v43 = copyLoggingHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
  {
    v57 = *(a1 + 64);
    v58 = *(v96 + 6);
    *buf = 138543874;
    v112 = v19;
    v113 = 2114;
    v114 = v57;
    v115 = 1024;
    v116 = v58;
    _os_log_fault_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "Failed to query UCRT healing support (%{public}@). Rescheduling %{public}@ OOB for %d seconds.", buf, 0x1Cu);
  }

  v44 = *(a1 + 32);
  v45 = [*(a1 + 72) UTF8String];
  v46 = *(v96 + 6);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = __dcrt_oob_activity_handler_block_invoke_530;
  v76[3] = &__block_descriptor_33_e17_v16__0__DataArk_8l;
  v77 = *(a1 + 104);
  scheduleXPCActivity(v44, v45, v46, 1, 0x4000u, 0x1000u, v76);
LABEL_13:

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);

  _Block_object_dispose(&v105, 8);
}

void sub_10030B888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 240), 8);
  _Block_object_dispose((v55 - 208), 8);
  _Block_object_dispose((v55 - 160), 8);
  _Unwind_Resume(a1);
}

void performDCRTOOB(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __performDCRTOOB_block_invoke;
  block[3] = &__block_descriptor_49_e8_32s40bs_e5_v8__0l;
  v11 = v5;
  v12 = v6;
  v13 = a2;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __dcrt_oob_activity_handler_block_invoke_531(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __dcrt_oob_activity_handler_block_invoke_2_532;
  block[3] = &__block_descriptor_162_e8_32s40s48s56s64s72s80s88s96s104s112s120r128r136r144r152r_e5_v8__0l;
  v23 = a3;
  v6 = *(a1 + 104);
  v24 = *(a1 + 32);
  v7 = *(a1 + 40);
  v34 = *(a1 + 144);
  v31 = *(a1 + 112);
  v25 = v7;
  v26 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  *v27 = v13;
  *v28 = v12;
  v14 = *(a1 + 80);
  v32 = *(a1 + 120);
  v15 = *(a1 + 88);
  *&v16 = *(a1 + 96);
  *(&v16 + 1) = v6;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  *v29 = v17;
  *v30 = v16;
  v33 = *(a1 + 136);
  v18 = v5;
  v19 = v23;
  v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  v21 = copyMobileActivationSerialQueue();
  dispatch_async(v21, v20);
}

void __dcrt_oob_activity_handler_block_invoke_2_532(uint64_t a1)
{
  if ((mobileactivationErrorHasDomainAndErrorCode(*(a1 + 32), @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFDLL) & 1) != 0 || (v2 = data_ark_copy(*(a1 + 40), 0, *(a1 + 48)), v3 = *(*(a1 + 120) + 8), v4 = *(v3 + 40), *(v3 + 40) = v2, v4, dcrtOOBAlreadyPerformed(*(a1 + 40), *(a1 + 160), 0)) && ![*(*(*(a1 + 120) + 8) + 40) BOOLValue] || (v5 = data_ark_copy(*(a1 + 40), 0, @"ActivationState"), v6 = isNSString(v5), v7 = *(*(a1 + 128) + 8), v8 = *(v7 + 40), *(v7 + 40) = v6, v8, v5, use_hactivation()) || is_virtual_machine() || !objc_msgSend(*(*(*(a1 + 128) + 8) + 40), "isEqualToString:", @"Activated"))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_10:
    data_ark_remove(*(a1 + 40), 0, *(a1 + 48));
    goto LABEL_11;
  }

  v9 = [*(a1 + 56) objectForKeyedSubscript:@"ServerResponseCode"];
  v10 = isNSNumber(v9);

  if (v10)
  {
    v11 = [*(a1 + 56) objectForKeyedSubscript:@"ServerResponseCode"];
    v12 = [v11 intValue];
  }

  else
  {
    v12 = 0;
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v18 = v21;
    if ((*(a1 + 161) & 1) != 0 || !mobileactivationErrorHasDomainAndErrorCode(*(a1 + 32), @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFF0))
    {
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v22 = 0;
    }

    else
    {
      v22 = 1;
      data_ark_set(*(a1 + 40), 0, *(a1 + 64), &__kCFBooleanTrue, 1);
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
    }

    goto LABEL_38;
  }

  v16 = objc_alloc_init(NSMutableDictionary);
  if (!v16)
  {
    v18 = createMobileActivationError("dcrt_oob_activity_handler_block_invoke_2", 4831, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v22 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_31;
  }

  v23 = [NSNumber numberWithBool:*(a1 + 160)];
  [v16 setObject:v23 forKeyedSubscript:@"sdcrtAttestation"];

  v15 = [*(a1 + 56) objectForKeyedSubscript:@"ServerResponseDate"];
  v13 = isNSDate(v15);

  if (!v13)
  {
    v18 = createMobileActivationError("dcrt_oob_activity_handler_block_invoke_2", 4839, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve server response date.");
    v22 = 0;
    v14 = 0;
LABEL_31:
    v17 = 0;
    if (!v18)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  [v16 setObject:v15 forKeyedSubscript:@"ServerResponseDate"];
  v24 = +[GestaltHlpr getSharedInstance];
  v17 = [v24 copyAnswer:@"BuildVersion"];

  v13 = isNSString(v17);
  if (!v13)
  {
    MobileActivationError = createMobileActivationError("dcrt_oob_activity_handler_block_invoke_2", 4847, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve OS build.");
    goto LABEL_37;
  }

  v13 = objc_alloc_init(NSMutableData);
  if (!v13)
  {
    MobileActivationError = createMobileActivationError("dcrt_oob_activity_handler_block_invoke_2", 4853, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create data.");
LABEL_37:
    v18 = MobileActivationError;
    v22 = 0;
    v14 = 0;
    if (!v18)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v25 = [*(a1 + 56) objectForKeyedSubscript:@"RKCertification"];
  v14 = isNSArray(v25);

  if (!v14 || [v14 count] != 2)
  {
    v18 = createMobileActivationError("dcrt_oob_activity_handler_block_invoke_2", 4859, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", *(a1 + 72));
    v22 = 0;
    if (!v18)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v26 = [v14 objectAtIndexedSubscript:0];
  [v13 appendData:v26];

  v27 = [v14 objectAtIndexedSubscript:1];
  [v13 appendData:v27];

  v28 = *(a1 + 40);
  v53 = 0;
  v29 = storeDCRT(v28, v13, v16, &v53);
  v18 = v53;
  if ((v29 & 1) == 0)
  {
    v50 = createMobileActivationError("dcrt_oob_activity_handler_block_invoke_2", 4867, @"com.apple.MobileActivation.ErrorDomain", -1, v18, @"Failed to store %@.", *(a1 + 72));

    v22 = 0;
    v18 = v50;
    if (!v50)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  data_ark_set(*(a1 + 40), 0, *(a1 + 80), v17, 1);
  data_ark_remove(*(a1 + 40), 0, *(a1 + 88));
  data_ark_remove(*(a1 + 40), 0, *(a1 + 96));
  v30 = copyLoggingHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 72);
    *buf = 138543362;
    v55 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully performed %{public}@ OOB.", buf, 0xCu);
  }

  v22 = 1;
  if (v18)
  {
LABEL_38:
    v33 = copyLoggingHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 72);
      *buf = 138543618;
      v55 = v34;
      v56 = 2114;
      v57 = v18;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Failed to perform %{public}@ OOB: %{public}@", buf, 0x16u);
    }

    if (v12)
    {
      if (*(a1 + 160))
      {
        v36 = 33;
      }

      else
      {
        v36 = 29;
      }

      writeSplunkLog(*(a1 + 40), v36, v12, "dcrt_oob_activity_handler_block_invoke", 4887, 0, @"%@", v35, v18);
    }
  }

LABEL_45:
  if (v22)
  {
    goto LABEL_10;
  }

  v37 = data_ark_copy(*(a1 + 40), 0, *(a1 + 96));
  v38 = *(*(a1 + 136) + 8);
  v39 = *(v38 + 40);
  *(v38 + 40) = v37;

  v40 = isNSNumber(*(*(*(a1 + 136) + 8) + 40));
  if (!v40)
  {
    v41 = *(*(a1 + 136) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = &off_1003FBD20;
  }

  [*(*(*(a1 + 136) + 8) + 40) doubleValue];
  *(*(*(a1 + 144) + 8) + 24) = (exp2(v43) * 60.0);
  v44 = copyLoggingHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = *(a1 + 72);
    v46 = *(*(*(a1 + 144) + 8) + 24);
    *buf = 138543618;
    v55 = v45;
    v56 = 1024;
    LODWORD(v57) = v46;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Rescheduling %{public}@ OOB for %d seconds.", buf, 0x12u);
  }

  v47 = *(a1 + 40);
  v48 = [*(a1 + 104) UTF8String];
  v49 = *(*(*(a1 + 144) + 8) + 24);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __dcrt_oob_activity_handler_block_invoke_534;
  v51[3] = &__block_descriptor_33_e17_v16__0__DataArk_8l;
  v52 = *(a1 + 160);
  scheduleXPCActivity(v47, v48, v49, 1, 0x4000u, 0x1000u, v51);
LABEL_11:
  data_ark_set(*(a1 + 40), 0, *(a1 + 112), &__kCFBooleanFalse, 0);
  v19 = *(*(a1 + 152) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}