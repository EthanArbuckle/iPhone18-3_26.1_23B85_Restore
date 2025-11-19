id sub_1001E14A8(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_13;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("pushSignedRF:");
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 211);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(a1);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v31 = v12;
    v32 = 2082;
    v33 = object_getClassName(a1);
    v34 = 2082;
    v35 = sel_getName("pushSignedRF:");
    v36 = 1024;
    v37 = 211;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  [v3 bytes];
  [v3 length];
  if (NFDataCreateWithBytes())
  {
    v13 = a1[1];
    v14 = NFDriverRFSettingsPushSetting();
    NFDataRelease();
    if (v14)
    {
LABEL_13:
      v15 = 0;
      goto LABEL_17;
    }

    v23 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v26 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Unknown Error"];
    v27 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v20 = v23;
    v21 = v17;
    v22 = 6;
  }

  else
  {
    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v28 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"No resources"];
    v29 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = v16;
    v21 = v17;
    v22 = 34;
  }

  v15 = [v20 initWithDomain:v21 code:v22 userInfo:v19];

LABEL_17:

  return v15;
}

id sub_1001E17D0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (*(v4 + 169) == 1)
    {
      v5 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v16 = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Aborted"];
      v17 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v9 = [v5 initWithDomain:ErrorCode code:3 userInfo:v8];
    }

    else
    {
      v10 = *(v4 + 1);
      [v3 bytes];
      [v3 length];
      if (!NFDriverEnableAntiRelay())
      {
        v9 = 0;
        goto LABEL_7;
      }

      ErrorCode = NFDriverCreateErrorCode();
      v11 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v14[0] = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Stack Error"];
      v14[1] = NSUnderlyingErrorKey;
      v15[0] = v8;
      v15[1] = ErrorCode;
      v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
      v9 = [v11 initWithDomain:v7 code:15 userInfo:v12];
    }

LABEL_7:
    objc_sync_exit(v4);

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

void *sub_1001E1A10(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = a1;
    objc_sync_enter(v7);
    if (*(v7 + 169) == 1)
    {
      if (a4)
      {
        v8 = [NSError alloc];
        v9 = [NSString stringWithUTF8String:"nfcd"];
        v26[0] = NSLocalizedDescriptionKey;
        v10 = [NSString stringWithUTF8String:"Aborted"];
        v27[0] = v10;
        v27[1] = &off_100335778;
        v26[1] = @"Line";
        v26[2] = @"Method";
        v11 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readRegister:operationType:error:")];
        v27[2] = v11;
        v26[3] = NSDebugDescriptionErrorKey;
        v12 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readRegister:operationType:error:"), 250];
        v27[3] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
        v14 = v8;
        v15 = v9;
        v16 = 3;
LABEL_12:
        *a4 = [v14 initWithDomain:v15 code:v16 userInfo:v13];

        a4 = 0;
      }
    }

    else
    {
      [v6 bytes];
      [v6 length];
      if (NFDataCreateWithBytes())
      {
        v17 = *(v7 + 1);
        Setting = NFDriverRFSettingsReadSetting();
        NFDataRelease();
        if (Setting)
        {
          a4 = [NSData dataWithBytes:*Setting length:Setting[1]];
          NFDataRelease();
        }

        else if (a4)
        {
          v20 = [NSError alloc];
          v9 = [NSString stringWithUTF8String:"nfcd"];
          v22[0] = NSLocalizedDescriptionKey;
          v10 = [NSString stringWithUTF8String:"Unknown Error"];
          v23[0] = v10;
          v23[1] = &off_1003357A8;
          v22[1] = @"Line";
          v22[2] = @"Method";
          v11 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readRegister:operationType:error:")];
          v23[2] = v11;
          v22[3] = NSDebugDescriptionErrorKey;
          v12 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readRegister:operationType:error:"), 264];
          v23[3] = v12;
          v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
          v14 = v20;
          v15 = v9;
          v16 = 6;
          goto LABEL_12;
        }
      }

      else if (a4)
      {
        v19 = [NSError alloc];
        v9 = [NSString stringWithUTF8String:"nfcd"];
        v24[0] = NSLocalizedDescriptionKey;
        v10 = [NSString stringWithUTF8String:"No resources"];
        v25[0] = v10;
        v25[1] = &off_100335790;
        v24[1] = @"Line";
        v24[2] = @"Method";
        v11 = [[NSString alloc] initWithFormat:@"%s", sel_getName("readRegister:operationType:error:")];
        v25[2] = v11;
        v24[3] = NSDebugDescriptionErrorKey;
        v12 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("readRegister:operationType:error:"), 256];
        v25[3] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
        v14 = v19;
        v15 = v9;
        v16 = 34;
        goto LABEL_12;
      }
    }

    objc_sync_exit(v7);

    goto LABEL_14;
  }

  a4 = 0;
LABEL_14:

  return a4;
}

id sub_1001E1ECC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    if (*(v4 + 169) == 1)
    {
      v5 = [NSError alloc];
      v6 = [NSString stringWithUTF8String:"nfcd"];
      v24[0] = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithUTF8String:"Aborted"];
      v25[0] = v7;
      v25[1] = &off_1003357C0;
      v24[1] = @"Line";
      v24[2] = @"Method";
      v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeRegister:operationType:")];
      v25[2] = v8;
      v24[3] = NSDebugDescriptionErrorKey;
      v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeRegister:operationType:"), 279];
      v25[3] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
      v11 = v5;
      v12 = v6;
      v13 = 3;
    }

    else
    {
      [v3 bytes];
      [v3 length];
      if (NFDataCreateWithBytes())
      {
        v14 = *(v4 + 1);
        v15 = NFDriverRFSettingsPushSetting();
        NFDataRelease();
        if (v15)
        {
          v16 = 0;
LABEL_10:
          objc_sync_exit(v4);

          goto LABEL_11;
        }

        v18 = [NSError alloc];
        v6 = [NSString stringWithUTF8String:"nfcd"];
        v20[0] = NSLocalizedDescriptionKey;
        v7 = [NSString stringWithUTF8String:"Unknown Error"];
        v21[0] = v7;
        v21[1] = &off_1003357F0;
        v20[1] = @"Line";
        v20[2] = @"Method";
        v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeRegister:operationType:")];
        v21[2] = v8;
        v20[3] = NSDebugDescriptionErrorKey;
        v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeRegister:operationType:"), 290];
        v21[3] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
        v11 = v18;
        v12 = v6;
        v13 = 6;
      }

      else
      {
        v17 = [NSError alloc];
        v6 = [NSString stringWithUTF8String:"nfcd"];
        v22[0] = NSLocalizedDescriptionKey;
        v7 = [NSString stringWithUTF8String:"No resources"];
        v23[0] = v7;
        v23[1] = &off_1003357D8;
        v22[1] = @"Line";
        v22[2] = @"Method";
        v8 = [[NSString alloc] initWithFormat:@"%s", sel_getName("writeRegister:operationType:")];
        v23[2] = v8;
        v22[3] = NSDebugDescriptionErrorKey;
        v9 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("writeRegister:operationType:"), 284];
        v23[3] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
        v11 = v17;
        v12 = v6;
        v13 = 34;
      }
    }

    v16 = [v11 initWithDomain:v12 code:v13 userInfo:v10];

    goto LABEL_10;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

id sub_1001E2354(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = a1;
    objc_sync_enter(v5);
    if (*(v5 + 169) == 1)
    {
      v6 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v27[0] = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Aborted"];
      v28[0] = v8;
      v28[1] = &off_100335808;
      v27[1] = @"Line";
      v27[2] = @"Method";
      v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendMFGCommand:payload:reply:")];
      v28[2] = v9;
      v27[3] = NSDebugDescriptionErrorKey;
      v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendMFGCommand:payload:reply:"), 299];
      v28[3] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
      v12 = v6;
      v13 = ErrorCode;
      v14 = 3;
    }

    else
    {
      [v4 bytes];
      [v4 length];
      if (NFDataCreateWithBytes())
      {
        v15 = *(v5 + 1);
        v16 = NFDriverSendMFGCommand();
        NFDataRelease();
        if (!v16)
        {
          v20 = 0;
          goto LABEL_10;
        }

        ErrorCode = NFDriverCreateErrorCode();
        v17 = [NSError alloc];
        v8 = [NSString stringWithUTF8String:"nfcd"];
        v23[0] = NSLocalizedDescriptionKey;
        v18 = [NSString stringWithUTF8String:"Stack Error"];
        v23[1] = NSUnderlyingErrorKey;
        v24[0] = v18;
        v24[1] = ErrorCode;
        v19 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
        v20 = [v17 initWithDomain:v8 code:15 userInfo:v19];

LABEL_9:
LABEL_10:
        objc_sync_exit(v5);

        goto LABEL_11;
      }

      v21 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v25[0] = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"No resources"];
      v26[0] = v8;
      v26[1] = &off_100335820;
      v25[1] = @"Line";
      v25[2] = @"Method";
      v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("sendMFGCommand:payload:reply:")];
      v26[2] = v9;
      v25[3] = NSDebugDescriptionErrorKey;
      v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("sendMFGCommand:payload:reply:"), 304];
      v26[3] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
      v12 = v21;
      v13 = ErrorCode;
      v14 = 34;
    }

    v20 = [v12 initWithDomain:v13 code:v14 userInfo:v11];

    goto LABEL_9;
  }

  v20 = 0;
LABEL_11:

  return v20;
}

id *sub_1001E2864(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = NFAssertPreventConnectionHandover;
    v10 = objc_msgSendSuper2(&v12, "initWithRemoteAssertion:xpcConnection:", v7, v9);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 4, a3);
    }
  }

  return a1;
}

id sub_1001E2F2C()
{
  objc_opt_self();
  v0 = [NSSet alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v37 = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v36 = [NSSet alloc];
  v35 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v36 initWithObjects:{v35, v7, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
  v17 = [NSSet alloc];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v17 initWithObjects:{v18, v19, objc_opt_class(), 0}];
  v21 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFSecureElementManagerSessionInterface];
  [v21 setClasses:v37 forSelector:"deleteApplets:completion:" argumentIndex:0 ofReply:0];
  [v21 setClasses:v37 forSelector:"getAppletsWithCompletion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v37 forSelector:"deleteApplets:completion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v37 forSelector:"deleteAllAppletsWithCompletion:" argumentIndex:0 ofReply:1];
  v22 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v21 setClasses:v22 forSelector:"signChallenge:useOSVersion:completion:" argumentIndex:1 ofReply:1];

  [v21 setClasses:v37 forSelector:"getFelicaAppletState:completion:" argumentIndex:0 ofReply:0];
  [v21 setClasses:v16 forSelector:"getFelicaAppletState:completion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v37 forSelector:"getTransitAppletState:completion:" argumentIndex:0 ofReply:0];
  [v21 setClasses:v16 forSelector:"getTransitAppletState:completion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v37 forSelector:"getServiceProviderDataForApplet:publicKey:scheme:completion:" argumentIndex:0 ofReply:0];
  [v21 setClasses:v16 forSelector:"getServiceProviderDataForApplet:publicKey:scheme:completion:" argumentIndex:0 ofReply:1];
  [v21 setClasses:v37 forSelector:"disableAuthorizationForApplets:andKey:authorization:completion:" argumentIndex:0 ofReply:0];
  v23 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v21 setClasses:v23 forSelector:"disableAuthorizationForApplets:andKey:authorization:completion:" argumentIndex:1 ofReply:0];

  v24 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v21 setClasses:v24 forSelector:"disableAuthorizationForApplets:andKey:authorization:completion:" argumentIndex:2 ofReply:0];

  [v21 setClasses:v20 forSelector:"restoreAuthorizationForAllAppletsExcept:completion:" argumentIndex:0 ofReply:0];
  v25 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v21 setClasses:v25 forSelector:"performPeerPaymentEnrollment:completion:" argumentIndex:0 ofReply:0];

  v26 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v21 setClasses:v26 forSelector:"performPeerPaymentEnrollment:completion:" argumentIndex:0 ofReply:1];

  v27 = [v16 setByAddingObject:objc_opt_class()];
  [v21 setClasses:v27 forSelector:"dumpDomain:forSEID:completion:" argumentIndex:0 ofReply:1];

  v28 = [NSSet alloc];
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v28 initWithObjects:{v29, v30, v31, v32, objc_opt_class(), 0}];
  [v21 setClasses:v33 forSelector:"execRemoteAdminScript:params:completion:" argumentIndex:1 ofReply:0];

  return v21;
}

id sub_1001E4B84(void *a1)
{
  if (a1)
  {
    v1 = [a1 userInfo];
    if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v2 = v1;
    }

    else
    {
      v3 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        *v5 = 0;
        _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Expected entitlement object is missing", v5, 2u);
      }

      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1001E4C54(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_self();
    v23 = objc_opt_new();
    [v1 auditToken];
    v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, token);
    if (v3)
    {
      v4 = v3;
      v5 = @"application-identifier";
      objc_opt_self();
      v6 = @"application-identifier";
      v7 = objc_opt_self();
      error = 0;
      v8 = SecTaskCopyValueForEntitlement(v4, @"application-identifier", &error);

      if (error)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v10 = Logger;
          Class = object_getClass(v7);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v7);
          Name = sel_getName("_copyValueOfEntitlement:secTask:");
          v15 = 45;
          if (isMetaClass)
          {
            v15 = 43;
          }

          v10(3, "%c[%{public}s %{public}s]:%i Failed to get entitlements: %{public}@", v15, ClassName, Name, 50, error);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = object_getClass(v7);
          if (class_isMetaClass(v17))
          {
            v18 = 43;
          }

          else
          {
            v18 = 45;
          }

          v19 = object_getClassName(v7);
          v20 = sel_getName("_copyValueOfEntitlement:secTask:");
          *token = 67110146;
          *&token[4] = v18;
          *&token[8] = 2082;
          *&token[10] = v19;
          *&token[18] = 2082;
          *&token[20] = v20;
          *&token[28] = 1024;
          *&token[30] = 50;
          v26 = 2114;
          v27 = error;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get entitlements: %{public}@", token, 0x2Cu);
        }

        CFRelease(error);
      }

      if (v8)
      {
        v21 = CFGetTypeID(v8);
        if (v21 != CFStringGetTypeID())
        {
          CFRelease(v8);
          v8 = 0;
        }
      }

      if (v23)
      {
        objc_storeStrong(v23 + 1, v8);
      }

      CFRelease(v4);
    }

    else
    {
      v22 = +[NSAssertionHandler currentHandler];
      [v22 handleFailureInMethod:"entitlementFromXPC:" object:v2 file:@"NFWalletPresentationEntitlement.m" lineNumber:105 description:@"Missing task ref"];
    }

    [v1 setUserInfo:v23];
  }
}

id sub_1001E4F9C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 valueForEntitlement:@"com.apple.nfcd.wallet.presentation"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1001E6C10(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (!MatchingService || (v4 = MatchingService, v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, (a1 + 8)), IOObjectRelease(v4), v5) || (v14 = *(a1 + 8)) == 0 || IOConnectCallScalarMethod(v14, 0, 0, 0, 0, 0))
  {
    *(a1 + 8) = 0;
LABEL_5:
    v6 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v15[0] = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:"Unknown Error"];
    v16[0] = v8;
    v16[1] = &off_100335838;
    v15[1] = @"Line";
    v15[2] = @"Method";
    v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("open")];
    v16[2] = v9;
    v15[3] = NSDebugDescriptionErrorKey;
    v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("open"), 121];
    v16[3] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
    v12 = [v6 initWithDomain:v7 code:6 userInfo:v11];

    goto LABEL_6;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_5;
  }

LABEL_12:
  v12 = 0;
LABEL_6:

  return v12;
}

uint64_t sub_1001E6E54(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      IOConnectCallScalarMethod(v2, 1u, 0, 0, 0, 0);
      IOServiceClose(*(a1 + 8));
      *(a1 + 8) = 0;
    }
  }

  return 0;
}

void sub_1001E6EFC(_BYTE *a1, uint64_t a2)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("setReaderModeActive:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i active %d", v8, ClassName, Name, 145, a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67110146;
      v15 = v11;
      v16 = 2082;
      v17 = object_getClassName(a1);
      v18 = 2082;
      v19 = sel_getName("setReaderModeActive:");
      v20 = 1024;
      v21 = 145;
      v22 = 1024;
      v23 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i active %d", buf, 0x28u);
    }

    a1[12] = a2;
  }
}

id sub_1001E70A0(uint64_t a1, float a2, float a3)
{
  if (!a1)
  {
    goto LABEL_19;
  }

  v4 = byte_10035DAC0++;
  LOBYTE(a3) = *(a1 + 12);
  v5 = *(a1 + 8);
  outputStructCnt = 80;
  memset(v49, 0, sizeof(v49));
  v48 = 0u;
  memset(outputStruct, 0, sizeof(outputStruct));
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  strcpy(v30, "zENc");
  v49[22] = 6;
  inputStruct = 2051362403;
  *&v49[8] = 32;
  v50 = 258;
  v51 = v4;
  v52 = a2;
  v53 = LODWORD(a3);
  v55 = 0;
  v54 = 0;
  v56 = 0;
  v6 = IOConnectCallStructMethod(v5, 2u, &inputStruct, 0x50uLL, outputStruct, &outputStructCnt);
  if (!v6 && !BYTE8(v44))
  {
    goto LABEL_19;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Write failed for key '%s' (0x%X, 0x%X)\n", "_writeSMCKey", 94, v30, v6, BYTE8(v44));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136447234;
    v34 = "_writeSMCKey";
    v35 = 1024;
    v36 = 94;
    v37 = 2080;
    v38 = v30;
    v39 = 1024;
    v40 = v6;
    v41 = 1024;
    v42 = BYTE8(v44);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Write failed for key '%s' (0x%X, 0x%X)\n", buf, 0x28u);
  }

  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v10 = v9;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("updateTemperature:");
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Error writing temperature : 0x%x", v14, ClassName, Name, 173, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(a1);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(a1);
      v19 = sel_getName("updateTemperature:");
      inputStruct = 67110146;
      LODWORD(v48) = v17;
      WORD2(v48) = 2082;
      *(&v48 + 6) = v18;
      HIWORD(v48) = 2082;
      *v49 = v19;
      *&v49[8] = 1024;
      *&v49[10] = 173;
      *&v49[14] = 1024;
      *&v49[16] = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error writing temperature : 0x%x", &inputStruct, 0x28u);
    }

    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v31[0] = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Unexpected Result"];
    v32[0] = v22;
    v32[1] = &off_100335850;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("updateTemperature:")];
    v32[2] = v23;
    v31[3] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("updateTemperature:"), 174];
    v32[3] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
    v26 = [v20 initWithDomain:v21 code:13 userInfo:v25];
  }

  else
  {
LABEL_19:
    v26 = 0;
  }

  return v26;
}

id sub_1001E78F8(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (*(v3 + 169) == 1)
    {
      v4 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v70[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Aborted"];
      v71[0] = v6;
      v71[1] = &off_100335868;
      v70[1] = @"Line";
      v70[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPowerCounters:")];
      v71[2] = v7;
      v70[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPowerCounters:"), 39];
      v71[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
      v10 = v4;
      v11 = ErrorCode;
      v12 = 3;
    }

    else
    {
      if (v3[5])
      {
        v13 = v3[1];
        PowerCounter = NFDriverGetPowerCounter();
        if (!PowerCounter || PowerCounter == 15)
        {
          [v3[5] timeIntervalSinceNow];
          v16 = v15;
          ErrorCode = objc_opt_new();
          v53 = a2;
          v28 = [NSNumber numberWithUnsignedInt:?];
          [ErrorCode setObject:v28 forKey:@"idleTime"];

          v29 = [NSNumber numberWithUnsignedInt:0];
          [ErrorCode setObject:v29 forKey:@"rfTime"];

          v30 = [NSNumber numberWithInt:(v16 * -1000.0)];
          [ErrorCode setObject:v30 forKey:@"sleepTime"];

          v31 = [NSNumber numberWithUnsignedLongLong:0];
          [ErrorCode setObject:v31 forKey:@"fieldDetectUpTime"];

          v32 = [NSNumber numberWithUnsignedLongLong:0];
          [ErrorCode setObject:v32 forKey:@"expressUpTime"];
          v33 = 0;

          v34 = [NSNumber numberWithUnsignedInt:0];
          [ErrorCode setObject:v34 forKey:@"lpcdFalseDetectCount"];

          v35 = [NSNumber numberWithUnsignedLongLong:0];
          [ErrorCode setObject:v35 forKey:@"SEUptime"];

          v36 = [NSNumber numberWithUnsignedLongLong:0];
          [ErrorCode setObject:v36 forKey:@"jcopUpCounter"];

          v37 = [NSNumber numberWithUnsignedLongLong:0];
          [ErrorCode setObject:v37 forKey:@"uiccUpCounter"];

          v38 = [NSNumber numberWithBool:0];
          [ErrorCode setObject:v38 forKey:@"eseStatus"];

          v39 = [NSNumber numberWithBool:0];
          [ErrorCode setObject:v39 forKey:@"mboxStatus"];

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v41 = Logger;
            Class = object_getClass(v3);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v3);
            Name = sel_getName("getPowerCounters:");
            v45 = 45;
            if (isMetaClass)
            {
              v45 = 43;
            }

            v41(6, "%c[%{public}s %{public}s]:%i Last query was %f seconds ago, power dict = %{public}@", v45, ClassName, Name, 98, *&v16, ErrorCode);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v46 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = object_getClass(v3);
            if (class_isMetaClass(v47))
            {
              v48 = 43;
            }

            else
            {
              v48 = 45;
            }

            *buf = 67110402;
            v55 = v48;
            v56 = 2082;
            v57 = object_getClassName(v3);
            v58 = 2082;
            v59 = sel_getName("getPowerCounters:");
            v60 = 1024;
            v61 = 98;
            v62 = 2048;
            v63 = v16;
            v64 = 2114;
            v65 = ErrorCode;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Last query was %f seconds ago, power dict = %{public}@", buf, 0x36u);
          }

          if (v53)
          {
            *v53 = [[NSDictionary alloc] initWithDictionary:ErrorCode];
          }

          v49 = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0];
          v6 = v3[5];
          v3[5] = v49;
          goto LABEL_32;
        }

        ErrorCode = NFDriverCreateErrorCode();
        v51 = [NSError alloc];
        v6 = [NSString stringWithUTF8String:"nfcd"];
        v66[0] = NSLocalizedDescriptionKey;
        v7 = [NSString stringWithUTF8String:"Stack Error"];
        v66[1] = NSUnderlyingErrorKey;
        v67[0] = v7;
        v67[1] = ErrorCode;
        v8 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
        v33 = [v51 initWithDomain:v6 code:15 userInfo:v8];
LABEL_19:

LABEL_32:
        objc_sync_exit(v3);

        goto LABEL_33;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v18 = v17;
        v19 = object_getClass(v3);
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(v3);
        v22 = sel_getName("getPowerCounters:");
        v23 = 43;
        if (!v20)
        {
          v23 = 45;
        }

        v18(3, "%c[%{public}s %{public}s]:%i Power state tracking not available", v23, v21, v22, 43);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(v3);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        *buf = 67109890;
        v55 = v26;
        v56 = 2082;
        v57 = object_getClassName(v3);
        v58 = 2082;
        v59 = sel_getName("getPowerCounters:");
        v60 = 1024;
        v61 = 43;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Power state tracking not available", buf, 0x22u);
      }

      v27 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v68[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Invalid State"];
      v69[0] = v6;
      v69[1] = &off_100335880;
      v68[1] = @"Line";
      v68[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getPowerCounters:")];
      v69[2] = v7;
      v68[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getPowerCounters:"), 44];
      v69[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
      v10 = v27;
      v11 = ErrorCode;
      v12 = 12;
    }

    v33 = [v10 initWithDomain:v11 code:v12 userInfo:v9];

    goto LABEL_19;
  }

  v33 = 0;
LABEL_33:

  return v33;
}

id sub_1001E88BC(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = objc_opt_new();
    if ([v9 count])
    {
      v12 = [v9 objectForKeyedSubscript:@"idleTime"];
      v13 = [v12 intValue];
      v14 = [v10 objectForKeyedSubscript:@"idleTime"];
      v15 = [v14 intValue];

      v16 = [NSNumber numberWithUnsignedInt:v15 + v13];
      [v11 setObject:v16 forKeyedSubscript:@"idleTime"];

      v17 = [v9 objectForKeyedSubscript:@"rfTime"];
      v18 = [v17 intValue];
      v19 = [v10 objectForKeyedSubscript:@"rfTime"];
      v20 = [v19 intValue];

      v21 = [NSNumber numberWithUnsignedInt:v20 + v18];
      [v11 setObject:v21 forKeyedSubscript:@"rfTime"];

      v22 = [v9 objectForKeyedSubscript:@"sleepTime"];
      v23 = [v22 intValue];
      v24 = [v10 objectForKeyedSubscript:@"sleepTime"];
      v25 = [v24 intValue];

      v26 = [NSNumber numberWithUnsignedInt:v25 + v23];
      [v11 setObject:v26 forKeyedSubscript:@"sleepTime"];

      v27 = [v9 objectForKeyedSubscript:@"lpcdFalseDetectCount"];
      v28 = [v27 intValue];
      v29 = [v10 objectForKeyedSubscript:@"lpcdFalseDetectCount"];
      v30 = [v29 intValue];

      v31 = [NSNumber numberWithUnsignedInt:v30 + v28];
      [v11 setObject:v31 forKeyedSubscript:@"lpcdFalseDetectCount"];

      v32 = [v9 objectForKeyedSubscript:@"SEUptime"];
      v33 = [v32 longLongValue];
      v34 = [v10 objectForKeyedSubscript:@"SEUptime"];
      v35 = [v34 longLongValue];

      v36 = [NSNumber numberWithUnsignedLongLong:&v33[v35]];
      [v11 setObject:v36 forKeyedSubscript:@"SEUptime"];

      if (a4)
      {
        v37 = [NSNumber numberWithBool:1];
        [v11 setObject:v37 forKeyedSubscript:@"Overflow"];
      }

      v38 = [v9 objectForKeyedSubscript:@"fieldDetectUpTime"];
      v39 = [v38 longLongValue];
      v40 = [v10 objectForKeyedSubscript:@"fieldDetectUpTime"];
      v41 = [v40 longLongValue];

      v42 = [NSNumber numberWithUnsignedLongLong:&v39[v41]];
      [v11 setObject:v42 forKeyedSubscript:@"fieldDetectUpTime"];

      v43 = [v9 objectForKeyedSubscript:@"expressUpTime"];
      v44 = [v43 longLongValue];
      v45 = [v10 objectForKeyedSubscript:@"expressUpTime"];
      v46 = [v45 longLongValue];

      v47 = [NSNumber numberWithUnsignedLongLong:&v44[v46]];
      [v11 setObject:v47 forKeyedSubscript:@"expressUpTime"];

      if ((a5 & 1) == 0)
      {
        v48 = [v9 objectForKeyedSubscript:@"jcopUpCounter"];
        v49 = [v48 longLongValue];
        v50 = [v10 objectForKeyedSubscript:@"jcopUpCounter"];
        v51 = [v50 longLongValue];

        v52 = [NSNumber numberWithUnsignedLongLong:&v49[v51]];
        [v11 setObject:v52 forKeyedSubscript:@"jcopUpCounter"];

        v53 = [v9 objectForKeyedSubscript:@"uiccUpCounter"];
        v54 = [v53 longLongValue];
        v55 = [v10 objectForKeyedSubscript:@"uiccUpCounter"];
        v56 = [v55 longLongValue];

        v57 = [NSNumber numberWithUnsignedLongLong:&v54[v56]];
        [v11 setObject:v57 forKeyedSubscript:@"uiccUpCounter"];
      }

      v58 = [v9 objectForKeyedSubscript:@"uiccUpCounter"];
      v59 = [v58 longLongValue];
      v60 = [v10 objectForKeyedSubscript:@"uiccUpCounter"];
      v61 = [v60 longLongValue];

      v62 = [NSNumber numberWithUnsignedLongLong:&v59[v61]];
      [v11 setObject:v62 forKeyedSubscript:@"uiccUpCounter"];

      if (a5)
      {
        [v11 removeObjectForKey:@"jcopUpCounter"];
        [v11 removeObjectForKey:@"uiccUpCounter"];
      }

      v63 = [v10 objectForKeyedSubscript:@"eseStatus"];

      if (v63)
      {
        v64 = [v10 objectForKeyedSubscript:@"eseStatus"];
        [v11 setObject:v64 forKeyedSubscript:@"eseStatus"];
      }

      v65 = [v10 objectForKeyedSubscript:@"mboxStatus"];

      v66 = v11;
      if (!v65)
      {
        goto LABEL_16;
      }

      v67 = [v10 objectForKeyedSubscript:@"mboxStatus"];
      v68 = v11;
      v69 = v67;
      v70 = @"mboxStatus";
    }

    else
    {
      v66 = v10;
      if (!a4)
      {
LABEL_16:
        v71 = [[NSDictionary alloc] initWithDictionary:v66];

        goto LABEL_17;
      }

      [v11 addEntriesFromDictionary:v10];
      v67 = [NSNumber numberWithBool:1];
      v70 = @"Overflow";
      v68 = v11;
      v69 = v67;
    }

    [v68 setObject:v69 forKeyedSubscript:v70];

    v66 = v11;
    goto LABEL_16;
  }

  v71 = 0;
LABEL_17:

  return v71;
}

id sub_1001E8F2C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (v3[1])
    {
      v4 = NFDriverGetFlashWriteCounter();
      if (v4)
      {
        v5 = v4 == 15;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (a2)
        {
          [NSNumber numberWithInt:?];
          *a2 = v15 = 0;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_12;
      }

      ErrorCode = NFDriverCreateErrorCode();
      v11 = [NSError alloc];
      v12 = [NSString stringWithUTF8String:"nfcd"];
      v17[0] = NSLocalizedDescriptionKey;
      v13 = [NSString stringWithUTF8String:"Stack Error"];
      v17[1] = NSUnderlyingErrorKey;
      v18[0] = v13;
      v18[1] = ErrorCode;
      v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
      v15 = [v11 initWithDomain:v12 code:15 userInfo:v14];
    }

    else
    {
      v6 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v19[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Aborted"];
      v20[0] = v12;
      v20[1] = &off_100335910;
      v19[1] = @"Line";
      v19[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getFlashWriteCounters:")];
      v20[2] = v7;
      v19[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getFlashWriteCounters:"), 183];
      v20[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
      v15 = [v6 initWithDomain:ErrorCode code:3 userInfo:v9];
    }

LABEL_12:
    objc_sync_exit(v3);

    goto LABEL_13;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

id sub_1001E9340(void *a1, void *a2)
{
  if (a1)
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    if (!a2)
    {
      v11 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v55[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v56[0] = v12;
      v56[1] = &off_100335940;
      v55[1] = @"Line";
      v55[2] = @"Method";
      v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getFlashEraseCounters:")];
      v56[2] = v13;
      v55[3] = NSDebugDescriptionErrorKey;
      v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getFlashEraseCounters:"), 210];
      v56[3] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:4];
      v16 = [v11 initWithDomain:v3 code:10 userInfo:v15];

LABEL_11:
      goto LABEL_12;
    }

    v3 = a1;
    objc_sync_enter(v3);
    if (*(v3 + 1))
    {
      if (*(v3 + 169) != 1)
      {
        PageEraseCounter = NFDriverReadPageEraseCounter();
        if (PageEraseCounter == 19)
        {
          v16 = 0;
          *a2 = 0;
          goto LABEL_10;
        }

        if (!PageEraseCounter)
        {
          v20 = objc_opt_new();
          v21 = *(v3 + 1);
          NFDriverPrintPageEraseCounter();
          if (LOWORD(v39[0]))
          {
            v22 = 0;
            do
            {
              v23 = [NSNumber numberWithUnsignedInt:*(v39 + v22 + 1)];
              [v20 setObject:v23 atIndexedSubscript:v22];

              ++v22;
            }

            while (v22 < LOWORD(v39[0]));
          }

          v24 = v20;
          *a2 = v20;

          v16 = 0;
          goto LABEL_10;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v26 = Logger;
          Class = object_getClass(v3);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v3);
          Name = sel_getName("getFlashEraseCounters:");
          v30 = 45;
          if (isMetaClass)
          {
            v30 = 43;
          }

          v26(3, "%c[%{public}s %{public}s]:%i Failed to get erase counters", v30, ClassName, Name, 236);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = object_getClass(v3);
          if (class_isMetaClass(v32))
          {
            v33 = 43;
          }

          else
          {
            v33 = 45;
          }

          *buf = 67109890;
          v44 = v33;
          v45 = 2082;
          v46 = object_getClassName(v3);
          v47 = 2082;
          v48 = sel_getName("getFlashEraseCounters:");
          v49 = 1024;
          v50 = 236;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get erase counters", buf, 0x22u);
        }

        *a2 = 0;
        v34 = [NSError alloc];
        v5 = [NSString stringWithUTF8String:"nfcd"];
        v41[0] = NSLocalizedDescriptionKey;
        v6 = [NSString stringWithUTF8String:"Stack Error"];
        v42[0] = v6;
        v42[1] = &off_100335988;
        v41[1] = @"Line";
        v41[2] = @"Method";
        v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getFlashEraseCounters:")];
        v42[2] = v35;
        v41[3] = NSDebugDescriptionErrorKey;
        v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getFlashEraseCounters:"), 238];
        v42[3] = v36;
        v37 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
        v16 = [v34 initWithDomain:v5 code:15 userInfo:v37];

LABEL_9:
LABEL_10:
        objc_sync_exit(v3);
        goto LABEL_11;
      }

      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v51[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Aborted"];
      v52[0] = v6;
      v52[1] = &off_100335970;
      v51[1] = @"Line";
      v51[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getFlashEraseCounters:")];
      v52[2] = v7;
      v51[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getFlashEraseCounters:"), 219];
      v52[3] = v8;
      v9 = v52;
      v10 = v51;
    }

    else
    {
      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v53[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Aborted"];
      v54[0] = v6;
      v54[1] = &off_100335958;
      v53[1] = @"Line";
      v53[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getFlashEraseCounters:")];
      v54[2] = v7;
      v53[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getFlashEraseCounters:"), 215];
      v54[3] = v8;
      v9 = v54;
      v10 = v53;
    }

    v17 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:4];
    v16 = [v4 initWithDomain:v5 code:3 userInfo:v17];

    goto LABEL_9;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

double sub_1001E9A8C(void **a1)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100006B2C;
  v43 = sub_1001E9E48;
  v44 = 0;
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1001E9E50;
  v35 = &unk_10031B7E8;
  v36 = a1;
  v37 = &v39;
  v38 = &v45;
  v2 = sub_10004BF60(NFRoutingConfig, 1);
  v3 = sub_1000E6BE4(a1, &v32, @"AvoidSEReset", v2);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v5 = Logger;
  if (v3)
  {
    if (Logger)
    {
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_queryRemainTimeFromTimers");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i SE keep alive active", v9, ClassName, Name, 42);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(a1);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(a1);
      v14 = sel_getName("_queryRemainTimeFromTimers");
      *buf = 67109890;
      v50 = v12;
      v51 = 2082;
      v52 = v13;
      v53 = 2082;
      v54 = v14;
      v55 = 1024;
      v56 = 42;
      v15 = "%c[%{public}s %{public}s]:%i SE keep alive active";
      v16 = v10;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 34;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
    }
  }

  else
  {
    if (Logger)
    {
      v19 = object_getClass(a1);
      v20 = class_isMetaClass(v19);
      v21 = object_getClassName(a1);
      v22 = sel_getName("_queryRemainTimeFromTimers");
      v23 = 45;
      if (v20)
      {
        v23 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Failed to query timers: %{public}@", v23, v21, v22, 40, v40[5], v32, v33, v34, v35, v36, v37, v38);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(a1);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(a1);
      v27 = sel_getName("_queryRemainTimeFromTimers");
      v28 = v40[5];
      *buf = 67110146;
      v50 = v25;
      v51 = 2082;
      v52 = v26;
      v53 = 2082;
      v54 = v27;
      v55 = 1024;
      v56 = 40;
      v57 = 2114;
      v58 = v28;
      v15 = "%c[%{public}s %{public}s]:%i Failed to query timers: %{public}@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 44;
      goto LABEL_20;
    }
  }

  v29 = v46[3];
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  return v29;
}

BOOL sub_1001E9E50(uint64_t a1)
{
  v2 = [*(a1 + 32) secureElementWrapper];
  v3 = sub_10015A93C(v2, (*(*(a1 + 48) + 8) + 24));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

void sub_1001E9EC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_49;
  }

  v4 = [WeakRetained expressModeManager];
  if (v4)
  {
    v5 = v4[181];

    if (v5 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("_dpdTimerRunning");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i EMM in progress", v11, ClassName, Name, 158);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v13 = object_getClass(v3);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      v54 = v14;
      v55 = 2082;
      v56 = object_getClassName(v3);
      v57 = 2082;
      v58 = sel_getName("_dpdTimerRunning");
      v59 = 1024;
      v60 = 158;
      v15 = "%c[%{public}s %{public}s]:%i EMM in progress";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0x22u);
LABEL_24:

      v24 = -1.0;
      goto LABEL_26;
    }
  }

  if (sub_1000065FC(v3))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(v3);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(v3);
      v50 = sel_getName("_dpdTimerRunning");
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(6, "%c[%{public}s %{public}s]:%i Active session", v21, v20, v50, 163);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v22 = object_getClass(v3);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    *buf = 67109890;
    v54 = v23;
    v55 = 2082;
    v56 = object_getClassName(v3);
    v57 = 2082;
    v58 = sel_getName("_dpdTimerRunning");
    v59 = 1024;
    v60 = 163;
    v15 = "%c[%{public}s %{public}s]:%i Active session";
    goto LABEL_23;
  }

  v24 = sub_1001E9A8C(v3);
LABEL_26:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v26 = v25;
    v27 = object_getClass(v3);
    v28 = class_isMetaClass(v27);
    v29 = object_getClassName(v3);
    v51 = sel_getName(*(a1 + 40));
    v30 = 45;
    if (v28)
    {
      v30 = 43;
    }

    v26(6, "%c[%{public}s %{public}s]:%i Check DPD timer: %f", v30, v29, v51, 110, *&v24);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = object_getClass(v3);
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    v34 = object_getClassName(v3);
    v35 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v54 = v33;
    v55 = 2082;
    v56 = v34;
    v57 = 2082;
    v58 = v35;
    v59 = 1024;
    v60 = 110;
    v61 = 2048;
    v62 = v24;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Check DPD timer: %f", buf, 0x2Cu);
  }

  if (v24 == 0.0)
  {
    goto LABEL_48;
  }

  if (v24 <= 0.0)
  {
    *(v3 + 347) = 1;
LABEL_48:
    v48 = [v3 driverWrapper];
    sub_1001AA6BC(v48, 16);

    sub_1001EA438(v3);
    goto LABEL_49;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFLogGetLogger();
  if (v36)
  {
    v37 = v36;
    v38 = object_getClass(v3);
    v39 = class_isMetaClass(v38);
    v40 = object_getClassName(v3);
    v52 = sel_getName(*(a1 + 40));
    v41 = 45;
    if (v39)
    {
      v41 = 43;
    }

    v37(6, "%c[%{public}s %{public}s]:%i Restart delay check, %fs", v41, v40, v52, 116, *&v24);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = object_getClass(v3);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    v45 = object_getClassName(v3);
    v46 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v54 = v44;
    v55 = 2082;
    v56 = v45;
    v57 = 2082;
    v58 = v46;
    v59 = 1024;
    v60 = 116;
    v61 = 2048;
    v62 = v24;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restart delay check, %fs", buf, 0x2Cu);
  }

  v47 = *(v3 + 152);
  [v47 startTimer:v24];

LABEL_49:
}

void sub_1001EA438(_BYTE *a1)
{
  if (a1)
  {
    if (a1[348] == 1)
    {
      v2 = [a1 driverWrapper];
      sub_10021CC94(v2, @"SE KeepAlive");

      a1[348] = 0;
    }
  }
}

void sub_1001EA490(_BYTE *a1)
{
  if (a1 && sub_1000044D0(a1))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("markDPDTimerChanged");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 140);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v13 = v10;
      v14 = 2082;
      v15 = object_getClassName(a1);
      v16 = 2082;
      v17 = sel_getName("markDPDTimerChanged");
      v18 = 1024;
      v19 = 140;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    a1[347] = 1;
  }
}

void sub_1001EA628(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
    v6 = 0;
    if (*(a1 + 348) == 1)
    {
      v3 = [a1 secureElementWrapper];
      v2 = sub_10015A93C(v3, &v6);

      if (!v2 && !v6)
      {
        v4 = *(a1 + 152);
        [v4 stopTimer];

        v5 = *(a1 + 152);
        [v5 startTimer:0.0];

        v2 = 0;
      }
    }
  }
}

uint64_t sub_1001EAB6C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    v2 = NFDriverTriggerDelayedWake();
  }

  objc_sync_exit(v1);

  return v2;
}

uint64_t sub_1001EABD4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    v2 = NFDriverCrashNFCC();
  }

  objc_sync_exit(v1);

  return v2;
}

uint64_t sub_1001EAC3C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    v2 = NFDriverToggleGPIO();
  }

  objc_sync_exit(v1);

  return v2;
}

id sub_1001EACA4(void *a1, int a2)
{
  if (a1)
  {
    v4 = *(a1[1] + 58);
    LOBYTE(v5) = v4 != a2;
    v6 = a1;
    objc_sync_enter(v6);
    if (*(v6 + 169) == 1)
    {
      v7 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v109 = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:"Aborted"];
      v110 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v11 = [v7 initWithDomain:v8 code:3 userInfo:v10];
LABEL_19:

LABEL_20:
      objc_sync_exit(v6);

      goto LABEL_21;
    }

    if (v6[32] != 1)
    {
      v29 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v107[0] = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithUTF8String:"Invalid State"];
      v108[0] = v9;
      v108[1] = &off_1003359A0;
      v107[1] = @"Line";
      v107[2] = @"Method";
      v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupChipscope:")];
      v108[2] = v10;
      v107[3] = NSDebugDescriptionErrorKey;
      v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupChipscope:"), 103];
      v108[3] = v30;
      v31 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:4];
      v11 = [v29 initWithDomain:v8 code:12 userInfo:v31];

      goto LABEL_19;
    }

    sub_10021D4E8(v6, 0);
    if (a2)
    {
      if (v4 != a2)
      {
        v12 = objc_opt_new();
        v13 = [v12 runService:&off_100339C38];
        v14 = [v13 valueForKey:@"Error"];

        if (v14)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v16 = Logger;
            Class = object_getClass(v6);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v6);
            Name = sel_getName("setupChipscope:");
            v20 = 45;
            if (isMetaClass)
            {
              v20 = 43;
            }

            v16(3, "%c[%{public}s %{public}s]:%i Failed to restore MFG FW", v20, ClassName, Name, 115);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v21 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = object_getClass(v6);
            if (class_isMetaClass(v22))
            {
              v23 = 43;
            }

            else
            {
              v23 = 45;
            }

            *buf = 67109890;
            v100 = v23;
            v101 = 2082;
            v102 = object_getClassName(v6);
            v103 = 2082;
            v104 = sel_getName("setupChipscope:");
            v105 = 1024;
            v106 = 115;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore MFG FW", buf, 0x22u);
          }

          v24 = [NSError alloc];
          v25 = [NSString stringWithUTF8String:"nfcd"];
          v97 = NSLocalizedDescriptionKey;
          v26 = [NSString stringWithUTF8String:"Unknown Error"];
          v98 = v26;
          v27 = &v98;
          v28 = &v97;
LABEL_36:
          v44 = [NSDictionary dictionaryWithObjects:v27 forKeys:v28 count:1];
          v11 = [v24 initWithDomain:v25 code:6 userInfo:v44];

LABEL_67:
          v5 = 1;
LABEL_68:
          v69 = v6[32];
          if (v69 != 4 && v69 != 1)
          {
            if (!v5)
            {
              goto LABEL_20;
            }

            goto LABEL_73;
          }

LABEL_70:
          sub_10021CAB4(v6);
          if ((v5 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_73:
          v70 = dispatch_time(0, 100000000);
          dispatch_after(v70, &_dispatch_main_q, &stru_10031B808);
          goto LABEL_20;
        }
      }

      v45 = sub_10021B0D8(v6, @"chipscope");
      if (v45)
      {
      }

      else if (v6[32] == 1)
      {
        if (v4 != a2)
        {
          sub_10021CAB4(v6);
          v11 = 0;
          goto LABEL_73;
        }

        v71 = a1[1];
        v72 = objc_getProperty(v6, v46, 232, 1);
        [v72 bytes];
        v74 = objc_getProperty(v6, v73, 232, 1);
        [v74 length];
        LODWORD(v71) = NFDriverSetChipscope();

        if (!v71)
        {
          v11 = 0;
          v5 = 0;
          goto LABEL_68;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v75 = NFLogGetLogger();
        if (v75)
        {
          v76 = v75;
          v77 = object_getClass(v6);
          v78 = class_isMetaClass(v77);
          v79 = object_getClassName(v6);
          v88 = sel_getName("setupChipscope:");
          v80 = 45;
          if (v78)
          {
            v80 = 43;
          }

          v76(3, "%c[%{public}s %{public}s]:%i Failed to enable chipscope", v80, v79, v88, 125);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v81 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = object_getClass(v6);
          if (class_isMetaClass(v82))
          {
            v83 = 43;
          }

          else
          {
            v83 = 45;
          }

          *buf = 67109890;
          v100 = v83;
          v101 = 2082;
          v102 = object_getClassName(v6);
          v103 = 2082;
          v104 = sel_getName("setupChipscope:");
          v105 = 1024;
          v106 = 125;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to enable chipscope", buf, 0x22u);
        }

        v57 = [NSError alloc];
        v25 = [NSString stringWithUTF8String:"nfcd"];
        v93 = NSLocalizedDescriptionKey;
        v26 = [NSString stringWithUTF8String:"Stack Error"];
        v94 = v26;
        v58 = &v94;
        v59 = &v93;
        goto LABEL_66;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFLogGetLogger();
      if (v48)
      {
        v49 = v48;
        v50 = object_getClass(v6);
        v51 = class_isMetaClass(v50);
        v52 = object_getClassName(v6);
        v86 = sel_getName("setupChipscope:");
        v53 = 45;
        if (v51)
        {
          v53 = 43;
        }

        v49(3, "%c[%{public}s %{public}s]:%i Failed to restart stack", v53, v52, v86, 120);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = object_getClass(v6);
        if (class_isMetaClass(v55))
        {
          v56 = 43;
        }

        else
        {
          v56 = 45;
        }

        *buf = 67109890;
        v100 = v56;
        v101 = 2082;
        v102 = object_getClassName(v6);
        v103 = 2082;
        v104 = sel_getName("setupChipscope:");
        v105 = 1024;
        v106 = 120;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restart stack", buf, 0x22u);
      }

      v57 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      v95 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"Stack Error"];
      v96 = v26;
      v58 = &v96;
      v59 = &v95;
    }

    else
    {
      if (v4)
      {
        v33 = objc_opt_new();
        v34 = [v33 runService:0];
        v14 = [v34 valueForKey:@"Error"];

        if (v14)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v35 = NFLogGetLogger();
          if (v35)
          {
            v36 = v35;
            v37 = object_getClass(v6);
            v38 = class_isMetaClass(v37);
            v39 = object_getClassName(v6);
            v85 = sel_getName("setupChipscope:");
            v40 = 45;
            if (v38)
            {
              v40 = 43;
            }

            v36(3, "%c[%{public}s %{public}s]:%i Failed to restore Prod FW", v40, v39, v85, 138);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v41 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = object_getClass(v6);
            if (class_isMetaClass(v42))
            {
              v43 = 43;
            }

            else
            {
              v43 = 45;
            }

            *buf = 67109890;
            v100 = v43;
            v101 = 2082;
            v102 = object_getClassName(v6);
            v103 = 2082;
            v104 = sel_getName("setupChipscope:");
            v105 = 1024;
            v106 = 138;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore Prod FW", buf, 0x22u);
          }

          v24 = [NSError alloc];
          v25 = [NSString stringWithUTF8String:"nfcd"];
          v91 = NSLocalizedDescriptionKey;
          v26 = [NSString stringWithUTF8String:"Unknown Error"];
          v92 = v26;
          v27 = &v92;
          v28 = &v91;
          goto LABEL_36;
        }
      }

      v47 = sub_10021B0D8(v6, @"chipscope");
      if (v47)
      {
      }

      else if (v6[32] == 1)
      {
        v11 = 0;
        goto LABEL_70;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFLogGetLogger();
      if (v60)
      {
        v61 = v60;
        v62 = object_getClass(v6);
        v63 = class_isMetaClass(v62);
        v64 = object_getClassName(v6);
        v87 = sel_getName("setupChipscope:");
        v65 = 45;
        if (v63)
        {
          v65 = 43;
        }

        v61(3, "%c[%{public}s %{public}s]:%i Failed to restart stack", v65, v64, v87, 142);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = object_getClass(v6);
        if (class_isMetaClass(v67))
        {
          v68 = 43;
        }

        else
        {
          v68 = 45;
        }

        *buf = 67109890;
        v100 = v68;
        v101 = 2082;
        v102 = object_getClassName(v6);
        v103 = 2082;
        v104 = sel_getName("setupChipscope:");
        v105 = 1024;
        v106 = 142;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restart stack", buf, 0x22u);
      }

      v57 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      v89 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"Stack Error"];
      v90 = v26;
      v58 = &v90;
      v59 = &v89;
    }

LABEL_66:
    v44 = [NSDictionary dictionaryWithObjects:v58 forKeys:v59 count:1];
    v11 = [v57 initWithDomain:v25 code:15 userInfo:v44];
    goto LABEL_67;
  }

  v11 = 0;
LABEL_21:

  return v11;
}

void sub_1001EB93C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v55 = a1;
  if (a1)
  {
    memset(v65, 0, sizeof(v65));
    v5 = [v3 length];
    v6 = [v4 bytes];
    Logger = NFLogGetLogger();
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v58 = "[NFDriverWrapper(Test) chipscopeNotify:]";
      v59 = 1024;
      v60 = 164;
      v61 = 2082;
      v62 = "Chipscope : ";
      v63 = 2048;
      v64 = [v4 length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
    }

    if (Logger)
    {
      Logger(6, "%s:%i %s %lu bytes :", "-[NFDriverWrapper(Test) chipscopeNotify:]", 164, "Chipscope : ", [v4 length]);
    }

    v54 = v4;
    if (v5)
    {
      v9 = 0;
      do
      {
        v10 = 0;
        v11 = &v65[__sprintf_chk(v65, 0, 0x30uLL, "%04lX: ", v9)];
        do
        {
          v12 = v6[v9++];
          v13 = sprintf(v11, "0x%02X ", v12);
          if (v10 > 6)
          {
            break;
          }

          v11 += v13;
          ++v10;
        }

        while (v9 < v5);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v58 = v65;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        if (Logger)
        {
          Logger(6, "%s", v65);
        }
      }

      while (v9 < v5);
    }

    v15 = [NSString alloc];
    v16 = +[NSDate date];
    v17 = +[NSTimeZone localTimeZone];
    v18 = [NSISO8601DateFormatter stringFromDate:v16 timeZone:v17 formatOptions:1907];
    v19 = [v15 initWithFormat:@"Chipscope_%@.txt", v18];

    v20 = +[NSFileManager defaultManager];
    v21 = [v20 temporaryDirectory];
    v22 = [v21 URLByAppendingPathComponent:v19];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      Class = object_getClass(v55);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v55);
      Name = sel_getName("chipscopeNotify:");
      v29 = [v22 path];
      v30 = 45;
      if (isMetaClass)
      {
        v30 = 43;
      }

      v24(6, "%c[%{public}s %{public}s]:%i Log: %@", v30, ClassName, Name, 172, v29);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = object_getClass(v55);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(v55);
      v35 = sel_getName("chipscopeNotify:");
      v36 = [v22 path];
      *v65 = 67110146;
      *&v65[4] = v33;
      *&v65[8] = 2082;
      *&v65[10] = v34;
      *&v65[18] = 2082;
      *&v65[20] = v35;
      *&v65[28] = 1024;
      *&v65[30] = 172;
      *&v65[34] = 2112;
      *&v65[36] = v36;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Log: %@", v65, 0x2Cu);
    }

    v37 = objc_alloc_init(NSMutableString);
    v4 = v54;
    v38 = [v54 bytes];
    if ([v54 length])
    {
      v39 = 0;
      do
      {
        [v37 appendFormat:@"%02X\n", v38[v39++]];
      }

      while ([v54 length] > v39);
    }

    v56 = 0;
    v40 = [v37 writeToURL:v22 atomically:1 encoding:1 error:&v56];
    v41 = v56;
    if ((v40 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(v55);
        v45 = class_isMetaClass(v44);
        v52 = object_getClassName(v55);
        v53 = sel_getName("chipscopeNotify:");
        v46 = 45;
        if (v45)
        {
          v46 = 43;
        }

        v4 = v54;
        v43(3, "%c[%{public}s %{public}s]:%i Error creating log: %@", v46, v52, v53, 184, v41);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = object_getClass(v55);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(v55);
        v51 = sel_getName("chipscopeNotify:");
        *v65 = 67110146;
        *&v65[4] = v49;
        *&v65[8] = 2082;
        *&v65[10] = v50;
        *&v65[18] = 2082;
        *&v65[20] = v51;
        *&v65[28] = 1024;
        *&v65[30] = 184;
        *&v65[34] = 2112;
        *&v65[36] = v41;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error creating log: %@", v65, 0x2Cu);
      }
    }
  }
}

id sub_1001EBF94(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (*(v3 + 169) == 1)
    {
      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v18 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Aborted"];
      v19 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v8 = [v4 initWithDomain:v5 code:3 userInfo:v7];
    }

    else
    {
      v9 = *(v3 + 1);
      if (NFDriverContinuousWave())
      {
        ErrorCode = NFDriverCreateErrorCode();
        v11 = [NSError alloc];
        v12 = [NSString stringWithUTF8String:"nfcd"];
        v16[0] = NSLocalizedDescriptionKey;
        v13 = [NSString stringWithUTF8String:"Stack Error"];
        v16[1] = NSUnderlyingErrorKey;
        v17[0] = v13;
        v17[1] = ErrorCode;
        v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
        v8 = [v11 initWithDomain:v12 code:15 userInfo:v14];
      }

      else
      {
        sub_1001E6EFC(*(v3 + 6), a2);
        v8 = 0;
      }
    }

    objc_sync_exit(v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1001EC1C0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 169) == 1)
    {
      v2 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v13 = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Aborted"];
      v14 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v6 = [v2 initWithDomain:ErrorCode code:3 userInfo:v5];
    }

    else
    {
      v7 = *(v1 + 1);
      if (!NFDriverReadATETrimVersion())
      {
        v6 = 0;
        goto LABEL_7;
      }

      ErrorCode = NFDriverCreateErrorCode();
      v8 = [NSError alloc];
      v4 = [NSString stringWithUTF8String:"nfcd"];
      v11[0] = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:"Stack Error"];
      v11[1] = NSUnderlyingErrorKey;
      v12[0] = v5;
      v12[1] = ErrorCode;
      v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      v6 = [v8 initWithDomain:v4 code:15 userInfo:v9];
    }

LABEL_7:
    objc_sync_exit(v1);

    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

id sub_1001EC3CC(void *a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (*(v3 + 169) == 1)
    {
      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v19 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Aborted"];
      v20 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v8 = v4;
      v9 = v5;
      v10 = 3;
    }

    else
    {
      v11 = *(v3 + 1);
      if (NFDriverEnableSMBLogging())
      {
        v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
        v13 = v12;
        if (a2)
        {
          [v12 setBool:1 forKey:@"smbLogEnabled"];
        }

        else
        {
          [v12 removeObjectForKey:@"smbLogEnabled"];
        }

        v15 = 0;
        goto LABEL_11;
      }

      v14 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v17 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Stack Error"];
      v18 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v8 = v14;
      v9 = v5;
      v10 = 15;
    }

    v15 = [v8 initWithDomain:v9 code:v10 userInfo:v7];

LABEL_11:
    objc_sync_exit(v3);

    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

uint64_t sub_1001EC5FC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  if (*(v1 + 169))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
    v2 = NFDriverCopySMBLog();
  }

  objc_sync_exit(v1);

  return v2;
}

id sub_1001EC65C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (*(v1 + 169) == 1)
    {
      v2 = [NSError alloc];
      ErrorCode = [NSString stringWithUTF8String:"nfcd"];
      v14[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Aborted"];
      v15[0] = v4;
      v15[1] = &off_1003359B8;
      v14[1] = @"Line";
      v14[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("triggerCoreDump")];
      v15[2] = v5;
      v14[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("triggerCoreDump"), 263];
      v15[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
      v8 = [v2 initWithDomain:ErrorCode code:3 userInfo:v7];

LABEL_6:
      objc_sync_exit(v1);

      goto LABEL_7;
    }

    v9 = *(v1 + 1);
    if (NFDriverTriggerCoreDump())
    {
      ErrorCode = NFDriverCreateErrorCode();
      v10 = [NSError alloc];
      v4 = [NSString stringWithUTF8String:"nfcd"];
      v12[0] = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:"Stack Error"];
      v12[1] = NSUnderlyingErrorKey;
      v13[0] = v5;
      v13[1] = ErrorCode;
      v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
      v8 = [v10 initWithDomain:v4 code:15 userInfo:v6];
      goto LABEL_6;
    }

    objc_sync_exit(v1);
  }

  v8 = 0;
LABEL_7:

  return v8;
}

void sub_1001ECDB4(uint64_t a1)
{
  if ([*(a1 + 32) count] < 0xFF)
  {
    buf[0] = [*(a1 + 32) count];
    v21 = objc_opt_new();
    v16 = v21;
    if (*(a1 + 64) != 3)
    {
      [v21 appendBytes:buf length:1];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = *(a1 + 32);
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v16 appendData:*(*(&v32 + 1) + 8 * i)];
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v24);
    }

    v27 = *(a1 + 64) - 1;
    if (v27 > 2)
    {
      v28 = 0;
    }

    else
    {
      v28 = dword_100297B00[v27];
    }

    v29 = *(*(a1 + 40) + 184);
    v31 = 0;
    v17 = sub_1001E1A10(v29, v16, v28, &v31);
    v15 = v31;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 56));
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Error : invalid number of parameters", v7, ClassName, Name, 67);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      v11 = object_getClassName(*(a1 + 40));
      v12 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v40 = v10;
      v41 = 2082;
      v42 = v11;
      v43 = 2082;
      v44 = v12;
      v45 = 1024;
      v46 = 67;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : invalid number of parameters", buf, 0x22u);
    }

    v13 = *(a1 + 48);
    v14 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v37[0] = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v38[0] = v16;
    v38[1] = &off_1003359E8;
    v37[1] = @"Line";
    v37[2] = @"Method";
    v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v38[2] = v17;
    v37[3] = NSDebugDescriptionErrorKey;
    v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 68];
    v38[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];
    v20 = [v14 initWithDomain:v15 code:10 userInfo:v19];
    (*(v13 + 16))(v13, v20, 0);
  }
}

void sub_1001ED304(uint64_t a1)
{
  if ((NFIsInternalBuild() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 64));
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", v27, ClassName, Name, 105);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      v31 = object_getClassName(*(a1 + 32));
      v32 = sel_getName(*(a1 + 64));
      *buf = 67109890;
      v60 = v30;
      v61 = 2082;
      v62 = v31;
      v63 = 2082;
      v64 = v32;
      v65 = 1024;
      v66 = 105;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", buf, 0x22u);
    }

    v33 = *(a1 + 56);
    v34 = [NSError alloc];
    v35 = [NSString stringWithUTF8String:"nfcd"];
    v73[0] = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v74[0] = v3;
    v74[1] = &off_100335A00;
    v73[1] = @"Line";
    v73[2] = @"Method";
    v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v74[2] = v36;
    v73[3] = NSDebugDescriptionErrorKey;
    v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 106];
    v74[3] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:4];
    v39 = v34;
    v40 = v35;
    v41 = 14;
    goto LABEL_40;
  }

  v2 = [*(a1 + 40) count];
  if (v2 != [*(a1 + 48) count])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v43 = v42;
      v44 = object_getClass(*(a1 + 32));
      v45 = class_isMetaClass(v44);
      v46 = object_getClassName(*(a1 + 32));
      v56 = sel_getName(*(a1 + 64));
      v47 = 45;
      if (v45)
      {
        v47 = 43;
      }

      v43(3, "%c[%{public}s %{public}s]:%i Error : invalid count of parameters", v47, v46, v56, 111);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      v51 = object_getClassName(*(a1 + 32));
      v52 = sel_getName(*(a1 + 64));
      *buf = 67109890;
      v60 = v50;
      v61 = 2082;
      v62 = v51;
      v63 = 2082;
      v64 = v52;
      v65 = 1024;
      v66 = 111;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : invalid count of parameters", buf, 0x22u);
    }

    v33 = *(a1 + 56);
    v53 = [NSError alloc];
    v35 = [NSString stringWithUTF8String:"nfcd"];
    v71[0] = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v72[0] = v3;
    v72[1] = &off_100335A18;
    v71[1] = @"Line";
    v71[2] = @"Method";
    v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 64))];
    v72[2] = v36;
    v71[3] = NSDebugDescriptionErrorKey;
    v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 64)), 112];
    v72[3] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:4];
    v39 = v53;
    v40 = v35;
    v41 = 10;
LABEL_40:
    v54 = [v39 initWithDomain:v40 code:v41 userInfo:v38];
    (*(v33 + 16))(v33, v54);

    goto LABEL_42;
  }

  v3 = objc_opt_new();
  if ([*(a1 + 40) count])
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 40) objectAtIndexedSubscript:v4];
      v6 = [*(a1 + 48) objectAtIndexedSubscript:v4];
      v58 = 0;
      if ([v6 length] < 0xFF)
      {
        v58 = [v6 length];
        [v3 appendData:v5];
        [v3 appendBytes:&v58 length:1];
        [v3 appendData:v6];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v7 = NFLogGetLogger();
        if (v7)
        {
          v8 = v7;
          v9 = object_getClass(*(a1 + 32));
          v10 = class_isMetaClass(v9);
          v11 = object_getClassName(*(a1 + 32));
          v12 = sel_getName(*(a1 + 64));
          v57 = [v6 length];
          v13 = 45;
          if (v10)
          {
            v13 = 43;
          }

          v8(3, "%c[%{public}s %{public}s]:%i Error : payload for address %@ exceeds limit : %lu", v13, v11, v12, 123, v5, v57);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v15))
          {
            v16 = 43;
          }

          else
          {
            v16 = 45;
          }

          v17 = object_getClassName(*(a1 + 32));
          v18 = sel_getName(*(a1 + 64));
          v19 = [v6 length];
          *buf = 67110402;
          v60 = v16;
          v61 = 2082;
          v62 = v17;
          v63 = 2082;
          v64 = v18;
          v65 = 1024;
          v66 = 123;
          v67 = 2112;
          v68 = v5;
          v69 = 2048;
          v70 = v19;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : payload for address %@ exceeds limit : %lu", buf, 0x36u);
        }
      }

      ++v4;
    }

    while ([*(a1 + 40) count] > v4);
  }

  v20 = *(a1 + 72) - 1;
  if (v20 < 3)
  {
    v21 = dword_100297B00[v20];
  }

  v35 = sub_1001E1ECC(*(*(a1 + 32) + 184), v3);
  (*(*(a1 + 56) + 16))();
LABEL_42:
}

void sub_1001EDB90(uint64_t a1)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100006B3C;
  v31 = sub_1001EDF50;
  v32 = 0;
  if (NFIsInternalBuild())
  {
    v2 = *(*(a1 + 32) + 184);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001EDF58;
    v24[3] = &unk_100318710;
    v26 = &v27;
    v25 = *(a1 + 40);
    sub_10021DD20(v2, v24);
    v3 = v28[5];
    (*(*(a1 + 48) + 16))();
    v4 = v25;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", v10, ClassName, Name, 155);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 32));
      v15 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v36 = v13;
      v37 = 2082;
      v38 = v14;
      v39 = 2082;
      v40 = v15;
      v41 = 1024;
      v42 = 155;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", buf, 0x22u);
    }

    v16 = *(a1 + 48);
    v17 = [NSError alloc];
    v4 = [NSString stringWithUTF8String:"nfcd"];
    v33[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v34[0] = v18;
    v34[1] = &off_100335A30;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v34[2] = v19;
    v33[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 156];
    v34[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
    v22 = [v17 initWithDomain:v4 code:14 userInfo:v21];
    (*(v16 + 16))(v16, v22);
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t sub_1001EDF58(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 runService:*(a1 + 32)];
  v4 = [v3 valueForKey:@"Error"];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

void sub_1001EE0D0(uint64_t a1)
{
  if (NFIsInternalBuild())
  {
    v2 = sub_1001E2354(*(*(a1 + 32) + 184), *(a1 + 64), *(a1 + 40));
    v3 = 0;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", v9, ClassName, Name, 179);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v25 = v12;
      v26 = 2082;
      v27 = v13;
      v28 = 2082;
      v29 = v14;
      v30 = 1024;
      v31 = 179;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", buf, 0x22u);
    }

    v15 = *(a1 + 48);
    v16 = [NSError alloc];
    v2 = [NSString stringWithUTF8String:"nfcd"];
    v22[0] = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v23[0] = v3;
    v23[1] = &off_100335A48;
    v22[1] = @"Line";
    v22[2] = @"Method";
    v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v23[2] = v17;
    v22[3] = NSDebugDescriptionErrorKey;
    v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 180];
    v23[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v20 = [v16 initWithDomain:v2 code:14 userInfo:v19];
    (*(v15 + 16))(v15, v20, 0);
  }
}

void sub_1001EE4D0(uint64_t a1)
{
  if (NFIsInternalBuild())
  {
    v2 = +[_NFHardwareManager sharedHardwareManager];
    v3 = sub_10004C668();
    v4 = [v2 setRoutingConfig:v3];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", v10, ClassName, Name, 196);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 32));
      v15 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v27 = v13;
      v28 = 2082;
      v29 = v14;
      v30 = 2082;
      v31 = v15;
      v32 = 1024;
      v33 = 196;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", buf, 0x22u);
    }

    v16 = *(a1 + 40);
    v17 = [NSError alloc];
    v4 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v25[0] = v18;
    v25[1] = &off_100335A60;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v25[2] = v19;
    v24[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 197];
    v25[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v22 = [v17 initWithDomain:v4 code:14 userInfo:v21];
    (*(v16 + 16))(v16, v22);
  }
}

void sub_1001EE8D8(uint64_t a1)
{
  if (NFIsInternalBuild())
  {
    v2 = +[_NFHardwareManager sharedHardwareManager];
    v3 = sub_10004C51C();
    v4 = [v2 setRoutingConfig:v3];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", v10, ClassName, Name, 213);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 32));
      v15 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v27 = v13;
      v28 = 2082;
      v29 = v14;
      v30 = 2082;
      v31 = v15;
      v32 = 1024;
      v33 = 213;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", buf, 0x22u);
    }

    v16 = *(a1 + 40);
    v17 = [NSError alloc];
    v4 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v25[0] = v18;
    v25[1] = &off_100335A78;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v25[2] = v19;
    v24[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 214];
    v25[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v22 = [v17 initWithDomain:v4 code:14 userInfo:v21];
    (*(v16 + 16))(v16, v22);
  }
}

void sub_1001EECE0(uint64_t a1)
{
  if (NFIsInternalBuild())
  {
    v2 = +[_NFHardwareManager sharedHardwareManager];
    v3 = sub_10004C224(NFRoutingConfig, 2);
    v4 = [v2 setRoutingConfig:v3];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", v10, ClassName, Name, 230);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 32));
      v15 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v27 = v13;
      v28 = 2082;
      v29 = v14;
      v30 = 2082;
      v31 = v15;
      v32 = 1024;
      v33 = 230;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", buf, 0x22u);
    }

    v16 = *(a1 + 40);
    v17 = [NSError alloc];
    v4 = [NSString stringWithUTF8String:"nfcd"];
    v24[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v25[0] = v18;
    v25[1] = &off_100335A90;
    v24[1] = @"Line";
    v24[2] = @"Method";
    v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v25[2] = v19;
    v24[3] = NSDebugDescriptionErrorKey;
    v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 231];
    v25[3] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v22 = [v17 initWithDomain:v4 code:14 userInfo:v21];
    (*(v16 + 16))(v16, v22);
  }
}

void sub_1001EF0EC(uint64_t a1)
{
  if (NFIsInternalBuild())
  {
    v2 = sub_1001EBF94(*(*(a1 + 32) + 184), 1);
    if (!v2)
    {
      *(*(a1 + 32) + 176) = 1;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(3, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", v8, ClassName, Name, 247);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v25 = v11;
      v26 = 2082;
      v27 = v12;
      v28 = 2082;
      v29 = v13;
      v30 = 1024;
      v31 = 247;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", buf, 0x22u);
    }

    v14 = *(a1 + 40);
    v15 = [NSError alloc];
    v2 = [NSString stringWithUTF8String:"nfcd"];
    v22[0] = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v23[0] = v16;
    v23[1] = &off_100335AA8;
    v22[1] = @"Line";
    v22[2] = @"Method";
    v17 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v23[2] = v17;
    v22[3] = NSDebugDescriptionErrorKey;
    v18 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 248];
    v23[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v20 = [v15 initWithDomain:v2 code:14 userInfo:v19];
    (*(v14 + 16))(v14, v20);
  }
}

void sub_1001EF4EC(uint64_t a1)
{
  if (NFIsInternalBuild())
  {
    v2 = *(a1 + 32);
    if (*(v2 + 176) == 1)
    {
      v3 = sub_1001EBF94(*(v2 + 184), 0);
      *(*(a1 + 32) + 176) = 0;
    }

    else
    {
      v22 = +[_NFHardwareManager sharedHardwareManager];
      v23 = [*(a1 + 32) initialRoutingConfig];
      v3 = [v22 setRoutingConfig:v23];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", v9, ClassName, Name, 267);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 2082;
      v32 = v14;
      v33 = 1024;
      v34 = 267;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Method only supported on internal builds.", buf, 0x22u);
    }

    v15 = *(a1 + 40);
    v16 = [NSError alloc];
    v3 = [NSString stringWithUTF8String:"nfcd"];
    v25[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v26[0] = v17;
    v26[1] = &off_100335AC0;
    v25[1] = @"Line";
    v25[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v26[2] = v18;
    v25[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 268];
    v26[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
    v21 = [v16 initWithDomain:v3 code:14 userInfo:v20];
    (*(v15 + 16))(v15, v21);
  }
}

void sub_1001EFFB4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      sub_100207EF8(v2, 0);
      v3 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }
}

void sub_1001F000C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      sub_1000AAB50(v2);
      v3 = *(a1 + 32);
      *(a1 + 32) = 0;

      *(a1 + 152) = 0;
    }
  }
}

void sub_1001F0050(uint64_t a1)
{
  SCPreferencesSynchronize(*(a1 + 64));
  Value = SCPreferencesGetValue(*(a1 + 64), @"AirplaneMode");
  if (!Value)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("updateAirplaneMode");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Can't read AP mode", v10, ClassName, Name, 233);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v12 = object_getClass(a1);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    v26 = v13;
    v27 = 2082;
    v28 = object_getClassName(a1);
    v29 = 2082;
    v30 = sel_getName("updateAirplaneMode");
    v31 = 1024;
    v32 = 233;
    v14 = "%c[%{public}s %{public}s]:%i Can't read AP mode";
    goto LABEL_22;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 == CFBooleanGetTypeID())
  {
    *(a1 + 154) = CFBooleanGetValue(v3) != 0;
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(a1);
    v18 = class_isMetaClass(v17);
    v19 = object_getClassName(a1);
    v24 = sel_getName("updateAirplaneMode");
    v20 = 45;
    if (v18)
    {
      v20 = 43;
    }

    v16(3, "%c[%{public}s %{public}s]:%i Unexpected type", v20, v19, v24, 229);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v21 = object_getClass(a1);
    if (class_isMetaClass(v21))
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    *buf = 67109890;
    v26 = v22;
    v27 = 2082;
    v28 = object_getClassName(a1);
    v29 = 2082;
    v30 = sel_getName("updateAirplaneMode");
    v31 = 1024;
    v32 = 229;
    v14 = "%c[%{public}s %{public}s]:%i Unexpected type";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v14, buf, 0x22u);
  }

LABEL_23:
}

void sub_1001F0324(uint64_t a1, char a2, unsigned __int8 *a3)
{
  v5 = objc_autoreleasePoolPush();
  if ((a2 & 2) != 0 && a3)
  {
    v6 = a3[154];
    sub_1001F0050(a3);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a3);
      Name = sel_getName("airplaneModeChanged");
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Airplane mode state changed: %d -> %d", v13, ClassName, Name, 184, v6, a3[154]);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(a3);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(a3);
      v18 = sel_getName("airplaneModeChanged");
      v19 = a3[154];
      *buf = 67110402;
      v21 = v16;
      v22 = 2082;
      v23 = v17;
      v24 = 2082;
      v25 = v18;
      v26 = 1024;
      v27 = 184;
      v28 = 1024;
      v29 = v6;
      v30 = 1024;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Airplane mode state changed: %d -> %d", buf, 0x2Eu);
    }

    if (v6 != a3[154])
    {
      if (a3[154])
      {
        [a3 suspend];
      }

      else
      {
        [a3 resume];
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1001F0548(void *a1, int a2)
{
  if (a1)
  {
    v3 = a1[14];
    a1[14] = v3 + 1;
    if (!v3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_suspend:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i suspend", v10, ClassName, Name, 299);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(a1);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67109890;
        v21 = v13;
        v22 = 2082;
        v23 = object_getClassName(a1);
        v24 = 2082;
        v25 = sel_getName("_suspend:");
        v26 = 1024;
        v27 = 299;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i suspend", buf, 0x22u);
      }

      sub_1001EFFB4(a1);
      sub_1001F000C(a1);
      v14 = +[_NFHardwareManager sharedHardwareManager];
      v15 = v14;
      if (a2)
      {
        v16 = sub_100007D90(v14);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001F0798;
        block[3] = &unk_100315F30;
        v19 = v15;
        dispatch_async(v16, block);
      }

      else
      {
        [v14 maybeStartNextSession];
      }
    }
  }
}

void sub_1001F07A8(void *a1, int a2)
{
  if (a1)
  {
    v3 = a1[14];
    if (v3)
    {
      v4 = v3 - 1;
      a1[14] = v4;
      if (v4)
      {
        return;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_resume:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i resume", v11, ClassName, Name, 333);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(a1);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v31 = v14;
        v32 = 2082;
        v33 = object_getClassName(a1);
        v34 = 2082;
        v35 = sel_getName("_resume:");
        v36 = 1024;
        v37 = 333;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i resume", buf, 0x22u);
      }

      sub_1001F0B18(a1);
      sub_1001F0B80(a1);
      v15 = +[_NFHardwareManager sharedHardwareManager];
      v16 = v15;
      if (a2)
      {
        v17 = sub_100007D90(v15);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001F0CB8;
        block[3] = &unk_100315F30;
        v16 = v16;
        v29 = v16;
        dispatch_async(v17, block);
      }

      else
      {
        [v15 maybeStartNextSession];
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v19 = v18;
        v20 = object_getClass(a1);
        v21 = class_isMetaClass(v20);
        v22 = object_getClassName(a1);
        v27 = sel_getName("_resume:");
        v23 = 45;
        if (v21)
        {
          v23 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Suspend count underflow", v23, v22, v27, 328);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = object_getClass(a1);
        if (class_isMetaClass(v24))
        {
          v25 = 43;
        }

        else
        {
          v25 = 45;
        }

        *buf = 67109890;
        v31 = v25;
        v32 = 2082;
        v33 = object_getClassName(a1);
        v34 = 2082;
        v35 = sel_getName("_resume:");
        v36 = 1024;
        v37 = 328;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Suspend count underflow", buf, 0x22u);
      }
    }
  }
}

void sub_1001F0B18(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (!v2)
    {
      v3 = sub_100207E50([NFScreenStateMonitor alloc], *(a1 + 80));
      v4 = *(a1 + 40);
      *(a1 + 40) = v3;

      v2 = *(a1 + 40);
    }

    sub_100207EF8(v2, a1);
  }
}

void **sub_1001F0B80(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result[4];
    if (!v2)
    {
      v3 = sub_1000A9CD8([NFTouchSensorMonitor alloc], v1[10], v1);
      v4 = v1[4];
      v1[4] = v3;

      if (v1[4])
      {
        objc_initWeak(&location, v1);
        v5 = [NFTimer alloc];
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100002A64;
        v8[3] = &unk_100316610;
        objc_copyWeak(v9, &location);
        v9[1] = "startTouchSensorMonitor";
        v6 = [v5 initWithCallback:v8 queue:v1[10]];
        v7 = v1[6];
        v1[6] = v6;

        objc_destroyWeak(v9);
        objc_destroyWeak(&location);
        v2 = v1[4];
      }

      else
      {
        v2 = 0;
      }
    }

    *(v1 + 153) = 1;
    sub_1000AA7D8(v2);
    return [v1[6] startTimer:0.7];
  }

  return result;
}

void sub_1001F0CC0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v54 = v7;
    if ((+[NFUIService sceneServiceAvailable]& 1) != 0)
    {
      v53 = v8;
      v10 = objc_opt_new();
      v11 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_sceneServiceHandlingWithNDEF:tag:completion:");
        v51 = [v11 length];
        v18 = 45;
        if (isMetaClass)
        {
          v18 = 43;
        }

        v13(6, "%c[%{public}s %{public}s]:%i encodedMessage len=%lu", v18, ClassName, Name, 385, v51);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = object_getClass(a1);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        *buf = 67110146;
        v56 = v21;
        v57 = 2082;
        v58 = object_getClassName(a1);
        v59 = 2082;
        v60 = sel_getName("_sceneServiceHandlingWithNDEF:tag:completion:");
        v61 = 1024;
        v62 = 385;
        v63 = 2048;
        v64 = [v11 length];
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i encodedMessage len=%lu", buf, 0x2Cu);
      }

      v22 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(a1);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(a1);
        v28 = sel_getName("_sceneServiceHandlingWithNDEF:tag:completion:");
        v52 = [v22 length];
        v49 = v28;
        v8 = v53;
        v29 = 45;
        if (v26)
        {
          v29 = 43;
        }

        v24(6, "%c[%{public}s %{public}s]:%i encodedTag len=%lu", v29, v27, v49, 388, v52);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = object_getClass(a1);
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(a1);
        v34 = sel_getName("_sceneServiceHandlingWithNDEF:tag:completion:");
        v35 = [v22 length];
        *buf = 67110146;
        v56 = v32;
        v57 = 2082;
        v58 = v33;
        v59 = 2082;
        v60 = v34;
        v8 = v53;
        v61 = 1024;
        v62 = 388;
        v63 = 2048;
        v64 = v35;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i encodedTag len=%lu", buf, 0x2Cu);
      }

      [v10 sceneServiceBackgroundTagReadingWithNDEF:v11 tag:v22 completion:v9];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFLogGetLogger();
      if (v36)
      {
        v37 = v36;
        v38 = object_getClass(a1);
        v39 = class_isMetaClass(v38);
        v40 = object_getClassName(a1);
        v50 = sel_getName("_sceneServiceHandlingWithNDEF:tag:completion:");
        v41 = 45;
        if (v39)
        {
          v41 = 43;
        }

        v37(3, "%c[%{public}s %{public}s]:%i UISceneService not available", v41, v40, v50, 378);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = object_getClass(a1);
        if (class_isMetaClass(v43))
        {
          v44 = 43;
        }

        else
        {
          v44 = 45;
        }

        *buf = 67109890;
        v56 = v44;
        v57 = 2082;
        v58 = object_getClassName(a1);
        v59 = 2082;
        v60 = sel_getName("_sceneServiceHandlingWithNDEF:tag:completion:");
        v61 = 1024;
        v62 = 378;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i UISceneService not available", buf, 0x22u);
      }

      v45 = [NSError alloc];
      v10 = [NSString stringWithUTF8String:"nfcd"];
      v65[0] = NSLocalizedDescriptionKey;
      v11 = [NSString stringWithUTF8String:"Invalid State"];
      v66[0] = v11;
      v66[1] = &off_100335AD8;
      v65[1] = @"Line";
      v65[2] = @"Method";
      v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sceneServiceHandlingWithNDEF:tag:completion:")];
      v66[2] = v22;
      v65[3] = NSDebugDescriptionErrorKey;
      v46 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sceneServiceHandlingWithNDEF:tag:completion:"), 379];
      v66[3] = v46;
      v47 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:4];
      v48 = [v45 initWithDomain:v10 code:12 userInfo:v47];
      v9[2](v9, v48);
    }

    v7 = v54;
  }
}

void sub_1001F12E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = *(a1 + 16);
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v21 = 0;
          v16 = [v15 processNDEFMesssage:v7 outputMessage:0 tag:v8 stopProcessing:&v21];
          if (v21 == 1)
          {
            v9[2](v9, 0);
            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = [NSError alloc];
    v10 = [NSString stringWithUTF8String:"nfcd"];
    v26 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Not found"];
    v27 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v20 = [v17 initWithDomain:v10 code:65 userInfo:v19];
    (v9)[2](v9, v20);

LABEL_12:
  }
}

void sub_1001F2698(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.reader.background.suspensionTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 7);
    *(WeakRetained + 7) = 0;

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v4);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v4);
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Resume non-compliant tag suspension", v11, ClassName, Name, 442);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(v4);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v4);
      v16 = sel_getName(*(a1 + 40));
      *state = 67109890;
      *&state[4] = v14;
      *&state[8] = 2082;
      *&state[10] = v15;
      v19 = 2082;
      v20 = v16;
      v21 = 1024;
      v22 = 442;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Resume non-compliant tag suspension", state, 0x22u);
    }

    [v4 resume];
  }
}

void sub_1001F2878(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i processError=%{public}@", v8, ClassName, Name, 472, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v26 = v11;
      v27 = 2082;
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 1024;
      v32 = 472;
      v33 = 2114;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i processError=%{public}@", buf, 0x2Cu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v14 = [*(*(a1 + 32) + 8) type] - 1;
    if (v14 <= 0xE && ((0x65EDu >> v14) & 1) != 0)
    {
      ++*(*(a1 + 32) + qword_100297B20[v14]);
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v15 = sub_10024DC10();
  sub_10024E250(v15, *(a1 + 64));

  v16 = sub_10024DC10();
  sub_10024E378(v16, *(*(*(a1 + 48) + 8) + 24));

  v17 = sub_10024DC10();
  sub_10024DD78(v17, *(*(a1 + 32) + 8), [*(*(a1 + 32) + 8) type]);

  v18 = NFSharedSignpostLog();
  if (os_signpost_enabled(v18))
  {
    v19 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 67240192;
    v26 = v19;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "handleDetectedTags", "tagProcessed=%{public, signpost.description:attribute}u", buf, 8u);
  }

  sub_1001F2BF0(*(a1 + 32));
  if (NFIsInternalBuild())
  {
    v20 = +[NSUserDefaults standardUserDefaults];
    v21 = [v20 BOOLForKey:@"postBackgroundTagEvents"];

    if (v21)
    {
      v22 = +[NSDistributedNotificationCenter defaultCenter];
      [v22 postNotificationName:@"com.apple.nfcd.backgroundTag.detect.event" object:0 userInfo:0 options:1];
    }
  }
}

void sub_1001F2BF0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      if (*(v2 + 173))
      {
        v3 = a1 + 128;
        if (*(a1 + 128) || *(a1 + 136) || *(a1 + 140) || *(a1 + 144))
        {
          v10[0] = @"tagType1ReadSuccessCount";
          v4 = [NSNumber numberWithUnsignedInt:?];
          v11[0] = v4;
          v10[1] = @"tagType2ReadSuccessCount";
          v5 = [NSNumber numberWithUnsignedInt:*(a1 + 132)];
          v11[1] = v5;
          v10[2] = @"tagType3ReadSuccessCount";
          v6 = [NSNumber numberWithUnsignedInt:*(a1 + 136)];
          v11[2] = v6;
          v10[3] = @"tagType4ReadSuccessCount";
          v7 = [NSNumber numberWithUnsignedInt:*(a1 + 140)];
          v11[3] = v7;
          v10[4] = @"tagType5ReadSuccessCount";
          v8 = [NSNumber numberWithUnsignedInt:*(a1 + 144)];
          v11[4] = v8;
          v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
          [NFLPCDStatisticsCALogger postAnalyticsLPCDStatistic:v9];
        }

        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
      }
    }
  }
}

void sub_1001F2DA4(void **a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] == 65)
  {
    v5 = NFSharedSignpostLog();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCUISceneService activate", &unk_1002E8B7A, buf, 2u);
    }

    sub_1001F0CC0(a1[4], a1[5], a1[6], a1[7]);
    v6 = NFSharedSignpostLog();
    if (os_signpost_enabled(v6))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCUISceneService activate", &unk_1002E8B7A, v7, 2u);
    }
  }

  else
  {
    (*(a1[7] + 2))();
  }
}

void sub_1001F2F94(void **a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] == 65)
  {
    v5 = NFSharedSignpostLog();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCUISceneService activate", &unk_1002E8B7A, buf, 2u);
    }

    sub_1001F0CC0(a1[4], a1[5], a1[6], &stru_10031B8A0);
    v6 = NFSharedSignpostLog();
    if (os_signpost_enabled(v6))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCUISceneService activate", &unk_1002E8B7A, v7, 2u);
    }
  }
}

void sub_1001F37C4(uint64_t a1)
{
  v2 = +[_NFHardwareManager sharedHardwareManager];
  [v2 enablePowerCountersLogging:*(a1 + 40)];

  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    if (!v3 || *(v3 + 32) && (*(v3 + 152) & 1) == 0)
    {
      *(v3 + 153) = 1;
      v4 = *(*(a1 + 32) + 48);

      [v4 startTimer:0.7];
      return;
    }
  }

  else
  {
    [*(v3 + 48) stopTimer];
    *(*(a1 + 32) + 153) = 0;
    v5 = *(a1 + 32);
    if (v5 && *(v5 + 32))
    {
      *(v5 + 152) = 0;
    }
  }

  v6 = +[_NFHardwareManager sharedHardwareManager];
  [v6 maybeStartNextSession];
}

void sub_1001F3930(uint64_t a1)
{
  v2 = +[_NFHardwareManager sharedHardwareManager];
  [v2 didCameraStateChange:*(a1 + 32)];
  [v2 maybeStartNextSession];
}

void sub_1001F3B88(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 32))
    {
      v3 = *(v2 + 152);
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  [*(v2 + 48) stopTimer];
  v4 = *(a1 + 32);
  if (v4 && *(v4 + 32))
  {
    *(v4 + 152) = *(a1 + 40);
    if ((*(a1 + 40) & 1) == 0)
    {
      v4 = *(a1 + 32);
LABEL_12:
      if (*(v4 + 153))
      {
        return;
      }

      *(v4 + 153) = 1;
      [*(*(a1 + 32) + 48) startTimer:0.7];
      if (v3 & 1 | ((*(a1 + 40) & 1) == 0))
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 40) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    return;
  }

LABEL_15:
  v5 = +[_NFHardwareManager sharedHardwareManager];
  [v5 maybeStartNextSession];
}

uint64_t sub_1001F41D0(void *a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  v11 = v10;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_131;
  }

  if (!v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v21 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Missing SSE handle", v25, ClassName, Name, 51);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(a1);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      *buf = 67109890;
      v183 = v27;
      v184 = 2082;
      v185 = object_getClassName(a1);
      v186 = 2082;
      v187 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
      v188 = 1024;
      v189 = 51;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing SSE handle", buf, 0x22u);
    }

    v19 = 9;
    goto LABEL_130;
  }

  v175 = v10;
  kdebug_trace();
  v12 = NFSharedSignpostLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge in", buf, 2u);
  }

  v180 = 0;
  v13 = sub_10022B0E8(NFSSEWrapper, &v180);
  v14 = v180;
  kdebug_trace();
  v15 = NFSharedSignpostLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge out", buf, 2u);
  }

  if (!v14 || v13)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(a1);
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(a1);
      v163 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
      v33 = 45;
      if (v31)
      {
        v33 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v33, v32, v163, 63);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(a1);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(a1);
      v38 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
      *buf = 67109890;
      v183 = v36;
      v184 = 2082;
      v185 = v37;
      v186 = 2082;
      v187 = v38;
      v188 = 1024;
      v189 = 63;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
    }

    if (v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = 6;
    }
  }

  else
  {
    if ([v14 length]== 8)
    {
      v179 = 0;
      v16 = sub_1001599F4(a1, &v179);
      v17 = v179;
      v18 = v17;
      if (v17)
      {
        if ([v17 code])
        {
          v19 = [v18 code];
        }

        else
        {
          v19 = 16;
        }

        v11 = v175;
        goto LABEL_129;
      }

      v178 = 0;
      v19 = sub_1000B7A20(a1, v14, &v178);
      v52 = v178;
      v174 = v52;
      if (v19)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v53 = NFLogGetLogger();
        if (v53)
        {
          v54 = v53;
          v55 = object_getClass(a1);
          v56 = class_isMetaClass(v55);
          v57 = object_getClassName(a1);
          v58 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          if (v19 >= 0x4C)
          {
            v59 = 76;
          }

          else
          {
            v59 = v19;
          }

          v170 = off_10031B938[v59];
          v60 = 43;
          if (!v56)
          {
            v60 = 45;
          }

          v54(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v60, v57, v58, 81, @"Failed to authenticate", v19, v170);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v62 = object_getClass(a1);
          if (class_isMetaClass(v62))
          {
            v63 = 43;
          }

          else
          {
            v63 = 45;
          }

          v64 = object_getClassName(a1);
          v65 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          if (v19 >= 0x4C)
          {
            v66 = 76;
          }

          else
          {
            v66 = v19;
          }

          v67 = off_10031B938[v66];
          *buf = 67110658;
          v183 = v63;
          v184 = 2082;
          v185 = v64;
          v186 = 2082;
          v187 = v65;
          v188 = 1024;
          v189 = 81;
          v190 = 2112;
          v191 = @"Failed to authenticate";
          v192 = 1024;
          v193 = v19;
          v194 = 2080;
          v195 = v67;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }

        v11 = v175;
        goto LABEL_128;
      }

      if ([v52 length] != 16)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v97 = NFLogGetLogger();
        if (v97)
        {
          v98 = v97;
          v99 = object_getClass(a1);
          v100 = class_isMetaClass(v99);
          v101 = object_getClassName(a1);
          v102 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          v168 = [v174 length];
          v103 = 45;
          if (v100)
          {
            v103 = 43;
          }

          v98(3, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", v103, v101, v102, 85, v168);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v104 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v105 = object_getClass(a1);
          if (class_isMetaClass(v105))
          {
            v106 = 43;
          }

          else
          {
            v106 = 45;
          }

          v107 = object_getClassName(a1);
          v108 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          v109 = [v174 length];
          *buf = 67110146;
          v183 = v106;
          v184 = 2082;
          v185 = v107;
          v186 = 2082;
          v187 = v108;
          v188 = 1024;
          v189 = 85;
          v190 = 2048;
          v191 = v109;
          _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", buf, 0x2Cu);
        }

        v19 = 13;
        v11 = v175;
        goto LABEL_128;
      }

      v177 = 0;
      kdebug_trace();
      v68 = NFSharedSignpostLog();
      if (os_signpost_enabled(v68))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseAuthorize in", buf, 2u);
      }

      v69 = [a1 serialNumberAsData];
      v176 = 0;
      v70 = sub_10022B2D0(NFSSEWrapper, 2, v9, v69, a3, v14, v174, &v177, &v176, 0, 0, 0, 0);
      v173 = v176;

      kdebug_trace();
      v71 = NFSharedSignpostLog();
      if (os_signpost_enabled(v71))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v71, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseAuthorize out", buf, 2u);
      }

      v18 = 0;
      if (!v70)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v110 = NFLogGetLogger();
        v11 = v175;
        if (v110)
        {
          v111 = v110;
          v112 = object_getClass(a1);
          v113 = class_isMetaClass(v112);
          v114 = object_getClassName(a1);
          v166 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          v115 = !v113;
          v18 = 0;
          v116 = 45;
          if (!v115)
          {
            v116 = 43;
          }

          v111(3, "%c[%{public}s %{public}s]:%i Failed to generate cryptogram", v116, v114, v166, 161);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v92 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v117 = object_getClass(a1);
          if (class_isMetaClass(v117))
          {
            v118 = 43;
          }

          else
          {
            v118 = 45;
          }

          v119 = object_getClassName(a1);
          v120 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          *buf = 67109890;
          v183 = v118;
          v184 = 2082;
          v185 = v119;
          v186 = 2082;
          v187 = v120;
          v188 = 1024;
          v189 = 161;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to generate cryptogram", buf, 0x22u);
        }

        v172 = 0;
        v19 = 8;
        goto LABEL_126;
      }

      if ([v70 length] == 8)
      {
        v72 = RBSProcessMonitor_ptr;
        v11 = v175;
        if (a5)
        {
          v181 = ~*[v70 bytes];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v73 = NFLogGetLogger();
          if (v73)
          {
            v74 = v73;
            v75 = object_getClass(a1);
            v76 = class_isMetaClass(v75);
            v77 = object_getClassName(a1);
            v164 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
            v78 = 45;
            if (v76)
            {
              v78 = 43;
            }

            v160 = v77;
            v11 = v175;
            v74(4, "%c[%{public}s %{public}s]:%i Warning : demo mode - nuking payload", v78, v160, v164, 174);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v79 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            v80 = object_getClass(a1);
            if (class_isMetaClass(v80))
            {
              v81 = 43;
            }

            else
            {
              v81 = 45;
            }

            v82 = object_getClassName(a1);
            v83 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
            *buf = 67109890;
            v183 = v81;
            v184 = 2082;
            v185 = v82;
            v186 = 2082;
            v187 = v83;
            v188 = 1024;
            v189 = 174;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Warning : demo mode - nuking payload", buf, 0x22u);
          }

          v72 = RBSProcessMonitor_ptr;
          v84 = [NSData dataWithBytes:&v181 length:8];

          v70 = v84;
        }

        v172 = v70;
        v19 = sub_1000B7F34(a1, v177, v70, v11);
        v85 = [objc_alloc(v72[56]) initWithBytes:&unk_100297B98 length:8];
        v86 = sub_100158A6C(a1, v85, 0);

        if (a5 && v19)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v87 = NFLogGetLogger();
          if (v87)
          {
            v88 = v87;
            v89 = object_getClass(a1);
            v90 = class_isMetaClass(v89);
            v161 = object_getClassName(a1);
            v165 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
            v91 = 45;
            if (v90)
            {
              v91 = 43;
            }

            v88(3, "%c[%{public}s %{public}s]:%i Expected demo mode error : %@", v91, v161, v165, 184, 0);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v92 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            v93 = object_getClass(a1);
            if (class_isMetaClass(v93))
            {
              v94 = 43;
            }

            else
            {
              v94 = 45;
            }

            v95 = object_getClassName(a1);
            v96 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
            *buf = 67110146;
            v183 = v94;
            v184 = 2082;
            v185 = v95;
            v186 = 2082;
            v187 = v96;
            v188 = 1024;
            v189 = 184;
            v190 = 2112;
            v191 = 0;
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expected demo mode error : %@", buf, 0x2Cu);
          }

          v19 = 71;
          v18 = 0;
          goto LABEL_126;
        }

        v18 = 0;
        if (v19 < 2)
        {
          goto LABEL_127;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v134 = NFLogGetLogger();
        if (v134)
        {
          v135 = v134;
          v136 = object_getClass(a1);
          v137 = class_isMetaClass(v136);
          v138 = object_getClassName(a1);
          v139 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          v115 = !v137;
          v18 = 0;
          v140 = 45;
          if (!v115)
          {
            v140 = 43;
          }

          v135(3, "%c[%{public}s %{public}s]:%i Failed to authorize with for type=%d", v140, v138, v139, 188, v177);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v141 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
        {
          v142 = object_getClass(a1);
          if (class_isMetaClass(v142))
          {
            v143 = 43;
          }

          else
          {
            v143 = 45;
          }

          v144 = object_getClassName(a1);
          v145 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          *buf = 67110146;
          v183 = v143;
          v184 = 2082;
          v185 = v144;
          v18 = 0;
          v186 = 2082;
          v187 = v145;
          v188 = 1024;
          v189 = 188;
          v190 = 1024;
          LODWORD(v191) = v177;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to authorize with for type=%d", buf, 0x28u);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v146 = NFLogGetLogger();
        if (v146)
        {
          v147 = v146;
          v148 = object_getClass(a1);
          v149 = class_isMetaClass(v148);
          v150 = object_getClassName(a1);
          v151 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          if (v19 >= 0x4C)
          {
            v152 = 76;
          }

          else
          {
            v152 = v19;
          }

          v171 = off_10031B938[v152];
          v115 = !v149;
          v18 = 0;
          v153 = 43;
          if (v115)
          {
            v153 = 45;
          }

          v147(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v153, v150, v151, 189, @"Returned", v19, v171, v172, v173);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v92 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v154 = object_getClass(a1);
          if (class_isMetaClass(v154))
          {
            v155 = 43;
          }

          else
          {
            v155 = 45;
          }

          v156 = object_getClassName(a1);
          v157 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          if (v19 >= 0x4C)
          {
            v158 = 76;
          }

          else
          {
            v158 = v19;
          }

          v159 = off_10031B938[v158];
          *buf = 67110658;
          v183 = v155;
          v18 = 0;
          v184 = 2082;
          v185 = v156;
          v186 = 2082;
          v187 = v157;
          v188 = 1024;
          v189 = 189;
          v190 = 2112;
          v191 = @"Returned";
          v192 = 1024;
          v193 = v19;
          v194 = 2080;
          v195 = v159;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v121 = NFLogGetLogger();
        if (v121)
        {
          v122 = v121;
          v123 = object_getClass(a1);
          v124 = class_isMetaClass(v123);
          v125 = object_getClassName(a1);
          v126 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          v169 = [v70 length];
          v115 = !v124;
          v18 = 0;
          v127 = 45;
          if (!v115)
          {
            v127 = 43;
          }

          v122(3, "%c[%{public}s %{public}s]:%i Invalid cryptogram length: %lu", v127, v125, v126, 165, v169);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v92 = NFSharedLogGetLogger();
        v172 = v70;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v128 = object_getClass(a1);
          if (class_isMetaClass(v128))
          {
            v129 = 43;
          }

          else
          {
            v129 = 45;
          }

          v130 = object_getClassName(a1);
          v131 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
          v132 = [v70 length];
          *buf = 67110146;
          v183 = v129;
          v184 = 2082;
          v185 = v130;
          v186 = 2082;
          v187 = v131;
          v188 = 1024;
          v189 = 165;
          v190 = 2048;
          v191 = v132;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid cryptogram length: %lu", buf, 0x2Cu);
        }

        v19 = 13;
      }

      v11 = v175;
LABEL_126:

LABEL_127:
LABEL_128:

LABEL_129:
      goto LABEL_130;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(a1);
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(a1);
      v44 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
      v167 = [v14 length];
      v45 = 45;
      if (v42)
      {
        v45 = 43;
      }

      v40(3, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", v45, v43, v44, 67, v167);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = object_getClass(a1);
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(a1);
      v50 = sel_getName("_authorizeContactlessPayment:uid:targetAID:demoMode:");
      v51 = [v14 length];
      *buf = 67110146;
      v183 = v48;
      v184 = 2082;
      v185 = v49;
      v186 = 2082;
      v187 = v50;
      v188 = 1024;
      v189 = 67;
      v190 = 2048;
      v191 = v51;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", buf, 0x2Cu);
    }

    v19 = 13;
  }

  v11 = v175;
LABEL_130:

LABEL_131:
  return v19;
}

uint64_t sub_1001F5428(void *a1, void *a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a4;
  v14 = a5;
  if (a1)
  {
    if (v14)
    {
      v15 = sub_1001F54CC(a1, v11, v13, v14, a6);
    }

    else
    {
      v15 = sub_1001F41D0(a1, v11, a3, v12, a6);
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_1001F54CC(void *a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
    v43 = 0;
    goto LABEL_23;
  }

  v10 = sub_10027EA84(v9);
  v12 = *(v11 + 208);
  v13 = [a1 serialNumberAsData];
  v158 = 0;
  v14 = [v12 performChainAuthIfNeededForACL:v8 operation:@"se auth:nfc" seHandle:v7 seid:a1 error:{v13, &v158}];
  v15 = v158;

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v17 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    v20 = v7;
    ClassName = object_getClassName(a1);
    Name = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
    v22 = 45;
    if (isMetaClass)
    {
      v22 = 43;
    }

    v130 = ClassName;
    v7 = v20;
    v17(6, "%c[%{public}s %{public}s]:%i Chained Auth required: %d success: %d", v22, v130, Name, 238, v14 != 0, v15 == 0);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = object_getClass(a1);
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    v26 = object_getClassName(a1);
    v27 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
    *buf = 67110402;
    *&buf[4] = v25;
    *v161 = 2082;
    *&v161[2] = v26;
    *&v161[10] = 2082;
    *&v161[12] = v27;
    *&v161[20] = 1024;
    *&v161[22] = 238;
    *&v161[26] = 1024;
    *&v161[28] = v14 != 0;
    *&v161[32] = 1024;
    *&v161[34] = v15 == 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Chained Auth required: %d success: %d", buf, 0x2Eu);
  }

  if (v15)
  {
    v28 = v15;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v30 = v29;
      v31 = object_getClass(a1);
      v32 = class_isMetaClass(v31);
      v152 = object_getClassName(a1);
      v33 = v7;
      v34 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      v35 = [v8 debugDescription];
      v135 = v34;
      v7 = v33;
      v36 = 45;
      if (v32)
      {
        v36 = 43;
      }

      v28 = v15;
      v30(3, "%c[%{public}s %{public}s]:%i Failed to performChainAuthIfNeededForACL %@ : %@", v36, v152, v135, 240, v15, v35);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(a1);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(a1);
      v41 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      v42 = [v8 debugDescription];
      *buf = 67110402;
      *&buf[4] = v39;
      *v161 = 2082;
      *&v161[2] = v40;
      *&v161[10] = 2082;
      *&v161[12] = v41;
      *&v161[20] = 1024;
      *&v161[22] = 240;
      *&v161[26] = 2112;
      *&v161[28] = v28;
      *&v161[36] = 2112;
      v162 = v42;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to performChainAuthIfNeededForACL %@ : %@", buf, 0x36u);
    }

    v43 = 6;
    goto LABEL_22;
  }

  if (v14)
  {
    v45 = [v14 resolvedAuthorization];

    v7 = v45;
  }

  v157 = 0;
  v46 = sub_1001599F4(a1, &v157);
  v47 = v157;
  if (v47)
  {
    v28 = v47;
    if ([v47 code])
    {
      v43 = [v28 code];
    }

    else
    {
      v43 = 16;
    }

    goto LABEL_22;
  }

  v156 = 0;
  v48 = sub_1001F73D4(a1, &v156);
  v28 = v156;
  if (v28 || !v48)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v88 = NFLogGetLogger();
    if (v88)
    {
      v89 = v88;
      v90 = object_getClass(a1);
      v91 = class_isMetaClass(v90);
      v132 = object_getClassName(a1);
      v137 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      v92 = 45;
      if (v91)
      {
        v92 = 43;
      }

      v89(3, "%c[%{public}s %{public}s]:%i Failed to GetOperationApprovalNonce - %@", v92, v132, v137, 256, v28);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v93 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = object_getClass(a1);
      if (class_isMetaClass(v94))
      {
        v95 = 43;
      }

      else
      {
        v95 = 45;
      }

      v96 = object_getClassName(a1);
      v97 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      *buf = 67110146;
      *&buf[4] = v95;
      *v161 = 2082;
      *&v161[2] = v96;
      *&v161[10] = 2082;
      *&v161[12] = v97;
      *&v161[20] = 1024;
      *&v161[22] = 256;
      *&v161[26] = 2112;
      *&v161[28] = v28;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to GetOperationApprovalNonce - %@", buf, 0x2Cu);
    }

    if ([v28 code])
    {
      v43 = [v28 code];
    }

    else
    {
      v43 = 16;
    }

    goto LABEL_106;
  }

  v49 = [a1 serialNumberAsData];
  v155 = 0;
  v50 = sub_10022C66C(NFSSEWrapper, @"se,nfc", v7, v48, v49, v8, &v155);
  v51 = v155;

  if (!v50)
  {
    v98 = v51;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v99 = NFLogGetLogger();
    if (v99)
    {
      v100 = v99;
      v101 = object_getClass(a1);
      v102 = class_isMetaClass(v101);
      v133 = object_getClassName(a1);
      v138 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      v103 = 45;
      if (v102)
      {
        v103 = 43;
      }

      v100(3, "%c[%{public}s %{public}s]:%i Failed to get SignedOperationApproval from SEP: %@", v103, v133, v138, 268, v51);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v104 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      v105 = object_getClass(a1);
      if (class_isMetaClass(v105))
      {
        v106 = 43;
      }

      else
      {
        v106 = 45;
      }

      v107 = object_getClassName(a1);
      v108 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      *buf = 67110146;
      *&buf[4] = v106;
      *v161 = 2082;
      *&v161[2] = v107;
      *&v161[10] = 2082;
      *&v161[12] = v108;
      *&v161[20] = 1024;
      *&v161[22] = 268;
      *&v161[26] = 2112;
      *&v161[28] = v98;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SignedOperationApproval from SEP: %@", buf, 0x2Cu);
    }

    v87 = v98;
    if ([v98 code])
    {
      v109 = [v98 code];
      v50 = 0;
LABEL_102:
      v43 = v109;
      goto LABEL_105;
    }

    v50 = 0;
LABEL_104:
    v43 = 6;
    goto LABEL_105;
  }

  v150 = v48;
  if (a5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = object_getClass(a1);
      v55 = class_isMetaClass(v54);
      v56 = v50;
      v57 = object_getClassName(a1);
      v136 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      v58 = 45;
      if (v55)
      {
        v58 = 43;
      }

      v131 = v57;
      v50 = v56;
      v53(4, "%c[%{public}s %{public}s]:%i Warning : demo mode - nuking payload", v58, v131, v136, 273);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = object_getClass(a1);
      v61 = v50;
      if (class_isMetaClass(v60))
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      v63 = object_getClassName(a1);
      v64 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      *buf = 67109890;
      *&buf[4] = v62;
      v50 = v61;
      *v161 = 2082;
      *&v161[2] = v63;
      *&v161[10] = 2082;
      *&v161[12] = v64;
      *&v161[20] = 1024;
      *&v161[22] = 273;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Warning : demo mode - nuking payload", buf, 0x22u);
    }

    v65 = *[v50 bytes];
    v66 = [v50 length];
    v67 = malloc_type_calloc(1uLL, v66, 0x100004077774924uLL);
    *v67 = ~v65;
    v68 = [NSData dataWithBytes:v67 length:v66];

    free(v67);
    v50 = v68;
    v48 = v150;
  }

  v159 = 0;
  v69 = sub_100157AB0(a1, 128, 250, 2, 0, v50, 0, 0, 1u, &v159);
  v148 = v159;
  v70 = v51;
  v149 = [v69 status];
  if (v149 != 36864)
  {
    v146 = v7;
    v147 = v69;
    v145 = v50;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v71 = NFLogGetLogger();
    if (v71)
    {
      v72 = v71;
      v73 = object_getClass(a1);
      v74 = class_isMetaClass(v73);
      v144 = object_getClassName(a1);
      v75 = sel_getName("_crs_SendOperationApproval:error:");
      v139 = [v147 status];
      v76 = 45;
      if (v74)
      {
        v76 = 43;
      }

      v72(3, "%c[%{public}s %{public}s]:%i SE rejected OperationApproval with 0x%X", v76, v144, v75, 391, v139);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v77 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v78 = object_getClass(a1);
      if (class_isMetaClass(v78))
      {
        v79 = 43;
      }

      else
      {
        v79 = 45;
      }

      v80 = object_getClassName(a1);
      v81 = sel_getName("_crs_SendOperationApproval:error:");
      v82 = [v147 status];
      *buf = 67110146;
      *&buf[4] = v79;
      *v161 = 2082;
      *&v161[2] = v80;
      *&v161[10] = 2082;
      *&v161[12] = v81;
      *&v161[20] = 1024;
      *&v161[22] = 391;
      *&v161[26] = 1024;
      *&v161[28] = v82;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE rejected OperationApproval with 0x%X", buf, 0x28u);
    }

    v142 = [NSError alloc];
    v141 = [NSString stringWithUTF8String:"nfcd"];
    v163[0] = NSLocalizedDescriptionKey;
    v143 = [NSString stringWithUTF8String:"Command Error"];
    *buf = v143;
    *v161 = &off_100335BB0;
    v163[1] = @"Line";
    v163[2] = @"Method";
    v140 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_crs_SendOperationApproval:error:")];
    *&v161[8] = v140;
    v163[3] = NSDebugDescriptionErrorKey;
    v83 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_crs_SendOperationApproval:error:"), 393];
    *&v161[16] = v83;
    v163[4] = NSLocalizedFailureReasonErrorKey;
    v84 = [[NSString alloc] initWithFormat:@"Failed to send OA 0x%hx", objc_msgSend(v147, "status")];
    *&v161[24] = v84;
    v85 = [NSDictionary dictionaryWithObjects:buf forKeys:v163 count:5];
    v70 = [v142 initWithDomain:v141 code:16 userInfo:v85];
    v86 = v70;

    v69 = v147;
    v50 = v145;
    v7 = v146;
    v48 = v150;
  }

  v87 = v70;
  if (v149 != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v110 = NFLogGetLogger();
    v111 = v110;
    if (a5)
    {
      if (v110)
      {
        v112 = object_getClass(a1);
        v113 = class_isMetaClass(v112);
        v153 = object_getClassName(a1);
        v114 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
        v115 = 45;
        if (v113)
        {
          v115 = 43;
        }

        v111(3, "%c[%{public}s %{public}s]:%i Expected demo mode error : %@", v115, v153, v114, 286, v87);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v116 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        v117 = object_getClass(a1);
        if (class_isMetaClass(v117))
        {
          v118 = 43;
        }

        else
        {
          v118 = 45;
        }

        v119 = object_getClassName(a1);
        v120 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
        *buf = 67110146;
        *&buf[4] = v118;
        *v161 = 2082;
        *&v161[2] = v119;
        *&v161[10] = 2082;
        *&v161[12] = v120;
        *&v161[20] = 1024;
        *&v161[22] = 286;
        *&v161[26] = 2112;
        *&v161[28] = v87;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expected demo mode error : %@", buf, 0x2Cu);
      }

      v43 = 71;
      goto LABEL_105;
    }

    if (v110)
    {
      v121 = object_getClass(a1);
      v122 = class_isMetaClass(v121);
      v154 = object_getClassName(a1);
      v123 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      v124 = 45;
      if (v122)
      {
        v124 = 43;
      }

      v111(3, "%c[%{public}s %{public}s]:%i SE doesn't like SignedOperationApproval : %@", v124, v154, v123, 289, v87);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v125 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      v126 = object_getClass(a1);
      if (class_isMetaClass(v126))
      {
        v127 = 43;
      }

      else
      {
        v127 = 45;
      }

      v128 = object_getClassName(a1);
      v129 = sel_getName("_authorizeContactlessWithOperationApproval:uid:usingACL:demoMode:");
      *buf = 67110146;
      *&buf[4] = v127;
      *v161 = 2082;
      *&v161[2] = v128;
      *&v161[10] = 2082;
      *&v161[12] = v129;
      *&v161[20] = 1024;
      *&v161[22] = 289;
      *&v161[26] = 2112;
      *&v161[28] = v87;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE doesn't like SignedOperationApproval : %@", buf, 0x2Cu);
    }

    if ([v87 code])
    {
      v109 = [v87 code];
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  v43 = 0;
LABEL_105:

  v28 = v87;
LABEL_106:

LABEL_22:
LABEL_23:

  return v43;
}

id sub_1001F6428(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v120 = 0;
    sub_100159994(a1, v8, &v120);
    v9 = v120;
    if (v9)
    {
      v10 = v9;
      if (!a4)
      {
        v41 = 0;
LABEL_87:

        goto LABEL_88;
      }

      v111 = [NSError alloc];
      v113 = [NSString stringWithUTF8String:"nfcd"];
      if ([v10 code])
      {
        v11 = [v10 code];
      }

      else
      {
        v11 = 16;
      }

      sel = v11;
      v128[0] = NSLocalizedDescriptionKey;
      v118 = v7;
      if ([v10 code] && objc_msgSend(v10, "code") > 0x4B)
      {
        v44 = 76;
      }

      else if ([v10 code])
      {
        v44 = [v10 code];
      }

      else
      {
        v44 = 16;
      }

      v45 = [NSString stringWithUTF8String:off_10031B938[v44]];
      v129[0] = v45;
      v129[1] = &off_100335B50;
      v128[1] = @"Line";
      v128[2] = @"Method";
      v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:")];
      v129[2] = v46;
      v128[3] = NSDebugDescriptionErrorKey;
      v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:"), 305];
      v129[3] = v47;
      v128[4] = NSLocalizedFailureReasonErrorKey;
      v48 = [NSString alloc];
      v49 = [v8 identifier];
      v50 = [v48 initWithFormat:@"Failed to selectApplet %@ ", v49];
      v129[4] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:5];
      *a4 = [v111 initWithDomain:v113 code:sel userInfo:v51];

      v15 = v113;
      v52 = v46;

      v41 = 0;
      v7 = v118;
    }

    else
    {
      v112 = a4;
      v117 = v7;
      v121 = 0;
      v12 = sub_100157AB0(a1, 128, 202, 0, 172, 0, 0, 0, 1u, &v121);
      v13 = v121;
      v14 = v13;
      v110 = v8;
      if (v12 && !v13 && [v12 status] == 36864)
      {
        v15 = [v12 response];
        v16 = 0;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v18 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_getPtaAcl:");
          v105 = [v12 status];
          v23 = 45;
          if (isMetaClass)
          {
            v23 = 43;
          }

          v18(3, "%c[%{public}s %{public}s]:%i SE rejected GET DATA command for ACL with SW 0x%X", v23, ClassName, Name, 432, v105);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = object_getClass(a1);
          if (class_isMetaClass(v25))
          {
            v26 = 43;
          }

          else
          {
            v26 = 45;
          }

          v27 = object_getClassName(a1);
          v28 = sel_getName("_getPtaAcl:");
          v29 = [v12 status];
          *buf = 67110146;
          *&buf[4] = v26;
          *v125 = 2082;
          *&v125[2] = v27;
          *&v125[10] = 2082;
          *&v125[12] = v28;
          *&v125[20] = 1024;
          *&v125[22] = 432;
          *&v125[26] = 1024;
          *&v125[28] = v29;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE rejected GET DATA command for ACL with SW 0x%X", buf, 0x28u);
        }

        v30 = [NSError alloc];
        v31 = [NSString stringWithUTF8String:"nfcd"];
        v130 = NSLocalizedDescriptionKey;
        v32 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v32;
        *v125 = &off_100335BE0;
        v131 = @"Line";
        v132 = @"Method";
        v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getPtaAcl:")];
        *&v125[8] = v33;
        v133 = NSDebugDescriptionErrorKey;
        v34 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getPtaAcl:"), 434];
        *&v125[16] = v34;
        v134 = NSLocalizedFailureReasonErrorKey;
        v35 = [[NSString alloc] initWithFormat:@"Failed to fetch ACL 0x%hx", objc_msgSend(v12, "status")];
        *&v125[24] = v35;
        v36 = [NSDictionary dictionaryWithObjects:buf forKeys:&v130 count:5];
        v16 = [v30 initWithDomain:v31 code:16 userInfo:v36];
        v37 = v16;

        v15 = 0;
        v8 = v110;
      }

      v10 = v16;
      if (v10 || !v15)
      {
        v7 = v117;
        if (!v112)
        {
          v41 = 0;
LABEL_86:

          goto LABEL_87;
        }

        v114 = v15;
        v42 = [NSError alloc];
        v107 = [NSString stringWithUTF8String:"nfcd"];
        if ([v10 code])
        {
          v43 = [v10 code];
        }

        else
        {
          v43 = 16;
        }

        v126[0] = NSLocalizedDescriptionKey;
        if ([v10 code] && objc_msgSend(v10, "code") > 0x4B)
        {
          v75 = v8;
          v76 = 76;
        }

        else
        {
          v75 = v8;
          if ([v10 code])
          {
            v76 = [v10 code];
          }

          else
          {
            v76 = 16;
          }
        }

        v52 = [NSString stringWithUTF8String:off_10031B938[v76]];
        v127[0] = v52;
        v127[1] = &off_100335B68;
        v126[1] = @"Line";
        v126[2] = @"Method";
        v89 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:")];
        v127[2] = v89;
        v126[3] = NSDebugDescriptionErrorKey;
        v90 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:"), 313];
        v127[3] = v90;
        v126[4] = NSLocalizedFailureReasonErrorKey;
        v91 = [[NSString alloc] initWithFormat:@"Failed to fetch ACL"];
        v127[4] = v91;
        v92 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:5];
        v93 = v42;
        v45 = v107;
        *v112 = [v93 initWithDomain:v107 code:v43 userInfo:v92];

        v41 = 0;
        v8 = v75;
        v15 = v114;
      }

      else
      {
        v121 = 0;
        v38 = sub_100158334(a1, 128, 250, 0, 0, 0, &v121);
        v39 = v121;
        if ([v38 status] == 36864)
        {
          v106 = [v38 response];
          v40 = 0;
        }

        else
        {
          v108 = [NSError alloc];
          v53 = [NSString stringWithUTF8String:"nfcd"];
          v130 = NSLocalizedDescriptionKey;
          [NSString stringWithUTF8String:"Command Error"];
          v54 = v115 = v15;
          *buf = v54;
          *v125 = &off_100335BC8;
          v131 = @"Line";
          v132 = @"Method";
          v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getOperationApprovalAppletInstanceNonce:")];
          *&v125[8] = v55;
          v133 = NSDebugDescriptionErrorKey;
          v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getOperationApprovalAppletInstanceNonce:"), 411];
          *&v125[16] = v56;
          v134 = NSLocalizedFailureReasonErrorKey;
          v57 = [[NSString alloc] initWithFormat:@"Failed to GetAppletInstanceNonce 0x%X", objc_msgSend(v38, "status")];
          *&v125[24] = v57;
          v58 = [NSDictionary dictionaryWithObjects:buf forKeys:&v130 count:5];
          v40 = [v108 initWithDomain:v53 code:16 userInfo:v58];
          v59 = v40;

          v15 = v115;
          v106 = 0;
        }

        v7 = v117;

        v10 = v40;
        v45 = v106;
        if (v10 || !v106)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFLogGetLogger();
          if (v62)
          {
            v63 = v62;
            v64 = object_getClass(a1);
            v65 = class_isMetaClass(v64);
            v101 = object_getClassName(a1);
            v103 = sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:");
            v66 = 45;
            if (v65)
            {
              v66 = 43;
            }

            v63(3, "%c[%{public}s %{public}s]:%i Failed to GetOperationApprovalNonce - %@", v66, v101, v103, 321, v10);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v67 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = object_getClass(a1);
            v69 = v15;
            if (class_isMetaClass(v68))
            {
              v70 = 43;
            }

            else
            {
              v70 = 45;
            }

            v71 = object_getClassName(a1);
            v72 = sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:");
            *buf = 67110146;
            *&buf[4] = v70;
            v15 = v69;
            *v125 = 2082;
            *&v125[2] = v71;
            *&v125[10] = 2082;
            *&v125[12] = v72;
            *&v125[20] = 1024;
            *&v125[22] = 321;
            *&v125[26] = 2112;
            *&v125[28] = v10;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to GetOperationApprovalNonce - %@", buf, 0x2Cu);
          }

          if (!v112)
          {
            v41 = 0;
            v8 = v110;
LABEL_85:

            goto LABEL_86;
          }

          v116 = v15;
          v73 = [NSError alloc];
          v52 = [NSString stringWithUTF8String:"nfcd"];
          if ([v10 code])
          {
            v74 = [v10 code];
          }

          else
          {
            v74 = 16;
          }

          v122[0] = NSLocalizedDescriptionKey;
          if ([v10 code] && objc_msgSend(v10, "code") > 0x4B)
          {
            v94 = 76;
          }

          else if ([v10 code])
          {
            v94 = [v10 code];
          }

          else
          {
            v94 = 16;
          }

          v95 = [NSString stringWithUTF8String:off_10031B938[v94]];
          v123[0] = v95;
          v123[1] = &off_100335B80;
          v122[1] = @"Line";
          v122[2] = @"Method";
          v96 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:")];
          v123[2] = v96;
          v122[3] = NSDebugDescriptionErrorKey;
          v97 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:"), 323];
          v123[3] = v97;
          v122[4] = NSLocalizedFailureReasonErrorKey;
          v98 = [[NSString alloc] initWithFormat:@"Failed to get NONCE"];
          v123[4] = v98;
          v99 = [NSDictionary dictionaryWithObjects:v123 forKeys:v122 count:5];
          *v112 = [v73 initWithDomain:v52 code:v74 userInfo:v99];

          v41 = 0;
          v15 = v116;
          v7 = v117;
          v8 = v110;
          v45 = v106;
        }

        else
        {
          v60 = [a1 serialNumberAsData];
          v119 = 0;
          v61 = sub_10022C66C(NFSSEWrapper, @"se,pta,eps", v117, v106, v60, v15, &v119);
          v10 = v119;

          if (v61)
          {
            v52 = v61;
            v41 = v52;
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v77 = NFLogGetLogger();
            if (v77)
            {
              v78 = v77;
              v79 = object_getClass(a1);
              v80 = class_isMetaClass(v79);
              v102 = object_getClassName(a1);
              v104 = sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:");
              v81 = 45;
              if (v80)
              {
                v81 = 43;
              }

              v78(3, "%c[%{public}s %{public}s]:%i Failed to get SignedOperationApproval from SEP: %@", v81, v102, v104, 336, v10);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v82 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              v83 = object_getClass(a1);
              v84 = v15;
              if (class_isMetaClass(v83))
              {
                v85 = 43;
              }

              else
              {
                v85 = 45;
              }

              v86 = object_getClassName(a1);
              v87 = sel_getName("_operationApprovalForSetupEndpoint:forApplet:error:");
              *buf = 67110146;
              *&buf[4] = v85;
              v15 = v84;
              *v125 = 2082;
              *&v125[2] = v86;
              *&v125[10] = 2082;
              *&v125[12] = v87;
              *&v125[20] = 1024;
              *&v125[22] = 336;
              *&v125[26] = 2112;
              *&v125[28] = v10;
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SignedOperationApproval from SEP: %@", buf, 0x2Cu);
            }

            if (v112)
            {
              v88 = v10;
              v52 = 0;
              v41 = 0;
              *v112 = v10;
            }

            else
            {
              v52 = 0;
              v41 = 0;
            }
          }

          v8 = v110;
        }
      }
    }

    goto LABEL_85;
  }

  v41 = 0;
LABEL_88:

  return v41;
}

id sub_1001F73D4(id *a1, void *a2)
{
  v2 = sub_1001F7408(a1, 1, a2);

  return v2;
}

void *sub_1001F7408(id *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v14 = 0;
    v4 = sub_100158334(a1, 128, 250, a2, 0, 0, &v14);
    v5 = v14;
    if ([v4 status] == 36864)
    {
      a3 = [v4 response];
    }

    else if (a3)
    {
      v6 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v15[0] = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithUTF8String:"Command Error"];
      v16[0] = v8;
      v16[1] = &off_100335B98;
      v15[1] = @"Line";
      v15[2] = @"Method";
      v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_crs_GetOperationApprovalWithOperationType:error:")];
      v16[2] = v9;
      v15[3] = NSDebugDescriptionErrorKey;
      v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_crs_GetOperationApprovalWithOperationType:error:"), 357];
      v16[3] = v10;
      v15[4] = NSLocalizedFailureReasonErrorKey;
      v11 = [[NSString alloc] initWithFormat:@"Failed to GetNonce 0x%X", objc_msgSend(v4, "status")];
      v16[4] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
      *a3 = [v6 initWithDomain:v7 code:16 userInfo:v12];

      a3 = 0;
    }
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

id *sub_1001F7688(id *a1, void *a2)
{
  if (a1)
  {
    a1 = sub_1001F7408(a1, 7, a2);
    v2 = vars8;
  }

  return a1;
}

uint64_t sub_1001F76C0(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v7 = 0;
    v2 = sub_1001599F4(a1, &v7);
    v3 = v7;
    v4 = v3;
    if (v3)
    {
      if ([v3 code])
      {
        v1 = [v4 code];
      }

      else
      {
        v1 = 16;
      }
    }

    else
    {
      sub_1000B9BB0(v1);
      v5 = sub_10015D3EC(v1);
      v1 = 0;
    }
  }

  return v1;
}

id sub_1001F775C(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v12 = 324736;
  v11 = 0;
  v3 = [[NSMutableData alloc] initWithCapacity:v2 + 7];
  [v3 appendBytes:&v12 length:4];
  if (v2 <= 0xFF)
  {
    v10 = v2;
    v4 = &v10;
    v5 = v3;
    v6 = 1;
LABEL_5:
    [v5 appendBytes:v4 length:v6];
    [v3 appendData:v1];
    [v3 appendBytes:&v11 length:1];
    v7 = v3;
    goto LABEL_7;
  }

  if (!(v2 >> 16))
  {
    v9[0] = 0;
    v9[1] = BYTE1(v2);
    v9[2] = v2;
    v4 = v9;
    v5 = v3;
    v6 = 3;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

uint64_t sub_1001F7858(void *a1, void *a2, NSObject **a3, _DWORD *a4)
{
  v7 = a2;
  *a3 = 0;
  if (!a4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("sendEcommerceAPDU:response:swStatus:");
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i Invalid swStatus parameter", v20, ClassName, Name, 558);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(a1);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      v79 = v22;
      v80 = 2082;
      v81 = object_getClassName(a1);
      v82 = 2082;
      v83 = sel_getName("sendEcommerceAPDU:response:swStatus:");
      v84 = 1024;
      v85 = 558;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid swStatus parameter", buf, 0x22u);
    }

    v14 = 10;
    goto LABEL_86;
  }

  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "transceiveData in", buf, 2u);
  }

  v77 = 0;
  v9 = sub_1001579EC(a1, v7, 0, &v77);
  v10 = v77;
  v11 = NFSharedSignpostLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "transceiveData out", buf, 2u);
  }

  if (!v9)
  {
    *a4 = 0;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(a1);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(a1);
      v70 = sel_getName("sendEcommerceAPDU:response:swStatus:");
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Failed send APDU to SE", v28, v27, v70, 568);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(a1);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(a1);
      v33 = sel_getName("sendEcommerceAPDU:response:swStatus:");
      *buf = 67109890;
      v79 = v31;
      v80 = 2082;
      v81 = v32;
      v82 = 2082;
      v83 = v33;
      v84 = 1024;
      v85 = 568;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed send APDU to SE", buf, 0x22u);
    }

    if ([v10 code])
    {
      v14 = [v10 code];
    }

    else
    {
      v14 = 16;
    }

    goto LABEL_85;
  }

  v74 = v9;
  v12 = [NFResponseAPDU responseWithData:v9];
  *a4 = [v12 status];
  if ([v12 status] == 36864)
  {
    *a3 = [v12 response];
    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "done", buf, 2u);
    }

    v14 = 0;
    goto LABEL_84;
  }

  v73 = v7;
  v75 = objc_opt_new();
  v34 = v12;
  v35 = v10;
  while (1)
  {
    if (([v34 status] & 0xFF00) != 0x6100)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(a1);
        v46 = class_isMetaClass(v45);
        v47 = object_getClassName(a1);
        v48 = sel_getName("sendEcommerceAPDU:response:swStatus:");
        v72 = [v34 status];
        v49 = 45;
        if (v46)
        {
          v49 = 43;
        }

        v44(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v49, v47, v48, 613, v72);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = object_getClass(a1);
        if (class_isMetaClass(v51))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        v53 = object_getClassName(a1);
        v54 = sel_getName("sendEcommerceAPDU:response:swStatus:");
        v55 = [v34 status];
        *buf = 67110146;
        v79 = v52;
        v80 = 2082;
        v81 = v53;
        v82 = 2082;
        v83 = v54;
        v84 = 1024;
        v85 = 613;
        v86 = 1024;
        v87 = v55;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
      }

      if ([v34 status] == 27010)
      {
        v14 = 8;
        v13 = v75;
      }

      else
      {
        v13 = v75;
        if ([v34 status] == 27013)
        {
          v14 = 8;
        }

        else if ([v34 status] == 27265)
        {
          v14 = 14;
        }

        else if ([v34 status] == 27012)
        {
          v14 = 23;
        }

        else if ([v34 status] == 27264)
        {
          v14 = 10;
        }

        else if ([v34 status] == 27272 || objc_msgSend(v34, "status") == 27015)
        {
          v14 = 9;
        }

        else
        {
          v14 = 6;
        }
      }

      v67 = NFSharedSignpostLog();
      if (os_signpost_enabled(v67))
      {
        *buf = 67109120;
        v79 = v14;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "done - error: %d", buf, 8u);
      }

      v12 = v34;
      v10 = v35;
      goto LABEL_83;
    }

    v36 = [v34 response];
    [v75 appendData:v36];

    v37 = NFSharedSignpostLog();
    if (os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "reading extra RADPU", buf, 2u);
    }

    v38 = [v34 status];
    v76 = v35;
    v12 = sub_10015837C(a1, 128, 192, 0, 0, 0, v38, 0, &v76);
    v10 = v76;

    v39 = NFSharedSignpostLog();
    if (os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "reading extra RADPU done", buf, 2u);
    }

    if (!v12)
    {
      break;
    }

    *a4 = [v12 status];
    v34 = v12;
    v35 = v10;
    if ([v12 status] == 36864)
    {
      v40 = [v12 response];
      v13 = v75;
      [v75 appendData:v40];

      v41 = v75;
      *a3 = v75;
      v42 = NFSharedSignpostLog();
      if (os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "done", buf, 2u);
      }

      v14 = 0;
LABEL_83:
      v7 = v73;
      goto LABEL_84;
    }
  }

  *a4 = 0;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v56 = NFLogGetLogger();
  if (v56)
  {
    v57 = v56;
    v58 = object_getClass(a1);
    v59 = class_isMetaClass(v58);
    v60 = object_getClassName(a1);
    v71 = sel_getName("sendEcommerceAPDU:response:swStatus:");
    v61 = 45;
    if (v59)
    {
      v61 = 43;
    }

    v57(3, "%c[%{public}s %{public}s]:%i Command failed", v61, v60, v71, 599);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v62 = NFSharedLogGetLogger();
  v7 = v73;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    v63 = object_getClass(a1);
    if (class_isMetaClass(v63))
    {
      v64 = 43;
    }

    else
    {
      v64 = 45;
    }

    v65 = object_getClassName(a1);
    v66 = sel_getName("sendEcommerceAPDU:response:swStatus:");
    *buf = 67109890;
    v79 = v64;
    v80 = 2082;
    v81 = v65;
    v82 = 2082;
    v83 = v66;
    v84 = 1024;
    v85 = 599;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed", buf, 0x22u);
  }

  v12 = 0;
  if ([v10 code])
  {
    v14 = [v10 code];
  }

  else
  {
    v14 = 16;
  }

  v13 = v75;
LABEL_84:

  v9 = v74;
LABEL_85:

LABEL_86:
  return v14;
}

void sub_1001F82B0(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [v9 bytes];
  if (v11 && (v12 = v11, [v9 length] >= 4))
  {
    v13 = v12[3];
    if (v13 > 7)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v25 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("postCACRSAuth:request:response:status:");
        v28 = 45;
        if (isMetaClass)
        {
          v28 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i Failed to post CA as we have an invalid Validation Type %d", v28, ClassName, Name, 657, v13);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = object_getClass(a1);
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        *buf = 67110146;
        v36 = v31;
        v37 = 2082;
        v38 = object_getClassName(a1);
        v39 = 2082;
        v40 = sel_getName("postCACRSAuth:request:response:status:");
        v41 = 1024;
        v42 = 657;
        v43 = 1024;
        LODWORD(v44) = v13;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to post CA as we have an invalid Validation Type %d", buf, 0x28u);
      }
    }

    else
    {
      sub_1000B9740(a1, v13, v10, *a4, a5);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v15 = v14;
      v16 = object_getClass(a1);
      v17 = class_isMetaClass(v16);
      v18 = object_getClassName(a1);
      v19 = sel_getName("postCACRSAuth:request:response:status:");
      v34 = [v9 length];
      v20 = 45;
      if (v17)
      {
        v20 = 43;
      }

      v15(6, "%c[%{public}s %{public}s]:%i Failed to post CA as we have an invalid APDU buffer with length %lu", v20, v18, v19, 660, v34);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = object_getClass(a1);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      *buf = 67110146;
      v36 = v23;
      v37 = 2082;
      v38 = object_getClassName(a1);
      v39 = 2082;
      v40 = sel_getName("postCACRSAuth:request:response:status:");
      v41 = 1024;
      v42 = 660;
      v43 = 2048;
      v44 = [v9 length];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to post CA as we have an invalid APDU buffer with length %lu", buf, 0x2Cu);
    }
  }
}

uint64_t sub_1001F8604(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!a1)
  {
    v53 = 0;
    goto LABEL_106;
  }

  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CARD_MIGRATION", "begin", buf, 2u);
  }

  v152 = v14;
  if (!v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v42 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      v45 = v16;
      v46 = v15;
      ClassName = object_getClassName(a1);
      Name = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      v48 = 45;
      if (isMetaClass)
      {
        v48 = 43;
      }

      v124 = ClassName;
      v15 = v46;
      v16 = v45;
      v12 = 0;
      v42(3, "%c[%{public}s %{public}s]:%i Missing SSE handle", v48, v124, Name, 676);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v49 = object_getClass(a1);
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      v51 = object_getClassName(a1);
      v52 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      *buf = 67109890;
      *&buf[4] = v50;
      *v159 = 2082;
      *&v159[2] = v51;
      *&v159[10] = 2082;
      *&v159[12] = v52;
      *&v159[20] = 1024;
      *&v159[22] = 676;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing SSE handle", buf, 0x22u);
    }

    v53 = 9;
    goto LABEL_105;
  }

  v151 = v13;
  v154 = 0;
  v18 = sub_1001F73D4(a1, &v154);
  v19 = v154;
  if (v19 || !v18)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v55 = v54;
      v56 = object_getClass(a1);
      v57 = class_isMetaClass(v56);
      v125 = object_getClassName(a1);
      v130 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      v58 = 45;
      if (v57)
      {
        v58 = 43;
      }

      v55(3, "%c[%{public}s %{public}s]:%i Failed to GetOperationApprovalNonce - %{public}@", v58, v125, v130, 690, v19);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = object_getClass(a1);
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      v62 = object_getClassName(a1);
      v63 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      *buf = 67110146;
      *&buf[4] = v61;
      *v159 = 2082;
      *&v159[2] = v62;
      *&v159[10] = 2082;
      *&v159[12] = v63;
      *&v159[20] = 1024;
      *&v159[22] = 690;
      *&v159[26] = 2114;
      *&v159[28] = v19;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to GetOperationApprovalNonce - %{public}@", buf, 0x2Cu);
    }

    if ([v19 code])
    {
      v53 = [v19 code];
    }

    else
    {
      v53 = 16;
    }

    v14 = v152;
    goto LABEL_104;
  }

  v20 = [a1 serialNumberAsData];
  v153 = 0;
  v21 = sub_10022C66C(NFSSEWrapper, @"se,cardauth", v12, v18, v20, v15, &v153);
  v19 = v153;

  v149 = v21;
  if (!v21)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v64 = NFLogGetLogger();
    if (v64)
    {
      v65 = v64;
      v66 = object_getClass(a1);
      v67 = class_isMetaClass(v66);
      v68 = v18;
      v69 = v12;
      v70 = v16;
      v71 = v15;
      v72 = object_getClassName(a1);
      v131 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      v73 = 45;
      if (v67)
      {
        v73 = 43;
      }

      v126 = v72;
      v15 = v71;
      v16 = v70;
      v12 = v69;
      v18 = v68;
      v65(3, "%c[%{public}s %{public}s]:%i Failed to get SignedOperationApproval from SEP: %{public}@", v73, v126, v131, 702, v19);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = object_getClass(a1);
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      v77 = object_getClassName(a1);
      v78 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      *buf = 67110146;
      *&buf[4] = v76;
      *v159 = 2082;
      *&v159[2] = v77;
      *&v159[10] = 2082;
      *&v159[12] = v78;
      *&v159[20] = 1024;
      *&v159[22] = 702;
      *&v159[26] = 2114;
      *&v159[28] = v19;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SignedOperationApproval from SEP: %{public}@", buf, 0x2Cu);
    }

    if ([v19 code])
    {
      v53 = [v19 code];
    }

    else
    {
      v53 = 6;
    }

    v14 = v152;
    goto LABEL_103;
  }

  v148 = v15;
  v22 = v151;
  v23 = v14;
  v147 = v21;
  v24 = objc_opt_new();
  v143 = v23;
  v25 = [NFTLV TLVWithTag:193 value:v23];
  v26 = [v25 asData];
  v146 = v24;
  [v24 appendData:v26];

  v157 = 0;
  v145 = v22;
  v27 = sub_1001D99C8(NFECommercePaymentRequestEncoder, v22, 0, &v157);
  v28 = v157;
  v29 = v28;
  v144 = v19;
  if (v28 || !v27)
  {
    if (!v28)
    {
      v40 = 0;
      v39 = v19;
      v14 = v152;
      goto LABEL_72;
    }

    v141 = v27;
    v139 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v137 = [v29 code];
    v160 = NSLocalizedDescriptionKey;
    v150 = v18;
    if ([v29 code] > 75)
    {
      v79 = 76;
    }

    else
    {
      v79 = [v29 code];
    }

    v33 = [NSString stringWithUTF8String:off_10031B938[v79]];
    *buf = v33;
    *v159 = v29;
    v161 = NSUnderlyingErrorKey;
    v162 = @"Line";
    *&v159[8] = &off_100335BF8;
    v163 = @"Method";
    v95 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_crs_performCardAuthentication:withToken:withOperationApproval:error:")];
    *&v159[16] = v95;
    v164 = NSDebugDescriptionErrorKey;
    v97 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_crs_performCardAuthentication:withToken:withOperationApproval:error:"), 455];
    *&v159[24] = v97;
    v98 = [NSDictionary dictionaryWithObjects:buf forKeys:&v160 count:5];
    v39 = [v139 initWithDomain:v32 code:v137 userInfo:v98];
    v99 = v39;

    goto LABEL_70;
  }

  v141 = v27;
  v30 = [NFTLV TLVWithTag:230 value:v27];
  v31 = [v30 asData];
  [v24 appendData:v31];

  [v24 appendData:v147];
  v156 = 0;
  v32 = sub_100157AB0(a1, 128, 250, 8, 0, v24, 0, 0, 1u, &v156);
  v29 = v156;
  v33 = objc_opt_new();
  v34 = [v32 data];
  [v33 appendData:v34];

  if (([v32 status] & 0xFF00) == 0x6100 && !v29)
  {
    do
    {
      v35 = v32;
      v36 = [v32 status];
      v155 = 0;
      v32 = sub_100157AB0(a1, 128, 192, 0, 0, 0, v36, 0, 0, &v155);
      v29 = v155;

      v37 = [v32 data];
      [v33 appendData:v37];
    }

    while (([v32 status] & 0xFF00) == 0x6100 && v29 == 0);
  }

  v14 = v152;
  if ([v32 status] != 36864)
  {
    v150 = v18;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v80 = NFLogGetLogger();
    if (v80)
    {
      v81 = v80;
      v82 = object_getClass(a1);
      v83 = class_isMetaClass(v82);
      v84 = object_getClassName(a1);
      v85 = sel_getName("_crs_performCardAuthentication:withToken:withOperationApproval:error:");
      v134 = [v32 status];
      v86 = 45;
      if (v83)
      {
        v86 = 43;
      }

      v81(3, "%c[%{public}s %{public}s]:%i SE rejected OperationApproval with 0x%X", v86, v84, v85, 494, v134);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v87 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = object_getClass(a1);
      if (class_isMetaClass(v88))
      {
        v89 = 43;
      }

      else
      {
        v89 = 45;
      }

      v90 = object_getClassName(a1);
      v91 = sel_getName("_crs_performCardAuthentication:withToken:withOperationApproval:error:");
      v92 = [v32 status];
      *buf = 67110146;
      *&buf[4] = v89;
      *v159 = 2082;
      *&v159[2] = v90;
      *&v159[10] = 2082;
      *&v159[12] = v91;
      *&v159[20] = 1024;
      *&v159[22] = 494;
      *&v159[26] = 1024;
      *&v159[28] = v92;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE rejected OperationApproval with 0x%X", buf, 0x28u);
    }

    v138 = [NSError alloc];
    v136 = [NSString stringWithUTF8String:"nfcd"];
    v160 = NSLocalizedDescriptionKey;
    v140 = [NSString stringWithUTF8String:"Command Error"];
    *buf = v140;
    *v159 = &off_100335C10;
    v161 = @"Line";
    v162 = @"Method";
    v135 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_crs_performCardAuthentication:withToken:withOperationApproval:error:")];
    *&v159[8] = v135;
    v163 = NSDebugDescriptionErrorKey;
    sel = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_crs_performCardAuthentication:withToken:withOperationApproval:error:"), 496];
    *&v159[16] = sel;
    v164 = NSLocalizedFailureReasonErrorKey;
    v93 = [[NSString alloc] initWithFormat:@"Failed to send OA 0x%hx", objc_msgSend(v32, "status")];
    *&v159[24] = v93;
    v94 = [NSDictionary dictionaryWithObjects:buf forKeys:&v160 count:5];
    v95 = v136;
    v39 = [v138 initWithDomain:v136 code:16 userInfo:v94];
    v96 = v39;

LABEL_70:
    v40 = 0;
    v14 = v152;
    v18 = v150;
    goto LABEL_71;
  }

  v33 = v33;
  v39 = v144;
  v40 = v33;
LABEL_71:

  v27 = v141;
LABEL_72:

  v19 = v39;
  v100 = NFSharedSignpostLog();
  if (os_signpost_enabled(v100))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v100, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CARD_MIGRATION", "done", buf, 2u);
  }

  v15 = v148;
  if (v19 || !v40)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v102 = NFLogGetLogger();
    if (v102)
    {
      v103 = v102;
      v104 = object_getClass(a1);
      v105 = class_isMetaClass(v104);
      v127 = object_getClassName(a1);
      v132 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      v106 = 45;
      if (v105)
      {
        v106 = 43;
      }

      v15 = v148;
      v103(3, "%c[%{public}s %{public}s]:%i SE doesn't like SignedOperationApproval : %@", v106, v127, v132, 715, v19);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v107 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v108 = object_getClass(a1);
      if (class_isMetaClass(v108))
      {
        v109 = 43;
      }

      else
      {
        v109 = 45;
      }

      v110 = object_getClassName(a1);
      v111 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      *buf = 67110146;
      *&buf[4] = v109;
      v15 = v148;
      *v159 = 2082;
      *&v159[2] = v110;
      *&v159[10] = 2082;
      *&v159[12] = v111;
      *&v159[20] = 1024;
      *&v159[22] = 715;
      *&v159[26] = 2112;
      *&v159[28] = v19;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE doesn't like SignedOperationApproval : %@", buf, 0x2Cu);
    }

    v14 = v152;
    if ([v19 code])
    {
      v112 = v19;
LABEL_100:
      v53 = [v112 code];
      goto LABEL_102;
    }

LABEL_101:
    v53 = 6;
    goto LABEL_102;
  }

  if (!v16)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v113 = NFLogGetLogger();
    if (v113)
    {
      v114 = v113;
      v115 = object_getClass(a1);
      v116 = class_isMetaClass(v115);
      v128 = object_getClassName(a1);
      v133 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      v117 = 45;
      if (v116)
      {
        v117 = 43;
      }

      v15 = v148;
      v114(3, "%c[%{public}s %{public}s]:%i NFCardMigrationPaymentTransaction is nil??: %@", v117, v128, v133, 724, 0);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v118 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v119 = object_getClass(a1);
      if (class_isMetaClass(v119))
      {
        v120 = 43;
      }

      else
      {
        v120 = 45;
      }

      v121 = object_getClassName(a1);
      v122 = sel_getName("authorizeCardMigrationTransaction:uid:request:token:instanceACL:response:");
      *buf = 67110146;
      *&buf[4] = v120;
      v15 = v148;
      *v159 = 2082;
      *&v159[2] = v121;
      *&v159[10] = 2082;
      *&v159[12] = v122;
      *&v159[20] = 1024;
      *&v159[22] = 724;
      *&v159[26] = 2112;
      *&v159[28] = 0;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NFCardMigrationPaymentTransaction is nil??: %@", buf, 0x2Cu);
    }

    v14 = v152;
    if ([0 code])
    {
      v112 = 0;
      goto LABEL_100;
    }

    goto LABEL_101;
  }

  [v16 setPayload:v40];
  v101 = [v145 appletIdentifier];
  [v16 setAppletIdentifier:v101];

  v53 = 0;
LABEL_102:

LABEL_103:
LABEL_104:

  v13 = v151;
LABEL_105:

LABEL_106:
  return v53;
}

id sub_1001F966C(NFECommercePaymentResponse *a1, void *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v9 = a2;
  v10 = a4;
  if (a1)
  {
    v11 = NFSharedSignpostLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTH_ECOMMERCE", "begin", buf, 2u);
    }

    if (!v9)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
        v24 = 45;
        if (isMetaClass)
        {
          v24 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Missing SSE handle", v24, ClassName, Name, 742);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = object_getClass(a1);
        if (class_isMetaClass(v26))
        {
          v27 = 43;
        }

        else
        {
          v27 = 45;
        }

        v28 = object_getClassName(a1);
        v29 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
        *buf = 67109890;
        v421 = v27;
        v422 = 2082;
        v423 = v28;
        v424 = 2082;
        v425 = v29;
        v426 = 1024;
        v427 = 742;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing SSE handle", buf, 0x22u);
      }

      v30 = [NSError alloc];
      v14 = [NSString stringWithUTF8String:"nfcd"];
      v446 = NSLocalizedDescriptionKey;
      v31 = [NSString stringWithUTF8String:"Missing Parameter"];
      v447 = v31;
      v32 = [NSDictionary dictionaryWithObjects:&v447 forKeys:&v446 count:1];
      v18 = [v30 initWithDomain:v14 code:9 userInfo:v32];
      goto LABEL_52;
    }

    v384 = v10;
    kdebug_trace();
    v12 = NFSharedSignpostLog();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge in", buf, 2u);
    }

    v399 = 0;
    v13 = sub_10022B0E8(NFSSEWrapper, &v399);
    v14 = v399;
    kdebug_trace();
    v15 = NFSharedSignpostLog();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge out", buf, 2u);
    }

    if (!v14 || v13)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(a1);
        v342 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
        v38 = 45;
        if (v36)
        {
          v38 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v38, v37, v342, 755);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = object_getClass(a1);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(a1);
        v43 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
        *buf = 67109890;
        v421 = v41;
        v422 = 2082;
        v423 = v42;
        v424 = 2082;
        v425 = v43;
        v426 = 1024;
        v427 = 755;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
      }

      v44 = [NSError alloc];
      v31 = [NSString stringWithUTF8String:"nfcd"];
      if (v13)
      {
        v45 = v13;
        v442 = NSLocalizedDescriptionKey;
        if (v13 >= 0x4C)
        {
          v46 = 76;
        }

        else
        {
          v46 = v13;
        }

        v32 = [NSString stringWithUTF8String:off_10031B938[v46]];
        v443 = v32;
        v47 = [NSDictionary dictionaryWithObjects:&v443 forKeys:&v442 count:1];
        v48 = v44;
        v49 = v31;
        v50 = v45;
      }

      else
      {
        v444 = NSLocalizedDescriptionKey;
        v32 = [NSString stringWithUTF8String:"Unknown Error"];
        v445 = v32;
        v47 = [NSDictionary dictionaryWithObjects:&v445 forKeys:&v444 count:1];
        v48 = v44;
        v49 = v31;
        v50 = 6;
      }
    }

    else
    {
      if ([v14 length] == 8)
      {
        v380 = a5;
        v398 = 0;
        v16 = sub_1001599F4(&a1->super.isa, &v398);
        v17 = v398;
        if (v17)
        {
          v18 = v17;
LABEL_53:

          goto LABEL_54;
        }

        kdebug_trace();
        v68 = NFSharedSignpostLog();
        if (os_signpost_enabled(v68))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "acmGetOlsoType in", buf, 2u);
        }

        v69 = sub_10022B9AC(NFSSEWrapper, v9);
        kdebug_trace();
        v70 = NFSharedSignpostLog();
        if (os_signpost_enabled(v70))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "acmGetOlsoType out", buf, 2u);
        }

        if (v69 <= 2)
        {
          if (v69 == 1)
          {
            v71 = 0;
            v72 = 0;
            v73 = 3;
            goto LABEL_109;
          }

          if (v69 == 2)
          {
            v94 = [v10 appletIdentifier];
            v31 = [NSData NF_dataWithHexString:v94];

            v95 = [v31 bytes];
            if (*v95 != 50331808 || v95[4] != 51)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v97 = NFLogGetLogger();
              if (v97)
              {
                v98 = v97;
                v99 = object_getClass(a1);
                v100 = class_isMetaClass(v99);
                v101 = object_getClassName(a1);
                v102 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                v103 = [v10 appletIdentifier];
                v104 = 45;
                if (v100)
                {
                  v104 = 43;
                }

                v98(3, "%c[%{public}s %{public}s]:%i PIN not supported on %{public}@", v104, v101, v102, 796, v103);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v105 = NFSharedLogGetLogger();
              v10 = v384;
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                v106 = object_getClass(a1);
                if (class_isMetaClass(v106))
                {
                  v107 = 43;
                }

                else
                {
                  v107 = 45;
                }

                v108 = object_getClassName(a1);
                v109 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                v110 = [v384 appletIdentifier];
                *buf = 67110146;
                v421 = v107;
                v422 = 2082;
                v423 = v108;
                v424 = 2082;
                v425 = v109;
                v426 = 1024;
                v427 = 796;
                v428 = 2114;
                v429 = v110;
                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PIN not supported on %{public}@", buf, 0x2Cu);
              }

              v91 = [NSError alloc];
              v32 = [NSString stringWithUTF8String:"nfcd"];
              v436 = NSLocalizedDescriptionKey;
              v47 = [NSString stringWithUTF8String:"Feature Not Supported"];
              v437 = v47;
              v92 = &v437;
              v93 = &v436;
              goto LABEL_95;
            }

            v72 = 0;
            v73 = 5;
            v71 = 1;
LABEL_109:
            v374 = v73;
            v369 = v72;
            v372 = v71;
            v122 = NFSharedSignpostLog();
            if (os_signpost_enabled(v122))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v122, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTH_ECOMMERCE", "crs_authenticate in", buf, 2u);
            }

            v397 = 0;
            v123 = sub_1000B7A20(a1, v14, &v397);
            v32 = v397;
            v124 = NFSharedSignpostLog();
            if (os_signpost_enabled(v124))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v124, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTH_ECOMMERCE", "crs_authenticate out", buf, 2u);
            }

            if (v123)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v125 = NFLogGetLogger();
              if (v125)
              {
                v126 = v125;
                v127 = object_getClass(a1);
                v128 = class_isMetaClass(v127);
                v129 = object_getClassName(a1);
                v130 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                if (v123 >= 0x4C)
                {
                  v131 = 76;
                }

                else
                {
                  v131 = v123;
                }

                v354 = off_10031B938[v131];
                v132 = 43;
                if (!v128)
                {
                  v132 = 45;
                }

                v126(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v132, v129, v130, 823, @"Failed to authenticate", v123, v354);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v133 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                v134 = object_getClass(a1);
                if (class_isMetaClass(v134))
                {
                  v135 = 43;
                }

                else
                {
                  v135 = 45;
                }

                v136 = object_getClassName(a1);
                v137 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                if (v123 >= 0x4C)
                {
                  v138 = 76;
                }

                else
                {
                  v138 = v123;
                }

                v139 = off_10031B938[v138];
                *buf = 67110658;
                v421 = v135;
                v422 = 2082;
                v423 = v136;
                v424 = 2082;
                v425 = v137;
                v426 = 1024;
                v427 = 823;
                v428 = 2112;
                v429 = @"Failed to authenticate";
                v430 = 1024;
                v431 = v123;
                v432 = 2080;
                v433 = v139;
                _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
              }

              else if (v123 >= 0x4C)
              {
                v138 = 76;
              }

              else
              {
                v138 = v123;
              }

              v155 = [NSError alloc];
              v47 = [NSString stringWithUTF8String:"nfcd"];
              v418 = NSLocalizedDescriptionKey;
              v156 = [NSString stringWithUTF8String:off_10031B938[v138]];
              v419 = v156;
              v157 = [NSDictionary dictionaryWithObjects:&v419 forKeys:&v418 count:1];
              v18 = [v155 initWithDomain:v47 code:v123 userInfo:v157];

              v31 = 0;
              goto LABEL_304;
            }

            if ([v32 length] != 16)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v158 = NFLogGetLogger();
              if (v158)
              {
                v159 = v158;
                v160 = object_getClass(a1);
                v161 = class_isMetaClass(v160);
                v162 = object_getClassName(a1);
                v163 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                v352 = [v32 length];
                v164 = 45;
                if (v161)
                {
                  v164 = 43;
                }

                v159(3, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", v164, v162, v163, 827, v352);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v165 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
              {
                v166 = object_getClass(a1);
                if (class_isMetaClass(v166))
                {
                  v167 = 43;
                }

                else
                {
                  v167 = 45;
                }

                v168 = object_getClassName(a1);
                v169 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                v170 = [v32 length];
                *buf = 67110146;
                v421 = v167;
                v422 = 2082;
                v423 = v168;
                v424 = 2082;
                v425 = v169;
                v426 = 1024;
                v427 = 827;
                v428 = 2048;
                v429 = v170;
                _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", buf, 0x2Cu);
              }

              v171 = [NSError alloc];
              v47 = [NSString stringWithUTF8String:"nfcd"];
              v416 = NSLocalizedDescriptionKey;
              v156 = [NSString stringWithUTF8String:"Unexpected Result"];
              v417 = v156;
              v172 = [NSDictionary dictionaryWithObjects:&v417 forKeys:&v416 count:1];
              v18 = [v171 initWithDomain:v47 code:13 userInfo:v172];

              v31 = 0;
              goto LABEL_304;
            }

            v396 = 0;
            v140 = NFSharedSignpostLog();
            if (os_signpost_enabled(v140))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTH_ECOMMERCE", "supportSSESigning in", buf, 2u);
            }

            v395 = 0;
            v141 = sub_10022D684(NFSSEWrapper, &v395);
            v366 = v395;
            v142 = NFSharedSignpostLog();
            if (os_signpost_enabled(v142))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v142, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTH_ECOMMERCE", "supportSSESigning out", buf, 2u);
            }

            if (v366)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v143 = NFLogGetLogger();
              if (v143)
              {
                v144 = v143;
                v145 = object_getClass(a1);
                v146 = class_isMetaClass(v145);
                v147 = object_getClassName(a1);
                v344 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                v148 = 45;
                if (v146)
                {
                  v148 = 43;
                }

                v144(3, "%c[%{public}s %{public}s]:%i Failed to get SSE support", v148, v147, v344, 841);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v149 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                v150 = object_getClass(a1);
                if (class_isMetaClass(v150))
                {
                  v151 = 43;
                }

                else
                {
                  v151 = 45;
                }

                v152 = object_getClassName(a1);
                v153 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                *buf = 67109890;
                v421 = v151;
                v422 = 2082;
                v423 = v152;
                v424 = 2082;
                v425 = v153;
                v426 = 1024;
                v427 = 841;
                _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SSE support", buf, 0x22u);
              }

              v31 = v366;
              v154 = 0;
              v373 = 0;
              v47 = 0;
              v18 = v31;
              goto LABEL_303;
            }

            if (v141)
            {
              v173 = [v32 subdataWithRange:{0, 8}];
              v174 = [v32 subdataWithRange:{8, 8}];
              v175 = v174;
              v367 = v173;
              if (!v173 || !v174)
              {
                v229 = v174;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v230 = NFLogGetLogger();
                if (v230)
                {
                  v231 = v230;
                  v232 = object_getClass(a1);
                  v233 = class_isMetaClass(v232);
                  v234 = object_getClassName(a1);
                  v346 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                  v235 = 45;
                  if (v233)
                  {
                    v235 = 43;
                  }

                  v231(3, "%c[%{public}s %{public}s]:%i Failed to get card info", v235, v234, v346, 851);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v236 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
                {
                  v237 = object_getClass(a1);
                  if (class_isMetaClass(v237))
                  {
                    v238 = 43;
                  }

                  else
                  {
                    v238 = 45;
                  }

                  v239 = object_getClassName(a1);
                  v240 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                  *buf = 67109890;
                  v421 = v238;
                  v422 = 2082;
                  v423 = v239;
                  v424 = 2082;
                  v425 = v240;
                  v426 = 1024;
                  v427 = 851;
                  _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get card info", buf, 0x22u);
                }

                v241 = [NSError alloc];
                v242 = [NSString stringWithUTF8String:"nfcd"];
                v414 = NSLocalizedDescriptionKey;
                v243 = [NSString stringWithUTF8String:"Command Error"];
                v415 = v243;
                v244 = [NSDictionary dictionaryWithObjects:&v415 forKeys:&v414 count:1];
                v18 = [v241 initWithDomain:v242 code:16 userInfo:v244];

                v154 = 0;
                v373 = 0;
                v47 = 0;
                v31 = 0;
                goto LABEL_303;
              }

              v394 = 0;
              v365 = sub_1001D99C8(NFECommercePaymentRequestEncoder, v10, 0, &v394);
              v31 = v394;
              v364 = v175;
              if (!v365)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v278 = NFLogGetLogger();
                if (v278)
                {
                  v279 = v278;
                  v280 = object_getClass(a1);
                  v281 = class_isMetaClass(v280);
                  v282 = object_getClassName(a1);
                  v348 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                  v283 = 45;
                  if (v281)
                  {
                    v283 = 43;
                  }

                  v279(3, "%c[%{public}s %{public}s]:%i Failed to encode request", v283, v282, v348, 858);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v284 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
                {
                  v285 = object_getClass(a1);
                  if (class_isMetaClass(v285))
                  {
                    v286 = 43;
                  }

                  else
                  {
                    v286 = 45;
                  }

                  v287 = object_getClassName(a1);
                  v288 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                  *buf = 67109890;
                  v421 = v286;
                  v422 = 2082;
                  v423 = v287;
                  v424 = 2082;
                  v425 = v288;
                  v426 = 1024;
                  v427 = 858;
                  _os_log_impl(&_mh_execute_header, v284, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to encode request", buf, 0x22u);
                }

                v383 = [NSError alloc];
                v289 = [NSString stringWithUTF8String:"nfcd"];
                v377 = [v31 code];
                v412[0] = NSLocalizedDescriptionKey;
                if ([v31 code] > 75)
                {
                  v290 = 76;
                }

                else
                {
                  v290 = [v31 code];
                }

                v309 = [NSString stringWithUTF8String:off_10031B938[v290]];
                v413[0] = v309;
                v413[1] = v31;
                v412[1] = NSUnderlyingErrorKey;
                v412[2] = @"Line";
                v413[2] = &off_100335C28;
                v412[3] = @"Method";
                v310 = [[NSString alloc] initWithFormat:@"%s", sel_getName("authorizeEcommerceTransaction:uid:request:response:")];
                v413[3] = v310;
                v412[4] = NSDebugDescriptionErrorKey;
                v311 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("authorizeEcommerceTransaction:uid:request:response:"), 859];
                v413[4] = v311;
                v312 = [NSDictionary dictionaryWithObjects:v413 forKeys:v412 count:5];
                v18 = [v383 initWithDomain:v289 code:v377 userInfo:v312];

                v154 = 0;
                v373 = 0;
                v47 = 0;
                goto LABEL_303;
              }

              v363 = sub_1001F775C(v365);
              if (v363)
              {
                kdebug_trace();
                v176 = NFSharedSignpostLog();
                if (os_signpost_enabled(v176))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v176, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "authorizeAndSign in", buf, 2u);
                }

                [(NFECommercePaymentResponse *)a1 serialNumberAsData];
                v392 = 0;
                v393 = 0;
                v177 = v391 = 0;
                v178 = sub_10022C208(NFSSEWrapper, 3, v363, a3, v9, v177, v372, v369, v14, v367, v364, &v393, &v392, &v396, &v391);
                v47 = v393;
                v373 = v392;
                v370 = v391;

                kdebug_trace();
                v179 = NFSharedSignpostLog();
                if (os_signpost_enabled(v179))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v179, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "authorizeAndSign out", buf, 2u);
                }

                if (v178)
                {
                  v390 = 0;
                  *v380 = 0;
                  v389 = 0;
                  v18 = sub_1001F7858(a1, v178, &v389, &v390);
                  v359 = v178;
                  v360 = v389;
                  v361 = v18 == 0;
                  v358 = v18;
                  if (v18)
                  {
                    v375 = v9;
                    sub_1001F82B0(a1, v178, v384, v380, v390);
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v180 = NFLogGetLogger();
                    if (v180)
                    {
                      v181 = v180;
                      v182 = object_getClass(a1);
                      v356 = class_isMetaClass(v182);
                      v183 = object_getClassName(a1);
                      v345 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                      v184 = 45;
                      if (v356)
                      {
                        v184 = 43;
                      }

                      v181(3, "%c[%{public}s %{public}s]:%i Failed to send signed APDU", v184, v183, v345, 905);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v185 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
                    {
                      v186 = object_getClass(a1);
                      if (class_isMetaClass(v186))
                      {
                        v187 = 43;
                      }

                      else
                      {
                        v187 = 45;
                      }

                      v188 = object_getClassName(a1);
                      v189 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                      *buf = 67109890;
                      v421 = v187;
                      v422 = 2082;
                      v423 = v188;
                      v424 = 2082;
                      v425 = v189;
                      v426 = 1024;
                      v427 = 905;
                      _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send signed APDU", buf, 0x22u);
                    }

                    v357 = [NSError alloc];
                    v190 = [NSString stringWithUTF8String:"nfcd"];
                    v406 = NSLocalizedDescriptionKey;
                    if (v358 >= 0x4C)
                    {
                      v191 = 76;
                    }

                    else
                    {
                      v191 = v358;
                    }

                    v192 = [NSString stringWithUTF8String:off_10031B938[v191]];
                    v407 = v192;
                    v193 = [NSDictionary dictionaryWithObjects:&v407 forKeys:&v406 count:1];
                    v18 = [v357 initWithDomain:v190 code:v358 userInfo:v193];

                    v9 = v375;
                  }

                  else
                  {
                    *v380 = sub_1000B8790(a1, v360);
                    sub_1001F82B0(a1, v178, v384, v380, v390);
                  }

                  v154 = v370;
                  v306 = v359;
                  v307 = v360;
                }

                else
                {
                  v379 = v9;
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v313 = NFLogGetLogger();
                  if (v313)
                  {
                    v314 = v313;
                    v315 = object_getClass(a1);
                    v362 = class_isMetaClass(v315);
                    v316 = object_getClassName(a1);
                    v350 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                    v317 = 45;
                    if (v362)
                    {
                      v317 = 43;
                    }

                    v314(3, "%c[%{public}s %{public}s]:%i Failed to get signed APDU", v317, v316, v350, 888);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v318 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
                  {
                    v319 = object_getClass(a1);
                    if (class_isMetaClass(v319))
                    {
                      v320 = 43;
                    }

                    else
                    {
                      v320 = 45;
                    }

                    v321 = object_getClassName(a1);
                    v322 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                    *buf = 67109890;
                    v421 = v320;
                    v422 = 2082;
                    v423 = v321;
                    v424 = 2082;
                    v425 = v322;
                    v426 = 1024;
                    v427 = 888;
                    _os_log_impl(&_mh_execute_header, v318, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get signed APDU", buf, 0x22u);
                  }

                  v323 = [NSError alloc];
                  v324 = [NSString stringWithUTF8String:"nfcd"];
                  v408 = NSLocalizedDescriptionKey;
                  v325 = [NSString stringWithUTF8String:"Security Violation"];
                  v409 = v325;
                  v326 = [NSDictionary dictionaryWithObjects:&v409 forKeys:&v408 count:1];
                  v18 = [v323 initWithDomain:v324 code:8 userInfo:v326];

                  v307 = v324;
                  v306 = 0;
                  v361 = 0;
                  v154 = v370;
                  v9 = v379;
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v291 = NFLogGetLogger();
                if (v291)
                {
                  v292 = v291;
                  v293 = object_getClass(a1);
                  v294 = class_isMetaClass(v293);
                  v378 = object_getClassName(a1);
                  v349 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                  v295 = 45;
                  if (v294)
                  {
                    v295 = 43;
                  }

                  v292(3, "%c[%{public}s %{public}s]:%i Failed to create request", v295, v378, v349, 864);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v296 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
                {
                  v297 = object_getClass(a1);
                  if (class_isMetaClass(v297))
                  {
                    v298 = 43;
                  }

                  else
                  {
                    v298 = 45;
                  }

                  v299 = object_getClassName(a1);
                  v300 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                  *buf = 67109890;
                  v421 = v298;
                  v422 = 2082;
                  v423 = v299;
                  v424 = 2082;
                  v425 = v300;
                  v426 = 1024;
                  v427 = 864;
                  _os_log_impl(&_mh_execute_header, v296, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create request", buf, 0x22u);
                }

                v301 = [NSError alloc];
                v302 = [NSString stringWithUTF8String:"nfcd"];
                v410 = NSLocalizedDescriptionKey;
                v303 = [NSString stringWithUTF8String:"Encoding Error"];
                v411 = v303;
                v304 = [NSDictionary dictionaryWithObjects:&v411 forKeys:&v410 count:1];
                v305 = v301;
                v306 = v302;
                v18 = [v305 initWithDomain:v302 code:22 userInfo:v304];

                v307 = v303;
                v154 = 0;
                v373 = 0;
                v47 = 0;
                v361 = 0;
              }

              if (v361)
              {
                goto LABEL_290;
              }
            }

            else
            {
              LOBYTE(v390) = 0;
              kdebug_trace();
              v194 = NFSharedSignpostLog();
              if (os_signpost_enabled(v194))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v194, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseAuthorize in", buf, 2u);
              }

              v195 = [(NFECommercePaymentResponse *)a1 serialNumberAsData];
              v387 = 0;
              v388 = 0;
              v385 = 0;
              v386 = 0;
              v376 = sub_10022B2D0(NFSSEWrapper, v374, v9, v195, a3, v14, v32, &v390, &v388, &v387, &v386, &v396, &v385);
              v196 = v388;
              v47 = v387;
              v373 = v386;
              v371 = v385;

              kdebug_trace();
              v197 = NFSharedSignpostLog();
              if (os_signpost_enabled(v197))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v197, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseAuthorize out", buf, 2u);
              }

              if (v376)
              {
                if ([v376 length] == 8)
                {
                  v198 = NFSharedSignpostLog();
                  if (os_signpost_enabled(v198))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v198, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "crs_authorizeForECommerce in", buf, 2u);
                  }

                  v199 = sub_1000B8D78(a1, v390, v376, v196, v384, v380);
                  v200 = NFSharedSignpostLog();
                  if (os_signpost_enabled(v200))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v200, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "crs_authorizeForECommerce out", buf, 2u);
                  }

                  if (!v199)
                  {

                    v31 = 0;
                    v154 = v371;
LABEL_290:
                    if (*v380)
                    {
                      v327 = v154;
                      v328 = objc_opt_new();
                      v329 = [(NFECommercePaymentResponse *)a1 rsaCertificate];

                      if (v329)
                      {
                        v330 = [(NFECommercePaymentResponse *)a1 rsaCertificate];
                        [v328 setObject:v330 forKeyedSubscript:@"RSA"];
                      }

                      v331 = [(NFECommercePaymentResponse *)a1 eccCertificate];

                      if (v331)
                      {
                        v332 = [(NFECommercePaymentResponse *)a1 eccCertificate];
                        [v328 setObject:v332 forKeyedSubscript:@"ECDSA"];
                      }

                      v333 = [(NFECommercePaymentResponse *)a1 eckaCertificate];

                      if (v333)
                      {
                        v334 = [(NFECommercePaymentResponse *)a1 eckaCertificate];
                        [v328 setObject:v334 forKeyedSubscript:@"ECKA"];
                      }

                      v335 = [(NFECommercePaymentResponse *)a1 eccCertificate];

                      if (v335)
                      {
                        v336 = [(NFECommercePaymentResponse *)a1 eccCertificate];
                        [v328 setObject:v336 forKeyedSubscript:@"ECC"];
                      }

                      [*v380 setCerts:v328];
                      [*v380 setConfirmationBlobHash:v47 withSignature:v373 version:v396];
                      [*v380 setSEPCerts:v327];

                      v154 = v327;
                    }

                    v337 = NFSharedSignpostLog();
                    if (os_signpost_enabled(v337))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v337, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SEND_ECOMMERCE_APDU", "done", buf, 2u);
                    }

                    v18 = 0;
                    goto LABEL_303;
                  }

                  v368 = v199;
                  v381 = v196;
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v201 = NFLogGetLogger();
                  if (v201)
                  {
                    v202 = v201;
                    v203 = object_getClass(a1);
                    v204 = class_isMetaClass(v203);
                    v205 = object_getClassName(a1);
                    v206 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                    v207 = 45;
                    if (v204)
                    {
                      v207 = 43;
                    }

                    v202(3, "%c[%{public}s %{public}s]:%i Failed to authorize for type=%d", v207, v205, v206, 948, v390);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v208 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                  {
                    v209 = object_getClass(a1);
                    if (class_isMetaClass(v209))
                    {
                      v210 = 43;
                    }

                    else
                    {
                      v210 = 45;
                    }

                    v211 = object_getClassName(a1);
                    v212 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                    *buf = 67110146;
                    v421 = v210;
                    v422 = 2082;
                    v423 = v211;
                    v424 = 2082;
                    v425 = v212;
                    v426 = 1024;
                    v427 = 948;
                    v428 = 1024;
                    LODWORD(v429) = v390;
                    _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to authorize for type=%d", buf, 0x28u);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v213 = NFLogGetLogger();
                  if (v213)
                  {
                    v214 = v213;
                    v215 = object_getClass(a1);
                    v216 = class_isMetaClass(v215);
                    v217 = object_getClassName(a1);
                    v218 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                    if (v368 >= 0x4C)
                    {
                      v219 = 76;
                    }

                    else
                    {
                      v219 = v368;
                    }

                    v355 = off_10031B938[v219];
                    v220 = 43;
                    if (!v216)
                    {
                      v220 = 45;
                    }

                    v214(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v220, v217, v218, 949, @"Returned", v368, v355);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v221 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
                  {
                    v222 = object_getClass(a1);
                    if (class_isMetaClass(v222))
                    {
                      v223 = 43;
                    }

                    else
                    {
                      v223 = 45;
                    }

                    v224 = object_getClassName(a1);
                    v225 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                    v226 = v368;
                    if (v368 >= 0x4C)
                    {
                      v227 = 76;
                    }

                    else
                    {
                      v227 = v368;
                    }

                    v228 = off_10031B938[v227];
                    *buf = 67110658;
                    v421 = v223;
                    v422 = 2082;
                    v423 = v224;
                    v424 = 2082;
                    v425 = v225;
                    v426 = 1024;
                    v427 = 949;
                    v428 = 2112;
                    v429 = @"Returned";
                    v430 = 1024;
                    v431 = v368;
                    v432 = 2080;
                    v433 = v228;
                    _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
                  }

                  else
                  {
                    v226 = v368;
                    if (v368 >= 0x4C)
                    {
                      v227 = 76;
                    }

                    else
                    {
                      v227 = v368;
                    }
                  }

                  v196 = v381;

                  v308 = [NSError alloc];
                  v258 = [NSString stringWithUTF8String:"nfcd"];
                  v400 = NSLocalizedDescriptionKey;
                  v259 = [NSString stringWithUTF8String:off_10031B938[v227]];
                  v401 = v259;
                  v260 = [NSDictionary dictionaryWithObjects:&v401 forKeys:&v400 count:1];
                  v261 = v308;
                  v262 = v258;
                  v263 = v226;
                }

                else
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v264 = NFLogGetLogger();
                  if (v264)
                  {
                    v265 = v264;
                    v266 = object_getClass(a1);
                    v267 = class_isMetaClass(v266);
                    v382 = v196;
                    v268 = object_getClassName(a1);
                    v269 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                    v353 = [v376 length];
                    v270 = 45;
                    if (v267)
                    {
                      v270 = 43;
                    }

                    v340 = v268;
                    v196 = v382;
                    v265(3, "%c[%{public}s %{public}s]:%i Invalid cryptogram length: %lu", v270, v340, v269, 936, v353);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v271 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
                  {
                    v272 = object_getClass(a1);
                    if (class_isMetaClass(v272))
                    {
                      v273 = 43;
                    }

                    else
                    {
                      v273 = 45;
                    }

                    v274 = object_getClassName(a1);
                    v275 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                    v276 = [v376 length];
                    *buf = 67110146;
                    v421 = v273;
                    v422 = 2082;
                    v423 = v274;
                    v424 = 2082;
                    v425 = v275;
                    v426 = 1024;
                    v427 = 936;
                    v428 = 2048;
                    v429 = v276;
                    _os_log_impl(&_mh_execute_header, v271, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid cryptogram length: %lu", buf, 0x2Cu);
                  }

                  v277 = [NSError alloc];
                  v258 = [NSString stringWithUTF8String:"nfcd"];
                  v402 = NSLocalizedDescriptionKey;
                  v259 = [NSString stringWithUTF8String:"Unexpected Result"];
                  v403 = v259;
                  v260 = [NSDictionary dictionaryWithObjects:&v403 forKeys:&v402 count:1];
                  v261 = v277;
                  v262 = v258;
                  v263 = 13;
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v245 = NFLogGetLogger();
                if (v245)
                {
                  v246 = v245;
                  v247 = object_getClass(a1);
                  v248 = class_isMetaClass(v247);
                  v249 = v196;
                  v250 = object_getClassName(a1);
                  v347 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                  v251 = 45;
                  if (v248)
                  {
                    v251 = 43;
                  }

                  v339 = v250;
                  v196 = v249;
                  v246(3, "%c[%{public}s %{public}s]:%i Failed to generate cryptogram", v251, v339, v347, 931);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v252 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
                {
                  v253 = object_getClass(a1);
                  if (class_isMetaClass(v253))
                  {
                    v254 = 43;
                  }

                  else
                  {
                    v254 = 45;
                  }

                  v255 = object_getClassName(a1);
                  v256 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                  *buf = 67109890;
                  v421 = v254;
                  v422 = 2082;
                  v423 = v255;
                  v424 = 2082;
                  v425 = v256;
                  v426 = 1024;
                  v427 = 931;
                  _os_log_impl(&_mh_execute_header, v252, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to generate cryptogram", buf, 0x22u);
                }

                v257 = [NSError alloc];
                v258 = [NSString stringWithUTF8String:"nfcd"];
                v404 = NSLocalizedDescriptionKey;
                v259 = [NSString stringWithUTF8String:"Security Violation"];
                v405 = v259;
                v260 = [NSDictionary dictionaryWithObjects:&v405 forKeys:&v404 count:1];
                v261 = v257;
                v262 = v258;
                v263 = 8;
              }

              v18 = [v261 initWithDomain:v262 code:v263 userInfo:v260];

              v31 = 0;
              v154 = v371;
            }

LABEL_303:

            v10 = v384;
            v156 = v373;
LABEL_304:

            goto LABEL_51;
          }
        }

        else
        {
          v71 = 0;
          v72 = 1;
          v73 = 3;
          if (v69 == 3 || v69 == 5)
          {
            goto LABEL_109;
          }

          if (v69 == 4)
          {
            v74 = [v10 appletIdentifier];
            v31 = [NSData NF_dataWithHexString:v74];

            v75 = [v31 bytes];
            if (*v75 != 50331808 || v75[4] != 51)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v77 = NFLogGetLogger();
              if (v77)
              {
                v78 = v77;
                v79 = object_getClass(a1);
                v80 = class_isMetaClass(v79);
                v81 = object_getClassName(a1);
                v82 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                v83 = [v10 appletIdentifier];
                v84 = 45;
                if (v80)
                {
                  v84 = 43;
                }

                v78(3, "%c[%{public}s %{public}s]:%i PIN not supported on %{public}@", v84, v81, v82, 784, v83);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v85 = NFSharedLogGetLogger();
              v10 = v384;
              if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
              {
                v86 = object_getClass(a1);
                if (class_isMetaClass(v86))
                {
                  v87 = 43;
                }

                else
                {
                  v87 = 45;
                }

                v88 = object_getClassName(a1);
                v89 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
                v90 = [v384 appletIdentifier];
                *buf = 67110146;
                v421 = v87;
                v422 = 2082;
                v423 = v88;
                v424 = 2082;
                v425 = v89;
                v426 = 1024;
                v427 = 784;
                v428 = 2114;
                v429 = v90;
                _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PIN not supported on %{public}@", buf, 0x2Cu);
              }

              v91 = [NSError alloc];
              v32 = [NSString stringWithUTF8String:"nfcd"];
              v438 = NSLocalizedDescriptionKey;
              v47 = [NSString stringWithUTF8String:"Feature Not Supported"];
              v439 = v47;
              v92 = &v439;
              v93 = &v438;
LABEL_95:
              v111 = [NSDictionary dictionaryWithObjects:v92 forKeys:v93 count:1];
              v18 = [v91 initWithDomain:v32 code:14 userInfo:v111];

              goto LABEL_51;
            }

            v73 = 5;
            v71 = 1;
            v72 = 1;
            goto LABEL_109;
          }
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v112 = NFLogGetLogger();
        if (v112)
        {
          v113 = v112;
          v114 = object_getClass(a1);
          v115 = class_isMetaClass(v114);
          v338 = object_getClassName(a1);
          v343 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
          v116 = 45;
          if (v115)
          {
            v116 = 43;
          }

          v113(3, "%c[%{public}s %{public}s]:%i Unknown transaction type: %d", v116, v338, v343, 813, v69);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v117 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          v118 = object_getClass(a1);
          if (class_isMetaClass(v118))
          {
            v119 = 43;
          }

          else
          {
            v119 = 45;
          }

          v120 = object_getClassName(a1);
          v121 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
          *buf = 67110146;
          v421 = v119;
          v422 = 2082;
          v423 = v120;
          v424 = 2082;
          v425 = v121;
          v426 = 1024;
          v427 = 813;
          v428 = 1024;
          LODWORD(v429) = v69;
          _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown transaction type: %d", buf, 0x28u);
        }

        v64 = [NSError alloc];
        v31 = [NSString stringWithUTF8String:"nfcd"];
        v434 = NSLocalizedDescriptionKey;
        v32 = [NSString stringWithUTF8String:"Unexpected Result"];
        v435 = v32;
        v65 = &v435;
        v66 = &v434;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v51 = NFLogGetLogger();
        if (v51)
        {
          v52 = v51;
          v53 = object_getClass(a1);
          v54 = class_isMetaClass(v53);
          v55 = object_getClassName(a1);
          v56 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
          v351 = [v14 length];
          v57 = 45;
          if (v54)
          {
            v57 = 43;
          }

          v52(3, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", v57, v55, v56, 759, v351);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v58 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = object_getClass(a1);
          if (class_isMetaClass(v59))
          {
            v60 = 43;
          }

          else
          {
            v60 = 45;
          }

          v61 = object_getClassName(a1);
          v62 = sel_getName("authorizeEcommerceTransaction:uid:request:response:");
          v63 = [v14 length];
          *buf = 67110146;
          v421 = v60;
          v422 = 2082;
          v423 = v61;
          v424 = 2082;
          v425 = v62;
          v426 = 1024;
          v427 = 759;
          v428 = 2048;
          v429 = v63;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", buf, 0x2Cu);
        }

        v64 = [NSError alloc];
        v31 = [NSString stringWithUTF8String:"nfcd"];
        v440 = NSLocalizedDescriptionKey;
        v32 = [NSString stringWithUTF8String:"Unexpected Result"];
        v441 = v32;
        v65 = &v441;
        v66 = &v440;
      }

      v47 = [NSDictionary dictionaryWithObjects:v65 forKeys:v66 count:1];
      v48 = v64;
      v49 = v31;
      v50 = 13;
    }

    v18 = [v48 initWithDomain:v49 code:v50 userInfo:v47];
LABEL_51:

LABEL_52:
    goto LABEL_53;
  }

  v18 = 0;
LABEL_54:

  return v18;
}