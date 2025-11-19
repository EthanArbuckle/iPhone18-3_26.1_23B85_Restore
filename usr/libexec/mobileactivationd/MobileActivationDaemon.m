@interface MobileActivationDaemon
- (BOOL)handleSessionResponse:(id)a3 withError:(id *)a4;
- (BOOL)isEntitled:(id)a3;
- (BOOL)isHostConnection;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)validateActivationDataSignature:(id)a3 activationSignature:(id)a4 withError:(id *)a5;
- (MobileActivationDaemon)initWithContext:(id)a3 Queue:(id)a4;
- (NSData)sessionHelloMessage;
- (PSCSessionInternal_)session;
- (id)callingProcessName;
- (id)copyUCRTVersionInfoWithError:(id *)a3;
- (id)valueForEntitlement:(id)a3;
- (unint64_t)currentSessionDuration;
- (void)copyActivationRecordWithCompletionBlock:(id)a3;
- (void)copyAttestationDictionaryWithCompletionBlock:(id)a3 options:(id)a4 completion:(id)a5;
- (void)copyAutomaticTimeEnabledWithCompletion:(id)a3;
- (void)copyDCRTWithCompletionBlock:(id)a3 withCompletion:(id)a4;
- (void)copyLegacyDeviceIdentityWithCompletionBlock:(id)a3;
- (void)copyMonotonicClockWithCompletionBlock:(id)a3;
- (void)copyPCRTTokenWithCompletionBlock:(id)a3;
- (void)copyRTCResetCountWithCompletionBlock:(id)a3;
- (void)copyRegionDataForGestaltWithCompletionBlock:(id)a3;
- (void)copyUCRTVersionInfoWithCompletionBlock:(id)a3;
- (void)copyUCRTWithCompletionBlock:(id)a3;
- (void)createActivationInfoWithCompletionBlock:(id)a3;
- (void)createTunnel1ActivationInfo:(id)a3 options:(id)a4 withCompletionBlock:(id)a5;
- (void)createTunnel1SessionInfoWithCompletionBlock:(id)a3;
- (void)deactivateDeviceWithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)deleteLegacyDeviceIdentityWithCompletionBlock:(id)a3;
- (void)generateSession:(BOOL)a3;
- (void)getActivationBuildWithCompletionBlock:(id)a3;
- (void)getActivationStateWithCompletionBlock:(id)a3;
- (void)getDCRTStateWithCompletionBlock:(id)a3 withCompletion:(id)a4;
- (void)handleActivationInfo:(id)a3 withCompletionBlock:(id)a4;
- (void)handleActivationInfoWithSession:(id)a3 activationSignature:(id)a4 completionBlock:(id)a5;
- (void)isDeviceBrickedWithCompletionBlock:(id)a3;
- (void)isInFieldCollectedWithCompletionBlock:(id)a3;
- (void)issueClientCertificateLegacy:(id)a3 WithCompletionBlock:(id)a4;
- (void)issueClientCertificateWithReferenceKey:(id)a3 options:(id)a4 completion:(id)a5;
- (void)issueCollection:(id)a3 withCompletionBlock:(id)a4;
- (void)issueDCRT:(id)a3 withCompletionBlock:(id)a4;
- (void)issueUCRT:(id)a3 withCompletionBlock:(id)a4;
- (void)performMigrationWithCompletion:(id)a3 completion:(id)a4;
- (void)recertifyDeviceWithCompletionBlock:(id)a3;
- (void)requestDeviceReactivationWithCompletionBlock:(id)a3;
- (void)ucrtUpgradeRequiredWithCompletionBlock:(id)a3;
- (void)unbrickDeviceWithCompletionBlock:(id)a3;
- (void)updateBasebandTicket:(id)a3 baaCertData:(id)a4 baaIntermediateCert:(id)a5 options:(id)a6 withCompletionBlock:(id)a7;
@end

@implementation MobileActivationDaemon

- (MobileActivationDaemon)initWithContext:(id)a3 Queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = MobileActivationDaemon;
  v9 = [(MobileActivationDaemon *)&v18 init];
  v10 = v9;
  if (v9)
  {
    if (!v7 || !v8 || (objc_storeStrong(&v9->_dark, a3), objc_storeStrong(&v10->_xpcQueue, a4), v11 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v12 = dispatch_queue_create("com.apple.mobileactivationd.xpc.create", v11), creationQueue = v10->_creationQueue, v10->_creationQueue = v12, creationQueue, v11, !v10->_creationQueue) || (v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v15 = dispatch_queue_create("com.apple.mobileactivationd.xpc.session", v14), sessionQueue = v10->_sessionQueue, v10->_sessionQueue = v15, sessionQueue, v14, !v10->_sessionQueue))
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    ZyNF2D9(session);
  }

  v4.receiver = self;
  v4.super_class = MobileActivationDaemon;
  [(MobileActivationDaemon *)&v4 dealloc];
}

- (unint64_t)currentSessionDuration
{
  v3 = [(MobileActivationDaemon *)self sessionQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_sessionStartTime)
  {
    return (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - self->_sessionStartTime) / 0x3B9ACA00;
  }

  else
  {
    return 0;
  }
}

- (void)generateSession:(BOOL)a3
{
  v3 = a3;
  v5 = [(MobileActivationDaemon *)self sessionQueue];
  dispatch_assert_queue_V2(v5);

  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (self->_session && [(MobileActivationDaemon *)self currentSessionDuration]<= 0x12C && !v3)
  {
    goto LABEL_6;
  }

  self->_sessionStartTime = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v6 = TcswZQtsc8hw(&v10, &v12, &v11);
  if (v6)
  {
    maLog("[MobileActivationDaemon generateSession:]", 0, @"Failed to create handshake request message: %d", v6);
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v8 = [NSData alloc];
  v7 = [v8 initWithBytes:v12 length:v11];
  if (v7)
  {
    maLog("[MobileActivationDaemon generateSession:]", 0, @"Generated new DRM session.");
    session = self->_session;
    if (session)
    {
      ZyNF2D9(session);
    }

    self->_session = v10;
    v10 = 0;
    objc_storeStrong(&self->_sessionHelloMessage, v7);
  }

  else
  {
    maLog("[MobileActivationDaemon generateSession:]", 0, @"Failed to create data.");
  }

LABEL_7:
  if (v12)
  {
    ewFHQ(v12);
  }

  if (v10)
  {
    ZyNF2D9(v10);
  }
}

- (PSCSessionInternal_)session
{
  v3 = [(MobileActivationDaemon *)self sessionQueue];
  dispatch_assert_queue_V2(v3);

  [(MobileActivationDaemon *)self generateSession:0];
  return self->_session;
}

- (NSData)sessionHelloMessage
{
  v3 = [(MobileActivationDaemon *)self sessionQueue];
  dispatch_assert_queue_V2(v3);

  [(MobileActivationDaemon *)self generateSession:0];
  sessionHelloMessage = self->_sessionHelloMessage;

  return sessionHelloMessage;
}

- (id)callingProcessName
{
  v3 = [(MobileActivationDaemon *)self xpcQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MobileActivationDaemon *)self dark];
  v5 = data_ark_exists(v4, 0, @"HostProcessName");

  if (v5)
  {
    v6 = [(MobileActivationDaemon *)self dark];
    v7 = data_ark_copy(v6, 0, @"HostProcessName");
  }

  else
  {
    v7 = copy_calling_process_name();
  }

  return v7;
}

- (BOOL)isHostConnection
{
  v3 = [(MobileActivationDaemon *)self xpcQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MobileActivationDaemon *)self dark];
  LOBYTE(v3) = data_ark_exists(v4, 0, @"HostProcessName");

  return v3;
}

- (BOOL)isEntitled:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(MobileActivationDaemon *)self xpcQueue];
  dispatch_assert_queue_V2(v6);

  v7 = 0;
  LOBYTE(v8) = 0;
  if (v4)
  {
    if (v5)
    {
      v7 = [(NSXPCConnection *)v5 valueForEntitlement:v4];
      v8 = isNSNumber(v7);

      if (v8)
      {
        LOBYTE(v8) = [v7 BOOLValue];
      }
    }
  }

  return v8;
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(MobileActivationDaemon *)self xpcQueue];
  dispatch_assert_queue_V2(v6);

  v7 = 0;
  if (v4 && v5)
  {
    v7 = [(NSXPCConnection *)v5 valueForEntitlement:v4];
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MobileActivationProtocol];
  [v5 setExportedInterface:v6];
  [v5 setExportedObject:self];
  v7 = [(MobileActivationDaemon *)self xpcQueue];
  [v5 _setQueue:v7];

  [v5 resume];
  return 1;
}

- (id)copyUCRTVersionInfoWithError:(id *)a3
{
  v4 = [(MobileActivationDaemon *)self dark];
  v11 = 0;
  v5 = copyUCRTVersionInformation(v4, &v11);
  v6 = v11;

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = createMobileActivationError("[MobileActivationDaemon copyUCRTVersionInfoWithError:]", 285, @"com.apple.MobileActivation.ErrorDomain", -1, v6, @"Failed to copy UCRT version info.");

    if (a3)
    {
      v9 = v8;
      *a3 = v8;
    }

    v6 = v8;
  }

  return v5;
}

- (BOOL)handleSessionResponse:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__9;
  v69 = __Block_byref_object_dispose__9;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__9;
  v63 = __Block_byref_object_dispose__9;
  v64 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__9;
  v57[4] = __Block_byref_object_dispose__9;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 0;
  v6 = [(MobileActivationDaemon *)self xpcQueue];
  dispatch_assert_queue_not_V2(v6);

  if (!v5)
  {
    v28 = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]", 319, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
LABEL_15:
    v29 = v66[5];
    v66[5] = v28;

    v18 = 0;
    v19 = 0;
    v11 = 0;
    v27 = 0;
    v9 = 0;
LABEL_16:
    v17 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  v7 = [MACollectionInterface alloc];
  v8 = [(MobileActivationDaemon *)self dark];
  v9 = [(MACollectionInterface *)v7 initWithContext:v8];

  if (!v9)
  {
    v28 = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]", 325, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create collection interface.");
    goto LABEL_15;
  }

  v10 = +[GestaltHlpr getSharedInstance];
  v11 = [v10 copyAnswer:@"BuildVersion"];

  v12 = isNSString(v11);
  if (!v12)
  {
    v31 = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]", 331, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", @"BuildVersion");
    v32 = v66[5];
    v66[5] = v31;

    v18 = 0;
    v19 = 0;
    v27 = 0;
    goto LABEL_16;
  }

  v13 = v66;
  obj = 0;
  v14 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&obj];
  objc_storeStrong(v13 + 5, obj);
  v15 = isNSDictionary(v14);

  if (!v15)
  {
    v33 = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]", 340, @"com.apple.MobileActivation.ErrorDomain", -1, v66[5], @"Failed to decode session data.");
    v34 = v66[5];
    v66[5] = v33;

    v18 = 0;
    v19 = 0;
    v27 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  if (is_internal_build())
  {
    v16 = dictionary_to_xml(v14);
    maLog("[MobileActivationDaemon handleSessionResponse:withError:]", 0, @"Session message:\n%@", v16);
  }

  v17 = [v14 objectForKeyedSubscript:@"HandshakeResponseMessage"];
  v18 = [v14 objectForKeyedSubscript:@"serverKP"];
  v19 = [v14 objectForKeyedSubscript:@"SUInfo"];
  v20 = [v14 objectForKeyedSubscript:@"FDRBlob"];
  v21 = v60[5];
  v60[5] = v20;

  v22 = isNSData(v17);
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = isNSData(v18);
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = isNSData(v19);
  if (!v24)
  {

LABEL_24:
    goto LABEL_25;
  }

  v38 = v24;
  v37 = isNSData(v60[5]);

  if (!v37)
  {
LABEL_25:
    v35 = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]", 354, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid session response.");
    v36 = v66[5];
    v66[5] = v35;

    goto LABEL_26;
  }

  v25 = [(MobileActivationDaemon *)self xpcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __58__MobileActivationDaemon_handleSessionResponse_withError___block_invoke;
  block[3] = &__block_descriptor_96_e8_32s40s48s56s64r72r80r88r_e5_v8__0l;
  v50 = v57;
  v51 = &v59;
  v52 = &v65;
  v9 = v9;
  v46 = v9;
  v19 = v19;
  v47 = v19;
  v48 = self;
  v53 = v55;
  v11 = v11;
  v49 = v11;
  dispatch_sync(v25, block);

  if (v66[5])
  {
LABEL_26:
    v27 = 0;
    goto LABEL_17;
  }

  v26 = [(MobileActivationDaemon *)self sessionQueue];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3254779904;
  v40[2] = __58__MobileActivationDaemon_handleSessionResponse_withError___block_invoke_150;
  v40[3] = &__block_descriptor_72_e8_32s40s48s56r64r_e5_v8__0l;
  v40[4] = self;
  v43 = &v65;
  v44 = v55;
  v17 = v17;
  v41 = v17;
  v18 = v18;
  v42 = v18;
  dispatch_sync(v26, v40);

  v27 = v66[5] == 0;
LABEL_17:
  if (a4 && !v27)
  {
    *a4 = v66[5];
  }

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  return v27;
}

void __58__MobileActivationDaemon_handleSessionResponse_withError___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 72) + 8) + 40) base64EncodedStringWithOptions:0];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 80) + 8);
    obj = *(v7 + 40);
    v8 = [v5 processSUInfo:v6 withError:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = [*(a1 + 48) dark];
    v10 = v9;
    if (v8)
    {
      data_ark_set(v9, 0, @"PCRTToken", *(*(*(a1 + 64) + 8) + 40), 1);

      v11 = [*(a1 + 48) dark];
      data_ark_set(v11, 0, @"CollectionLastPerformed", *(a1 + 56), 1);
      v12 = v11;
    }

    else
    {
      data_ark_remove(v9, 0, @"PCRTToken");

      v16 = [*(a1 + 48) dark];
      writeSplunkLog(v16, 8, *(*(*(a1 + 88) + 8) + 24), "[MobileActivationDaemon handleSessionResponse:withError:]_block_invoke", 372, 0, 0, v17, v21);

      v18 = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]_block_invoke", 373, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 80) + 8) + 40), @"Failed to process SUInfo.");
      v19 = *(*(a1 + 80) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
      v12 = v20;
    }
  }

  else
  {
    v13 = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]_block_invoke", 364, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode PCRT receipt (%@).", *(*(*(a1 + 72) + 8) + 40));
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void __58__MobileActivationDaemon_handleSessionResponse_withError___block_invoke_150(uint64_t a1)
{
  if (![*(a1 + 32) session])
  {
    MobileActivationError = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]_block_invoke", 397, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid session.");
    goto LABEL_9;
  }

  *(*(*(a1 + 64) + 8) + 24) = xtiKg([*(a1 + 32) session], objc_msgSend(*(a1 + 40), "bytes"), objc_msgSend(*(a1 + 40), "length"), objc_msgSend(*(a1 + 48), "bytes"), objc_msgSend(*(a1 + 48), "length"));
  v2 = *(*(*(a1 + 64) + 8) + 24);
  if (v2 != -42901 && v2 != 0)
  {
    v4 = [*(a1 + 32) dark];
    writeSplunkLog(v4, 7, *(*(*(a1 + 64) + 8) + 24), "[MobileActivationDaemon handleSessionResponse:withError:]_block_invoke", 408, 0, 0, v5, v10);

    MobileActivationError = createMobileActivationError("[MobileActivationDaemon handleSessionResponse:withError:]_block_invoke", 409, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to process handshake response message: %d", *(*(*(a1 + 64) + 8) + 24));
LABEL_9:
    v7 = MobileActivationError;
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (BOOL)validateActivationDataSignature:(id)a3 activationSignature:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  if (v8 && v9)
  {
    v11 = [(MobileActivationDaemon *)self sessionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __88__MobileActivationDaemon_validateActivationDataSignature_activationSignature_withError___block_invoke;
    block[3] = &__block_descriptor_72_e8_32s40s48s56r64r_e5_v8__0l;
    block[4] = self;
    v19 = &v23;
    v20 = v21;
    v17 = v8;
    v18 = v10;
    dispatch_sync(v11, block);

    v12 = v24[5] == 0;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = createMobileActivationError("[MobileActivationDaemon validateActivationDataSignature:activationSignature:withError:]", 441, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v14 = v24[5];
    v24[5] = v13;

    v12 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  if (!v12)
  {
    *a5 = v24[5];
  }

LABEL_8:
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

void __88__MobileActivationDaemon_validateActivationDataSignature_activationSignature_withError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) session])
  {
    *(*(*(a1 + 64) + 8) + 24) = mbdz5ztWyQD([*(a1 + 32) session], objc_msgSend(*(a1 + 40), "bytes"), objc_msgSend(*(a1 + 40), "length"), objc_msgSend(*(a1 + 48), "bytes"), objc_msgSend(*(a1 + 48), "length"));
    if (!*(*(*(a1 + 64) + 8) + 24))
    {
      return;
    }

    v2 = [*(a1 + 32) dark];
    writeSplunkLog(v2, 6, *(*(*(a1 + 64) + 8) + 24), "[MobileActivationDaemon validateActivationDataSignature:activationSignature:withError:]_block_invoke", 459, 0, 0, v3, v10);

    v4 = [*(a1 + 48) base64EncodedStringWithOptions:0];
    v5 = createMobileActivationError("[MobileActivationDaemon validateActivationDataSignature:activationSignature:withError:]_block_invoke", 460, @"com.apple.MobileActivation.ErrorDomain", -15, 0, @"Failed to verify message signature (%@): %d", v4, *(*(*(a1 + 64) + 8) + 24));
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = createMobileActivationError("[MobileActivationDaemon validateActivationDataSignature:activationSignature:withError:]_block_invoke", 448, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid session.");
    v9 = *(*(a1 + 56) + 8);
    v4 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)getActivationStateWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self dark];
  v6 = dataMigrationCompleted(v5);

  if ((v6 & 1) == 0)
  {
    v13 = @"ActivationState";
    v14 = @"Unavailable";
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    v4[2](v4, v10, 0);
    goto LABEL_8;
  }

  v7 = [(MobileActivationDaemon *)self dark];
  v8 = data_ark_copy(v7, 0, @"ActivationState");
  v9 = isNSString(v8);

  if (!v9)
  {
    v9 = @"Unactivated";
  }

  v11 = @"ActivationState";
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)performMigrationWithCompletion:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(MobileActivationDaemon *)self callingProcessName];
  v7 = copySignpostLoggingHandle();
  v8 = os_signpost_enabled(v7);

  if (v8)
  {
    v9 = 0xEEEEB0B5B2B2EEEELL;
    if (v5 != 0xEEEEB0B5B2B2EEEELL)
    {
      v10 = copySignpostLoggingHandle();
      v9 = os_signpost_id_make_with_pointer(v10, v5);
    }

    v11 = copySignpostLoggingHandle();
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PerformMigrationXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3254779904;
    v24[2] = __68__MobileActivationDaemon_performMigrationWithCompletion_completion___block_invoke;
    v24[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v25 = v5;
    v26 = v9;
    v5 = objc_retainBlock(v24);
  }

  if (!data_migration_supported())
  {
    goto LABEL_13;
  }

  v13 = is_erase_installed_build();
  v14 = @"upgrade-install";
  if (v13)
  {
    v14 = @"erase-install";
  }

  maLog("[MobileActivationDaemon performMigrationWithCompletion:completion:]", 1, @"Data migration requested by %@ (%@)", v6, v14);
  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v28 = @"com.apple.mobileactivationd.spi";
    v29 = &__kCFBooleanTrue;
    v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v18 = createAndLogError("[MobileActivationDaemon performMigrationWithCompletion:completion:]", 536, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v17);
LABEL_15:
    v19 = v18;

    v17 = v19;
    goto LABEL_16;
  }

  v15 = [(MobileActivationDaemon *)self dark];
  v16 = preSydroDataMigrationCompleted(v15);

  if ((v16 & 1) == 0)
  {
    v20 = [(MobileActivationDaemon *)self dark];
    v23 = 0;
    v21 = performMigration(v20, &v23);
    v17 = v23;

    if (v21)
    {
      goto LABEL_16;
    }

    v18 = createAndLogError("[MobileActivationDaemon performMigrationWithCompletion:completion:]", 548, @"com.apple.MobileActivation.ErrorDomain", -1, v17, @"Failed to perform migration.", v22);
    goto LABEL_15;
  }

LABEL_13:
  v17 = 0;
LABEL_16:
  (*(v5 + 2))(v5, 0, v17);
}

void __68__MobileActivationDaemon_performMigrationWithCompletion_completion___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "PerformMigrationXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

- (void)copyAutomaticTimeEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self creationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __65__MobileActivationDaemon_copyAutomaticTimeEnabledWithCompletion___block_invoke;
  block[3] = &__block_descriptor_40_e8_32bs_e5_v8__0l;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __65__MobileActivationDaemon_copyAutomaticTimeEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v5 = @"AutomaticTimeEnabled";
  v2 = [NSNumber numberWithBool:isAutomaticTimeEnabled()];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }
}

- (void)copyRTCResetCountWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = copyRTCResetSerialQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = __63__MobileActivationDaemon_copyRTCResetCountWithCompletionBlock___block_invoke;
  v7[3] = &__block_descriptor_48_e8_32s40bs_e5_v8__0l;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__MobileActivationDaemon_copyRTCResetCountWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dark];
  v3 = data_ark_copy(v2, 0, @"TotalRTCResetCount");

  v4 = isNSNumber(v3);
  if (v4)
  {
    v7 = @"TotalRTCResetCount";
    v8 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v5 = 0;
  }

  else
  {
    v5 = createAndLogError("[MobileActivationDaemon copyRTCResetCountWithCompletionBlock:]_block_invoke", 582, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve RTC reset count.");
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

- (void)copyMonotonicClockWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self creationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __64__MobileActivationDaemon_copyMonotonicClockWithCompletionBlock___block_invoke;
  block[3] = &__block_descriptor_40_e8_32bs_e5_v8__0l;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __64__MobileActivationDaemon_copyMonotonicClockWithCompletionBlock___block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = copyMonotonicClockTimeInterval(&v7);
  v3 = v7;
  if (v2 <= 0.0)
  {
    v5 = 0;
    v4 = v3;
    v3 = createAndLogError("[MobileActivationDaemon copyMonotonicClockWithCompletionBlock:]_block_invoke", 605, @"com.apple.MobileActivation.ErrorDomain", -1, v3, @"Failed to retrieve monotonic clock interval.");
  }

  else
  {
    v8 = @"MonotonicClockNow";
    v4 = [NSNumber numberWithDouble:v2];
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v3);
  }
}

- (void)deactivateDeviceWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon deactivateDeviceWithCompletionBlock:]", 1, @"Deactivation requested by %@", v5);

  v6 = [(MobileActivationDaemon *)self dark];
  v7 = dataMigrationCompleted(v6);

  if ((v7 & 1) == 0)
  {
    v9 = createAndLogError("[MobileActivationDaemon deactivateDeviceWithCompletionBlock:]", 626, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [(MobileActivationDaemon *)self dark];
  handle_deactivate(v8, 1);

  v9 = 0;
  if (v4)
  {
LABEL_5:
    v4[2](v4, 0, v9);
  }

LABEL_6:
}

- (void)createTunnel1ActivationInfo:(id)a3 options:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MobileActivationDaemon *)self callingProcessName];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__9;
  v38[4] = __Block_byref_object_dispose__9;
  v39 = 0;
  v12 = copySignpostLoggingHandle();
  v13 = os_signpost_enabled(v12);

  if (v13)
  {
    v14 = 0xEEEEB0B5B2B2EEEELL;
    if (v8 != 0xEEEEB0B5B2B2EEEELL)
    {
      v15 = copySignpostLoggingHandle();
      v14 = os_signpost_id_make_with_pointer(v15, v8);
    }

    v16 = copySignpostLoggingHandle();
    v17 = v16;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CreateActivationInfoXPCV2", " enableTelemetry=YES ", buf, 2u);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3254779904;
    v34[2] = __82__MobileActivationDaemon_createTunnel1ActivationInfo_options_withCompletionBlock___block_invoke;
    v34[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v35 = v10;
    v36 = v14;
    v10 = objc_retainBlock(v34);
  }

  maLog("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]", 1, @"Tunnel1 Activation info creation requested by %@", v11);
  v18 = +[NSUUID UUID];
  v19 = [(NSUUID *)v18 UUIDString];

  [(MobileActivationDaemon *)self setActivationNonce:v19];
  [(MobileActivationDaemon *)self setActivationSessionClientName:v11];
  v20 = [(MobileActivationDaemon *)self dark];
  v21 = copy_activation_record(v20);

  v22 = [(MobileActivationDaemon *)self creationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __82__MobileActivationDaemon_createTunnel1ActivationInfo_options_withCompletionBlock___block_invoke_199;
  block[3] = &__block_descriptor_81_e8_32s40s48s56s64bs72r_e5_v8__0l;
  block[4] = self;
  v28 = v9;
  v33 = v21 != 0;
  v29 = v19;
  v30 = v8;
  v31 = v10;
  v32 = v38;
  v23 = v10;
  v24 = v8;
  v25 = v19;
  v26 = v9;
  dispatch_async(v22, block);

  _Block_object_dispose(v38, 8);
}

void __82__MobileActivationDaemon_createTunnel1ActivationInfo_options_withCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CreateActivationInfoXPCV2", " enableTelemetry=YES ", v11, 2u);
  }
}

void __82__MobileActivationDaemon_createTunnel1ActivationInfo_options_withCompletionBlock___block_invoke_199(uint64_t a1)
{
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0;
  v2 = [*(a1 + 32) dark];
  v3 = dataMigrationCompleted(v2);

  if ((v3 & 1) == 0)
  {
    v30 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 677, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
LABEL_22:
    v5 = 0;
    v6 = 0;
    v25 = 0;
    v17 = 0;
    v8 = a1 + 72;
    goto LABEL_29;
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  if (!v4)
  {
    v30 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 683, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    goto LABEL_22;
  }

  if (*(a1 + 40))
  {
    [v4 addEntriesFromDictionary:?];
  }

  v6 = [NSNumber numberWithBool:*(a1 + 80)];
  [v5 setObject:v6 forKeyedSubscript:@"UseCommittedUIK"];
  v7 = *(a1 + 48);
  if (!v7)
  {
    v8 = a1 + 72;
    v30 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 701, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 72) + 8) + 40), @"Failed to create activation nonce.");
LABEL_28:
    v25 = 0;
    v17 = 0;
    goto LABEL_29;
  }

  [v5 setObject:v7 forKeyedSubscript:@"ActivationRandomness"];
  v8 = a1 + 72;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = *(*(a1 + 72) + 8);
  obj = *(v11 + 40);
  v12 = [v9 handleSessionResponse:v10 withError:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (!v12)
  {
    v31 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 708, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v8 + 8) + 40), @"Failed to establish session.");
LABEL_27:
    v30 = v31;
    goto LABEL_28;
  }

  if (![(NSNumber *)v6 BOOLValue])
  {
    v13 = *(*v8 + 8);
    v73 = *(v13 + 40);
    v14 = libaks_system_key_operate(2, 1, &v73);
    objc_storeStrong((v13 + 40), v73);
    if (!v14)
    {
      v31 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 714, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v8 + 8) + 40), @"Failed to bump UIK.");
      goto LABEL_27;
    }
  }

  v15 = [*(a1 + 32) dark];
  v16 = *(*v8 + 8);
  v72 = *(v16 + 40);
  v17 = create_activation_info();
  objc_storeStrong((v16 + 40), v72);

  if (!v17)
  {
    v32 = [*(a1 + 32) dark];
    writeSplunkLog(v32, 2, -1, "[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 721, 0, @"%@", v33, *(*(*v8 + 8) + 40));

    v31 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 722, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v8 + 8) + 40), @"Failed to create activation info.");
    goto LABEL_27;
  }

  v18 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v19 = isNSData(v18);
  if (!v19)
  {
LABEL_41:

    goto LABEL_42;
  }

  v60 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v20 = isNSData(v60);
  if (!v20)
  {
LABEL_40:

    goto LABEL_41;
  }

  v58 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v57 = isNSData(v58);
  if (!v57)
  {
LABEL_39:

    goto LABEL_40;
  }

  v56 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v55 = isNSData(v56);
  if (!v55)
  {

    goto LABEL_39;
  }

  v21 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v22 = isNSData(v21);
  v54 = v22 == 0;

  if (v54)
  {
LABEL_42:
    v42 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 731, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid activation record.");
LABEL_43:
    v30 = v42;
    v25 = 0;
    goto LABEL_29;
  }

  if (!*(a1 + 40))
  {
    v25 = 0;
    goto LABEL_47;
  }

  v23 = [(NSDictionary *)v17 objectForKeyedSubscript:@"ActivationInfoXML"];
  v24 = *(*v8 + 8);
  v71 = 0;
  v25 = [NSPropertyListSerialization propertyListWithData:v23 options:0 format:0 error:&v71];
  objc_storeStrong((v24 + 40), v71);

  if (!v25)
  {
    v42 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 740, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to convert data to dictionary.");
    goto LABEL_43;
  }

  v26 = [*(a1 + 40) objectForKeyedSubscript:@"ActivationLockInfo"];
  v27 = isNSString(v26);
  if (v27)
  {
    v28 = [v25 objectForKeyedSubscript:@"ActivationLockInfo"];
    v29 = isNSString(v28);
    v61 = v29 == 0;

    if (v61)
    {
      v30 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 745, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing activation lock data.");
LABEL_29:
      v34 = *(*v8 + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v30;

      v36 = 0;
      v37 = 0;
LABEL_30:
      v38 = 0;
      goto LABEL_31;
    }
  }

  else
  {
  }

LABEL_47:
  v62 = [(NSDictionary *)v17 objectForKeyedSubscript:@"ActivationInfoXML"];
  v43 = [NSMutableDictionary alloc];
  v94[0] = v62;
  v93[0] = @"ActivationInfoXML";
  v93[1] = @"FairPlaySignature";
  v59 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v94[1] = v59;
  v93[2] = @"FairPlayCertChain";
  v44 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v94[2] = v44;
  v93[3] = @"RKCertification";
  v45 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v94[3] = v45;
  v93[4] = @"RKSignature";
  v46 = [(NSDictionary *)v17 objectForKeyedSubscript:?];
  v94[4] = v46;
  v47 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:5];
  v38 = [v43 initWithDictionary:v47];

  v48 = [*(a1 + 32) sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  v49 = *(a1 + 72);
  block[2] = __82__MobileActivationDaemon_createTunnel1ActivationInfo_options_withCompletionBlock___block_invoke_2;
  block[3] = &__block_descriptor_96_e8_32s40s48r56r64r72r80r88r_e5_v8__0l;
  block[4] = *(a1 + 32);
  v65 = v49;
  v66 = v75;
  v37 = v62;
  v64 = v37;
  v67 = &v89;
  v68 = &v85;
  v69 = &v81;
  v70 = &v77;
  dispatch_sync(v48, block);

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v36 = v38;
    goto LABEL_30;
  }

  v50 = [NSData alloc];
  v51 = [v50 initWithBytes:v82[3] length:*(v78 + 6)];
  [v38 setObject:v51 forKeyedSubscript:@"serverKP"];

  v52 = [NSData alloc];
  v53 = [v52 initWithBytes:v90[3] length:*(v86 + 6)];
  [v38 setObject:v53 forKeyedSubscript:@"signActRequest"];

  v36 = dictionary_to_xml(v38);
  maLog("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke", 0, @"Activation info: \n%@", v36);
LABEL_31:

  v39 = v90[3];
  if (v39)
  {
    ewFHQ(v39);
  }

  v40 = v82[3];
  if (v40)
  {
    ewFHQ(v40);
  }

  v41 = *(a1 + 64);
  if (v41)
  {
    (*(v41 + 16))(v41, v38, *(*(*(a1 + 72) + 8) + 40));
  }

  _Block_object_dispose(v75, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);
}

void __82__MobileActivationDaemon_createTunnel1ActivationInfo_options_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) session])
  {
    *(*(*(a1 + 56) + 8) + 24) = qSCskg([*(a1 + 32) session], objc_msgSend(*(a1 + 40), "bytes"), objc_msgSend(*(a1 + 40), "length"), *(*(a1 + 64) + 8) + 24, *(*(a1 + 72) + 8) + 24, *(*(a1 + 80) + 8) + 24, *(*(a1 + 88) + 8) + 24);
    if (!*(*(*(a1 + 56) + 8) + 24))
    {
      return;
    }

    v2 = [*(a1 + 32) dark];
    writeSplunkLog(v2, 9, *(*(*(a1 + 56) + 8) + 24), "[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke_2", 778, 0, 0, v3, v9);

    v4 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke_2", 779, @"com.apple.MobileActivation.ErrorDomain", -15, 0, @"PSCSign failed: %d", *(*(*(a1 + 56) + 8) + 24));
    v5 = a1 + 48;
  }

  else
  {
    v6 = *(a1 + 48);
    v5 = a1 + 48;
    v4 = createAndLogError("[MobileActivationDaemon createTunnel1ActivationInfo:options:withCompletionBlock:]_block_invoke_2", 765, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(v6 + 8) + 40), @"Invalid session.");
  }

  v7 = *(*v5 + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

- (void)createTunnel1SessionInfoWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self callingProcessName];
  v6 = copySignpostLoggingHandle();
  v7 = os_signpost_enabled(v6);

  if (v7)
  {
    v8 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v9 = copySignpostLoggingHandle();
      v8 = os_signpost_id_make_with_pointer(v9, v4);
    }

    v10 = copySignpostLoggingHandle();
    v11 = v10;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CreateSessionInfoXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3254779904;
    v16[2] = __70__MobileActivationDaemon_createTunnel1SessionInfoWithCompletionBlock___block_invoke;
    v16[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v17 = v4;
    v18 = v8;
    v4 = objc_retainBlock(v16);
  }

  maLog("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]", 1, @"Session creation requested by %@", v5);
  v12 = [(MobileActivationDaemon *)self creationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __70__MobileActivationDaemon_createTunnel1SessionInfoWithCompletionBlock___block_invoke_237;
  block[3] = &__block_descriptor_48_e8_32s40bs_e5_v8__0l;
  block[4] = self;
  v15 = v4;
  v13 = v4;
  dispatch_async(v12, block);
}

void __70__MobileActivationDaemon_createTunnel1SessionInfoWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CreateSessionInfoXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

void __70__MobileActivationDaemon_createTunnel1SessionInfoWithCompletionBlock___block_invoke_237(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__9;
  v41 = __Block_byref_object_dispose__9;
  v42 = 0;
  v2 = [*(a1 + 32) dark];
  v3 = dataMigrationCompleted(v2);

  if ((v3 & 1) == 0)
  {
    v23 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 847, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v29 = 0;
LABEL_17:
    v17 = 0;
    v19 = 0;
    v28 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    v16 = 0;
    v8 = 0;
LABEL_18:
    v22 = 0;
    v25 = v38[5];
    v38[5] = v23;
LABEL_19:

    goto LABEL_20;
  }

  v4 = +[GestaltHlpr getSharedInstance];
  v29 = [v4 copyAnswer:@"UniqueDeviceID"];

  v5 = isNSString(v29);
  LOBYTE(v4) = v5 == 0;

  if (v4)
  {
    v24 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 853, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve UDID.");
LABEL_16:
    v23 = v24;
    goto LABEL_17;
  }

  v6 = [MACollectionInterface alloc];
  v7 = [*(a1 + 32) dark];
  v8 = [(MACollectionInterface *)v6 initWithContext:v7];

  if (!v8)
  {
    v24 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 861, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to initialize collection interface.");
    goto LABEL_16;
  }

  v9 = v38 + 5;
  obj = v38[5];
  v28 = [(MACollectionInterface *)v8 copyIngestData:&obj];
  objc_storeStrong(v9, obj);
  if (!v28)
  {
    v23 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 867, @"com.apple.MobileActivation.ErrorDomain", -1, v38[5], @"Failed to copy ingest data.");
    v17 = 0;
    v19 = 0;
    v28 = 0;
LABEL_26:
    v13 = 0;
    v11 = 0;
LABEL_27:
    v14 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v10 = v38 + 5;
  v35 = v38[5];
  v11 = [(MACollectionInterface *)v8 signatureForData:v28 error:&v35];
  objc_storeStrong(v10, v35);
  if (!v11)
  {
    v23 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 875, @"com.apple.MobileActivation.ErrorDomain", -1, v38[5], @"Failed to compute data signature.");
    v17 = 0;
    v19 = 0;
    goto LABEL_26;
  }

  v12 = v38 + 5;
  v34 = v38[5];
  v13 = [(MACollectionInterface *)v8 signingKeyPublicKeyWithError:&v34];
  objc_storeStrong(v12, v34);
  if (!v13)
  {
    v23 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 883, @"com.apple.MobileActivation.ErrorDomain", -1, v38[5], @"Failed to retrieve signing key public key.");
    v17 = 0;
    v19 = 0;
    v13 = 0;
    goto LABEL_27;
  }

  v14 = [v11 base64EncodedStringWithOptions:0];
  v15 = [v13 base64EncodedStringWithOptions:0];
  v16 = v15;
  if (!v14 || !v15)
  {
    v23 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 892, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode data as string.");
    v17 = 0;
LABEL_31:
    v19 = 0;
    goto LABEL_18;
  }

  v43[0] = @"X-Apple-Signature";
  v43[1] = @"X-Apple-Sig-Key";
  v44[0] = v14;
  v44[1] = v15;
  v43[2] = @"IngestBody";
  v44[2] = v28;
  v17 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];
  v18 = v38;
  v33 = 0;
  v19 = [NSPropertyListSerialization dataWithPropertyList:v17 format:100 options:0 error:&v33];
  objc_storeStrong(v18 + 5, v33);
  if (!v19)
  {
    v23 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 905, @"com.apple.MobileActivation.ErrorDomain", -1, v38[5], @"Failed to convert dictionary to data.");
    goto LABEL_31;
  }

  v20 = objc_alloc_init(NSMutableDictionary);
  if (!v20)
  {
    v23 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 911, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");
    goto LABEL_18;
  }

  queue = [*(a1 + 32) sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __70__MobileActivationDaemon_createTunnel1SessionInfoWithCompletionBlock___block_invoke_2;
  block[3] = &__block_descriptor_56_e8_32s40s48r_e5_v8__0l;
  block[4] = *(a1 + 32);
  v32 = &v37;
  v21 = v20;
  v31 = v21;
  dispatch_sync(queue, block);

  if (v38[5])
  {
    v22 = 0;
    goto LABEL_21;
  }

  [v21 setObject:v29 forKeyedSubscript:@"UniqueDeviceID"];
  [v21 setObject:v19 forKeyedSubscript:@"CollectionBlob"];
  v22 = v21;
  if (is_internal_build())
  {
    v25 = dictionary_to_xml(v22);
    maLog("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke", 0, @"Session info: \n%@", v25);
    goto LABEL_19;
  }

LABEL_20:
  v21 = v22;
LABEL_21:
  v26 = *(a1 + 40);
  if (v26)
  {
    (*(v26 + 16))(v26, v22, v38[5]);
  }

  _Block_object_dispose(&v37, 8);
}

void __70__MobileActivationDaemon_createTunnel1SessionInfoWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) currentSessionDuration] >= 0x97)
  {
    maLog("-[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke_2", 0, @"Forcibly refreshing DRM session as more than half of the existing period (%llu secs of %u secs) has expired.", [*(a1 + 32) currentSessionDuration], 300);
    [*(a1 + 32) generateSession:1];
  }

  v2 = [*(a1 + 32) sessionHelloMessage];

  if (v2)
  {
    v3 = [*(a1 + 32) sessionHelloMessage];
    v4 = [v3 copy];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:@"HandshakeRequestMessage"];
  }

  else
  {
    v5 = createAndLogError("[MobileActivationDaemon createTunnel1SessionInfoWithCompletionBlock:]_block_invoke_2", 927, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid session hello message.");
    v6 = *(*(a1 + 48) + 8);
    v3 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (void)createActivationInfoWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self callingProcessName];
  v6 = copySignpostLoggingHandle();
  v7 = os_signpost_enabled(v6);

  if (v7)
  {
    v8 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v9 = copySignpostLoggingHandle();
      v8 = os_signpost_id_make_with_pointer(v9, v4);
    }

    v10 = copySignpostLoggingHandle();
    v11 = v10;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CreateActivationInfoLegacyXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3254779904;
    v23[2] = __66__MobileActivationDaemon_createActivationInfoWithCompletionBlock___block_invoke;
    v23[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v24 = v4;
    v25 = v8;
    v4 = objc_retainBlock(v23);
  }

  v12 = +[NSUUID UUID];
  v13 = [(NSUUID *)v12 UUIDString];

  [(MobileActivationDaemon *)self setActivationNonce:v13];
  [(MobileActivationDaemon *)self setActivationSessionClientName:v5];
  v14 = [(MobileActivationDaemon *)self creationQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3254779904;
  v18[2] = __66__MobileActivationDaemon_createActivationInfoWithCompletionBlock___block_invoke_274;
  v18[3] = &__block_descriptor_64_e8_32s40s48s56bs_e5_v8__0l;
  v19 = v5;
  v20 = self;
  v21 = v13;
  v22 = v4;
  v15 = v4;
  v16 = v13;
  v17 = v5;
  dispatch_async(v14, v18);
}

void __66__MobileActivationDaemon_createActivationInfoWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CreateActivationInfoLegacyXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

void __66__MobileActivationDaemon_createActivationInfoWithCompletionBlock___block_invoke_274(uint64_t a1)
{
  maLog("[MobileActivationDaemon createActivationInfoWithCompletionBlock:]_block_invoke", 1, @"Activation info creation requested by %@", *(a1 + 32));
  v2 = [*(a1 + 40) dark];
  v3 = dataMigrationCompleted(v2);

  if ((v3 & 1) == 0)
  {
    v10 = createAndLogError("[MobileActivationDaemon createActivationInfoWithCompletionBlock:]_block_invoke", 985, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
LABEL_7:
    v8 = v10;
    v7 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    v10 = createAndLogError("[MobileActivationDaemon createActivationInfoWithCompletionBlock:]_block_invoke", 990, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create activation nonce.");
    goto LABEL_7;
  }

  v15 = @"ActivationRandomness";
  v16 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v6 = [*(a1 + 40) dark];
  v7 = create_activation_info_legacy();
  v8 = 0;

  if (v7)
  {
    v9 = dictionary_to_xml(v7);
    maLog("[MobileActivationDaemon createActivationInfoWithCompletionBlock:]_block_invoke", 0, @"Activation info: \n%@", v9);
  }

  else
  {
    v12 = [*(a1 + 40) dark];
    writeSplunkLog(v12, 1, -1, "[MobileActivationDaemon createActivationInfoWithCompletionBlock:]_block_invoke", 998, 0, @"%@", v13, v8);

    v14 = createAndLogError("[MobileActivationDaemon createActivationInfoWithCompletionBlock:]_block_invoke", 999, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to create activation info.");
    v7 = 0;
    v8 = v14;
  }

LABEL_8:
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v8);
  }
}

- (void)handleActivationInfo:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MobileActivationDaemon *)self callingProcessName];
  v9 = copySignpostLoggingHandle();
  v10 = os_signpost_enabled(v9);

  if (v10)
  {
    v11 = 0xEEEEB0B5B2B2EEEELL;
    if (v7 != 0xEEEEB0B5B2B2EEEELL)
    {
      v12 = copySignpostLoggingHandle();
      v11 = os_signpost_id_make_with_pointer(v12, v7);
    }

    v13 = copySignpostLoggingHandle();
    v14 = v13;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HandleActivationInfoLegacyXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3254779904;
    v35[2] = __67__MobileActivationDaemon_handleActivationInfo_withCompletionBlock___block_invoke;
    v35[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v36 = v7;
    v37 = v11;
    v7 = objc_retainBlock(v35);
  }

  maLog("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1, @"Activation (legacy) requested by %@", v8);
  if (!v6)
  {
    v32 = createAndLogError("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1030, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
LABEL_20:
    v28 = v32;
    v22 = 0;
    v21 = 0;
    v19 = 0;
    goto LABEL_21;
  }

  v15 = [(MobileActivationDaemon *)self dark];
  v16 = dataMigrationCompleted(v15);

  if ((v16 & 1) == 0)
  {
    v32 = createAndLogError("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1035, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    goto LABEL_20;
  }

  v17 = [(MobileActivationDaemon *)self dark];
  v18 = data_ark_copy(v17, 0, @"ActivationState");
  v19 = isNSString(v18);

  if (!v19)
  {
    v19 = @"Unactivated";
  }

  if (([(__CFString *)v19 isEqualToString:@"Unactivated"]& 1) != 0)
  {
    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = v20;
    if (v20)
    {
      [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseFactoryCertificates"];
      v22 = [(MobileActivationDaemon *)self activationNonce];
      if (v22)
      {
        [(MobileActivationDaemon *)self setActivationNonce:0];
        v23 = [(MobileActivationDaemon *)self activationSessionClientName];
        v24 = [(NSString *)v23 isEqualToString:v8];

        if (v24)
        {
          [v21 setObject:v22 forKeyedSubscript:@"ActivationRandomness"];
          v25 = dictionary_to_xml(v6);
          maLog("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 0, @"Activation message:\n%@", v25);

          v26 = [(MobileActivationDaemon *)self dark];
          v34 = 0;
          v27 = handle_activate(v26, v6, v21, &v34);
          v28 = v34;

          if ((v27 & 1) == 0)
          {
            v29 = [(MobileActivationDaemon *)self dark];
            writeSplunkLog(v29, 3, -1, "[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1082, 0, @"%@", v30, v28);

            v31 = createAndLogError("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1083, @"com.apple.MobileActivation.ErrorDomain", -2, v28, @"Failed to activate device.");
            v28 = v31;
          }
        }

        else
        {
          v33 = [(MobileActivationDaemon *)self activationSessionClientName];
          v28 = createAndLogError("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1073, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid activation session (actual, expected): (%@, %@)", v8, v33);
        }
      }

      else
      {
        v28 = createAndLogError("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1066, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid activation nonce.");
      }
    }

    else
    {
      v28 = createAndLogError("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1051, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
      v22 = 0;
    }
  }

  else
  {
    v28 = createAndLogError("[MobileActivationDaemon handleActivationInfo:withCompletionBlock:]", 1045, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Device is already activated (%@).", v19);
    v22 = 0;
    v21 = 0;
  }

LABEL_21:
  if (v7)
  {
    (*(v7 + 2))(v7, 0, v28);
  }
}

void __67__MobileActivationDaemon_handleActivationInfo_withCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "HandleActivationInfoLegacyXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

- (void)copyUCRTWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CopyUCRTXPC", "", buf, 2u);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3254779904;
    v24[2] = __54__MobileActivationDaemon_copyUCRTWithCompletionBlock___block_invoke;
    v24[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v25 = v4;
    v26 = v7;
    v4 = objc_retainBlock(v24);
  }

  if ([(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v11 = [(MobileActivationDaemon *)self dark];
    v12 = dataMigrationCompleted(v11);

    if (v12)
    {
      v13 = [(MobileActivationDaemon *)self dark];
      v23 = 0;
      v14 = copyUCRT(v13, &v23);
      v15 = v23;

      if (v14)
      {
        v16 = SecCertificateCopyData(v14);
        v17 = v16;
        if (v16)
        {
          v28 = @"UCRTData";
          v29 = v16;
          v18 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        }

        else
        {
          v22 = createMobileActivationError("[MobileActivationDaemon copyUCRTWithCompletionBlock:]", 1125, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy UCRT certificate data.");

          v18 = 0;
          v15 = v22;
        }

        CFRelease(v14);
      }

      else
      {
        v21 = createMobileActivationError("[MobileActivationDaemon copyUCRTWithCompletionBlock:]", 1119, @"com.apple.MobileActivation.ErrorDomain", -4, v15, @"Failed to copy UCRT.");

        v18 = 0;
        v17 = 0;
        v15 = v21;
      }

      goto LABEL_16;
    }

    v15 = createMobileActivationError("[MobileActivationDaemon copyUCRTWithCompletionBlock:]", 1113, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
  }

  else
  {
    v19 = [(MobileActivationDaemon *)self callingProcessName];
    v30 = @"com.apple.mobileactivationd.spi";
    v31 = &__kCFBooleanTrue;
    v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v15 = createMobileActivationError("[MobileActivationDaemon copyUCRTWithCompletionBlock:]", 1108, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"%@ is missing required entitlement: %@", v19, v20);
  }

  v18 = 0;
  v17 = 0;
LABEL_16:
  if (v4)
  {
    (*(v4 + 2))(v4, v18, v15);
  }
}

void __54__MobileActivationDaemon_copyUCRTWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CopyUCRTXPC", "", v11, 2u);
  }
}

- (void)copyPCRTTokenWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CopyPCRTXPC", "", buf, 2u);
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3254779904;
    v26[2] = __59__MobileActivationDaemon_copyPCRTTokenWithCompletionBlock___block_invoke;
    v26[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v27 = v4;
    v28 = v7;
    v4 = objc_retainBlock(v26);
  }

  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v23 = [(MobileActivationDaemon *)self callingProcessName];
    v32 = @"com.apple.mobileactivationd.spi";
    v33 = &__kCFBooleanTrue;
    v24 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = createMobileActivationError("[MobileActivationDaemon copyPCRTTokenWithCompletionBlock:]", 1154, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"%@ is missing required entitlement: %@", v23, v24);

LABEL_19:
    v20 = 0;
    v14 = 0;
    goto LABEL_20;
  }

  v11 = [(MobileActivationDaemon *)self dark];
  v12 = dataMigrationCompleted(v11);

  if ((v12 & 1) == 0)
  {
    v22 = createMobileActivationError("[MobileActivationDaemon copyPCRTTokenWithCompletionBlock:]", 1159, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    goto LABEL_19;
  }

  v13 = [(MobileActivationDaemon *)self dark];
  v14 = data_ark_copy(v13, 0, @"ActivationState");

  v15 = isNSString(v14);
  if (!v15)
  {
    v16 = @"Unactivated";

    v14 = v16;
  }

  if (([(__CFString *)v14 isEqualToString:@"Activated"]& 1) != 0)
  {
    v17 = [(MobileActivationDaemon *)self dark];
    v18 = collectionAlreadyPerformed(v17);

    if (v18)
    {
      v19 = [(MobileActivationDaemon *)self dark];
      v20 = data_ark_copy(v19, 0, @"PCRTToken");

      v21 = isNSString(v20);
      if (v21)
      {
        v30 = @"PCRTToken";
        v31 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v22 = 0;
        if (!v4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v22 = createMobileActivationError("[MobileActivationDaemon copyPCRTTokenWithCompletionBlock:]", 1180, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy PCRT token.");
        if (!v4)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_21;
    }

    MobileActivationError = createMobileActivationError("[MobileActivationDaemon copyPCRTTokenWithCompletionBlock:]", 1174, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Collection has not been performed for this build.");
  }

  else
  {
    MobileActivationError = createMobileActivationError("[MobileActivationDaemon copyPCRTTokenWithCompletionBlock:]", 1169, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated (%@).", v14);
  }

  v22 = MobileActivationError;
  v20 = 0;
LABEL_20:
  v21 = 0;
  if (v4)
  {
LABEL_21:
    (*(v4 + 2))(v4, v21, v22);
  }

LABEL_22:
}

void __59__MobileActivationDaemon_copyPCRTTokenWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CopyPCRTXPC", "", v11, 2u);
  }
}

- (void)isDeviceBrickedWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self dark];
  v6 = dataMigrationCompleted(v5);

  if ((v6 & 1) == 0)
  {
    v11 = createAndLogError("[MobileActivationDaemon isDeviceBrickedWithCompletionBlock:]", 1201, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v9 = 0;
    v12 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [(MobileActivationDaemon *)self dark];
  v8 = data_ark_copy(v7, 0, @"BrickState");
  v9 = isNSNumber(v8);

  if (v9)
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 1;
  }

  v14 = @"BrickState";
  v13 = [NSNumber numberWithBool:v10];
  v15 = v13;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v11 = 0;
  if (v4)
  {
LABEL_8:
    v4[2](v4, v12, v11);
  }

LABEL_9:
}

- (void)getActivationBuildWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self dark];
  v6 = dataMigrationCompleted(v5);

  if ((v6 & 1) == 0)
  {
    v11 = createAndLogError("[MobileActivationDaemon getActivationBuildWithCompletionBlock:]", 1227, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v10 = 0;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [(MobileActivationDaemon *)self dark];
  v8 = data_ark_copy(v7, 0, @"LastActivated");
  v9 = isNSString(v8);

  if (v9)
  {
    v12 = @"LastActivated";
    v13 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  if (v4)
  {
LABEL_8:
    v4[2](v4, v10, v11);
  }

LABEL_9:
}

- (void)requestDeviceReactivationWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self dark];
  v6 = dataMigrationCompleted(v5);

  if ((v6 & 1) == 0)
  {
    v15 = createAndLogError("[MobileActivationDaemon requestDeviceReactivationWithCompletionBlock:]", 1248, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    if (!v4)
    {
      goto LABEL_15;
    }

LABEL_14:
    v4[2](v4, 0, v15);
    goto LABEL_15;
  }

  v7 = copySignpostLoggingHandle();
  v8 = os_signpost_enabled(v7);

  if (v8)
  {
    v9 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v10 = copySignpostLoggingHandle();
      v9 = os_signpost_id_make_with_pointer(v10, v4);
    }

    v11 = copySignpostLoggingHandle();
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RequestReactivationXPC", "", buf, 2u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3254779904;
    v16[2] = __71__MobileActivationDaemon_requestDeviceReactivationWithCompletionBlock___block_invoke;
    v16[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v17 = v4;
    v18 = v9;
    v4 = objc_retainBlock(v16);
  }

  if (!use_hactivation())
  {
    v13 = [(MobileActivationDaemon *)self callingProcessName];
    maLog("[MobileActivationDaemon requestDeviceReactivationWithCompletionBlock:]", 1, @"Reactivation requested by %@", v13);

    v14 = [(MobileActivationDaemon *)self dark];
    handle_deactivate(v14, 0);
  }

  v15 = 0;
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_15:
}

void __71__MobileActivationDaemon_requestDeviceReactivationWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "RequestReactivationXPC", "", v11, 2u);
  }
}

- (void)copyActivationRecordWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self dark];
  v6 = dataMigrationCompleted(v5);

  if ((v6 & 1) == 0)
  {
    v19 = createMobileActivationError("[MobileActivationDaemon copyActivationRecordWithCompletionBlock:]", 1280, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v11 = 0;
    v12 = 0;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = [(MobileActivationDaemon *)self dark];
  v8 = data_ark_copy(v7, 0, @"ActivationState");
  v9 = isNSString(v8);

  if (!v9)
  {
    v9 = @"Unactivated";
  }

  if (([(__CFString *)v9 isEqualToString:@"Activated"]& 1) == 0)
  {
    v19 = createMobileActivationError("[MobileActivationDaemon copyActivationRecordWithCompletionBlock:]", 1290, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", v9);
    v11 = 0;
    goto LABEL_21;
  }

  v10 = [(MobileActivationDaemon *)self dark];
  v11 = copy_activation_record(v10);

  if (!v11)
  {
    v19 = createMobileActivationError("[MobileActivationDaemon copyActivationRecordWithCompletionBlock:]", 1296, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy activation record.");
LABEL_21:
    v12 = 0;
    if (!v4)
    {
      goto LABEL_16;
    }

LABEL_15:
    v4[2](v4, v12, v19);
    goto LABEL_16;
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = [v11 objectForKeyedSubscript:@"DeviceConfigurationFlags"];

  if (v13)
  {
    v14 = [v11 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
    [v12 setObject:v14 forKeyedSubscript:@"DeviceConfigurationFlags"];
  }

  v15 = [v11 objectForKeyedSubscript:@"SoftwareUpdate"];

  if (v15)
  {
    v16 = [v11 objectForKeyedSubscript:@"SoftwareUpdate"];
    [v12 setObject:v16 forKeyedSubscript:@"SoftwareUpdate"];
  }

  v17 = [v11 objectForKeyedSubscript:@"ManufacturingData"];

  if (v17)
  {
    v18 = [v11 objectForKeyedSubscript:@"ManufacturingData"];
    [v12 setObject:v18 forKeyedSubscript:@"ManufacturingData"];
  }

  v19 = 0;
  if (v4)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (void)copyRegionDataForGestaltWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileActivationDaemon *)self dark];
  v6 = dataMigrationCompleted(v5);

  if (v6)
  {
    v7 = [(MobileActivationDaemon *)self dark];
    v8 = data_ark_copy(v7, 0, @"ActivationState");
    v9 = isNSString(v8);

    if (!v9)
    {
      v9 = @"Unactivated";
    }

    if (([(__CFString *)v9 isEqualToString:@"Activated"]& 1) != 0)
    {
      v10 = [(MobileActivationDaemon *)self dark];
      v11 = copy_activation_record(v10);

      if (v11)
      {
        v15 = 0;
        v12 = create_region_data_for_gestalt(v11, &v15);
        v13 = v15;
        if (v12)
        {
          v12 = v12;
          if (!v4)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v14 = createMobileActivationError("[MobileActivationDaemon copyRegionDataForGestaltWithCompletionBlock:]", 1352, @"com.apple.MobileActivation.ErrorDomain", -1, v13, @"Failed to create region data.");

          v13 = v14;
          if (!v4)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_13;
      }

      v13 = createMobileActivationError("[MobileActivationDaemon copyRegionDataForGestaltWithCompletionBlock:]", 1346, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy activation record.");
    }

    else
    {
      v13 = createMobileActivationError("[MobileActivationDaemon copyRegionDataForGestaltWithCompletionBlock:]", 1340, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", v9);
      v11 = 0;
    }
  }

  else
  {
    v13 = createMobileActivationError("[MobileActivationDaemon copyRegionDataForGestaltWithCompletionBlock:]", 1330, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v11 = 0;
    v9 = 0;
  }

  v12 = 0;
  if (v4)
  {
LABEL_13:
    v4[2](v4, v12, v13);
  }

LABEL_14:
}

- (void)unbrickDeviceWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "UnbrickDeviceXPC", "", buf, 2u);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3254779904;
    v22[2] = __59__MobileActivationDaemon_unbrickDeviceWithCompletionBlock___block_invoke;
    v22[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v23 = v4;
    v24 = v7;
    v4 = objc_retainBlock(v22);
  }

  v11 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon unbrickDeviceWithCompletionBlock:]", 1, @"Unbrick requested by %@", v11);

  v12 = [(MobileActivationDaemon *)self dark];
  v13 = dataMigrationCompleted(v12);

  if (v13)
  {
    v14 = [(MobileActivationDaemon *)self dark];
    v15 = data_ark_copy(v14, 0, @"ActivationState");
    v16 = isNSString(v15);

    if (!v16)
    {
      v16 = @"Unactivated";
    }

    if (![(__CFString *)v16 isEqualToString:@"Unactivated"])
    {
      v19 = 0;
      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v17 = [(MobileActivationDaemon *)self dark];
    v21 = 0;
    v18 = handle_unbrick(v17, &v21);
    v19 = v21;

    if ((v18 & 1) == 0)
    {
      v20 = createAndLogError("[MobileActivationDaemon unbrickDeviceWithCompletionBlock:]", 1390, @"com.apple.MobileActivation.ErrorDomain", -1, v19, @"Unbrick failed.");

      v19 = v20;
      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v19 = createMobileActivationError("[MobileActivationDaemon unbrickDeviceWithCompletionBlock:]", 1379, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v16 = 0;
  }

  if (v4)
  {
LABEL_17:
    (*(v4 + 2))(v4, 0, v19);
  }

LABEL_18:
}

void __59__MobileActivationDaemon_unbrickDeviceWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "UnbrickDeviceXPC", "", v11, 2u);
  }
}

- (void)recertifyDeviceWithCompletionBlock:(id)a3
{
  v4 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__9;
  v38 = __Block_byref_object_dispose__9;
  v39 = 0;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "RecerityDeviceXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3254779904;
    v30[2] = __61__MobileActivationDaemon_recertifyDeviceWithCompletionBlock___block_invoke;
    v30[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v31 = v4;
    v32 = v7;
    v4 = objc_retainBlock(v30);
  }

  v11 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon recertifyDeviceWithCompletionBlock:]", 1, @"Recertification (SB) requested by %@", v11);

  v12 = [(MobileActivationDaemon *)self dark];
  v13 = dataMigrationCompleted(v12);

  if (v13)
  {
    v14 = [(MobileActivationDaemon *)self dark];
    v15 = data_ark_copy(v14, 0, @"ActivationState");
    v16 = isNSString(v15);

    if (!v16)
    {
      v16 = @"Unactivated";
    }

    if (([(__CFString *)v16 isEqualToString:@"Activated"]& 1) != 0)
    {
      v17 = [MobileRecertifyEngine alloc];
      v18 = [(MobileActivationDaemon *)self xpcQueue];
      v19 = [(MobileActivationDaemon *)self dark];
      v20 = [(MobileRecertifyEngine *)v17 initWithQueue:v18 dark:v19];

      if (v20)
      {
        v21 = [(MobileActivationDaemon *)self creationQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3254779904;
        block[2] = __61__MobileActivationDaemon_recertifyDeviceWithCompletionBlock___block_invoke_339;
        block[3] = &__block_descriptor_64_e8_32s40s48bs56r_e5_v8__0l;
        v22 = v20;
        v26 = v22;
        v27 = self;
        v29 = &v34;
        v28 = v4;
        dispatch_async(v21, block);

        goto LABEL_20;
      }

      v23 = createAndLogError("[MobileActivationDaemon recertifyDeviceWithCompletionBlock:]", 1434, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to allocate recert engine.");
    }

    else
    {
      v23 = createAndLogError("[MobileActivationDaemon recertifyDeviceWithCompletionBlock:]", 1428, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", v16);
    }
  }

  else
  {
    v23 = createAndLogError("[MobileActivationDaemon recertifyDeviceWithCompletionBlock:]", 1418, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v16 = 0;
  }

  v24 = v35[5];
  v35[5] = v23;

  if (v4)
  {
    (*(v4 + 2))(v4, 0, v35[5]);
  }

  v22 = 0;
LABEL_20:

  _Block_object_dispose(&v34, 8);
}

void __61__MobileActivationDaemon_recertifyDeviceWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "RecerityDeviceXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

void __61__MobileActivationDaemon_recertifyDeviceWithCompletionBlock___block_invoke_339(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3254779904;
  v4[2] = __61__MobileActivationDaemon_recertifyDeviceWithCompletionBlock___block_invoke_2;
  v4[3] = &__block_descriptor_56_e8_32s40bs48r_e17_v16__0__NSError_8l;
  v1 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v3 = *(a1 + 48);
  v2 = v3;
  *v5 = v3;
  [v1 recertifyDevice:v4];
}

uint64_t __61__MobileActivationDaemon_recertifyDeviceWithCompletionBlock___block_invoke_2(void *a1, id a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a2;
    v5 = [v3 dark];
    writeSplunkLog(v5, 12, -1, "[MobileActivationDaemon recertifyDeviceWithCompletionBlock:]_block_invoke_2", 1444, 0, @"%@", v6, v4);

    v7 = createAndLogError("[MobileActivationDaemon recertifyDeviceWithCompletionBlock:]_block_invoke_2", 1445, @"com.apple.MobileActivation.ErrorDomain", -1, v4, @"Recertification failed.");
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(a1[5] + 16);

  return v10();
}

- (void)handleActivationInfoWithSession:(id)a3 activationSignature:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MobileActivationDaemon *)self callingProcessName];
  v12 = copySignpostLoggingHandle();
  v13 = os_signpost_enabled(v12);

  if (v13)
  {
    v14 = 0xEEEEB0B5B2B2EEEELL;
    if (v8 != 0xEEEEB0B5B2B2EEEELL)
    {
      v15 = copySignpostLoggingHandle();
      v14 = os_signpost_id_make_with_pointer(v15, v8);
    }

    v16 = copySignpostLoggingHandle();
    v17 = v16;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "HandleActivationInfoXPCV2", " enableTelemetry=YES ", buf, 2u);
    }

    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3254779904;
    v54[2] = __94__MobileActivationDaemon_handleActivationInfoWithSession_activationSignature_completionBlock___block_invoke;
    v54[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v55 = v10;
    v56 = v14;
    v10 = objc_retainBlock(v54);
  }

  maLog("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1, @"Activation (session) requested by %@", v11);
  v50 = v9;
  if (!v8)
  {
    v38 = createAndLogError("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1479, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
LABEL_23:
    v36 = v38;
    v32 = 0;
    v28 = 0;
    v22 = 0;
LABEL_28:
    v34 = 0;
    v26 = 0;
    goto LABEL_29;
  }

  v18 = [(MobileActivationDaemon *)self dark];
  v19 = dataMigrationCompleted(v18);

  if ((v19 & 1) == 0)
  {
    v38 = createAndLogError("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1484, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    goto LABEL_23;
  }

  v20 = [(MobileActivationDaemon *)self dark];
  v21 = data_ark_copy(v20, 0, @"ActivationState");
  v22 = isNSString(v21);

  if (!v22)
  {
    v22 = @"Unactivated";
  }

  if (([(__CFString *)v22 isEqualToString:@"Unactivated"]& 1) == 0)
  {
    v36 = createAndLogError("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1494, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Device is already activated (%@).", v22);
LABEL_27:
    v32 = 0;
    v28 = 0;
    goto LABEL_28;
  }

  if (!v9)
  {
    v25 = 0;
    goto LABEL_26;
  }

  v53 = 0;
  v23 = [(MobileActivationDaemon *)self validateActivationDataSignature:v8 activationSignature:v9 withError:&v53];
  v24 = v53;
  v25 = v24;
  if ((v23 & 1) == 0)
  {
LABEL_26:
    v36 = createAndLogError("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1499, @"com.apple.MobileActivation.ErrorDomain", -1, v25, @"Invalid activation signature.");

    goto LABEL_27;
  }

  v52 = v24;
  v26 = getSessionActivationRecordFromData(v8, &v52);
  v27 = v52;

  if (!v26)
  {
    v36 = createAndLogError("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1505, @"com.apple.MobileActivation.ErrorDomain", -2, v27, @"Failed to extract activation record.");

    v32 = 0;
    v28 = 0;
LABEL_36:
    v34 = 0;
    goto LABEL_29;
  }

  v28 = [(MobileActivationDaemon *)self activationNonce];
  if (!v28)
  {
    v36 = createAndLogError("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1511, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid activation nonce.");
    v39 = v27;
LABEL_35:

    v32 = 0;
    goto LABEL_36;
  }

  v48 = v27;
  [(MobileActivationDaemon *)self setActivationNonce:0];
  v29 = [(MobileActivationDaemon *)self activationSessionClientName];
  v30 = [(NSString *)v29 isEqualToString:v11];

  if ((v30 & 1) == 0)
  {
    v40 = [(MobileActivationDaemon *)self activationSessionClientName];
    v36 = createAndLogError("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1518, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid activation session (actual, expected): (%@, %@)", v11, v40);

    v39 = v40;
    goto LABEL_35;
  }

  v60 = @"ActivationRandomness";
  v61 = v28;
  v31 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v32 = [(NSDictionary *)v31 mutableCopy];

  v46 = [(MobileActivationDaemon *)self dark];
  v33 = copy_activation_record(v46);
  v34 = [NSNumber numberWithInt:v33 != 0];

  [v32 setObject:v34 forKeyedSubscript:@"UseCommittedUIK"];
  v35 = dictionary_to_xml(v26);
  maLog("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 0, @"Activation message:\n%@", v35);

  v47 = [(MobileActivationDaemon *)self dark];
  v58 = @"ActivationRecord";
  v59 = v26;
  v44 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v51 = v48;
  v45 = handle_activate(v47, v44, v32, &v51);
  v36 = v51;

  if (v45)
  {
    if (device_supports_dcrt_oob())
    {
      v49 = [(MobileActivationDaemon *)self dark];
      scheduleXPCActivity(v49, [@"com.apple.mobileactivationd.DCRT.OOB" UTF8String], 5u, 1, 0x4000u, 0x1000u, &__block_literal_global_9);

      v37 = [(MobileActivationDaemon *)self dark];
      scheduleXPCActivity(v37, [@"com.apple.mobileactivationd.SDCRT.OOB" UTF8String], 5u, 1, 0x4000u, 0x1000u, &__block_literal_global_357);
    }
  }

  else
  {
    v41 = [(MobileActivationDaemon *)self dark];
    writeSplunkLog(v41, 4, -1, "[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1536, 0, @"%@", v42, v36);

    v43 = createAndLogError("[MobileActivationDaemon handleActivationInfoWithSession:activationSignature:completionBlock:]", 1537, @"com.apple.MobileActivation.ErrorDomain", -1, v36, @"Failed to activate device.");
    v36 = v43;
  }

LABEL_29:
  if (v10)
  {
    (*(v10 + 2))(v10, 0, v36);
  }
}

void __94__MobileActivationDaemon_handleActivationInfoWithSession_activationSignature_completionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "HandleActivationInfoXPCV2", " enableTelemetry=YES ", v11, 2u);
  }
}

- (void)issueClientCertificateLegacy:(id)a3 WithCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__9;
  v40[4] = __Block_byref_object_dispose__9;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__9;
  v38 = __Block_byref_object_dispose__9;
  v39 = 0;
  v8 = copySignpostLoggingHandle();
  v9 = os_signpost_enabled(v8);

  if (v9)
  {
    v10 = 0xEEEEB0B5B2B2EEEELL;
    if (v6 != 0xEEEEB0B5B2B2EEEELL)
    {
      v11 = copySignpostLoggingHandle();
      v10 = os_signpost_id_make_with_pointer(v11, v6);
    }

    v12 = copySignpostLoggingHandle();
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "IssueClientCertificateLegacyXPC", "", buf, 2u);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3254779904;
    v30[2] = __75__MobileActivationDaemon_issueClientCertificateLegacy_WithCompletionBlock___block_invoke;
    v30[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v31 = v7;
    v32 = v10;
    v7 = objc_retainBlock(v30);
  }

  v14 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon issueClientCertificateLegacy:WithCompletionBlock:]", 1, @"Client certification (legacy) requested by %@", v14);
  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v42 = @"com.apple.mobileactivationd.spi";
    v43 = &__kCFBooleanTrue;
    v21 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v22 = createAndLogError("[MobileActivationDaemon issueClientCertificateLegacy:WithCompletionBlock:]", 1579, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v21);
    v23 = v35[5];
    v35[5] = v22;

    v19 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    v15 = [(MobileActivationDaemon *)self dark];
    v16 = dataMigrationCompleted(v15);

    if (v16)
    {
      v17 = [(MobileActivationDaemon *)self dark];
      v18 = data_ark_copy(v17, 0, @"ActivationState");
      v19 = isNSString(v18);

      if (!v19)
      {
        v19 = @"Unactivated";
      }

      if (([(__CFString *)v19 isEqualToString:@"Activated"]& 1) != 0)
      {
        v20 = [(MobileActivationDaemon *)self creationQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3254779904;
        block[2] = __75__MobileActivationDaemon_issueClientCertificateLegacy_WithCompletionBlock___block_invoke_361;
        block[3] = &__block_descriptor_64_e8_32s40bs48r56r_e5_v8__0l;
        v28 = &v34;
        v26 = v6;
        v29 = v40;
        v27 = v7;
        dispatch_async(v20, block);

        goto LABEL_22;
      }

      v24 = createAndLogError("[MobileActivationDaemon issueClientCertificateLegacy:WithCompletionBlock:]", 1599, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", v19);
      goto LABEL_19;
    }

    v24 = createAndLogError("[MobileActivationDaemon issueClientCertificateLegacy:WithCompletionBlock:]", 1589, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
  }

  else
  {
    v24 = createAndLogError("[MobileActivationDaemon issueClientCertificateLegacy:WithCompletionBlock:]", 1584, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
  }

  v19 = 0;
LABEL_19:
  v21 = v35[5];
  v35[5] = v24;
LABEL_20:

  if (v7)
  {
    (*(v7 + 2))(v7, 0, v35[5]);
  }

LABEL_22:

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v40, 8);
}

void __75__MobileActivationDaemon_issueClientCertificateLegacy_WithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "IssueClientCertificateLegacyXPC", "", v11, 2u);
  }
}

void __75__MobileActivationDaemon_issueClientCertificateLegacy_WithCompletionBlock___block_invoke_361(void *a1)
{
  error = 0;
  v2 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
  if (v2)
  {
    v3 = v2;
    v24[0] = kSecAttrIsPermanent;
    v24[1] = kSecAttrTokenID;
    v25[0] = &__kCFBooleanFalse;
    v25[1] = kSecAttrTokenIDAppleKeyStore;
    v4 = a1[4];
    v24[2] = kSecAttrTokenOID;
    v24[3] = kSecAttrAccessControl;
    v25[2] = v4;
    v25[3] = v2;
    v5 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
    v6 = SecKeyCreateWithData(+[NSData data], v5, &error);
    if (v6)
    {
      v7 = v6;
      v8 = a1 + 6;
      v9 = *(a1[6] + 8);
      obj = *(v9 + 40);
      v10 = security_create_system_key_attestation(v6, 2, 0, &obj);
      objc_storeStrong((v9 + 40), obj);
      if (v10)
      {
        v22 = @"RKCertification";
        v23 = v10;
        v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v8 = a1 + 7;
      }

      else
      {
        v11 = createAndLogError("[MobileActivationDaemon issueClientCertificateLegacy:WithCompletionBlock:]_block_invoke", 1632, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v8 + 8) + 40), @"Failed to create reference key attestation.");
      }

      v17 = *(*v8 + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v11;

      CFRelease(v7);
    }

    else
    {
      v14 = createAndLogError("[MobileActivationDaemon issueClientCertificateLegacy:WithCompletionBlock:]_block_invoke", 1626, @"com.apple.MobileActivation.ErrorDomain", -2, error, @"Failed to convert legacy RK.");
      v15 = *(a1[6] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v10 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v12 = createAndLogError("[MobileActivationDaemon issueClientCertificateLegacy:WithCompletionBlock:]_block_invoke", 1615, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
    v10 = 0;
    v13 = *(a1[6] + 8);
    v5 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  v19 = a1[5];
  if (v19)
  {
    (*(v19 + 16))(v19, *(*(a1[7] + 8) + 40), *(*(a1[6] + 8) + 40));
  }
}

- (void)issueClientCertificateWithReferenceKey:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = copySignpostLoggingHandle();
  v12 = os_signpost_enabled(v11);

  if (v12)
  {
    v13 = 0xEEEEB0B5B2B2EEEELL;
    if (v8 != 0xEEEEB0B5B2B2EEEELL)
    {
      v14 = copySignpostLoggingHandle();
      v13 = os_signpost_id_make_with_pointer(v14, v8);
    }

    v15 = copySignpostLoggingHandle();
    v16 = v15;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "IssueClientCertificateXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3254779904;
    v34[2] = __84__MobileActivationDaemon_issueClientCertificateWithReferenceKey_options_completion___block_invoke;
    v34[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v35 = v10;
    v36 = v13;
    v10 = objc_retainBlock(v34);
  }

  v17 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon issueClientCertificateWithReferenceKey:options:completion:]", 1, @"Client certification requested by %@", v17);
  v33 = 0;
  v18 = isSupportedDeviceIdentityClient(1, &v33);
  v19 = v33;
  if (v18)
  {
    if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
    {
      v40 = @"com.apple.mobileactivationd.spi";
      v41 = &__kCFBooleanTrue;
      v26 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v27 = createAndLogError("[MobileActivationDaemon issueClientCertificateWithReferenceKey:options:completion:]", 1679, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v26);
      goto LABEL_22;
    }

    v20 = [(MobileActivationDaemon *)self dark];
    v21 = dataMigrationCompleted(v20);

    if (v21)
    {
      if (!v9)
      {
        goto LABEL_29;
      }

      v22 = [v9 objectForKeyedSubscript:@"OIDSToInclude"];
      v23 = isNSArray(v22);

      if (!v23)
      {
        goto LABEL_29;
      }

      v24 = [v9 objectForKeyedSubscript:@"OIDSToInclude"];
      if (([v24 containsObject:@"1.2.840.113635.100.10.1"] & 1) == 0)
      {
        v25 = [v9 objectForKeyedSubscript:@"OIDSToInclude"];
        if (![v25 containsObject:@"1.2.840.113635.100.8.1"])
        {
          v30 = [v9 objectForKeyedSubscript:@"OIDSToInclude"];
          v31 = [v30 containsObject:@"1.2.840.113635.100.8.3"];

          if ((v31 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }
      }

LABEL_17:
      if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.device-identifiers"])
      {
        v38 = @"com.apple.mobileactivationd.device-identifiers";
        v39 = &__kCFBooleanTrue;
        v26 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v27 = createAndLogError("[MobileActivationDaemon issueClientCertificateWithReferenceKey:options:completion:]", 1694, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v26);
LABEL_22:
        v29 = v27;

        v19 = v26;
        goto LABEL_23;
      }

LABEL_29:
      v32 = [(MobileActivationDaemon *)self dark];
      issueClientCertificateWithReferenceKey(v32, v17, v8, 0, v9, v10);

      goto LABEL_26;
    }

    v28 = createAndLogError("[MobileActivationDaemon issueClientCertificateWithReferenceKey:options:completion:]", 1684, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
  }

  else
  {
    v28 = createAndLogError("[MobileActivationDaemon issueClientCertificateWithReferenceKey:options:completion:]", 1674, @"com.apple.MobileActivation.ErrorDomain", -25, v19, @"Client is not supported.");
  }

  v29 = v28;
LABEL_23:

  if (v10)
  {
    (*(v10 + 2))(v10, 0, v29);
  }

  v19 = v29;
LABEL_26:
}

void __84__MobileActivationDaemon_issueClientCertificateWithReferenceKey_options_completion___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "IssueClientCertificateXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

- (void)copyAttestationDictionaryWithCompletionBlock:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__9;
  v69 = __Block_byref_object_dispose__9;
  v70 = 0;
  v11 = copySignpostLoggingHandle();
  v12 = os_signpost_enabled(v11);

  if (v12)
  {
    v13 = 0xEEEEB0B5B2B2EEEELL;
    if (v8 != 0xEEEEB0B5B2B2EEEELL)
    {
      v14 = copySignpostLoggingHandle();
      v13 = os_signpost_id_make_with_pointer(v14, v8);
    }

    v15 = copySignpostLoggingHandle();
    v16 = v15;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CopyAttestationDictionaryXPC", "", buf, 2u);
    }

    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3254779904;
    v61[2] = __90__MobileActivationDaemon_copyAttestationDictionaryWithCompletionBlock_options_completion___block_invoke;
    v61[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v62 = v10;
    v63 = v13;
    v10 = objc_retainBlock(v61);
  }

  v17 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1, @"Client attestation requested by %@", v17);
  if (!v8 || !v17)
  {
    v27 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1734, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input(s).");
LABEL_21:
    v28 = 0;
    v29 = 0;
    v30 = 0;
LABEL_22:
    v24 = v66[5];
    v66[5] = v27;
    goto LABEL_25;
  }

  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v73 = @"com.apple.mobileactivationd.spi";
    v74 = &__kCFBooleanTrue;
    v24 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v31 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1739, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v24);
    v32 = v66[5];
    v66[5] = v31;

    goto LABEL_24;
  }

  v18 = [(MobileActivationDaemon *)self dark];
  v19 = dataMigrationCompleted(v18);

  if ((v19 & 1) == 0)
  {
    v27 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1744, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_32;
  }

  v20 = [v9 objectForKeyedSubscript:@"OIDSToInclude"];
  v21 = isNSArray(v20);

  if (v21)
  {
    v22 = [v9 objectForKeyedSubscript:@"OIDSToInclude"];
    if (([v22 containsObject:@"1.2.840.113635.100.10.1"] & 1) == 0)
    {
      v23 = [v9 objectForKeyedSubscript:@"OIDSToInclude"];
      if (![v23 containsObject:@"1.2.840.113635.100.8.1"])
      {
        v33 = [v9 objectForKeyedSubscript:@"OIDSToInclude"];
        v34 = [v33 containsObject:@"1.2.840.113635.100.8.3"];

        if ((v34 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.device-identifiers"])
    {
      v71 = @"com.apple.mobileactivationd.device-identifiers";
      v72 = &__kCFBooleanTrue;
      v24 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v25 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1754, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v24);
      v26 = v66[5];
      v66[5] = v25;

LABEL_24:
      v28 = 0;
      v29 = 0;
      v30 = 0;
LABEL_25:

      if (v10)
      {
        (*(v10 + 2))(v10, 0, v66[5]);
      }

      goto LABEL_27;
    }
  }

LABEL_30:
  v35 = [v9 objectForKeyedSubscript:@"scrtAttestation"];
  v36 = isNSNumber(v35);

  if (v36)
  {
    v37 = [v9 objectForKeyedSubscript:@"scrtAttestation"];
    v38 = [v37 BOOLValue];

    goto LABEL_33;
  }

LABEL_32:
  v38 = 0;
LABEL_33:
  v39 = [(MobileActivationDaemon *)self dark];
  v40 = data_ark_copy(v39, 0, @"ActivationState");
  v30 = isNSString(v40);

  if (v30)
  {
    if (v38)
    {
LABEL_35:
      v28 = 0;
      v29 = 0;
      cf = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v30 = @"Unactivated";
    if (v38)
    {
      goto LABEL_35;
    }
  }

  if (([(__CFString *)v30 isEqualToString:@"Activated"]& 1) == 0)
  {
    v27 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1772, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", v30);
    v28 = 0;
    v29 = 0;
    goto LABEL_22;
  }

  v42 = [(MobileActivationDaemon *)self dark];
  v28 = data_ark_copy(v42, 0, @"UCRTHealingRequired");

  v43 = isNSNumber(v28);
  LODWORD(v42) = v43 == 0;

  if (v42)
  {

    v28 = &__kCFBooleanFalse;
  }

  v44 = [(MobileActivationDaemon *)self dark];
  v29 = data_ark_copy(v44, 0, @"UCRTOOBForbidden");

  v45 = isNSNumber(v29);
  LODWORD(v44) = v45 == 0;

  if (v44)
  {

    v29 = &__kCFBooleanFalse;
  }

  if ([v28 BOOLValue])
  {
    v46 = (v66 + 5);
    obj = v66[5];
    v47 = ucrtHealingSupported(&obj);
    objc_storeStrong(v46, obj);
    v48 = v66[5];
    if (v48)
    {
      v27 = createMobileActivationError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1792, @"com.apple.MobileActivation.ErrorDomain", -1, v48, @"Failed to query UCRT healing support.");
    }

    else if (v47)
    {
      if ([v29 BOOLValue])
      {
        v27 = createMobileActivationError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1802, @"com.apple.MobileActivation.ErrorDomain", -16, 0, @"UCRT healing required but not supported (max failure retries attempted).");
      }

      else
      {
        v27 = createMobileActivationError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1806, @"com.apple.MobileActivation.ErrorDomain", -16, 0, @"UCRT healing required but not performed yet (try again later).");
      }
    }

    else
    {
      v27 = createMobileActivationError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1797, @"com.apple.MobileActivation.ErrorDomain", -16, 0, @"UCRT healing required but not supported (user signed into non-HSA2 iCloud account).");
    }

    goto LABEL_22;
  }

  v49 = [(MobileActivationDaemon *)self dark];
  v50 = (v66 + 5);
  v59 = v66[5];
  v51 = v49;
  cf = copyUCRT(v49, &v59);
  objc_storeStrong(v50, v59);

  if (!cf)
  {
    v27 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]", 1812, @"com.apple.MobileActivation.ErrorDomain", -1, v66[5], @"Failed to copy UCRT.");
    goto LABEL_22;
  }

LABEL_36:
  v41 = [(MobileActivationDaemon *)self creationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __90__MobileActivationDaemon_copyAttestationDictionaryWithCompletionBlock_options_completion___block_invoke_392;
  block[3] = &__block_descriptor_72_e8_32s40s48s56bs64r_e5_v8__0l;
  v58 = &v65;
  v54 = v17;
  v55 = v9;
  v56 = v8;
  v57 = v10;
  dispatch_async(v41, block);

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_27:
  _Block_object_dispose(&v65, 8);
}

void __90__MobileActivationDaemon_copyAttestationDictionaryWithCompletionBlock_options_completion___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CopyAttestationDictionaryXPC", "", v11, 2u);
  }
}

void __90__MobileActivationDaemon_copyAttestationDictionaryWithCompletionBlock_options_completion___block_invoke_392(uint64_t a1)
{
  error = 0;
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = v2;
  if (!v2)
  {
    v13 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]_block_invoke", 1834, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
LABEL_14:
    v24 = v13;
    v25 = *(*(a1 + 64) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v23 = 0;
    v22 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"clientName"];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"SigningKeyAttributes"];
  v5 = isNSDictionary(v4);
  if (!v5)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [*(a1 + 40) objectForKeyedSubscript:@"SigningKeyAttributes"];
  v8 = kSecUseSystemKeychain;
  v9 = [v7 objectForKeyedSubscript:kSecUseSystemKeychain];
  v10 = isNSNumber(v9);

  if (v10)
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:@"SigningKeyAttributes"];
    v11 = [v4 objectForKeyedSubscript:v8];
    v12 = [v11 BOOLValue];

LABEL_7:
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
  if (!v14)
  {
    v13 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]_block_invoke", 1848, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
    goto LABEL_14;
  }

  v15 = v14;
  v38[0] = kSecAttrIsPermanent;
  v38[1] = kSecAttrTokenID;
  v39[0] = &__kCFBooleanFalse;
  v39[1] = kSecAttrTokenIDAppleKeyStore;
  v38[2] = kSecAttrTokenOID;
  v38[3] = kSecAttrAccessControl;
  v39[2] = *(a1 + 48);
  v39[3] = v14;
  v38[4] = kSecUseSystemKeychain;
  v16 = [NSNumber numberWithBool:v12];
  v39[4] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:5];

  v18 = SecKeyCreateWithData(+[NSData data], v17, &error);
  if (v18)
  {
    v19 = v18;
    v20 = *(a1 + 40);
    v21 = *(*(a1 + 64) + 8);
    obj = *(v21 + 40);
    v22 = create_baa_info(v18, v20, &obj);
    objc_storeStrong((v21 + 40), obj);
    if (v22)
    {
      v36 = @"RKCertification";
      v37 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    }

    else
    {
      v30 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]_block_invoke", 1869, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 64) + 8) + 40), @"Failed to create BAA info.");
      v31 = *(*(a1 + 64) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      v23 = 0;
    }

    CFRelease(v19);
  }

  else
  {
    v27 = createAndLogError("[MobileActivationDaemon copyAttestationDictionaryWithCompletionBlock:options:completion:]_block_invoke", 1863, @"com.apple.MobileActivation.ErrorDomain", -2, error, @"Failed to convert RK data blob.");
    v28 = *(*(a1 + 64) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    v23 = 0;
    v22 = 0;
  }

  CFRelease(v15);
LABEL_19:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  v33 = *(a1 + 56);
  if (v33)
  {
    (*(v33 + 16))(v33, v23, *(*(*(a1 + 64) + 8) + 40));
  }
}

- (void)isInFieldCollectedWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CollectionPerformedXPC", "", buf, 2u);
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3254779904;
    v20[2] = __64__MobileActivationDaemon_isInFieldCollectedWithCompletionBlock___block_invoke;
    v20[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v21 = v4;
    v22 = v7;
    v4 = objc_retainBlock(v20);
  }

  if ([(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v11 = [(MobileActivationDaemon *)self dark];
    v12 = dataMigrationCompleted(v11);

    if (v12)
    {
      v13 = [(MobileActivationDaemon *)self dark];
      v14 = collectionAlreadyPerformed(v13);

      if (v14)
      {
        v24 = @"CollectionLastPerformed";
        v25 = &__kCFBooleanTrue;
        v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v16 = 0;
        if (!v4)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      MobileActivationError = createMobileActivationError("[MobileActivationDaemon isInFieldCollectedWithCompletionBlock:]", 1918, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Collection has not been performed for this build.");
    }

    else
    {
      MobileActivationError = createMobileActivationError("[MobileActivationDaemon isInFieldCollectedWithCompletionBlock:]", 1913, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    }

    v16 = MobileActivationError;
  }

  else
  {
    v17 = [(MobileActivationDaemon *)self callingProcessName];
    v26 = @"com.apple.mobileactivationd.spi";
    v27 = &__kCFBooleanTrue;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = createMobileActivationError("[MobileActivationDaemon isInFieldCollectedWithCompletionBlock:]", 1908, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"%@ is missing required entitlement: %@", v17, v18);
  }

  v15 = 0;
  if (v4)
  {
LABEL_18:
    (*(v4 + 2))(v4, v15, v16);
  }

LABEL_19:
}

void __64__MobileActivationDaemon_isInFieldCollectedWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CollectionPerformedXPC", "", v11, 2u);
  }
}

- (void)updateBasebandTicket:(id)a3 baaCertData:(id)a4 baaIntermediateCert:(id)a5 options:(id)a6 withCompletionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MobileActivationDaemon *)self callingProcessName];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__9;
  v65 = __Block_byref_object_dispose__9;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__9;
  v59 = __Block_byref_object_dispose__9;
  v60 = 0;
  v18 = copySignpostLoggingHandle();
  v19 = os_signpost_enabled(v18);

  if (v19)
  {
    v20 = 0xEEEEB0B5B2B2EEEELL;
    if (v12 != 0xEEEEB0B5B2B2EEEELL)
    {
      v21 = copySignpostLoggingHandle();
      v20 = os_signpost_id_make_with_pointer(v21, v12);
    }

    v22 = copySignpostLoggingHandle();
    v23 = v22;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "UpdateBasebandTicketXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3254779904;
    v51[2] = __107__MobileActivationDaemon_updateBasebandTicket_baaCertData_baaIntermediateCert_options_withCompletionBlock___block_invoke;
    v51[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v52 = v16;
    v53 = v20;
    v16 = objc_retainBlock(v51);
  }

  maLog("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]", 1, @"Baseband ticket update requested by %@ (%@)", v17, v15);
  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v67 = @"com.apple.mobileactivationd.spi";
    v68 = &__kCFBooleanTrue;
    v32 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v33 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]", 1948, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v32);
    v34 = v62[5];
    v62[5] = v33;

    v35 = 0;
    goto LABEL_24;
  }

  if (v12 && v13 && v14)
  {
    v24 = [(MobileActivationDaemon *)self dark];
    v25 = dataMigrationCompleted(v24);

    if (v25)
    {
      v26 = [(MobileActivationDaemon *)self dark];
      v27 = data_ark_copy(v26, 0, @"ActivationState");
      v28 = isNSString(v27);
      v29 = v56[5];
      v56[5] = v28;

      v30 = v56[5];
      if (!v30)
      {
        objc_storeStrong(v56 + 5, @"Unactivated");
        v30 = v56[5];
      }

      if ([v30 isEqualToString:@"Activated"])
      {
        if (use_hactivation())
        {
          v31 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]", 1973, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is hactivated (not supported).");
        }

        else
        {
          if (is_product_cellular())
          {
            v36 = [v15 objectForKeyedSubscript:@"NetworkTimeoutInterval"];
            v37 = isNSNumber(v36);

            if (v37)
            {
              v35 = [v15 objectForKeyedSubscript:@"NetworkTimeoutInterval"];
              [v35 doubleValue];
              if (v38 <= 0.0)
              {
                v31 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]", 1985, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v35);
                goto LABEL_23;
              }
            }

            else
            {
              v35 = 0;
            }

            v39 = [(MobileActivationDaemon *)self creationQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3254779904;
            block[2] = __107__MobileActivationDaemon_updateBasebandTicket_baaCertData_baaIntermediateCert_options_withCompletionBlock___block_invoke_411;
            block[3] = &__block_descriptor_112_e8_32s40s48s56s64s72s80s88bs96r104r_e5_v8__0l;
            v49 = &v61;
            v41 = v17;
            v42 = v15;
            v43 = v12;
            v44 = v13;
            v45 = v14;
            v46 = self;
            v35 = v35;
            v47 = v35;
            v50 = &v55;
            v48 = v16;
            dispatch_async(v39, block);

            goto LABEL_26;
          }

          v31 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]", 1978, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device doesn't support telephony.");
        }
      }

      else
      {
        v31 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]", 1968, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", v56[5]);
      }
    }

    else
    {
      v31 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]", 1958, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    }
  }

  else
  {
    v31 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]", 1953, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
  }

  v35 = 0;
LABEL_23:
  v32 = v62[5];
  v62[5] = v31;
LABEL_24:

  if (v16)
  {
    (*(v16 + 2))(v16, 0, v62[5]);
  }

LABEL_26:
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
}

void __107__MobileActivationDaemon_updateBasebandTicket_baaCertData_baaIntermediateCert_options_withCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "UpdateBasebandTicketXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

void __107__MobileActivationDaemon_updateBasebandTicket_baaCertData_baaIntermediateCert_options_withCompletionBlock___block_invoke_411(uint64_t a1)
{
  error = 0;
  v182 = 0;
  v2 = objc_alloc_init(NSMutableDictionary);
  v164 = v2;
  if (!v2)
  {
    v15 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2021, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.");
    v16 = *(*(a1 + 96) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v159 = 0;
    v162 = 0;
    v163 = 0;
    v161 = 0;
LABEL_8:
    v11 = 0;
LABEL_76:
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v156 = 0;
LABEL_80:
    v154 = 0;
    v155 = 0;
    v7 = 0;
    goto LABEL_81;
  }

  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"clientName"];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
  v4 = isNSNumber(v3);

  if (v4)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"UseCellularBootstrapProxy"];
    v162 = v5;
    if (is_product_cellular() && [v5 BOOLValue])
    {
      v6 = *(*(a1 + 96) + 8);
      v180 = *(v6 + 40);
      v7 = copyCellularProxyDictionary(1, &v180);
      objc_storeStrong((v6 + 40), v180);
      if (!v7)
      {
        v8 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2032, @"com.apple.MobileActivation.ErrorDomain", -2, *(*(*(a1 + 96) + 8) + 40), @"Failed to query cellular network proxy info.");
        v9 = *(*(a1 + 96) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v159 = 0;
        v163 = 0;
        v161 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v155 = 0;
        v156 = 0;
        v154 = 0;
LABEL_81:
        v44 = 0;
        v22 = 0;
        goto LABEL_82;
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
    v162 = 0;
  }

  v18 = [*(a1 + 40) objectForKeyedSubscript:@"UseCellularOTAProxy"];
  v19 = isNSNumber(v18);

  if (!v19)
  {
    v163 = v7;
    v161 = 0;
    goto LABEL_18;
  }

  v20 = [*(a1 + 40) objectForKeyedSubscript:@"UseCellularOTAProxy"];
  v161 = v20;
  if (!is_product_cellular() || ![v20 BOOLValue])
  {
    v163 = v7;
LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v21 = *(*(a1 + 96) + 8);
  v179 = *(v21 + 40);
  v22 = copyCellularProxyDictionary(0, &v179);
  objc_storeStrong((v21 + 40), v179);

  if (!v22)
  {
    v41 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2045, @"com.apple.MobileActivation.ErrorDomain", -2, *(*(*(a1 + 96) + 8) + 40), @"Failed to query cellular network proxy info.");
    v42 = *(*(a1 + 96) + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = v41;

    v159 = 0;
    v163 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v155 = 0;
    v156 = 0;
    v154 = 0;
    v7 = 0;
    v44 = 0;
LABEL_82:
    v61 = 0;
LABEL_83:
    v158 = 0;
    v160 = 0;
    goto LABEL_84;
  }

  v23 = 1;
  v163 = v22;
LABEL_19:
  v24 = [*(a1 + 40) objectForKeyedSubscript:@"SOCKSProxyHost"];
  v25 = isNSString(v24);
  if (v25)
  {
    v26 = v25;
    v27 = [*(a1 + 40) objectForKeyedSubscript:@"SOCKSProxyPort"];
    v28 = isNSNumber(v27);

    if (!v28)
    {
      goto LABEL_23;
    }

    v185[0] = @"SOCKSProxyHost";
    v24 = [*(a1 + 40) objectForKeyedSubscript:@"SOCKSProxyHost"];
    v186[0] = v24;
    v185[1] = @"SOCKSProxyPort";
    v29 = [*(a1 + 40) objectForKeyedSubscript:@"SOCKSProxyPort"];
    v186[1] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v186 forKeys:v185 count:2];

    v163 = v30;
  }

LABEL_23:
  if (is_internal_build())
  {
    v31 = [NSUserDefaults alloc];
    v32 = [v31 persistentDomainForName:@"com.apple.mobileactivationd"];

    v33 = [v32 objectForKeyedSubscript:@"UseReverseProxy"];
    v34 = isNSNumber(v33);
    v159 = v32;
    if (v34)
    {
      v35 = v34;
      v36 = [v32 objectForKeyedSubscript:@"UseReverseProxy"];
      v37 = [v36 BOOLValue];

      if (v37)
      {
        if (v163)
        {
          v38 = createAndLogError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2061, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Cannot set both '%@' override and '%@'/'%@' option.", @"UseReverseProxy", @"UseCellularBootstrapProxy", @"UseCellularOTAProxy");
          v39 = *(*(a1 + 96) + 8);
          v40 = *(v39 + 40);
          *(v39 + 40) = v38;

          goto LABEL_8;
        }

        v163 = copyReverseProxyDictionary(0, 0, 0);
      }
    }

    else
    {
    }
  }

  else
  {
    v159 = 0;
  }

  v45 = [*(a1 + 40) objectForKeyedSubscript:@"SigningKeyAttributes"];
  v46 = isNSDictionary(v45);
  if (!v46)
  {
    v53 = 0;
    goto LABEL_36;
  }

  v47 = v46;
  v48 = [*(a1 + 40) objectForKeyedSubscript:@"SigningKeyAttributes"];
  v49 = kSecUseSystemKeychain;
  v50 = [v48 objectForKeyedSubscript:kSecUseSystemKeychain];
  v51 = isNSNumber(v50);

  if (v51)
  {
    v45 = [*(a1 + 40) objectForKeyedSubscript:@"SigningKeyAttributes"];
    v52 = [v45 objectForKeyedSubscript:v49];
    v53 = [v52 BOOLValue];

LABEL_36:
    goto LABEL_38;
  }

  v53 = 0;
LABEL_38:
  v54 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
  v11 = v54;
  if (!v54)
  {
    v103 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2077, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.");
    v104 = *(*(a1 + 96) + 8);
    v105 = *(v104 + 40);
    *(v104 + 40) = v103;

    goto LABEL_76;
  }

  v183[0] = kSecAttrIsPermanent;
  v183[1] = kSecAttrTokenID;
  v184[0] = &__kCFBooleanFalse;
  v184[1] = kSecAttrTokenIDAppleKeyStore;
  v183[2] = kSecAttrTokenOID;
  v183[3] = kSecAttrAccessControl;
  v184[2] = *(a1 + 48);
  v184[3] = v54;
  v183[4] = kSecUseSystemKeychain;
  v55 = [NSNumber numberWithBool:v53];
  v184[4] = v55;
  v56 = [NSDictionary dictionaryWithObjects:v184 forKeys:v183 count:5];

  v156 = v56;
  v14 = SecKeyCreateWithData(+[NSData data], v56, &error);
  if (!v14)
  {
    v106 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2092, @"com.apple.MobileActivation.ErrorDomain", -2, error, @"Failed to convert RK data blob.");
    v107 = *(*(a1 + 96) + 8);
    v108 = *(v107 + 40);
    *(v107 + 40) = v106;

    v12 = 0;
LABEL_79:
    v13 = 0;
    goto LABEL_80;
  }

  v12 = SecCertificateCreateWithData(kCFAllocatorDefault, *(a1 + 56));
  if (!v12)
  {
    v109 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2098, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.");
    v110 = *(*(a1 + 96) + 8);
    v111 = *(v110 + 40);
    *(v110 + 40) = v109;

    goto LABEL_79;
  }

  v13 = SecCertificateCreateWithData(kCFAllocatorDefault, *(a1 + 64));
  if (!v13)
  {
    v119 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2104, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.");
    v120 = *(*(a1 + 96) + 8);
    v121 = *(v120 + 40);
    *(v120 + 40) = v119;

    goto LABEL_80;
  }

  v57 = [*(a1 + 72) dark];
  v58 = (a1 + 96);
  v59 = *(a1 + 40);
  v60 = *(*(a1 + 96) + 8);
  v178 = *(v60 + 40);
  v61 = create_baseband_info(v57, v14, v12, v13, v59, &v178);
  objc_storeStrong((v60 + 40), v178);

  if (!v61)
  {
    v122 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2112, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v58 + 8) + 40), @"Failed to verify baa cert.");
    v123 = *(*v58 + 8);
    v124 = *(v123 + 40);
    *(v123 + 40) = v122;

    v154 = 0;
    v155 = 0;
    v7 = 0;
    v44 = 0;
    v22 = 0;
    goto LABEL_83;
  }

  v157 = v23;
  v177 = 0;
  v62 = *(*v58 + 8);
  obj = *(v62 + 40);
  v63 = createXMLRequest(v61, &v177, &obj);
  v64 = v177;
  objc_storeStrong((v62 + 40), obj);
  v155 = v61;
  v160 = v64;
  if ((v63 & 1) == 0)
  {
    v125 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2117, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v58 + 8) + 40), @"Failed to create XML request.");
    v126 = *v58;
LABEL_101:
    v127 = *(v126 + 8);
    v128 = *(v127 + 40);
    *(v127 + 40) = v125;

    v154 = 0;
    v7 = 0;
    v44 = 0;
    v22 = 0;
    v61 = 0;
    v158 = 0;
    goto LABEL_84;
  }

  v153 = (a1 + 96);
  v65 = [NSString stringWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", *(a1 + 32)];
  if (!v65)
  {
    v125 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2123, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.");
    v126 = *v153;
    goto LABEL_101;
  }

  v152 = v13;
  v154 = v65;
  [v64 setValue:? forHTTPHeaderField:?];
  v66 = [NSURL URLWithString:@"https://albert.apple.com/deviceservices/baseband"];
  [v64 setURL:v66];

  v67 = *(a1 + 80);
  if (v67)
  {
    [v67 doubleValue];
    [v64 setTimeoutInterval:?];
  }

  if (is_internal_build())
  {
    v68 = [v159 objectForKeyedSubscript:@"BasebandOverrideURL"];
    v69 = isNSString(v68);

    if (v69)
    {
      v70 = [v159 objectForKeyedSubscript:@"BasebandOverrideURL"];
      v71 = [NSURL URLWithString:v70];
      [v64 setURL:v71];
    }
  }

  v72 = formatURLRequest(v64);
  v73 = copy_log_directory_path();
  v74 = [NSString stringWithFormat:@"%@_baseband_request.txt", *(a1 + 32)];
  v75 = [v73 stringByAppendingPathComponent:v74];
  [(NSMutableString *)v72 writeToFile:v75 atomically:0 encoding:4 error:0];

  if (is_product_cellular())
  {
    if ([v162 BOOLValue])
    {
      v76 = +[MATelephonyInfo sharedInstance];
      v77 = *(*v153 + 8);
      v175 = *(v77 + 40);
      v78 = [(MATelephonyInfo *)v76 setCellularBootstrapAssertion:1 withError:&v175];
      objc_storeStrong((v77 + 40), v175);

      if ((v78 & 1) == 0)
      {
        v79 = copyLoggingHandle();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          __issueClientCertificateWithReferenceKey_block_invoke_4_cold_1();
        }
      }
    }

    if ([v161 BOOLValue])
    {
      v80 = +[MATelephonyInfo sharedInstance];
      v81 = *(*v153 + 8);
      v174 = *(v81 + 40);
      v82 = [(MATelephonyInfo *)v80 setOTAActivationAssertion:1 withError:&v174];
      objc_storeStrong((v81 + 40), v174);

      if ((v82 & 1) == 0)
      {
        v83 = copyLoggingHandle();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
        {
          __issueClientCertificateWithReferenceKey_block_invoke_4_cold_2();
        }
      }
    }
  }

  v84 = *(*v153 + 8);
  v172 = *(v84 + 40);
  v173 = 0;
  v85 = talkToServerWithError(v64, 0, v157, v163, &v173, &v182, &v172);
  v86 = v173;
  objc_storeStrong((v84 + 40), v172);
  if (is_product_cellular())
  {
    if ([v162 BOOLValue])
    {
      v87 = +[MATelephonyInfo sharedInstance];
      v88 = *(*v153 + 8);
      v171 = *(v88 + 40);
      v89 = [(MATelephonyInfo *)v87 setCellularBootstrapAssertion:0 withError:&v171];
      objc_storeStrong((v88 + 40), v171);

      if ((v89 & 1) == 0)
      {
        v90 = copyLoggingHandle();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
        {
          __issueClientCertificateWithReferenceKey_block_invoke_4_cold_3();
        }
      }
    }

    if ([v161 BOOLValue])
    {
      v91 = +[MATelephonyInfo sharedInstance];
      v92 = *(*v153 + 8);
      v170 = *(v92 + 40);
      v93 = [(MATelephonyInfo *)v91 setOTAActivationAssertion:0 withError:&v170];
      objc_storeStrong((v92 + 40), v170);

      if ((v93 & 1) == 0)
      {
        v94 = copyLoggingHandle();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          __issueClientCertificateWithReferenceKey_block_invoke_4_cold_4();
        }
      }
    }
  }

  v158 = v85;
  v95 = formatURLResponse(v85, v182, v86);
  v96 = copy_log_directory_path();
  v97 = [NSString stringWithFormat:@"%@_baseband_response.txt", *(a1 + 32)];
  v98 = [v96 stringByAppendingPathComponent:v97];
  [(NSMutableString *)v95 writeToFile:v98 atomically:0 encoding:4 error:0];

  v44 = v182;
  v99 = *(*(a1 + 96) + 8);
  v61 = v86;
  if (v182 == 200)
  {
    if (!v158)
    {
      v141 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2177, @"com.apple.MobileActivation.ErrorDomain", -5, *(v99 + 40), @"Failed to retrieve client certificate.");
      v142 = *(*v153 + 8);
      v143 = *(v142 + 40);
      *(v142 + 40) = v141;

      v7 = 0;
      v44 = 0;
      v22 = 0;
      v158 = 0;
      goto LABEL_110;
    }

    v169 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v158 options:0 format:0 error:&v169];
    objc_storeStrong((v99 + 40), v169);
    v129 = isNSDictionary(v7);

    if (!v129)
    {
      v144 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2183, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v153 + 8) + 40), @"Failed to convert data to XML.");
      v145 = *(*v153 + 8);
      v146 = *(v145 + 40);
      *(v145 + 40) = v144;

      goto LABEL_108;
    }

    v22 = [(NSDictionary *)v7 objectForKeyedSubscript:@"AccountToken"];
    v44 = isNSData(v22);

    if (v44)
    {
      v130 = *(*v153 + 8);
      v168 = 0;
      v44 = [NSPropertyListSerialization propertyListWithData:v22 options:0 format:0 error:&v168];
      objc_storeStrong((v130 + 40), v168);
      v131 = isNSDictionary(v44);

      if (v131)
      {
        v132 = [*(a1 + 72) xpcQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3254779904;
        block[2] = __107__MobileActivationDaemon_updateBasebandTicket_baaCertData_baaIntermediateCert_options_withCompletionBlock___block_invoke_2;
        block[3] = &__block_descriptor_64_e8_32s40s48r56r_e5_v8__0l;
        block[4] = *(a1 + 72);
        v167 = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
        v44 = v44;
        v166 = v44;
        dispatch_sync(v132, block);

        v133 = v166;
LABEL_116:

        goto LABEL_110;
      }

      v147 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2195, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v153 + 8) + 40), @"Failed to convert data to XML.");
      v148 = *v153;
    }

    else
    {
      v147 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2189, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid account token.");
      v148 = *v153;
    }

    v149 = *(v148 + 8);
    v150 = *(v149 + 40);
    *(v149 + 40) = v147;
    v133 = v150;
    goto LABEL_116;
  }

  if (v182)
  {
    v151 = *(v99 + 40);
    v134 = [NSHTTPURLResponse localizedStringForStatusCode:v182];
    v135 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2172, @"com.apple.MobileActivation.ServerErrorDomain", v44, v151, @"Server error: %ld (%@)", v44, v134);

    v136 = v182;
    v137 = [NSHTTPURLResponse localizedStringForStatusCode:v182];
    v138 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2172, @"com.apple.MobileActivation.ErrorDomain", -5, v135, @"Server error: %ld (%@)", v136, v137);

    v139 = *(*v153 + 8);
    v140 = *(v139 + 40);
    *(v139 + 40) = v138;

    v7 = 0;
LABEL_108:
    v44 = 0;
    goto LABEL_109;
  }

  v100 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2167, @"com.apple.MobileActivation.ErrorDomain", -6, *(v99 + 40), @"Network communication error.");
  v101 = *(*v153 + 8);
  v102 = *(v101 + 40);
  *(v101 + 40) = v100;

  v7 = 0;
LABEL_109:
  v22 = 0;
LABEL_110:
  v13 = v152;
LABEL_84:
  v112 = v11;
  if (*(*(*(a1 + 96) + 8) + 40))
  {
    v113 = v14;
    v114 = v12;
    v115 = v13;
    v116 = [*(a1 + 72) dark];
    writeSplunkLog(v116, 27, v182, "[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke", 2225, v164, @"%@", v117, *(*(*(a1 + 96) + 8) + 40));
    v118 = v116;
    v13 = v115;
    v12 = v114;
    v14 = v113;
  }

  (*(*(a1 + 88) + 16))();
  if (v14)
  {
    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (error)
  {
    CFRelease(error);
  }
}

void __107__MobileActivationDaemon_updateBasebandTicket_baaCertData_baaIntermediateCert_options_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dark];
  v3 = data_ark_copy(v2, 0, @"ActivationState");
  v4 = isNSString(v3);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 48) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (!v10)
  {
    objc_storeStrong(v9, @"Unactivated");
    v8 = *(*(*(a1 + 48) + 8) + 40);
  }

  if ([v8 isEqualToString:@"Activated"])
  {
    v11 = [*(a1 + 32) dark];
    v12 = *(a1 + 40);
    v13 = *(*(*(a1 + 48) + 8) + 40);
    v14 = *(*(a1 + 56) + 8);
    obj = *(v14 + 40);
    v15 = deliver_baseband_ticket(v11, v12, v13, &obj);
    objc_storeStrong((v14 + 40), obj);

    if ((v15 & 1) == 0)
    {
      v16 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke_2", 2212, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to deliver baseband ticket.");
      v17 = *(*(a1 + 56) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  else
  {
    v19 = createMobileActivationError("[MobileActivationDaemon updateBasebandTicket:baaCertData:baaIntermediateCert:options:withCompletionBlock:]_block_invoke_2", 2207, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated: %@", *(*(*(a1 + 48) + 8) + 40));
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (void)copyDCRTWithCompletionBlock:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = copySignpostLoggingHandle();
  v9 = os_signpost_enabled(v8);

  if (v9)
  {
    v10 = 0xEEEEB0B5B2B2EEEELL;
    if (v7 != 0xEEEEB0B5B2B2EEEELL)
    {
      v11 = copySignpostLoggingHandle();
      v10 = os_signpost_id_make_with_pointer(v11, v7);
    }

    v12 = copySignpostLoggingHandle();
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CopyDCRTXPC", "", buf, 2u);
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3254779904;
    v29[2] = __69__MobileActivationDaemon_copyDCRTWithCompletionBlock_withCompletion___block_invoke;
    v29[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v30 = v7;
    v31 = v10;
    v7 = objc_retainBlock(v29);
  }

  v14 = [(MobileActivationDaemon *)self dark];
  v15 = dataMigrationCompleted(v14);

  if (v15)
  {
    if (platform_supports_activation())
    {
      v16 = [(MobileActivationDaemon *)self dark];
      v17 = data_ark_copy(v16, 0, @"ActivationState");
      v18 = isNSString(v17);

      if (!v18)
      {
        v18 = @"Unactivated";
      }

      if (([(__CFString *)v18 isEqualToString:@"Activated"]& 1) == 0)
      {
        v19 = createMobileActivationError("[MobileActivationDaemon copyDCRTWithCompletionBlock:withCompletion:]", 2271, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated (%@).", v18);
        v20 = 0;
        v21 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
    }

    v22 = objc_alloc_init(NSMutableDictionary);
    v21 = v22;
    if (v22)
    {
      if (v6)
      {
        [v22 addEntriesFromDictionary:v6];
      }

      v23 = [(MobileActivationDaemon *)self callingProcessName];
      v24 = [NSNumber numberWithBool:client_requires_critical_dcrt_oids(v23)];
      [v21 setObject:v24 forKeyedSubscript:@"ValidateCriticalDcrtOIDs"];

      v25 = [(MobileActivationDaemon *)self dark];
      v28 = 0;
      v20 = copyDCRT(v25, 0, 0, v21, &v28);
      v19 = v28;

      if (v20)
      {
        v33 = @"DCRTData";
        v34 = v20;
        v26 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        if (!v7)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v27 = createMobileActivationError("[MobileActivationDaemon copyDCRTWithCompletionBlock:withCompletion:]", 2290, @"com.apple.MobileActivation.ErrorDomain", -1, v19, @"Failed to copy DCRT.");

        v26 = 0;
        v19 = v27;
        if (!v7)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_24;
    }

    v19 = createMobileActivationError("[MobileActivationDaemon copyDCRTWithCompletionBlock:withCompletion:]", 2278, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create mutable dictionary.");
    v20 = 0;
  }

  else
  {
    v19 = createMobileActivationError("[MobileActivationDaemon copyDCRTWithCompletionBlock:withCompletion:]", 2260, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v20 = 0;
    v21 = 0;
    v18 = 0;
  }

LABEL_23:
  v26 = 0;
  if (v7)
  {
LABEL_24:
    (*(v7 + 2))(v7, v26, v19);
  }

LABEL_25:
}

void __69__MobileActivationDaemon_copyDCRTWithCompletionBlock_withCompletion___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CopyDCRTXPC", "", v11, 2u);
  }
}

- (void)getDCRTStateWithCompletionBlock:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = copySignpostLoggingHandle();
  v9 = os_signpost_enabled(v8);

  if (v9)
  {
    v10 = 0xEEEEB0B5B2B2EEEELL;
    if (v7 != 0xEEEEB0B5B2B2EEEELL)
    {
      v11 = copySignpostLoggingHandle();
      v10 = os_signpost_id_make_with_pointer(v11, v7);
    }

    v12 = copySignpostLoggingHandle();
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CopyDCRTStateXPC", "", buf, 2u);
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3254779904;
    v30[2] = __73__MobileActivationDaemon_getDCRTStateWithCompletionBlock_withCompletion___block_invoke;
    v30[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v31 = v7;
    v32 = v10;
    v7 = objc_retainBlock(v30);
  }

  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v40 = @"com.apple.mobileactivationd.spi";
    v41 = &__kCFBooleanTrue;
    v22 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v23 = createMobileActivationError("[MobileActivationDaemon getDCRTStateWithCompletionBlock:withCompletion:]", 2318, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v22);

LABEL_17:
    v20 = 0;
    v18 = 0;
    v21 = 0;
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v14 = [(MobileActivationDaemon *)self dark];
  v15 = dataMigrationCompleted(v14);

  if ((v15 & 1) == 0)
  {
    v23 = createMobileActivationError("[MobileActivationDaemon getDCRTStateWithCompletionBlock:withCompletion:]", 2323, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    goto LABEL_17;
  }

  if (platform_supports_activation())
  {
    v16 = [(MobileActivationDaemon *)self dark];
    v17 = data_ark_copy(v16, 0, @"ActivationState");
    v18 = isNSString(v17);

    if (!v18)
    {
      v18 = @"Unactivated";
    }

    if (([(__CFString *)v18 isEqualToString:@"Activated"]& 1) == 0)
    {
      v38 = @"DCRTState";
      v39 = @"DCRTUnavailable";
      v19 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v20 = 0;
      v21 = 0;
LABEL_31:
      v23 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v18 = 0;
  }

  v24 = objc_alloc_init(NSMutableDictionary);
  v21 = v24;
  if (!v24)
  {
    v23 = createMobileActivationError("[MobileActivationDaemon getDCRTStateWithCompletionBlock:withCompletion:]", 2341, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create mutable dictionary.");
    v20 = 0;
    goto LABEL_18;
  }

  if (v6)
  {
    [v24 addEntriesFromDictionary:v6];
  }

  v25 = [(MobileActivationDaemon *)self callingProcessName];
  v26 = [NSNumber numberWithBool:client_requires_critical_dcrt_oids(v25)];
  [v21 setObject:v26 forKeyedSubscript:@"ValidateCriticalDcrtOIDs"];

  v27 = [(MobileActivationDaemon *)self dark];
  v29 = 0;
  v20 = copyDCRT(v27, 0, 0, v21, &v29);
  v23 = v29;

  if (v20)
  {
    v34 = @"DCRTState";
    v35 = @"DCRTAvailable";
    v19 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    goto LABEL_19;
  }

  if (mobileactivationErrorHasDomainAndErrorCode(v23, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFF6))
  {

    v36 = @"DCRTState";
    v37 = @"DCRTUnavailable";
    v19 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v20 = 0;
    goto LABEL_31;
  }

  v28 = createMobileActivationError("[MobileActivationDaemon getDCRTStateWithCompletionBlock:withCompletion:]", 2359, @"com.apple.MobileActivation.ErrorDomain", -1, v23, @"Failed to copy DCRT");

  v20 = 0;
  v19 = 0;
  v23 = v28;
LABEL_19:
  if (v7)
  {
    (*(v7 + 2))(v7, v19, v23);
  }
}

void __73__MobileActivationDaemon_getDCRTStateWithCompletionBlock_withCompletion___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CopyDCRTStateXPC", "", v11, 2u);
  }
}

- (void)issueDCRT:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = copySignpostLoggingHandle();
  v9 = os_signpost_enabled(v8);

  if (v9)
  {
    v10 = 0xEEEEB0B5B2B2EEEELL;
    if (v7 != 0xEEEEB0B5B2B2EEEELL)
    {
      v11 = copySignpostLoggingHandle();
      v10 = os_signpost_id_make_with_pointer(v11, v7);
    }

    v12 = copySignpostLoggingHandle();
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "IssueDCRTXPC", "", buf, 2u);
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3254779904;
    v29[2] = __56__MobileActivationDaemon_issueDCRT_withCompletionBlock___block_invoke;
    v29[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v30 = v7;
    v31 = v10;
    v7 = objc_retainBlock(v29);
  }

  v14 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon issueDCRT:withCompletionBlock:]", 1, @"DCRT reissue requested by %@ (%@)", v14, v6);
  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v33 = @"com.apple.mobileactivationd.spi";
    v34 = &__kCFBooleanTrue;
    v26 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v25 = createAndLogError("[MobileActivationDaemon issueDCRT:withCompletionBlock:]", 2391, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v26);

    goto LABEL_20;
  }

  v15 = [(MobileActivationDaemon *)self dark];
  v16 = dataMigrationCompleted(v15);

  if ((v16 & 1) == 0)
  {
    v25 = createAndLogError("[MobileActivationDaemon issueDCRT:withCompletionBlock:]", 2396, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
LABEL_20:
    v19 = 0;
    if (!v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    (*(v7 + 2))(v7, 0, v25);
    goto LABEL_22;
  }

  v17 = [(MobileActivationDaemon *)self dark];
  v18 = data_ark_copy(v17, 0, @"ActivationState");
  v19 = isNSString(v18);

  if (!v19)
  {
    v19 = @"Unactivated";
  }

  if (platform_supports_activation() && ([(__CFString *)v19 isEqualToString:@"Activated"]& 1) == 0)
  {
    v27 = createAndLogError("[MobileActivationDaemon issueDCRT:withCompletionBlock:]", 2407, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Device is not activated (%@).", v19);
LABEL_25:
    v25 = v27;
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v20 = objc_alloc_init(NSMutableDictionary);
  if (!v20)
  {
    v27 = createAndLogError("[MobileActivationDaemon issueDCRT:withCompletionBlock:]", 2414, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create mutable dictionary.", v28);
    goto LABEL_25;
  }

  v21 = v20;
  if (v6)
  {
    [v20 addEntriesFromDictionary:v6];
  }

  v22 = [(MobileActivationDaemon *)self callingProcessName];
  v23 = [NSNumber numberWithBool:client_requires_critical_dcrt_oids(v22)];
  [v21 setObject:v23 forKeyedSubscript:@"ValidateCriticalDcrtOIDs"];

  v24 = [(MobileActivationDaemon *)self dark];
  issueDCRT(v24, v14, v21, v7);

  v25 = 0;
LABEL_22:
}

void __56__MobileActivationDaemon_issueDCRT_withCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "IssueDCRTXPC", "", v11, 2u);
  }
}

- (void)issueUCRT:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = copySignpostLoggingHandle();
  v9 = os_signpost_enabled(v8);

  if (v9)
  {
    v10 = 0xEEEEB0B5B2B2EEEELL;
    if (v7 != 0xEEEEB0B5B2B2EEEELL)
    {
      v11 = copySignpostLoggingHandle();
      v10 = os_signpost_id_make_with_pointer(v11, v7);
    }

    v12 = copySignpostLoggingHandle();
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "IssueUCRTXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3254779904;
    v23[2] = __56__MobileActivationDaemon_issueUCRT_withCompletionBlock___block_invoke;
    v23[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v24 = v7;
    v25 = v10;
    v7 = objc_retainBlock(v23);
  }

  v14 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon issueUCRT:withCompletionBlock:]", 1, @"UCRT reissue requested by %@ (%@)", v14, v6);
  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v27 = @"com.apple.mobileactivationd.spi";
    v28 = &__kCFBooleanTrue;
    v22 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v21 = createAndLogError("[MobileActivationDaemon issueUCRT:withCompletionBlock:]", 2452, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v22);

    goto LABEL_16;
  }

  v15 = [(MobileActivationDaemon *)self dark];
  v16 = dataMigrationCompleted(v15);

  if ((v16 & 1) == 0)
  {
    v21 = createAndLogError("[MobileActivationDaemon issueUCRT:withCompletionBlock:]", 2457, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
LABEL_16:
    v19 = 0;
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    (*(v7 + 2))(v7, 0, v21);
    goto LABEL_18;
  }

  v17 = [(MobileActivationDaemon *)self dark];
  v18 = data_ark_copy(v17, 0, @"ActivationState");
  v19 = isNSString(v18);

  if (!v19)
  {
    v19 = @"Unactivated";
  }

  if (([(__CFString *)v19 isEqualToString:@"Activated"]& 1) == 0)
  {
    v21 = createAndLogError("[MobileActivationDaemon issueUCRT:withCompletionBlock:]", 2467, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Device is not activated (%@).", v19);
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v20 = [(MobileActivationDaemon *)self dark];
  issueUCRT(v20, v14, v6, v7);

  v21 = 0;
LABEL_18:
}

void __56__MobileActivationDaemon_issueUCRT_withCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "IssueUCRTXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

- (void)issueCollection:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = copySignpostLoggingHandle();
  v9 = os_signpost_enabled(v8);

  if (v9)
  {
    v10 = 0xEEEEB0B5B2B2EEEELL;
    if (v7 != 0xEEEEB0B5B2B2EEEELL)
    {
      v11 = copySignpostLoggingHandle();
      v10 = os_signpost_id_make_with_pointer(v11, v7);
    }

    v12 = copySignpostLoggingHandle();
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "IssueCollectionXPC", " enableTelemetry=YES ", buf, 2u);
    }

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3254779904;
    v42[2] = __62__MobileActivationDaemon_issueCollection_withCompletionBlock___block_invoke;
    v42[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v43 = v7;
    v44 = v10;
    v7 = objc_retainBlock(v42);
  }

  v14 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon issueCollection:withCompletionBlock:]", 1, @"Collection requested by %@ (%@)", v14, v6);
  if (![(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v47 = @"com.apple.mobileactivationd.spi";
    v48 = &__kCFBooleanTrue;
    v33 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v32 = createAndLogError("[MobileActivationDaemon issueCollection:withCompletionBlock:]", 2504, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v33);

LABEL_29:
    v24 = 0;
    v23 = 0;
    v28 = 0;
    v30 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_30;
  }

  v15 = [(MobileActivationDaemon *)self dark];
  v16 = dataMigrationCompleted(v15);

  if ((v16 & 1) == 0)
  {
    v32 = createAndLogError("[MobileActivationDaemon issueCollection:withCompletionBlock:]", 2509, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    goto LABEL_29;
  }

  v17 = [(MobileActivationDaemon *)self dark];
  v18 = data_ark_copy(v17, 0, @"ActivationState");
  v19 = isNSString(v18);

  if (!v19)
  {
    v19 = @"Unactivated";
  }

  if (([(__CFString *)v19 isEqualToString:@"Activated"]& 1) != 0)
  {
    v20 = [v6 objectForKeyedSubscript:@"scheduleCollectionForCurrentBuild"];
    v21 = isNSNumber(v20);

    if (!v21)
    {

      v20 = &__kCFBooleanFalse;
    }

    if (![v20 BOOLValue])
    {
      v34 = [(MobileActivationDaemon *)self dark];
      v35 = v6;
      v36 = v34;
      issueCollection(v34, v14, v35, v7);
      v37 = v36;
      v6 = v35;

      v32 = 0;
      v30 = 0;
      v28 = 0;
      v23 = 0;
      v24 = 0;
      goto LABEL_32;
    }

    v22 = +[GestaltHlpr getSharedInstance];
    v23 = [v22 copyAnswer:@"BuildVersion"];

    v24 = isNSString(v23);
    if (v24)
    {
      v25 = [(MobileActivationDaemon *)self dark];
      v24 = data_ark_copy(v25, 0, @"CollectionLastPerformed");

      v26 = isNSString(v24);
      if (!v26)
      {

        v24 = 0;
      }

      v27 = [(MobileActivationDaemon *)self dark];
      v28 = data_ark_copy(v27, 0, @"InFieldCollectionInFlight");

      v29 = isNSNumber(v28);
      if (!v29)
      {

        v28 = &__kCFBooleanFalse;
      }

      v41 = v6;
      v30 = [v6 objectForKeyedSubscript:@"IgnoreExistingCollection"];
      v31 = isNSNumber(v30);

      if (!v31)
      {

        v30 = &__kCFBooleanFalse;
      }

      v6 = v41;
      if ([v30 BOOLValue] & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", v23) & 1) != 0 || (objc_msgSend(v28, "BOOLValue"))
      {
        v32 = 0;
      }

      else
      {
        v38 = [(MobileActivationDaemon *)self dark];
        data_ark_remove(v38, 0, @"CollectionLastPerformed");

        v39 = copyLoggingHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v14;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Scheduling collection as requested by %@.", buf, 0xCu);
        }

        v40 = [(MobileActivationDaemon *)self dark];
        scheduleXPCActivity(v40, [@"com.apple.mobileactivationd.collection" UTF8String], 5u, 1, 0x5000u, 0x1000u, &__block_literal_global_489);

        v32 = 0;
        v6 = v41;
      }
    }

    else
    {
      v32 = createAndLogError("[MobileActivationDaemon issueCollection:withCompletionBlock:]", 2536, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve build version.");
      v28 = 0;
      v30 = 0;
    }
  }

  else
  {
    v32 = createAndLogError("[MobileActivationDaemon issueCollection:withCompletionBlock:]", 2519, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Device is not activated (%@).", v19);
    v24 = 0;
    v23 = 0;
    v28 = 0;
    v30 = 0;
    v20 = 0;
  }

LABEL_30:
  if (v7)
  {
    (*(v7 + 2))(v7, 0, v32);
  }

LABEL_32:
}

void __62__MobileActivationDaemon_issueCollection_withCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "IssueCollectionXPC", " enableTelemetry=YES ", v11, 2u);
  }
}

- (void)ucrtUpgradeRequiredWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "UCRTUpgradeRequiredXPC", "", buf, 2u);
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3254779904;
    v31[2] = __65__MobileActivationDaemon_ucrtUpgradeRequiredWithCompletionBlock___block_invoke;
    v31[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v32 = v4;
    v33 = v7;
    v4 = objc_retainBlock(v31);
  }

  v11 = [(MobileActivationDaemon *)self dark];
  v12 = dataMigrationCompleted(v11);

  if ((v12 & 1) == 0)
  {
    v18 = createAndLogError("[MobileActivationDaemon ucrtUpgradeRequiredWithCompletionBlock:]", 2594, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Data Migration not complete.");
    v22 = 0;
    v24 = 0;
    v27 = 0;
    v15 = 0;
    goto LABEL_24;
  }

  v13 = [(MobileActivationDaemon *)self dark];
  v14 = data_ark_copy(v13, 0, @"ActivationState");
  v15 = isNSString(v14);

  if (!v15)
  {
    v15 = @"Unactivated";
  }

  if (([(__CFString *)v15 isEqualToString:@"Activated"]& 1) == 0)
  {
    v18 = createAndLogError("[MobileActivationDaemon ucrtUpgradeRequiredWithCompletionBlock:]", 2604, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Device is not activated (%@).", v15);
    v22 = 0;
    v24 = 0;
    v27 = 0;
LABEL_24:
    v17 = 0;
    if (!v4)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v16 = [(MobileActivationDaemon *)self dark];
  v30 = 0;
  v17 = copyUCRT(v16, &v30);
  v18 = v30;

  if (!v17 && (mobileactivationErrorHasDomainAndErrorCode(v18, @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFFCLL) & 1) == 0)
  {
    v29 = createAndLogError("[MobileActivationDaemon ucrtUpgradeRequiredWithCompletionBlock:]", 2610, @"com.apple.MobileActivation.ErrorDomain", -1, v18, @"Failed to copy UCRT.");

    v22 = 0;
    v24 = 0;
    v27 = 0;
    v17 = 0;
    v18 = v29;
    if (!v4)
    {
      goto LABEL_26;
    }

LABEL_25:
    (*(v4 + 2))(v4, v27, v18);
    goto LABEL_26;
  }

  v19 = [(MobileActivationDaemon *)self dark];
  v20 = data_ark_copy(v19, 0, @"UCRTHealingRequired");
  v21 = isNSNumber(v20);

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = &__kCFBooleanFalse;
  }

  v23 = [(MobileActivationDaemon *)self dark];
  v24 = data_ark_copy(v23, 0, @"UIKUpgradeRequired");

  v25 = isNSNumber(v24);
  if (!v25)
  {

    v24 = &__kCFBooleanFalse;
  }

  v35 = @"UCRTUpgradeRequired";
  if (v17 && ([v22 BOOLValue] & 1) == 0)
  {
    v26 = [v24 BOOLValue];
  }

  else
  {
    v26 = 1;
  }

  v28 = [NSNumber numberWithInt:v26];
  v36 = v28;
  v27 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  if (v4)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (v17)
  {
    CFRelease(v17);
  }
}

void __65__MobileActivationDaemon_ucrtUpgradeRequiredWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "UCRTUpgradeRequiredXPC", "", v11, 2u);
  }
}

- (void)copyLegacyDeviceIdentityWithCompletionBlock:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__9;
  v30 = __Block_byref_object_dispose__9;
  v31 = 0;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CopyLegacyIdentityXPC", "", buf, 2u);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3254779904;
    v22[2] = __70__MobileActivationDaemon_copyLegacyDeviceIdentityWithCompletionBlock___block_invoke;
    v22[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v23 = v4;
    v24 = v7;
    v4 = objc_retainBlock(v22);
  }

  if ([(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v11 = [(MobileActivationDaemon *)self dark];
    v12 = data_ark_copy(v11, 0, @"ActivationState");
    v13 = isNSString(v12);

    if (!v13)
    {
      v13 = @"Unactivated";
    }

    if (([(__CFString *)v13 isEqualToString:@"Activated"]& 1) != 0)
    {
      v14 = [(MobileActivationDaemon *)self creationQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3254779904;
      block[2] = __70__MobileActivationDaemon_copyLegacyDeviceIdentityWithCompletionBlock___block_invoke_490;
      block[3] = &__block_descriptor_48_e8_32bs40r_e5_v8__0l;
      v21 = &v26;
      v20 = v4;
      dispatch_async(v14, block);

      goto LABEL_17;
    }

    v18 = createMobileActivationError("[MobileActivationDaemon copyLegacyDeviceIdentityWithCompletionBlock:]", 2658, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated (%@).", v13);
    v15 = v27[5];
    v27[5] = v18;
  }

  else
  {
    v32 = @"com.apple.mobileactivationd.spi";
    v33 = &__kCFBooleanTrue;
    v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v16 = createMobileActivationError("[MobileActivationDaemon copyLegacyDeviceIdentityWithCompletionBlock:]", 2648, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v15);
    v17 = v27[5];
    v27[5] = v16;

    v13 = 0;
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 0, v27[5]);
  }

LABEL_17:
  _Block_object_dispose(&v26, 8);
}

void __70__MobileActivationDaemon_copyLegacyDeviceIdentityWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CopyLegacyIdentityXPC", "", v11, 2u);
  }
}

void __70__MobileActivationDaemon_copyLegacyDeviceIdentityWithCompletionBlock___block_invoke_490(uint64_t a1)
{
  privateKeyRef = 0;
  certificateRef = 0;
  error = 0;
  identityRef = 0;
  v2 = *(*(a1 + 40) + 8);
  obj = *(v2 + 40);
  copy_keys_and_certs(@"lockdown-identities", @"com.apple.lockdown.identity.activation", 0, 0, 0, &identityRef, &obj);
  objc_storeStrong((v2 + 40), obj);
  if (!identityRef)
  {
    MobileActivationError = createMobileActivationError("[MobileActivationDaemon copyLegacyDeviceIdentityWithCompletionBlock:]_block_invoke", 2685, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 40) + 8) + 40), @"Failed to copy legacy device identity.");
LABEL_11:
    v10 = MobileActivationError;
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v4 = 0;
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v3 = SecIdentityCopyCertificate(identityRef, &certificateRef);
  if (v3 || !certificateRef)
  {
    MobileActivationError = createMobileActivationError("[MobileActivationDaemon copyLegacyDeviceIdentityWithCompletionBlock:]_block_invoke", 2691, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode certificate: %d", v3);
    goto LABEL_11;
  }

  v4 = SecCertificateCopyData(certificateRef);
  if (!v4)
  {
    v13 = createMobileActivationError("[MobileActivationDaemon copyLegacyDeviceIdentityWithCompletionBlock:]_block_invoke", 2697, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate data.");
LABEL_14:
    v14 = v13;
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    goto LABEL_15;
  }

  v5 = SecIdentityCopyPrivateKey(identityRef, &privateKeyRef);
  if (v5 || !privateKeyRef)
  {
    v13 = createMobileActivationError("[MobileActivationDaemon copyLegacyDeviceIdentityWithCompletionBlock:]_block_invoke", 2703, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode private key: %d", v5);
    goto LABEL_14;
  }

  v6 = SecKeyCopyExternalRepresentation(privateKeyRef, &error);
  v7 = v6;
  if (v6)
  {
    v26[0] = @"LegacyDeviceIdentityCertificateDataBlob";
    v26[1] = @"LegacyDeviceIdentityPrivateKeyDataBlob";
    v27[0] = v4;
    v27[1] = v6;
    v8 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    goto LABEL_17;
  }

  v18 = createMobileActivationError("[MobileActivationDaemon copyLegacyDeviceIdentityWithCompletionBlock:]_block_invoke", 2709, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy private key data.");
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

LABEL_16:
  v8 = 0;
LABEL_17:
  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v8, *(*(*(a1 + 40) + 8) + 40));
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (identityRef)
  {
    CFRelease(identityRef);
  }

  identityRef = 0;
  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  certificateRef = 0;
  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
  }

  privateKeyRef = 0;
}

- (void)deleteLegacyDeviceIdentityWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "DeleteLegacyIdentityXPC", "", buf, 2u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3254779904;
    v21[2] = __72__MobileActivationDaemon_deleteLegacyDeviceIdentityWithCompletionBlock___block_invoke;
    v21[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v22 = v4;
    v23 = v7;
    v4 = objc_retainBlock(v21);
  }

  v11 = [(MobileActivationDaemon *)self callingProcessName];
  maLog("[MobileActivationDaemon deleteLegacyDeviceIdentityWithCompletionBlock:]", 1, @"Legacy Identity (delete) requested by %@", v11);

  if ([(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v12 = [(MobileActivationDaemon *)self dark];
    v13 = data_ark_copy(v12, 0, @"ActivationState");
    v14 = isNSString(v13);

    if (!v14)
    {
      v14 = @"Unactivated";
    }

    if (([(__CFString *)v14 isEqualToString:@"Activated"]& 1) == 0)
    {
      v17 = createAndLogError("[MobileActivationDaemon deleteLegacyDeviceIdentityWithCompletionBlock:]", 2767, @"com.apple.MobileActivation.ErrorDomain", -8, 0, @"Device is not activated (%@).", v14);
      v15 = 0;
      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v25 = @"UseSystemKeychainSharediPadOnly";
    v26 = &__kCFBooleanTrue;
    v15 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = 0;
    v16 = delete_identity(@"lockdown-identities", @"com.apple.lockdown.identity.activation", v15, &v20);
    v17 = v20;
    if ((v16 & 1) == 0)
    {
      v18 = createAndLogError("[MobileActivationDaemon deleteLegacyDeviceIdentityWithCompletionBlock:]", 2776, @"com.apple.MobileActivation.ErrorDomain", -1, v17, @"Failed to delete existing identity.");

      v17 = v18;
      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v27 = @"com.apple.mobileactivationd.spi";
    v28 = &__kCFBooleanTrue;
    v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v17 = createAndLogError("[MobileActivationDaemon deleteLegacyDeviceIdentityWithCompletionBlock:]", 2757, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v19);

    v15 = 0;
    v14 = 0;
  }

  if (v4)
  {
LABEL_17:
    (*(v4 + 2))(v4, 0, v17);
  }

LABEL_18:
}

void __72__MobileActivationDaemon_deleteLegacyDeviceIdentityWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "DeleteLegacyIdentityXPC", "", v11, 2u);
  }
}

- (void)copyUCRTVersionInfoWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = copySignpostLoggingHandle();
  v6 = os_signpost_enabled(v5);

  if (v6)
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
    if (v4 != 0xEEEEB0B5B2B2EEEELL)
    {
      v8 = copySignpostLoggingHandle();
      v7 = os_signpost_id_make_with_pointer(v8, v4);
    }

    v9 = copySignpostLoggingHandle();
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CopyUCRTVersionInfoXPC", "", buf, 2u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3254779904;
    v17[2] = __65__MobileActivationDaemon_copyUCRTVersionInfoWithCompletionBlock___block_invoke;
    v17[3] = &__block_descriptor_48_e8_32bs_e34_v24__0__NSDictionary_8__NSError_16l;
    v18 = v4;
    v19 = v7;
    v4 = objc_retainBlock(v17);
  }

  if ([(MobileActivationDaemon *)self isEntitled:@"com.apple.mobileactivationd.spi"])
  {
    v16 = 0;
    v11 = [(MobileActivationDaemon *)self copyUCRTVersionInfoWithError:&v16];
    v12 = v16;
    if (v11)
    {
      v21 = @"UCRTVersionInfo";
      v22 = v11;
      v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = createMobileActivationError("[MobileActivationDaemon copyUCRTVersionInfoWithCompletionBlock:]", 2806, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to copy UCRT version info.");

      v13 = 0;
      v12 = v15;
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v23 = @"com.apple.mobileactivationd.spi";
  v24 = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v12 = createAndLogError("[MobileActivationDaemon copyUCRTVersionInfoWithCompletionBlock:]", 2800, @"com.apple.MobileActivation.ErrorDomain", -7, 0, @"Client is missing required entitlement: %@", v14);

  v11 = 0;
  v13 = 0;
  if (v4)
  {
LABEL_13:
    (*(v4 + 2))(v4, v13, v12);
  }

LABEL_14:
}

void __65__MobileActivationDaemon_copyUCRTVersionInfoWithCompletionBlock___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = copySignpostLoggingHandle();
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CopyUCRTVersionInfoXPC", "", v11, 2u);
  }
}

@end