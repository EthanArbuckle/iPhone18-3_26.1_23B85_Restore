@interface MTIPCUTunnelParser
- (BOOL)_isLockdownModeEnabled;
- (BOOL)_isXPCInterruptionError:(id)a3;
- (MTIPCUTunnelParser)init;
- (id)_commandFlush:(id)a3;
- (id)_commandGetEncryptionKey:(id)a3;
- (id)_commandGetProfileList:(id)a3;
- (id)_commandInstallProfile:(id)a3;
- (id)_commandRemoveProfile:(id)a3;
- (id)_commandSetCertificate:(id)a3;
- (id)_commandSetWiFiPower:(id)a3;
- (id)_commandStoreProfile:(id)a3;
- (id)_configuratorCloudConfigurationErrorWithCloudConfigDetails:(id)a3 error:(id)a4;
- (id)_configuratorProvisionalEnrollmentErrorWithDetails:(id)a3 error:(id)a4;
- (id)_underlyingCloudConfigErrorFromError:(id)a3;
- (void)_commandDownloadAndApplyCloudConfiguration:(id)a3 completionBlock:(id)a4;
- (void)_commandEraseDevice:(id)a3 completionBlock:(id)a4;
- (void)_commandEscalate:(id)a3 completionBlock:(id)a4;
- (void)_commandEscalateResponse:(id)a3 completionBlock:(id)a4;
- (void)_commandEstablishProvisionalEnrollmentRequest:(id)a3 completionBlock:(id)a4;
- (void)_commandGetCloudConfiguration:(id)a3 completionBlock:(id)a4;
- (void)_commandGetStoredProfile:(id)a3 completionBlock:(id)a4;
- (void)_commandPollMDMIfNetworkTetheredRequest:(id)a3 completionBlock:(id)a4;
- (void)_commandSetCloudConfiguration:(id)a3 completionBlock:(id)a4;
- (void)processRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
@end

@implementation MTIPCUTunnelParser

- (MTIPCUTunnelParser)init
{
  v3.receiver = self;
  v3.super_class = MTIPCUTunnelParser;
  result = [(MTIPCUTunnelParser *)&v3 init];
  if (result)
  {
    result->_downloadAndApplyCloudConfigurationCommandRetryCount = 0;
    result->_setCloudConfigurationCommandRetryCount = 0;
  }

  return result;
}

- (id)_commandFlush:(id)a3
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Flushing command queue.", v6, 2u);
  }

  +[MDMMCInterface flush];
  v4 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];

  return v4;
}

- (id)_commandGetEncryptionKey:(id)a3
{
  v4 = DMCLogObjects();
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100008360();
  }

  v5 = [(MTIPCUTunnelParser *)self hostIdentifier];

  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [(MTIPCUTunnelParser *)self hostIdentifier];
  v7 = +[MDMConfiguration sharedConfiguration];
  v8 = [v7 personaID];
  v9 = DMCHCUCopyCertificateFromKeychainForMappedLabel();

  if (v9)
  {
    SecCertificateNotValidAfter();
    v11 = v10;
    SecCertificateNotValidBefore();
    v13 = v12;
    Current = CFAbsoluteTimeGetCurrent();
    if (v13 < Current && v11 > Current)
    {
      v20 = SecCertificateCopyData(v9);
      v21 = [NSData DMCDataWithCFData:v20];
      CFRelease(v9);
      v22 = @"PublicKey";
LABEL_15:
      CFRelease(v20);
      if (v21)
      {
        v27[0] = kMCTPStatusKey;
        v27[1] = v22;
        v28[0] = kMCTPStatusAcknowledged;
        v28[1] = v21;
        v23 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "iPCU client certificate is no longer valid. Requesting a new one.", v26, 2u);
    }

    CFRelease(v9);
  }

  v17 = [(MTIPCUTunnelParser *)self hostIdentifier];

  if (v17)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    [(MTIPCUTunnelParser *)self setCSR:v18];

    v19 = [(MTIPCUTunnelParser *)self CSR];
    v20 = DMCHCUCreateCSR();

    v21 = [NSData DMCDataWithCFData:v20];
    v22 = @"CSR";
    goto LABEL_15;
  }

LABEL_17:
  v24 = *DMCLogObjects();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Cannot retrieve the device certificate for the connected host.", v26, 2u);
  }

LABEL_19:
  v23 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusCommandFormatError];
LABEL_20:

  return v23;
}

- (id)_commandGetProfileList:(id)a3
{
  v3 = DMCLogObjects();
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000083E8();
  }

  v4 = +[MDMMCInterface ipcuProfileList];

  return v4;
}

- (id)_commandRemoveProfile:(id)a3
{
  v3 = a3;
  v4 = DMCLogObjects();
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100008470();
  }

  v5 = [v3 objectForKey:kMCTPProfileIdentifier];

  v6 = [MDMMCInterface ipcuRemoveProfileWithIdentifier:v5];

  if (v6)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 DMCVerboseDescription];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error: %{public}@", &v13, 0xCu);
    }

    v10 = [MTIPCUTunnelParser responseWithError:v6];
  }

  else
  {
    v10 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
  }

  v11 = v10;

  return v11;
}

- (id)_commandSetCertificate:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000084F8();
  }

  v6 = [(MTIPCUTunnelParser *)self hostIdentifier];
  if (v6 && (v7 = v6, [(MTIPCUTunnelParser *)self CSR], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [v4 objectForKey:@"CertificateData"];
    v10 = [(MTIPCUTunnelParser *)self hostIdentifier];
    v11 = [(MTIPCUTunnelParser *)self CSR];
    v12 = +[MDMConfiguration sharedConfiguration];
    v13 = [v12 personaID];
    v14 = DMCHCUSetCertificateDataForMappedLabel();

    [(MTIPCUTunnelParser *)self setCSR:0];
    v15 = *DMCLogObjects();
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Created new iPCU client identity.", v19, 2u);
      }

      v16 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not create new iPCU client identity.", v19, 2u);
      }

      v20[0] = @"Error";
      v20[1] = kMCTPStatusKey;
      v21[0] = @"Could not create identity with certificate";
      v21[1] = kMCTPStatusError;
      v20[2] = @"Goodbye";
      v21[2] = &__kCFBooleanTrue;
      v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    }

    v17 = v16;
  }

  else
  {
    v17 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusCommandFormatError];
  }

  return v17;
}

- (id)_commandInstallProfile:(id)a3
{
  v4 = a3;
  v5 = DMCLogObjects();
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100008580();
  }

  v6 = kMCTPPayloadKey;
  v7 = [v4 objectForKey:kMCTPPayloadKey];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:100 options:0 error:0];

      v7 = v8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_opt_new();
      [v9 setProfileData:v7];
      [v9 setStyle:0];
      v10 = +[DMFConnection systemConnection];
      v26 = 0;
      v11 = [v10 performRequest:v9 error:&v26];
      v12 = v26;

      if (!v12)
      {
LABEL_19:

        if (v12)
        {
          [MTIPCUTunnelParser responseWithError:v12];
        }

        else
        {
          [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
        }
        v19 = ;

        goto LABEL_23;
      }

      if ([v12 code] == 2000)
      {
        v13 = [(MTIPCUTunnelParser *)self _isLockdownModeEnabled];
        v14 = DMCInstallationErrorDomain;
        if (v13)
        {
          v15 = DMCErrorArray();
          v16 = DMCErrorTypeFatal;
          v17 = v14;
          v18 = 4021;
        }

        else
        {
          v15 = DMCErrorArray();
          v16 = DMCErrorTypeFatal;
          v17 = v14;
          v18 = 4020;
        }

        v22 = [NSError DMCErrorWithDomain:v17 code:v18 descriptionArray:v15 errorType:v16, 0];
        goto LABEL_17;
      }

      v21 = [v12 userInfo];
      v15 = [v21 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v15)
      {
        v22 = v15;
        v15 = v22;
LABEL_17:
        v23 = v22;

        v12 = v23;
      }
    }

    else
    {
      v20 = DMCTunnelErrorDomain;
      v25 = v6;
      v9 = DMCErrorArray();
      v15 = [NSError DMCErrorWithDomain:v20 code:14000 descriptionArray:v9 errorType:DMCErrorTypeFatal, v25, 0];
      v12 = [v15 DMCCopyAsPrimaryError];
    }

    goto LABEL_19;
  }

  v19 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusErrorPayloadEmpty];
LABEL_23:

  return v19;
}

- (BOOL)_isLockdownModeEnabled
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isLockdownModeEnabled];

  return v3;
}

- (id)_commandStoreProfile:(id)a3
{
  v3 = a3;
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Storing profile", buf, 2u);
  }

  v5 = [v3 objectForKeyedSubscript:@"ProfileData"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusCommandFormatError];
    goto LABEL_18;
  }

  v14 = 0;
  v13 = 0;
  v6 = [MDMMCInterface profileIdentifierForProfileData:v5 allowEmptyPayload:1 outIsSupervisionProfile:0 outProfileSigner:0 outMayInstallCloudProfile:&v14 outError:&v13];
  v7 = v13;
  if (!v6)
  {
    v10 = [MTIPCUTunnelParser responseWithError:v7];
    goto LABEL_17;
  }

  v8 = [v3 objectForKeyedSubscript:@"Purpose"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v8 isEqualToString:@"PostSetupInstallation"] & 1) != 0)
  {
    if ([v8 isEqualToString:@"PostSetupInstallation"] && (v14 & 1) == 0)
    {
      v11 = [MTIPCUTunnelParser responseWithError:v7];
      goto LABEL_15;
    }

    [MDMMCInterface storeProfileData:v5 completion:&stru_100010928];
    v9 = &kMCTPStatusAcknowledged;
  }

  else
  {
    v9 = &kMCTPStatusCommandFormatError;
  }

  v11 = [MTIPCUTunnelParser responseWithStatus:*v9];
LABEL_15:
  v10 = v11;

LABEL_17:
LABEL_18:

  return v10;
}

- (void)_commandGetStoredProfile:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Retrieving stored profile", buf, 2u);
  }

  v8 = [v6 objectForKeyedSubscript:@"Purpose"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 isEqualToString:@"PostSetupInstallation"])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100005488;
      v10[3] = &unk_100010950;
      v11 = v5;
      [MDMMCInterface storedProfileDataWithCompletion:v10];
      v9 = v11;
LABEL_9:

      goto LABEL_10;
    }
  }

  if (v5)
  {
    v9 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusCommandFormatError];
    (*(v5 + 2))(v5, v9);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_commandGetCloudConfiguration:(id)a3 completionBlock:(id)a4
{
  v7 = a4;
  v4 = +[MDMMCInterface cloudConfigurationDetails];
  v5 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
  v6 = v5;
  if (v4)
  {
    [v5 setObject:v4 forKeyedSubscript:@"CloudConfiguration"];
  }

  if (v7)
  {
    v7[2](v7, v6);
  }
}

- (void)_commandSetCloudConfiguration:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MDMMCInterface cloudConfigurationDetails];
  if (v8)
  {
    v9 = DMCTunnelErrorDomain;
    v10 = DMCErrorArray();
    v11 = [NSError DMCErrorWithDomain:v9 code:14002 descriptionArray:v10 errorType:DMCErrorTypeFatal, 0];

    if (v7)
    {
      v12 = [MTIPCUTunnelParser responseWithError:v11];
      v7[2](v7, v12);
    }
  }

  else
  {
    v13 = [v6 objectForKeyedSubscript:@"CloudConfiguration"];
    v14 = [v13 mutableCopy];

    [v14 setObject:&off_100011430 forKeyedSubscript:kCCConfigurationSourceKey];
    v15 = [v14 objectForKeyedSubscript:kCCConfigurationURLKey];
    if (v15)
    {
    }

    else
    {
      v16 = [v14 objectForKeyedSubscript:kCCConfigurationWebURLKey];

      if (!v16)
      {
        [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCCloudConfigurationUICompleteKey];
        [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCCloudConfigurationWasAppliedKey];
      }
    }

    [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCIsMandatoryKey];
    [v14 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCIsMDMUnremovable];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005858;
    v17[3] = &unk_100010978;
    v17[4] = self;
    v18 = v6;
    v19 = v7;
    [MDMMCInterface storeCloudConfigurationDetails:v14 completion:v17];
  }
}

- (id)_underlyingCloudConfigErrorFromError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v6 || ([v6 domain], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", DEPCloudConfigErrorDomain), v7, (v8 & 1) == 0))
  {

LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)_configuratorProvisionalEnrollmentErrorWithDetails:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(MTIPCUTunnelParser *)self _underlyingCloudConfigErrorFromError:v5];
  v7 = v6;
  v8 = v5;
  if (v6)
  {
    if ([v6 code] == 33014)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = v8;

  return v9;
}

- (id)_configuratorCloudConfigurationErrorWithCloudConfigDetails:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(MTIPCUTunnelParser *)self _underlyingCloudConfigErrorFromError:v5];
  v7 = v6;
  v8 = v5;
  if (v6)
  {
    if ([v6 code] == 33005)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = v8;

  return v9;
}

- (BOOL)_isXPCInterruptionError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:NSCocoaErrorDomain])
  {
    v5 = [v3 code] == 4097 || objc_msgSend(v3, "code") == 4099;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_commandDownloadAndApplyCloudConfiguration:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Download and apply cloud configuration", buf, 2u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100005DAC;
  v17[3] = &unk_1000109C8;
  v17[4] = self;
  v9 = v6;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  v11 = objc_retainBlock(v17);
  v12 = +[MDMMCInterface mdmProfileIdentifier];

  if (v12)
  {
    v13 = [objc_opt_class() responseWithStatus:kMCTPStatusAcknowledged];
    (v11[2])(v11, v13);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100005F40;
    v14[3] = &unk_100010B10;
    v14[4] = self;
    v16 = v11;
    v15 = v9;
    [MDMMCInterface retrieveCloudConfigurationDetailsCompletion:v14];
  }
}

- (void)_commandPollMDMIfNetworkTetheredRequest:(id)a3 completionBlock:(id)a4
{
  v4 = a4;
  v5 = +[MDMClient sharedClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006A48;
  v7[3] = &unk_100010B38;
  v8 = v4;
  v6 = v4;
  [v5 simulatePushIfNetworkTetheredWithCompletion:v7];
}

- (void)_commandEraseDevice:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"PreserveDataPlan"];
  if (!v7)
  {
    v8 = 1;
LABEL_5:
    v9 = [v5 objectForKeyedSubscript:@"DisallowProximitySetup"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusCommandFormatError];
        v6[2](v6, v13);
        goto LABEL_12;
      }

      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = 0;
    }

    v11 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
    v6[2](v6, v11);

    v12 = dispatch_semaphore_create(0);
    v13 = objc_alloc_init(DDRResetOptions);
    [v13 setHideProgress:1];
    [v13 setEraseDataPlan:v8];
    [v13 setDisallowProximitySetup:v10];
    v14 = [[DDRResetRequest alloc] initWithMode:4 options:v13 reason:@"mc_mobile_tunnel erase device command"];
    v15 = +[DDRResetService sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100006E58;
    v17[3] = &unk_100010B60;
    v18 = v12;
    v16 = v12;
    [v15 resetWithRequest:v14 completion:v17];

    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 BOOLValue] ^ 1;
    goto LABEL_5;
  }

  v9 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusCommandFormatError];
  v6[2](v6, v9);
LABEL_13:
}

- (void)_commandEscalate:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"SupervisorCertificate"];
  v8 = +[MDMMCInterface cloudConfigurationDetails];
  v9 = [v8 objectForKeyedSubscript:kCCSupervisorHostCertificatesKey];

  if ([v9 containsObject:v7])
  {
    [(MTIPCUTunnelParser *)self setChallengeCertificate:v7];
    arc4random_buf(&v13, 8uLL);
    v10 = [NSData dataWithBytes:&v13 length:8];
    [(MTIPCUTunnelParser *)self setChallenge:v10];

    v11 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
    v12 = [(MTIPCUTunnelParser *)self challenge];
    [v11 setObject:v12 forKeyedSubscript:@"Challenge"];

    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = [MTIPCUTunnelParser responseWithStatus:@"CertificateRejected"];
  if (v6)
  {
LABEL_5:
    v6[2](v6, v11);
  }

LABEL_6:
}

- (void)_commandEscalateResponse:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"SignedRequest"];
  BasicX509 = SecPolicyCreateBasicX509();
  if (!BasicX509)
  {
    goto LABEL_18;
  }

  v9 = BasicX509;
  v28 = 0;
  *buf = 0;
  v27 = 0;
  if (!SecCMSVerifyCopyDataAndAttributes())
  {
    v11 = v27;
    v10 = v28;
    v12 = [v27 objectForKeyedSubscript:kSecCMSAllCerts];
    if (![v12 count])
    {
LABEL_16:

      goto LABEL_17;
    }

    v13 = [v12 objectAtIndexedSubscript:0];

    v14 = SecCertificateCopyData(v13);
    v15 = [(MTIPCUTunnelParser *)self challengeCertificate];
    v16 = [(__CFData *)v14 isEqualToData:v15];

    if (v16)
    {
      v17 = [(MTIPCUTunnelParser *)self challenge];
      v18 = [v28 isEqualToData:v17];

      if (v18)
      {

        CFRelease(v9);
        [(MTIPCUTunnelParser *)self setChallenge:0];
        [(MTIPCUTunnelParser *)self setChallengeCertificate:0];
        v19 = *DMCLogObjects();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Escalation accepted.", buf, 2u);
        }

        v20 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
        v21 = [(MTIPCUTunnelParser *)self escalationBlock];

        if (v21)
        {
          v22 = [(MTIPCUTunnelParser *)self escalationBlock];
          v22[2]();
        }

        goto LABEL_21;
      }

      v23 = *DMCLogObjects();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *v26 = 0;
      v24 = "Escalation response does not contain the expected challenge.";
    }

    else
    {
      v23 = *DMCLogObjects();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_15:

        goto LABEL_16;
      }

      *v26 = 0;
      v24 = "Escalation response was signed using a different certificate.";
    }

    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, v26, 2u);
    goto LABEL_15;
  }

LABEL_17:
  CFRelease(v9);
LABEL_18:
  [(MTIPCUTunnelParser *)self setChallenge:0, *v26];
  [(MTIPCUTunnelParser *)self setChallengeCertificate:0];
  v25 = *DMCLogObjects();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Escalation rejected.", buf, 2u);
  }

  v20 = [MTIPCUTunnelParser responseWithStatus:@"SignedRequestRejected"];
LABEL_21:
  if (v6)
  {
    v6[2](v6, v20);
  }
}

- (void)_commandEstablishProvisionalEnrollmentRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Establish Provisional Enrollment", buf, 2u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100007680;
  v17[3] = &unk_100010B88;
  v9 = v7;
  v18 = v9;
  v10 = objc_retainBlock(v17);
  if (DMCIsSetupBuddyDone())
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Provisional Enrollment rejected because device is not still in Buddy", buf, 2u);
    }

    v12 = [objc_opt_class() responseWithStatus:@"ProvisionalEnrollmentRejected"];
    (v10[2])(v10, v12);
  }

  else
  {
    v12 = [v6 objectForKeyedSubscript:@"Nonce"];
    if (v12)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100007760;
      v15[3] = &unk_100010BB0;
      v15[4] = self;
      v16 = v10;
      [MDMMCInterface enrollProvisionallyWithNonce:v12 completion:v15];
    }

    else
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Nonce token not received.", buf, 2u);
      }

      v14 = [objc_opt_class() responseWithStatus:@"NonceNotReceived"];
      (v10[2])(v10, v14);
    }
  }
}

- (id)_commandSetWiFiPower:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"PowerState"];
  v4 = [v3 BOOLValue];

  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = DMCStringForBool();
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting WiFi power: %{public}@", buf, 0xCu);
  }

  v8 = WiFiManagerClientCreate();
  if (v8)
  {
    v9 = v8;
    CFRunLoopGetCurrent();
    WiFiManagerClientScheduleWithRunLoop();
    if (WiFiManagerClientGetPower() == v4 || (WiFiManagerClientSetPower(), WiFiManagerClientGetPower() == v4))
    {
      CFRunLoopGetCurrent();
      WiFiManagerClientUnscheduleFromRunLoop();
      CFRelease(v9);
      v10 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
      goto LABEL_14;
    }

    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to set WiFi power.", buf, 2u);
    }

    CFRunLoopGetCurrent();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(v9);
    v18 = [@"TUNNEL_ERROR_COULD_NOT_SET_WIFI_POWER" DMCAppendGreenteaSuffix];
    v13 = DMCUnformattedErrorArray();

    v14 = DMCTunnelErrorDomain;
    v15 = DMCErrorTypeFatal;
    v16 = 14005;
  }

  else
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create WiFi manager client.", buf, 2u);
    }

    v12 = [@"TUNNEL_ERROR_COULD_NOT_CREATE_WIFI_MANAGER_CLIENT" DMCAppendGreenteaSuffix];
    v13 = DMCUnformattedErrorArray();

    v14 = DMCTunnelErrorDomain;
    v15 = DMCErrorTypeFatal;
    v16 = 14004;
  }

  v19 = [NSError DMCErrorWithDomain:v14 code:v16 descriptionArray:v13 errorType:v15, 0];
  v10 = [MTIPCUTunnelParser responseWithError:v19];

LABEL_14:

  return v10;
}

- (void)processRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKey:@"IPCUIdentifier"];

  if (v11)
  {
    v12 = [v8 objectForKey:@"IPCUIdentifier"];
    v13 = [v12 copy];
    [(MTIPCUTunnelParser *)self setHostIdentifier:v13];

    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      v16 = [(MTIPCUTunnelParser *)self hostIdentifier];
      *buf = 138543362;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Got iPCU Identifier: %{public}@", buf, 0xCu);
    }
  }

  v17 = [v8 objectForKey:@"HostCertificateData"];
  v18 = [(MTIPCUTunnelParser *)self hostIdentifier];

  if (v18 && v17)
  {
    v19 = [(MTIPCUTunnelParser *)self hostIdentifier];
    v20 = +[MDMConfiguration sharedConfiguration];
    v21 = [v20 personaID];
    v22 = DMCHCUCopyHostCertificateForMappedLabel();

    if (v22)
    {
      CFRelease(v22);
    }

    else
    {
      v23 = [(MTIPCUTunnelParser *)self hostIdentifier];
      [MDMMCInterface storeCertificateData:v17 forHostIdentifier:v23];
    }
  }

  v24 = [v8 objectForKey:kMCTPRequestTypeKey];
  v25 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Attempting to perform Unsupervised request: %{public}@", buf, 0xCu);
  }

  if (!v24)
  {
    v26 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusCommandFormatError];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"GetEncryptionKey"])
  {
    v26 = [(MTIPCUTunnelParser *)self _commandGetEncryptionKey:v8];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"SetCertificate"])
  {
    v26 = [(MTIPCUTunnelParser *)self _commandSetCertificate:v8];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"HelloHostIdentifier"])
  {
    v26 = [(MTIPCUTunnelParser *)self _commandHello:v8];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"Flush"])
  {
    v26 = [(MTIPCUTunnelParser *)self _commandFlush:v8];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"GetProfileList"])
  {
    v26 = [(MTIPCUTunnelParser *)self _commandGetProfileList:v8];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"InstallProfile"])
  {
    v26 = [(MTIPCUTunnelParser *)self _commandInstallProfile:v8];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"RemoveProfile"])
  {
    v26 = [(MTIPCUTunnelParser *)self _commandRemoveProfile:v8];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"StoreProfile"])
  {
    v26 = [(MTIPCUTunnelParser *)self _commandStoreProfile:v8];
    goto LABEL_29;
  }

  if ([v24 isEqualToString:@"GetStoredProfile"])
  {
    [(MTIPCUTunnelParser *)self _commandGetStoredProfile:v8 completionBlock:v10];
LABEL_53:
    v27 = 0;
    goto LABEL_31;
  }

  if ([v24 isEqualToString:@"GetCloudConfiguration"])
  {
    [(MTIPCUTunnelParser *)self _commandGetCloudConfiguration:v8 completionBlock:v10];
    goto LABEL_53;
  }

  if ([v24 isEqualToString:@"SetCloudConfiguration"])
  {
    [(MTIPCUTunnelParser *)self _commandSetCloudConfiguration:v8 completionBlock:v10];
    goto LABEL_53;
  }

  if ([v24 isEqualToString:@"DownloadAndApplyCloudConfiguration"])
  {
    [(MTIPCUTunnelParser *)self _commandDownloadAndApplyCloudConfiguration:v8 completionBlock:v10];
    goto LABEL_53;
  }

  if ([v24 isEqualToString:@"PollMDMIfNetworkTethered"])
  {
    [(MTIPCUTunnelParser *)self _commandPollMDMIfNetworkTetheredRequest:v8 completionBlock:v10];
    goto LABEL_53;
  }

  if ([v24 isEqualToString:@"Escalate"])
  {
    [(MTIPCUTunnelParser *)self _commandEscalate:v8 completionBlock:v10];
    goto LABEL_53;
  }

  if ([v24 isEqualToString:@"EscalateResponse"])
  {
    [(MTIPCUTunnelParser *)self _commandEscalateResponse:v8 completionBlock:v10];
    goto LABEL_53;
  }

  if ([v24 isEqualToString:@"EstablishProvisionalEnrollment"])
  {
    [(MTIPCUTunnelParser *)self _commandEstablishProvisionalEnrollmentRequest:v8 completionBlock:v10];
    goto LABEL_53;
  }

  if ([v24 isEqualToString:@"EraseDevice"])
  {
    [(MTIPCUTunnelParser *)self _commandEraseDevice:v8 completionBlock:v10];
    goto LABEL_53;
  }

  if (![v24 isEqualToString:@"SetWiFiPowerState"])
  {
    v28.receiver = self;
    v28.super_class = MTIPCUTunnelParser;
    [(MTIPCUTunnelParser *)&v28 processRequest:v8 assertion:v9 completionBlock:v10];
    goto LABEL_53;
  }

  v26 = [(MTIPCUTunnelParser *)self _commandSetWiFiPower:v8];
LABEL_29:
  v27 = v26;
  if (v10)
  {
    v10[2](v10, v26);
  }

LABEL_31:
}

@end