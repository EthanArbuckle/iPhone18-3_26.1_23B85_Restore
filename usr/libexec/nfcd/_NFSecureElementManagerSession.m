@interface _NFSecureElementManagerSession
+ (id)validateEntitlements:(id)a3;
- (BOOL)_activateSecureElementWrapper:(id)a3;
- (id)_createResponseFromCommand:(id)a3 params:(id)a4 rapdu:(id)a5 duration:(unint64_t)a6;
- (id)_getAllApplets:(id *)a3;
- (id)_getSecureElementForAID:(id)a3;
- (id)_getSecureElementWrapperForSEID:(id)a3;
- (id)_processCommandDataProtocol:(id)a3 response:(id)a4;
- (id)_sendOneCommand:(id)a3 params:(id)a4 responses:(id)a5 lastStatus:(int64_t *)a6 totalTXTime:(unint64_t *)a7 failureDetected:(BOOL *)a8;
- (id)checkSessionAllowed;
- (unint64_t)expectedDurationInNS;
- (void)_triggerProvisioningBugCatpture:(id)a3 response:(id)a4;
- (void)cleanup;
- (void)deleteAllAppletsWithCompletion:(id)a3;
- (void)deleteApplets:(id)a3 completion:(id)a4;
- (void)didExitRestrictedMode:(id)a3 completion:(id)a4;
- (void)didStartSession:(id)a3;
- (void)disableAuthorizationForApplets:(id)a3 andKey:(id)a4 authorization:(id)a5 completion:(id)a6;
- (void)disableAuthorizationForPasses:(id)a3 authorization:(id)a4 completion:(id)a5;
- (void)dumpDomain:(unsigned __int8)a3 forSEID:(id)a4 completion:(id)a5;
- (void)execRemoteAdminScript:(id)a3 params:(id)a4 completion:(id)a5;
- (void)expressModesInfoWithCompletion:(id)a3;
- (void)getAndResetLPEMCounterWithCompletion:(id)a3;
- (void)getAppletsWithCompletion:(id)a3;
- (void)getAttackCounterLogForSEID:(id)a3 acknowledgeLogs:(BOOL)a4 completion:(id)a5;
- (void)getAttackLogPresence:(id)a3 callback:(id)a4;
- (void)getCryptogramWithCompletion:(id)a3;
- (void)getExpressPassConfigWithCompletion:(id)a3;
- (void)getFelicaAppletState:(id)a3 completion:(id)a4;
- (void)getOSUpdateLogWithCompletion:(id)a3;
- (void)getServiceProviderDataForApplet:(id)a3 publicKey:(id)a4 scheme:(id)a5 completion:(id)a6;
- (void)getSignedPlatformDataForSeid:(id)a3 completion:(id)a4;
- (void)getTransitAppletState:(id)a3 completion:(id)a4;
- (void)handleTransactionEndEvent:(id)a3 atlData:(id)a4;
- (void)handleTransactionStartEvent:(id)a3 atlData:(id)a4;
- (void)performPeerPaymentEnrollment:(id)a3 completion:(id)a4;
- (void)powerCycleSEID:(id)a3 completion:(id)a4;
- (void)refreshSecureElement:(id)a3 completion:(id)a4;
- (void)restoreAuthorizarionForKeys:(id)a3 onApplet:(id)a4 completion:(id)a5;
- (void)restoreAuthorizationForAllAppletsExcept:(id)a3 completion:(id)a4;
- (void)setExpressModesControlState:(int64_t)a3 completion:(id)a4;
- (void)setExpressPassConfig:(id)a3 restoreAuthorization:(BOOL)a4 completion:(id)a5;
- (void)signChallenge:(id)a3 completion:(id)a4;
- (void)signChallenge:(id)a3 forAID:(id)a4 completion:(id)a5;
- (void)signChallenge:(id)a3 useOSVersion:(BOOL)a4 completion:(id)a5;
- (void)stateInformationWithCompletion:(id)a3;
- (void)stateInformationWithRedirectInfo:(id)a3 appletFiltering:(BOOL)a4 completion:(id)a5;
- (void)transceive:(id)a3 forSEID:(id)a4 toOS:(int64_t)a5 redact:(BOOL)a6 completion:(id)a7;
- (void)transceiveMultiple:(id)a3 forSEID:(id)a4 toOS:(int64_t)a5 redact:(BOOL)a6 completion:(id)a7;
- (void)validateSEPairingsWithCompletion:(id)a3;
@end

@implementation _NFSecureElementManagerSession

+ (id)validateEntitlements:(id)a3
{
  if ([a3 seSessionAccess])
  {
    v5 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring SE access", v11, ClassName, Name, 110);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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
      v26 = v14;
      v27 = 2082;
      v28 = object_getClassName(a1);
      v29 = 2082;
      v30 = sel_getName(a2);
      v31 = 1024;
      v32 = 110;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlements, requiring SE access", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v23[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Not entitled"];
    v24[0] = v17;
    v24[1] = &off_1003326A0;
    v23[1] = @"Line";
    v23[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v24[2] = v18;
    v23[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 111];
    v24[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v5 = [v15 initWithDomain:v16 code:32 userInfo:v20];
  }

  return v5;
}

- (id)checkSessionAllowed
{
  v4.receiver = self;
  v4.super_class = _NFSecureElementManagerSession;
  v2 = [(_NFXPCSession *)&v4 checkSessionAllowed];

  return v2;
}

- (void)didStartSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = _NFSecureElementManagerSession;
  v4 = a3;
  [(_NFXPCSession *)&v9 didStartSession:v4];
  v5 = [_NFHardwareManager sharedHardwareManager:v9.receiver];
  v6 = [v5 secureElementWrapper];
  embeddedSecureElementWrapper = self->_embeddedSecureElementWrapper;
  self->_embeddedSecureElementWrapper = v6;

  v8 = [(_NFXPCSession *)self remoteObject];
  [v8 didStartSession:v4];
}

- (BOOL)_activateSecureElementWrapper:(id)a3
{
  if (!a3)
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

      v7(3, "%c[%{public}s %{public}s]:%i secureElementWrapper is nil!", v11, ClassName, Name, 189);
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
      v18 = v14;
      v19 = 2082;
      v20 = object_getClassName(self);
      v21 = 2082;
      v22 = sel_getName(a2);
      v23 = 1024;
      v24 = 189;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i secureElementWrapper is nil!", buf, 0x22u);
    }
  }

  return a3 != 0;
}

- (id)_getSecureElementWrapperForSEID:(id)a3
{
  v5 = a3;
  v6 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
  v7 = [v6 serialNumber];
  if ([v7 isEqualToString:v5])
  {

LABEL_4:
    v11 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
    goto LABEL_15;
  }

  v8 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
  v9 = [v8 systemOSSerialNumber];
  v10 = [v9 isEqualToString:v5];

  if (v10)
  {
    goto LABEL_4;
  }

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

    v13(3, "%c[%{public}s %{public}s]:%i Unknown secure element id: %{public}@", v16, ClassName, Name, 201, v5);
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

    *buf = 67110146;
    v24 = v19;
    v25 = 2082;
    v26 = object_getClassName(self);
    v27 = 2082;
    v28 = sel_getName(a2);
    v29 = 1024;
    v30 = 201;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown secure element id: %{public}@", buf, 0x2Cu);
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (id)_getSecureElementForAID:(id)a3
{
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
  v6 = sub_100253854(v5);

  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v32;
LABEL_3:
    v11 = 0;
    v12 = v9;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v31 + 1) + 8 * v11);

      v13 = [v9 identifier];
      v14 = [v13 isEqualToString:v4];

      if (v14)
      {
        break;
      }

      v11 = v11 + 1;
      v12 = v9;
      if (v8 == v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v15 = [(_NFSecureElementManagerSession *)self _getAllApplets:0];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
    v6 = sub_100253854(v16);

    v17 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (!v17)
    {
      v24 = 0;
      goto LABEL_21;
    }

    v18 = v17;
    v9 = 0;
    v19 = *v28;
LABEL_12:
    v20 = 0;
    v21 = v9;
    while (1)
    {
      if (*v28 != v19)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v27 + 1) + 8 * v20);

      v22 = [v9 identifier];
      v23 = [v22 isEqualToString:v4];

      if (v23)
      {
        break;
      }

      v20 = v20 + 1;
      v21 = v9;
      if (v18 == v20)
      {
        v18 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v18)
        {
          goto LABEL_12;
        }

        v24 = 0;
        goto LABEL_20;
      }
    }
  }

  v25 = v9;
  v24 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
  v9 = v6;
  v6 = v25;
LABEL_20:

LABEL_21:

  return v24;
}

- (id)_getAllApplets:(id *)a3
{
  v6 = objc_opt_new();
  v7 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
  v8 = [(_NFSecureElementManagerSession *)self _activateSecureElementWrapper:v7];

  if ((v8 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", v21, ClassName, Name, 232);
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

      *buf = 67109890;
      v39 = v24;
      v40 = 2082;
      v41 = object_getClassName(self);
      v42 = 2082;
      v43 = sel_getName(a2);
      v44 = 1024;
      v45 = 232;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to activate embedded secure element", buf, 0x22u);
    }

    v25 = [NSError alloc];
    v10 = [NSString stringWithUTF8String:"nfcd"];
    v36 = NSLocalizedDescriptionKey;
    v26 = [NSString stringWithUTF8String:"Stack Error"];
    v37 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v28 = [v25 initWithDomain:v10 code:15 userInfo:v27];
    goto LABEL_17;
  }

  v9 = [(_NFXPCSession *)self connection];
  v10 = [v9 NF_whitelistChecker];

  v11 = [v10 useUnfilteredApplets];
  v12 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
  v13 = v12;
  if (v11)
  {
    v35 = 0;
    v14 = &v35;
    v15 = sub_100257A4C(v12, &v35);
  }

  else
  {
    v34 = 0;
    v14 = &v34;
    v15 = sub_1002543BC(v12, &v34);
  }

  v29 = v15;
  v26 = *v14;

  if (v29)
  {
    v28 = v29;
    v27 = v28;
LABEL_17:
    v30 = v28;
    goto LABEL_18;
  }

  if (v26)
  {
    [v6 addObjectsFromArray:v26];
  }

  if (a3)
  {
    v32 = v6;
    v27 = 0;
    v30 = 0;
    *a3 = v6;
  }

  else
  {
    v27 = 0;
    v30 = 0;
  }

LABEL_18:

  return v30;
}

- (void)_triggerProvisioningBugCatpture:(id)a3 response:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKey:@"kData"];
  v7 = [v6 uppercaseString];

  v20[0] = @"Status Word";
  v8 = [v5 status];
  if (v8 == 36864)
  {
    v9 = "Success";
  }

  else
  {
    v10 = &word_10031A220;
    v11 = 24;
    v9 = "Unknown Error";
    while (--v11)
    {
      v12 = v10 + 8;
      v13 = *v10;
      v10 += 8;
      if (v13 == v8)
      {
        v9 = *(v12 - 1);
        break;
      }
    }
  }

  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s (%04X)", v9, [v5 status]);
  v21[0] = v14;
  v21[1] = @"Serious Bug";
  v20[1] = @"Classification";
  v20[2] = @"FailureKey";
  v21[2] = @"ttrProvisioning";
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

  if ([v7 hasPrefix:@"80E6"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"84E6"))
  {
    v16 = 0;
    v17 = @"Applet Installation Failed";
    v18 = @"Install Command, Response: 0x%04X";
LABEL_10:
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v18, [v5 status]);
    sub_100199AD4(NFBugCapture, v17, v19, v15);

    +[NFExceptionsCALogger postAnalyticsAppletProvisioningFailureEvent:responseCode:](NFExceptionsCALogger, "postAnalyticsAppletProvisioningFailureEvent:responseCode:", v16, [v5 status]);
    goto LABEL_11;
  }

  if ([v7 hasPrefix:@"80E8"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"84E8"))
  {
    v16 = 1;
    v17 = @"Applet Loading Failed";
    v18 = @"Load Command, Response: 0x%04X";
    goto LABEL_10;
  }

  if (([v7 hasPrefix:@"80E2"] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"84E2"))
  {
    v16 = 2;
    v17 = @"Applet Personalization Failed";
    v18 = @"Store Data Command, Response: 0x%04X";
    goto LABEL_10;
  }

LABEL_11:
}

- (id)_processCommandDataProtocol:(id)a3 response:(id)a4
{
  v7 = a3;
  v8 = [NFResponseAPDU responseWithData:a4];
  if (!v8)
  {
    v23 = [NSError alloc];
    v9 = [NSString stringWithUTF8String:"nfcd"];
    v99[0] = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithUTF8String:"Empty response"];
    v100[0] = v24;
    v100[1] = &off_1003326B8;
    v99[1] = @"Line";
    v99[2] = @"Method";
    v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v100[2] = v25;
    v99[3] = NSDebugDescriptionErrorKey;
    v26 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 296];
    v100[3] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:4];
    v22 = [v23 initWithDomain:v9 code:66 userInfo:v27];

LABEL_30:
    goto LABEL_31;
  }

  v9 = [v7 objectForKeyedSubscript:@"dataProtocol"];
  if (!v9)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
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
      v79 = object_getClassName(v9);
      v34 = 45;
      if (isMetaClass)
      {
        v34 = 43;
      }

      v29(3, "%c[%{public}s %{public}s]:%i Incorrect data protocol parameter: %s", v34, ClassName, Name, 303, v79);
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

      *buf = 67110146;
      v90 = v37;
      v91 = 2082;
      v92 = object_getClassName(self);
      v93 = 2082;
      v94 = sel_getName(a2);
      v95 = 1024;
      v96 = 303;
      v97 = 2080;
      v98 = object_getClassName(v9);
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Incorrect data protocol parameter: %s", buf, 0x2Cu);
    }

    v38 = [NSError alloc];
    v24 = [NSString stringWithUTF8String:"nfcd"];
    v87 = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithUTF8String:"Decoding Error"];
    v88 = v25;
    v39 = &v88;
    v40 = &v87;
LABEL_29:
    v41 = [NSDictionary dictionaryWithObjects:v39 forKeys:v40 count:1];
    v22 = [v38 initWithDomain:v24 code:23 userInfo:v41];

    goto LABEL_30;
  }

  if ([v9 isEqualToString:@"GlobalPlatform"])
  {
    goto LABEL_5;
  }

  if (([v9 isEqualToString:@"MiFare"] & 1) == 0)
  {
    if ([v9 isEqualToString:@"FeliCa"])
    {
LABEL_5:
      if ([v8 status] == 36864)
      {
LABEL_17:
        v22 = 0;
        goto LABEL_31;
      }

      goto LABEL_6;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v66 = NFLogGetLogger();
    if (v66)
    {
      v67 = v66;
      v68 = object_getClass(self);
      v69 = class_isMetaClass(v68);
      v74 = object_getClassName(self);
      v77 = sel_getName(a2);
      v70 = 45;
      if (v69)
      {
        v70 = 43;
      }

      v67(3, "%c[%{public}s %{public}s]:%i Incorrect data protocol parameter: %{public}@", v70, v74, v77, 314, v9);
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

      *buf = 67110146;
      v90 = v73;
      v91 = 2082;
      v92 = object_getClassName(self);
      v93 = 2082;
      v94 = sel_getName(a2);
      v95 = 1024;
      v96 = 314;
      v97 = 2114;
      v98 = v9;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Incorrect data protocol parameter: %{public}@", buf, 0x2Cu);
    }

    v38 = [NSError alloc];
    v24 = [NSString stringWithUTF8String:"nfcd"];
    v85 = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithUTF8String:"Decoding Error"];
    v86 = v25;
    v39 = &v86;
    v40 = &v85;
    goto LABEL_29;
  }

  if ([v8 status] == 36864)
  {
    v58 = [v7 objectForKey:@"kData"];
    if (![v58 compare:@"80E2" options:1 range:{0, objc_msgSend(@"80E2", "length")}] || !objc_msgSend(v58, "compare:options:range:", @"84E2", 1, 0, objc_msgSend(@"84E2", "length")))
    {
      v59 = [v8 data];
      v60 = [NFMSEIParser parseResponseAPDU:v59];

      if (v60)
      {
        v61 = [NSError alloc];
        v62 = [NSString stringWithUTF8String:"nfcd"];
        v83 = NSLocalizedDescriptionKey;
        if (v60 >= 0x4C)
        {
          v63 = 76;
        }

        else
        {
          v63 = v60;
        }

        v64 = [NSString stringWithUTF8String:off_100319F08[v63]];
        v84 = v64;
        v65 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v22 = [v61 initWithDomain:v62 code:v60 userInfo:v65];

        goto LABEL_31;
      }
    }

    goto LABEL_17;
  }

LABEL_6:
  v10 = [v7 NF_numberForKey:@"kIgnoreResult"];
  if ([v10 BOOLValue])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v12 = v11;
      v13 = object_getClass(self);
      v14 = class_isMetaClass(v13);
      v15 = object_getClassName(self);
      v16 = v10;
      v17 = sel_getName(a2);
      v78 = [v8 status];
      v75 = v17;
      v10 = v16;
      v18 = 45;
      if (v14)
      {
        v18 = 43;
      }

      v12(5, "%c[%{public}s %{public}s]:%i Ignoring R-APDU Error: 0x%04x", v18, v15, v75, 339, v78);
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

      *buf = 67110146;
      v90 = v21;
      v91 = 2082;
      v92 = object_getClassName(self);
      v93 = 2082;
      v94 = sel_getName(a2);
      v95 = 1024;
      v96 = 339;
      v97 = 1024;
      LODWORD(v98) = [v8 status];
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignoring R-APDU Error: 0x%04x", buf, 0x28u);
    }

    goto LABEL_17;
  }

  [(_NFSecureElementManagerSession *)self _triggerProvisioningBugCatpture:v7 response:v8];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v43 = NFLogGetLogger();
  if (v43)
  {
    v44 = v43;
    v45 = object_getClass(self);
    v46 = class_isMetaClass(v45);
    v47 = object_getClassName(self);
    v48 = v10;
    v49 = sel_getName(a2);
    v80 = [v8 status];
    v76 = v49;
    v10 = v48;
    v50 = 45;
    if (v46)
    {
      v50 = 43;
    }

    v44(3, "%c[%{public}s %{public}s]:%i R-APDU Error: 0x%04x", v50, v47, v76, 344, v80);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v51 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v52 = object_getClass(self);
    if (class_isMetaClass(v52))
    {
      v53 = 43;
    }

    else
    {
      v53 = 45;
    }

    *buf = 67110146;
    v90 = v53;
    v91 = 2082;
    v92 = object_getClassName(self);
    v93 = 2082;
    v94 = sel_getName(a2);
    v95 = 1024;
    v96 = 344;
    v97 = 1024;
    LODWORD(v98) = [v8 status];
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i R-APDU Error: 0x%04x", buf, 0x28u);
  }

  v54 = [NSError alloc];
  v55 = [NSString stringWithUTF8String:"nfcd"];
  v81 = NSLocalizedDescriptionKey;
  v56 = [NSString stringWithUTF8String:"Command Error"];
  v82 = v56;
  v57 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  v22 = [v54 initWithDomain:v55 code:16 userInfo:v57];

LABEL_31:

  return v22;
}

- (unint64_t)expectedDurationInNS
{
  v3 = [(_NFXPCSession *)self clientName];
  if ([v3 isEqualToString:@"seld"])
  {
    v4 = 180000000000;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _NFSecureElementManagerSession;
    v4 = [(_NFSession *)&v6 expectedDurationInNS];
  }

  return v4;
}

- (void)handleTransactionStartEvent:(id)a3 atlData:(id)a4
{
  v6 = a3;
  v7 = [v6 appletIdentifier];
  v8 = [(_NFSecureElementManagerSession *)self _getSecureElementForAID:v7];

  if ([(_NFSecureElementManagerSession *)self _activateSecureElementWrapper:v8])
  {
    v9 = [v6 appletIdentifier];
    v10 = [NSData NF_dataWithHexString:v9];
    v11 = sub_100257F24(v8, v10, 0);

    v12 = [v11 moduleIdentifierAsData];
    v13 = [[NSData alloc] initWithBytes:&unk_1002977E1 length:10];
    if ([v12 isEqualToData:v13])
    {
    }

    else
    {
      v23 = [[NSData alloc] initWithBytes:&unk_1002977EB length:10];
      v24 = [v12 isEqualToData:v23];

      if (!v24)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    appletRequiresEndOfTransactionProcessing = self->_appletRequiresEndOfTransactionProcessing;
    v26 = [v6 appletIdentifier];
    [(NSMutableArray *)appletRequiresEndOfTransactionProcessing addObject:v26];

    appletChangedByTSM = self->_appletChangedByTSM;
    v28 = [v6 appletIdentifier];
    [(NSMutableArray *)appletChangedByTSM addObject:v28];

    goto LABEL_16;
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
    v19 = 45;
    if (isMetaClass)
    {
      v19 = 43;
    }

    v15(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v19, ClassName, Name, 378);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
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

    *buf = 67109890;
    v31 = v22;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 378;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
  }

LABEL_17:
}

- (void)handleTransactionEndEvent:(id)a3 atlData:(id)a4
{
  v6 = a3;
  v7 = [v6 appletIdentifier];

  if (v7)
  {
    appletChangedByTSM = self->_appletChangedByTSM;
    v9 = [v6 appletIdentifier];
    [(NSMutableArray *)appletChangedByTSM addObject:v9];
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
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i NULL AID !", v15, ClassName, Name, 401);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v21 = v18;
      v22 = 2082;
      v23 = object_getClassName(self);
      v24 = 2082;
      v25 = sel_getName(a2);
      v26 = 1024;
      v27 = 401;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NULL AID !", buf, 0x22u);
    }
  }
}

- (void)cleanup
{
  v3 = NFSharedSignpostLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFSecureElementManagerSession", buf, 2u);
  }

  if ([(_NFSession *)self needsCleanup]&& ![(_NFSession *)self isSuspended])
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

      v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 411);
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

      v13 = object_getClassName(self);
      v14 = sel_getName(a2);
      *buf = 67109890;
      *v175 = v12;
      *&v175[4] = 2082;
      *&v175[6] = v13;
      *&v175[14] = 2082;
      *&v175[16] = v14;
      v176 = 1024;
      v177 = 411;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    obj = self->_appletRequiresEndOfTransactionProcessing;
    v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v169 objects:v182 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v170;
      do
      {
        v18 = 0;
        v154 = v16;
        do
        {
          if (*v170 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v169 + 1) + 8 * v18);
          v20 = [(_NFSecureElementManagerSession *)self _getSecureElementForAID:v19];
          if ([(_NFSecureElementManagerSession *)self _activateSecureElementWrapper:v20])
          {
            v21 = v17;
            v22 = [NSData NF_dataWithHexString:v19];
            v168 = 0;
            v23 = sub_100257F24(v20, v22, &v168);
            v24 = v168;

            v167 = v24;
            v25 = sub_1002641A4(v20, v23, &v167);
            v26 = v167;

            if (v25)
            {
              v27 = v26 == 0;
            }

            else
            {
              v27 = 0;
            }

            if (!v27)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v28 = NFLogGetLogger();
              if (v28)
              {
                v29 = v28;
                v30 = object_getClass(self);
                v31 = class_isMetaClass(v30);
                v32 = object_getClassName(self);
                v144 = sel_getName(a2);
                v33 = 45;
                if (v31)
                {
                  v33 = 43;
                }

                v29(3, "%c[%{public}s %{public}s]:%i processEndOfFelicaTransactionForApplet failed: %{public}@ or output dictionary is nil: %{public}@", v33, v32, v144, 426, v26, v25);
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
                *buf = 67110402;
                *v175 = v36;
                *&v175[4] = 2082;
                *&v175[6] = v37;
                *&v175[14] = 2082;
                *&v175[16] = v38;
                v176 = 1024;
                v177 = 426;
                v178 = 2114;
                v179 = v26;
                v180 = 2114;
                v181 = v25;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i processEndOfFelicaTransactionForApplet failed: %{public}@ or output dictionary is nil: %{public}@", buf, 0x36u);
              }
            }

            v17 = v21;
            v16 = v154;
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v39 = NFLogGetLogger();
            if (v39)
            {
              v40 = v39;
              v41 = object_getClass(self);
              v42 = class_isMetaClass(v41);
              v43 = object_getClassName(self);
              v145 = sel_getName(a2);
              v44 = 45;
              if (v42)
              {
                v44 = 43;
              }

              v40(3, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", v44, v43, v145, 430);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v26 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
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

              v47 = object_getClassName(self);
              v48 = sel_getName(a2);
              *buf = 67109890;
              *v175 = v46;
              *&v175[4] = 2082;
              *&v175[6] = v47;
              *&v175[14] = 2082;
              *&v175[16] = v48;
              v176 = 1024;
              v177 = 430;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set mode to wired", buf, 0x22u);
            }
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v169 objects:v182 count:16];
      }

      while (v16);
    }

    if (self->_delayExpressMode > 0.0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(self);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(self);
        v146 = sel_getName(a2);
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v50(6, "%c[%{public}s %{public}s]:%i Delaying express transit after transaction", v54, v53, v146, 435);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
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
        *v175 = v57;
        *&v175[4] = 2082;
        *&v175[6] = v58;
        *&v175[14] = 2082;
        *&v175[16] = v59;
        v176 = 1024;
        v177 = 435;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delaying express transit after transaction", buf, 0x22u);
      }

      v60 = [(_NFXPCSession *)self expressModeManager];
      sub_100035E30(v60, self->_delayExpressMode);
    }

    if (![(_NFSecureElementManagerSession *)self isDirty])
    {
      goto LABEL_94;
    }

    v61 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];

    if (!v61)
    {
      goto LABEL_94;
    }

    v62 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
    v63 = [(_NFSecureElementManagerSession *)self _activateSecureElementWrapper:v62];

    if (!v63)
    {
      goto LABEL_94;
    }

    v64 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
    v65 = [v64 handle];
    v66 = [v65 info];

    v67 = +[_NFHardwareManager sharedHardwareManager];
    [v67 refreshSecureElementInfo];

    v68 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
    v69 = sub_100253E14(v68);

    v70 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
    v71 = sub_100261EA4(v70);

    [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
    if ([v66 migrationState] == 1 || objc_msgSend(v66, "migrationContext") != 4 && objc_msgSend(v66, "migrationContext") != 5)
    {
LABEL_93:
      v121 = +[_NFHardwareManager sharedHardwareManager];
      sub_1001EA628(v121);

LABEL_94:
      [(NFFelicaStateEvent *)self->_felicaEvents asDictionary];
      v166[0] = _NSConcreteStackBlock;
      v166[1] = 3221225472;
      v166[2] = sub_100160CD0;
      v166[3] = &unk_10031A178;
      v166[4] = self;
      v151 = v166[5] = a2;
      [v151 enumerateKeysAndObjectsUsingBlock:v166];
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      objb = self->_appletChangedByTSM;
      v122 = [(NSMutableArray *)objb countByEnumeratingWithState:&v162 objects:v173 count:16];
      if (v122)
      {
        v123 = v122;
        v124 = *v163;
        do
        {
          for (i = 0; i != v123; i = i + 1)
          {
            if (*v163 != v124)
            {
              objc_enumerationMutation(objb);
            }

            v126 = *(*(&v162 + 1) + 8 * i);
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v127 = NFLogGetLogger();
            if (v127)
            {
              v128 = v127;
              v129 = object_getClass(self);
              v130 = class_isMetaClass(v129);
              v142 = object_getClassName(self);
              v149 = sel_getName(a2);
              v131 = 45;
              if (v130)
              {
                v131 = 43;
              }

              v128(6, "%c[%{public}s %{public}s]:%i TSM update notification for AID %{public}@", v131, v142, v149, 482, v126);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v132 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
            {
              v133 = object_getClass(self);
              if (class_isMetaClass(v133))
              {
                v134 = 43;
              }

              else
              {
                v134 = 45;
              }

              v135 = object_getClassName(self);
              v136 = sel_getName(a2);
              *buf = 67110146;
              *v175 = v134;
              *&v175[4] = 2082;
              *&v175[6] = v135;
              *&v175[14] = 2082;
              *&v175[16] = v136;
              v176 = 1024;
              v177 = 482;
              v178 = 2114;
              v179 = v126;
              _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TSM update notification for AID %{public}@", buf, 0x2Cu);
            }

            v137 = +[_NFHardwareManager sharedHardwareManager];
            sub_1000E7BDC(v137, "com.apple.stockholm.se.update.by.tsm", v126);

            v138 = NFSharedSignpostLog();
            if (os_signpost_enabled(v138))
            {
              *buf = 136315394;
              *v175 = "com.apple.stockholm.se.update.by.tsm";
              *&v175[8] = 2112;
              *&v175[10] = v126;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v138, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UPDATE_BY_TSM_NOTIFICATION", "%s, aid: %@", buf, 0x16u);
            }
          }

          v123 = [(NSMutableArray *)objb countByEnumeratingWithState:&v162 objects:v173 count:16];
        }

        while (v123);
      }

      if (self->_scriptExecuted)
      {
        v139 = +[_NFHardwareManager sharedHardwareManager];
        sub_1000E7BDC(v139, "com.apple.stockholm.tsm.script.executed", 0);
      }

      goto LABEL_115;
    }

    obja = v66;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v72 = NFLogGetLogger();
    if (v72)
    {
      v73 = v72;
      v74 = object_getClass(self);
      v152 = class_isMetaClass(v74);
      v155 = object_getClassName(self);
      v75 = sel_getName(a2);
      v76 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
      v77 = [v76 handle];
      v78 = [v77 info];
      v79 = [v78 migrationState];
      v80 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
      v81 = [v80 handle];
      v82 = [v81 info];
      v150 = [v82 migrationContext];
      v83 = 45;
      if (v152)
      {
        v83 = 43;
      }

      v73(4, "%c[%{public}s %{public}s]:%i Recovering slam in state %lu context %lu", v83, v155, v75, 455, v79, v150);
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

      v153 = v86;
      v87 = object_getClassName(self);
      v88 = sel_getName(a2);
      v156 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
      v89 = [v156 handle];
      v90 = [v89 info];
      v91 = [v90 migrationState];
      v92 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
      v93 = [v92 handle];
      v94 = [v93 info];
      v95 = [v94 migrationContext];
      *buf = 67110402;
      *v175 = v153;
      *&v175[4] = 2082;
      *&v175[6] = v87;
      *&v175[14] = 2082;
      *&v175[16] = v88;
      v176 = 1024;
      v177 = 455;
      v178 = 2048;
      v179 = v91;
      v180 = 2048;
      v181 = v95;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Recovering slam in state %lu context %lu", buf, 0x36u);
    }

    v96 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
    v97 = [v96 recoverSLAM];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v98 = NFLogGetLogger();
    v99 = v98;
    if (v97)
    {
      if (v98)
      {
        v100 = object_getClass(self);
        v101 = class_isMetaClass(v100);
        v141 = object_getClassName(self);
        v147 = sel_getName(a2);
        v102 = 45;
        if (v101)
        {
          v102 = 43;
        }

        v99(3, "%c[%{public}s %{public}s]:%i Failed to recover SLAM? %{public}@", v102, v141, v147, 458, v97);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      v104 = object_getClass(self);
      if (class_isMetaClass(v104))
      {
        v105 = 43;
      }

      else
      {
        v105 = 45;
      }

      v106 = object_getClassName(self);
      v107 = sel_getName(a2);
      *buf = 67110146;
      *v175 = v105;
      *&v175[4] = 2082;
      *&v175[6] = v106;
      *&v175[14] = 2082;
      *&v175[16] = v107;
      v176 = 1024;
      v177 = 458;
      v178 = 2114;
      v179 = v97;
      v108 = "%c[%{public}s %{public}s]:%i Failed to recover SLAM? %{public}@";
      v109 = v103;
      v110 = OS_LOG_TYPE_ERROR;
      v111 = 44;
    }

    else
    {
      if (v98)
      {
        v112 = object_getClass(self);
        v113 = class_isMetaClass(v112);
        v114 = object_getClassName(self);
        v148 = sel_getName(a2);
        v115 = 45;
        if (v113)
        {
          v115 = 43;
        }

        v99(6, "%c[%{public}s %{public}s]:%i SLAM Recovery successful", v115, v114, v148, 460);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_92;
      }

      v116 = object_getClass(self);
      if (class_isMetaClass(v116))
      {
        v117 = 43;
      }

      else
      {
        v117 = 45;
      }

      v118 = object_getClassName(self);
      v119 = sel_getName(a2);
      *buf = 67109890;
      *v175 = v117;
      *&v175[4] = 2082;
      *&v175[6] = v118;
      *&v175[14] = 2082;
      *&v175[16] = v119;
      v176 = 1024;
      v177 = 460;
      v108 = "%c[%{public}s %{public}s]:%i SLAM Recovery successful";
      v109 = v103;
      v110 = OS_LOG_TYPE_DEFAULT;
      v111 = 34;
    }

    _os_log_impl(&_mh_execute_header, v109, v110, v108, buf, v111);
LABEL_92:

    v120 = +[_NFHardwareManager sharedHardwareManager];
    [v120 refreshSecureElementInfo];

    v66 = obja;
    goto LABEL_93;
  }

LABEL_115:
  v161.receiver = self;
  v161.super_class = _NFSecureElementManagerSession;
  [(_NFSession *)&v161 cleanup];
  v140 = NFSharedSignpostLog();
  if (os_signpost_enabled(v140))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFSecureElementManagerSession", buf, 2u);
  }
}

- (void)stateInformationWithCompletion:(id)a3
{
  v5 = a3;
  if ([(_NFSession *)self didStart]&& ![(_NFSession *)self isSuspended]&& ![(_NFSession *)self didEnd])
  {
    v26 = @"version";
    v25 = [NSNumber numberWithInt:2];
    v27 = v25;
    v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    [(_NFSecureElementManagerSession *)self stateInformationWithRedirectInfo:v21 completion:v5];
    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v12 = [(_NFSession *)self sessionUID];
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, ClassName, Name, 502, v12);
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
    v19 = [(_NFSession *)self sessionUID];
    *buf = 67110146;
    v31 = v16;
    v32 = 2082;
    v33 = v17;
    v34 = 2082;
    v35 = v18;
    v36 = 1024;
    v37 = 502;
    v38 = 2114;
    v39 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  if (v5)
  {
    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v28 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Session not active"];
    v29 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v24 = [v20 initWithDomain:v21 code:54 userInfo:v23];
    v5[2](v5, 0, v24);

LABEL_15:
  }
}

- (void)stateInformationWithRedirectInfo:(id)a3 appletFiltering:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSecureElementManagerSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161328;
  block[3] = &unk_100318AB8;
  v16 = v10;
  v17 = a2;
  block[4] = self;
  v15 = v9;
  v18 = a4;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

- (void)signChallenge:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100161CC0;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)signChallenge:(id)a3 useOSVersion:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSecureElementManagerSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016281C;
  block[3] = &unk_100318AB8;
  v16 = v10;
  v17 = a2;
  v18 = a4;
  block[4] = self;
  v15 = v9;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

- (void)signChallenge:(id)a3 forAID:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = _NFSecureElementManagerSession;
  v12 = [(_NFSession *)&v21 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163690;
  block[3] = &unk_1003165C0;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v10;
  v18 = v9;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  dispatch_async(v12, block);
}

- (void)getSignedPlatformDataForSeid:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016447C;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)getAppletsWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementManagerSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100164B70;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)deleteApplets:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016502C;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)deleteAllAppletsWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementManagerSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001659F0;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)transceive:(id)a3 forSEID:(id)a4 toOS:(int64_t)a5 redact:(BOOL)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = _NFSecureElementManagerSession;
  v16 = [(_NFSession *)&v27 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016686C;
  block[3] = &unk_10031A1A0;
  block[4] = self;
  v21 = v14;
  v22 = v13;
  v23 = v15;
  v24 = a2;
  v25 = a5;
  v26 = a6;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  dispatch_async(v16, block);
}

- (void)transceiveMultiple:(id)a3 forSEID:(id)a4 toOS:(int64_t)a5 redact:(BOOL)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = _NFSecureElementManagerSession;
  v16 = [(_NFSession *)&v27 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166D84;
  block[3] = &unk_10031A1A0;
  block[4] = self;
  v21 = v14;
  v22 = v13;
  v23 = v15;
  v24 = a2;
  v25 = a5;
  v26 = a6;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  dispatch_async(v16, block);
}

- (id)_createResponseFromCommand:(id)a3 params:(id)a4 rapdu:(id)a5 duration:(unint64_t)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = objc_opt_new();
  v13 = [v9 NF_stringForKey:@"kMessageName"];
  v14 = [v10 NF_asHexString];

  [v12 setObject:v14 forKeyedSubscript:@"kData"];
  v15 = [v9 objectForKeyedSubscript:@"kMessageId"];
  [v12 setObject:v15 forKeyedSubscript:@"kMessageId"];

  LODWORD(v14) = [v11 includeAPDUDuration];
  if (v14)
  {
    v16 = [NSNumber numberWithUnsignedLongLong:a6];
    [v12 setObject:v16 forKeyedSubscript:@"durationInMS"];
  }

  if (v13)
  {
    v17 = [v13 stringByAppendingString:@"_RESP"];
    [v12 setObject:v17 forKeyedSubscript:@"kMessageName"];
  }

  v18 = [v9 NF_stringForKey:@"dataProtocol"];
  if (v18)
  {
    [v12 setObject:v18 forKeyedSubscript:@"dataProtocol"];
  }

  return v12;
}

- (id)_sendOneCommand:(id)a3 params:(id)a4 responses:(id)a5 lastStatus:(int64_t *)a6 totalTXTime:(unint64_t *)a7 failureDetected:(BOOL *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v12 NF_numberForKey:@"kChainingResponse"];
  v16 = [v12 NF_stringForKey:@"kMessageName"];
  v145 = v12;
  v146 = [v12 NF_stringForKey:@"kData"];
  v17 = [NSData NF_dataWithHexString:?];
  v143 = v14;
  v144 = v13;
  v141 = v17;
  v142 = v15;
  if (!v17)
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
      if (v16)
      {
        v41 = v16;
      }

      else
      {
        v41 = @"NO_NAME";
      }

      v42 = 45;
      if (isMetaClass)
      {
        v42 = 43;
      }

      v36(3, "%c[%{public}s %{public}s]:%i Invalid C-APDU %{public}@", v42, ClassName, Name, 1056, v41);
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
      LODWORD(buf) = 67110146;
      if (v16)
      {
        v48 = v16;
      }

      else
      {
        v48 = @"NO_NAME";
      }

      HIDWORD(buf) = v45;
      *v161 = 2082;
      *&v161[2] = v46;
      *&v161[10] = 2082;
      *&v161[12] = v47;
      *&v161[20] = 1024;
      *&v161[22] = 1056;
      v162 = 2114;
      v163 = v48;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid C-APDU %{public}@", &buf, 0x2Cu);
    }

    v49 = [NSError alloc];
    [NSString stringWithUTF8String:"nfcd"];
    v51 = v50 = a2;
    v158[0] = NSLocalizedDescriptionKey;
    v52 = [NSString stringWithUTF8String:"Decoding Error"];
    v159[0] = v52;
    v159[1] = &off_100332718;
    v158[1] = @"Line";
    v158[2] = @"Method";
    v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v50)];
    v159[2] = v53;
    v158[3] = NSDebugDescriptionErrorKey;
    v54 = v16;
    v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v50), 1057];
    v159[3] = v55;
    v56 = [NSDictionary dictionaryWithObjects:v159 forKeys:v158 count:4];
    v57 = [v49 initWithDomain:v51 code:23 userInfo:v56];

    v58 = v54;
    v59 = v142;
    v60 = v143;
    goto LABEL_40;
  }

  v18 = v17;
  v135 = a8;
  v140 = [[NFCommandAPDU alloc] initWithData:v17];
  v137 = v16;
  if ([v13 checkAIDAllowList])
  {
    v19 = [v13 AIDAllowList];
    v20 = [NSSet setWithArray:v19];
    v21 = ValidateAPDUWithAIDAllowList();

    if ((v21 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(self);
        v64 = class_isMetaClass(v63);
        v128 = object_getClassName(self);
        v129 = sel_getName(a2);
        v65 = 45;
        if (v64)
        {
          v65 = 43;
        }

        v62(3, "%c[%{public}s %{public}s]:%i Validation failed, C-APDU %{public}@", v65, v128, v129, 1061, v146);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = object_getClass(self);
        if (class_isMetaClass(v67))
        {
          v68 = 43;
        }

        else
        {
          v68 = 45;
        }

        LODWORD(buf) = 67110146;
        HIDWORD(buf) = v68;
        *v161 = 2082;
        *&v161[2] = object_getClassName(self);
        *&v161[10] = 2082;
        *&v161[12] = sel_getName(a2);
        *&v161[20] = 1024;
        *&v161[22] = 1061;
        v162 = 2114;
        v163 = v146;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Validation failed, C-APDU %{public}@", &buf, 0x2Cu);
      }

      v69 = [NSError alloc];
      v52 = [NSString stringWithUTF8String:"nfcd"];
      v156[0] = NSLocalizedDescriptionKey;
      v53 = [NSString stringWithUTF8String:"Command Error"];
      v157[0] = v53;
      v157[1] = &off_100332730;
      v156[1] = @"Line";
      v156[2] = @"Method";
      v70 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v157[2] = v70;
      v156[3] = NSDebugDescriptionErrorKey;
      v71 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 1062];
      v157[3] = v71;
      v72 = [NSDictionary dictionaryWithObjects:v157 forKeys:v156 count:4];
      v57 = [v69 initWithDomain:v52 code:16 userInfo:v72];

      v59 = v142;
      v60 = v143;
      v58 = v137;
      v51 = v140;
LABEL_40:
      v73 = v144;
      goto LABEL_75;
    }
  }

  v136 = a2;
  mach_continuous_time();
  if ([v13 toSystemOS])
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v15 BOOLValue];
  v24 = v18;
  v25 = v24;
  if (self)
  {
    v152 = *[v24 bytes];
    v153 = 192;
    v147 = objc_opt_new();
    v26 = 0;
    v27 = -1;
    v132 = v25;
    while (1)
    {
      v28 = v26;
      v29 = [(_NFSecureElementManagerSession *)self embeddedSecureElementWrapper];
      v151 = v26;
      v30 = sub_1001579EC(v29, v25, v22, &v151);
      v26 = v151;

      if (!v30)
      {
        break;
      }

      v31 = [NFResponseAPDU responseWithData:v30];
      v32 = v31;
      if (!v31)
      {
        v133 = [NSError alloc];
        v131 = [NSString stringWithUTF8String:"nfcd"];
        v164 = NSLocalizedDescriptionKey;
        v134 = [NSString stringWithUTF8String:"Unexpected Result"];
        buf = v134;
        *v161 = &off_100332700;
        v165 = @"Line";
        v166 = @"Method";
        v76 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_transceive:targetOS:chainingEnable:finalSWStatus:outError:")];
        *&v161[8] = v76;
        v167 = NSDebugDescriptionErrorKey;
        v77 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_transceive:targetOS:chainingEnable:finalSWStatus:outError:"), 981];
        *&v161[16] = v77;
        v78 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v164 count:4];
        v75 = [v133 initWithDomain:v131 code:13 userInfo:v78];
        v79 = v75;

LABEL_46:
        goto LABEL_47;
      }

      v27 = [v31 status];
      v33 = [v32 response];
      [v147 appendData:v33];

      if (!v23)
      {
        v75 = 0;
        v25 = v132;
        goto LABEL_46;
      }

      if (([v32 status] & 0xFF00) != 0x6100)
      {
        v75 = 0;
        goto LABEL_46;
      }

      HIBYTE(v153) = [v32 status];
      v34 = [NSData dataWithBytesNoCopy:&v152 length:5 freeWhenDone:0];

      v25 = v34;
    }

    if (v26)
    {
      v74 = v26;
      v75 = v26;
    }

    else
    {
      v121 = [NSError alloc];
      v122 = [NSString stringWithUTF8String:"nfcd"];
      v164 = NSLocalizedDescriptionKey;
      v123 = [NSString stringWithUTF8String:"Stack Error"];
      buf = v123;
      *v161 = &off_1003326E8;
      v165 = @"Line";
      v166 = @"Method";
      v124 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_transceive:targetOS:chainingEnable:finalSWStatus:outError:")];
      *&v161[8] = v124;
      v167 = NSDebugDescriptionErrorKey;
      v125 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_transceive:targetOS:chainingEnable:finalSWStatus:outError:"), 974];
      *&v161[16] = v125;
      v126 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v164 count:4];
      v75 = [v121 initWithDomain:v122 code:15 userInfo:v126];
      v127 = v75;

      v26 = 0;
    }

LABEL_47:
    v80 = v25;
    v73 = v13;
    v58 = v137;
    v81 = a7;
    v82 = v147;
    v83 = a6;
    if (v27 != -1)
    {
      v150 = bswap32(v27) >> 16;
      [v147 appendBytes:&v150 length:2];
    }
  }

  else
  {
    v80 = v24;
    v27 = 0;
    v75 = 0;
    v82 = 0;
    v73 = v13;
    v58 = v137;
    v81 = a7;
    v83 = a6;
  }

  v57 = v75;
  mach_continuous_time();
  ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
  *v81 += ElapsedTimeInMillisecondsFromMachTime;
  *v83 = v27;
  if (v57)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v85 = NFLogGetLogger();
    if (v85)
    {
      v86 = v85;
      v87 = object_getClass(self);
      v88 = v73;
      v89 = v82;
      v90 = class_isMetaClass(v87);
      v91 = object_getClassName(self);
      v92 = sel_getName(v136);
      if (v58)
      {
        v93 = v58;
      }

      else
      {
        v93 = v146;
      }

      v94 = !v90;
      v82 = v89;
      v73 = v88;
      v95 = 45;
      if (!v94)
      {
        v95 = 43;
      }

      v86(3, "%c[%{public}s %{public}s]:%i Failed to execute C-APDU %{public}@", v95, v91, v92, 1078, v93);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v96 = v82;
      v97 = object_getClass(self);
      if (class_isMetaClass(v97))
      {
        v98 = 43;
      }

      else
      {
        v98 = 45;
      }

      v99 = object_getClassName(self);
      v100 = sel_getName(v136);
      LODWORD(buf) = 67110146;
      v101 = v146;
      if (v58)
      {
        v101 = v58;
      }

      HIDWORD(buf) = v98;
      *v161 = 2082;
      *&v161[2] = v99;
      *&v161[10] = 2082;
      *&v161[12] = v100;
      *&v161[20] = 1024;
      *&v161[22] = 1078;
      v162 = 2114;
      v163 = v101;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute C-APDU %{public}@", &buf, 0x2Cu);
      v52 = v140;
      v51 = v96;
    }

    else
    {
      v52 = v140;
      v51 = v82;
    }

    v60 = v143;
  }

  else
  {
    v102 = ElapsedTimeInMillisecondsFromMachTime;
    v60 = v143;
    if ([v82 length])
    {
      v103 = [(_NFSecureElementManagerSession *)self _createResponseFromCommand:v145 params:v73 rapdu:v82 duration:v102];
      v51 = v103;
      if (v103 && [v103 count])
      {
        [v143 addObject:v51];
      }

      v57 = [(_NFSecureElementManagerSession *)self _processCommandDataProtocol:v145 response:v82];
      if (v57)
      {
        *v135 = 1;
      }

      v53 = v140;
      v52 = v82;
    }

    else
    {
      v148 = v82;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v105 = NFLogGetLogger();
      if (v105)
      {
        v106 = v105;
        v107 = object_getClass(self);
        v108 = class_isMetaClass(v107);
        v109 = object_getClassName(self);
        v130 = sel_getName(v136);
        v110 = 45;
        if (v108)
        {
          v110 = 43;
        }

        v106(5, "%c[%{public}s %{public}s]:%i Unexpected empty response with no error", v110, v109, v130, 1082);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v111 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v112 = object_getClass(self);
        if (class_isMetaClass(v112))
        {
          v113 = 43;
        }

        else
        {
          v113 = 45;
        }

        v114 = object_getClassName(self);
        v115 = sel_getName(v136);
        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v113;
        *v161 = 2082;
        *&v161[2] = v114;
        *&v161[10] = 2082;
        *&v161[12] = v115;
        *&v161[20] = 1024;
        *&v161[22] = 1082;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unexpected empty response with no error", &buf, 0x22u);
      }

      v116 = [NSError alloc];
      v53 = [NSString stringWithUTF8String:"nfcd"];
      v154[0] = NSLocalizedDescriptionKey;
      v117 = [NSString stringWithUTF8String:"Empty response"];
      v155[0] = v117;
      v155[1] = &off_100332748;
      v154[1] = @"Line";
      v154[2] = @"Method";
      v118 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v136)];
      v155[2] = v118;
      v154[3] = NSDebugDescriptionErrorKey;
      v119 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v136), 1083];
      v155[3] = v119;
      v120 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:4];
      v57 = [v116 initWithDomain:v53 code:66 userInfo:v120];

      v52 = v140;
      v51 = v148;
      v58 = v137;
    }
  }

  v59 = v142;
LABEL_75:

  return v57;
}

- (void)execRemoteAdminScript:(id)a3 params:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = _NFSecureElementManagerSession;
  v12 = [(_NFSession *)&v21 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001690B8;
  block[3] = &unk_1003165C0;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v10;
  v18 = v9;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  dispatch_async(v12, block);
}

- (void)refreshSecureElement:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016AFDC;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)validateSEPairingsWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementManagerSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016B7E0;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)didExitRestrictedMode:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016BF50;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)getCryptogramWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementManagerSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016C368;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)setExpressPassConfig:(id)a3 restoreAuthorization:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = NFSharedSignpostLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressPassConfig", "in", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = _NFSecureElementManagerSession;
  v12 = [(_NFSession *)&v20 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016CBC4;
  block[3] = &unk_100318AB8;
  v17 = v10;
  v18 = a2;
  block[4] = self;
  v16 = v9;
  v19 = a4;
  v13 = v9;
  v14 = v10;
  dispatch_async(v12, block);
}

- (void)getExpressPassConfigWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementManagerSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016D3E4;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)setExpressModesControlState:(int64_t)a3 completion:(id)a4
{
  v7 = a4;
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:setExpressModesControlState", "in", buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v15 workQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10016DB50;
  v11[3] = &unk_1003169E0;
  v11[4] = self;
  v12 = v7;
  v13 = a2;
  v14 = a3;
  v10 = v7;
  dispatch_async(v9, v11);
}

- (void)restoreAuthorizationForAllAppletsExcept:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizationForAllAppletsExcept", "in", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFSecureElementManagerSession;
  v10 = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016E960;
  v13[3] = &unk_1003165E8;
  v15 = v8;
  v16 = a2;
  v13[4] = self;
  v14 = v7;
  v11 = v7;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)restoreAuthorizarionForKeys:(id)a3 onApplet:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = NFSharedSignpostLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:restoreAuthorizarionForKeys", "in", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = _NFSecureElementManagerSession;
  v13 = [(_NFSession *)&v22 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F468;
  block[3] = &unk_1003165C0;
  v20 = v11;
  v21 = a2;
  block[4] = self;
  v18 = v9;
  v19 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  dispatch_async(v13, block);
}

- (void)disableAuthorizationForApplets:(id)a3 andKey:(id)a4 authorization:(id)a5 completion:(id)a6
{
  v11 = a3;
  v30 = a4;
  v12 = a5;
  v13 = a6;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v13)
          {
            v23 = [NSError alloc];
            v24 = [NSString stringWithUTF8String:"nfcd"];
            v43[0] = NSLocalizedDescriptionKey;
            v25 = [NSString stringWithUTF8String:"Invalid State"];
            v44[0] = v25;
            v44[1] = &off_100332868;
            v43[1] = @"Line";
            v43[2] = @"Method";
            v26 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
            v44[2] = v26;
            v43[3] = NSDebugDescriptionErrorKey;
            v27 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 1594];
            v44[3] = v27;
            v28 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
            v29 = [v23 initWithDomain:v24 code:12 userInfo:v28];
            v13[2](v13, v29);
          }

          v22 = v30;
          goto LABEL_15;
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = NFSharedSignpostLog();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:disableAuthorizationForApplets", "in", buf, 2u);
  }

  v37.receiver = self;
  v37.super_class = _NFSecureElementManagerSession;
  v21 = [(_NFSession *)&v37 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001700B4;
  block[3] = &unk_100319340;
  block[4] = self;
  v36 = a2;
  v35 = v13;
  v32 = v14;
  v22 = v30;
  v33 = v30;
  v34 = v12;
  dispatch_async(v21, block);

LABEL_15:
}

- (void)disableAuthorizationForPasses:(id)a3 authorization:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = NFSharedSignpostLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:disableAuthorizationForPasses", "in", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = _NFSecureElementManagerSession;
  v13 = [(_NFSession *)&v22 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170CBC;
  block[3] = &unk_1003165C0;
  v20 = v11;
  v21 = a2;
  block[4] = self;
  v18 = v9;
  v19 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  dispatch_async(v13, block);
}

- (void)getFelicaAppletState:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getFelicaAppletState", "in", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFSecureElementManagerSession;
  v10 = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100171868;
  v13[3] = &unk_1003165E8;
  v15 = v8;
  v16 = a2;
  v13[4] = self;
  v14 = v7;
  v11 = v7;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)getTransitAppletState:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getTransitAppletState", "in", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = _NFSecureElementManagerSession;
  v10 = [(_NFSession *)&v17 workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001721B4;
  v13[3] = &unk_1003165E8;
  v15 = v8;
  v16 = a2;
  v13[4] = self;
  v14 = v7;
  v11 = v7;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)getServiceProviderDataForApplet:(id)a3 publicKey:(id)a4 scheme:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = NFSharedSignpostLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SEMSession:getServiceProviderDataForApplet", "in", buf, 2u);
  }

  v27.receiver = self;
  v27.super_class = _NFSecureElementManagerSession;
  v16 = [(_NFSession *)&v27 workQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100172B4C;
  v21[3] = &unk_100319340;
  v25 = v14;
  v26 = a2;
  v21[4] = self;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v14;
  dispatch_async(v16, v21);
}

- (void)getAndResetLPEMCounterWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementManagerSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017326C;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)expressModesInfoWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementManagerSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173A6C;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)performPeerPaymentEnrollment:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100174164;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)powerCycleSEID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001749BC;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)getAttackCounterLogForSEID:(id)a3 acknowledgeLogs:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSecureElementManagerSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017508C;
  block[3] = &unk_100318AB8;
  v16 = v10;
  v17 = a2;
  block[4] = self;
  v15 = v9;
  v18 = a4;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

- (void)getAttackLogPresence:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _NFSecureElementManagerSession;
  v9 = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100175A88;
  v12[3] = &unk_1003165E8;
  v14 = v8;
  v15 = a2;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

- (void)dumpDomain:(unsigned __int8)a3 forSEID:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _NFSecureElementManagerSession;
  v11 = [(_NFSession *)&v19 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017623C;
  block[3] = &unk_100318AB8;
  v16 = v10;
  v17 = a2;
  block[4] = self;
  v15 = v9;
  v18 = a3;
  v12 = v9;
  v13 = v10;
  dispatch_async(v11, block);
}

- (void)getOSUpdateLogWithCompletion:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _NFSecureElementManagerSession;
  v6 = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001767F8;
  block[3] = &unk_100316050;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

@end