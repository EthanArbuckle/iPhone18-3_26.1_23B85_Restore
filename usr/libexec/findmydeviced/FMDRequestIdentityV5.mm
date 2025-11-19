@interface FMDRequestIdentityV5
- (BOOL)canReplace:(id)a3;
- (BOOL)canRequestBeRetriedNow;
- (FMDRequestIdentityV5)initWithProvider:(id)a3 identityInfo:(id)a4;
- (FMDServiceProvider)provider;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
- (void)_calculateSignatureForBody:(id)a3;
@end

@implementation FMDRequestIdentityV5

- (FMDRequestIdentityV5)initWithProvider:(id)a3 identityInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 account];
  v14.receiver = self;
  v14.super_class = FMDRequestIdentityV5;
  v9 = [(FMDRequest *)&v14 initWithAccount:v8];

  if (v9)
  {
    [(FMDRequestIdentityV5 *)v9 setProvider:v6];
    v10 = [v7 timeoutIntervalInSec];
    if (v10 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 60;
    }

    [(FMDRequestIdentityV5 *)v9 setBaaIdentityTimeoutIntervalInSec:v11];
    v12 = [v7 commandID];
    [(FMDRequestIdentityV5 *)v9 setCommandID:v12];
  }

  return v9;
}

- (id)requestUrl
{
  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 deviceUDID];

  v5 = objc_alloc_init(RequestTemplateURL);
  v6 = [(FMDRequestIdentityV5 *)self provider];
  v7 = [v6 account];
  v8 = [(RequestTemplateURL *)v5 urlFromTemplate:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/identityV5" account:v7 udid:v4];

  return v8;
}

- (id)requestHeaders
{
  v14.receiver = self;
  v14.super_class = FMDRequestIdentityV5;
  v3 = [(FMDRequest *)&v14 requestHeaders];
  v4 = [(FMDRequestIdentityV5 *)self signatureHeader];
  [v3 fm_safelyMapKey:@"X-Mme-Sign1" toObject:v4];

  v5 = [(FMDRequestIdentityV5 *)self skAuthHeader];
  [v3 fm_safelyMapKey:@"X-Mme-Sign2" toObject:v5];

  v6 = [(FMDRequestIdentityV5 *)self baaAttestationHeader];
  [v3 fm_safelyMapKey:@"X-Mme-Sign5" toObject:v6];

  v7 = [(FMDRequestIdentityV5 *)self baaSignatureHeader];
  [v3 fm_safelyMapKey:@"X-Mme-Sign6" toObject:v7];

  v8 = [(FMDRequestIdentityV5 *)self activationLockRequestUUID];
  v9 = [v8 UUIDString];
  [v3 fm_safelyMapKey:@"X-Apple-AL-ID" toObject:v9];

  v10 = [(FMDRequestIdentityV5 *)self signatureError];
  [v3 fm_safelyMapKey:@"X-Apple-Sign1-Error" toObject:v10];

  v11 = [(FMDRequestIdentityV5 *)self baaError];
  [v3 fm_safelyMapKey:@"X-Apple-Sign5-Error" toObject:v11];

  v12 = [(FMDRequestIdentityV5 *)self baaErrorDescription];
  [v3 fm_safelyMapKey:@"X-Apple-Sign5-Error-Desc" toObject:v12];

  return v3;
}

- (id)requestBody
{
  v43.receiver = self;
  v43.super_class = FMDRequestIdentityV5;
  v3 = [(FMDRequest *)&v43 requestBody];
  v4 = [(FMDRequestIdentityV5 *)self provider];
  if (v4)
  {
    v5 = objc_alloc_init(FMDActingRequestDecorator);
    v6 = [(FMDActingRequestDecorator *)v5 standardDeviceContext];

    v7 = [v4 account];
    v8 = [v7 authId];
    [v3 fm_safelyMapKey:@"dsid" toObject:v8];

    [v3 fm_safelyMapKey:@"deviceContext" toObject:v6];
    v9 = +[ServerDeviceInfo sharedInstance];
    v10 = [v4 account];
    v11 = [v9 identityDeviceInfoForAccount:v10];
    [v3 fm_safelyMapKey:@"deviceInfo" toObject:v11];
  }

  v12 = [(FMDRequestIdentityV5 *)self commandID];
  [v3 fm_safelyMapKey:@"cmdId" toObject:v12];

  v13 = +[FMDSystemConfig sharedInstance];
  v14 = [v13 internationalMobileEquipmentIdentity];
  [v3 fm_safelyMapKey:@"imei" toObject:v14];

  v15 = +[FMDSystemConfig sharedInstance];
  v16 = [v15 internationalMobileEquipmentIdentityTwo];
  [v3 fm_safelyMapKey:@"imei2" toObject:v16];

  v17 = +[FMDSystemConfig sharedInstance];
  v18 = [v17 mobileEquipmentIdentifier];
  [v3 fm_safelyMapKey:@"meid" toObject:v18];

  v19 = +[FMDSystemConfig sharedInstance];
  v20 = [v19 serialNumber];

  [v3 fm_safelyMapKey:@"serialNumber" toObject:v20];
  v21 = +[FMDSystemConfig sharedInstance];
  v22 = [v21 escrowHash];
  v23 = [v22 hexString];
  [v3 fm_safelyMapKey:@"escrowHash" toObject:v23];

  v24 = +[FMDSystemConfig sharedInstance];
  v25 = [v24 ecid];
  v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v25 longLongValue]);
  [v3 fm_safelyMapKey:@"ecid" toObject:v26];

  v27 = +[FMDSystemConfig sharedInstance];
  v28 = [v27 chipId];
  v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v28 longLongValue]);
  [v3 fm_safelyMapKey:@"chipId" toObject:v29];

  v30 = +[FMDSystemConfig sharedInstance];
  v31 = [v30 wifiMacAddress];
  [v3 fm_safelyMapKey:@"wifiMac" toObject:v31];

  v32 = +[FMDSystemConfig sharedInstance];
  v33 = [v32 btMacAddress];
  [v3 fm_safelyMapKey:@"btMac" toObject:v33];

  v34 = +[FMDAbsintheV3SigningInterface sharedInterface];
  v42 = 0;
  v35 = [v34 inFieldCollectionReceipt:&v42];
  v36 = v42;
  [v3 fm_safelyMapKey:@"ifcReceipt" toObject:v35];

  v37 = [v36 fm_commaSeparatedString];
  [v3 fm_safelyMapKey:@"collectionError" toObject:v37];

  v38 = +[FMSystemInfo sharedInstance];
  LODWORD(v35) = [v38 isInternalBuild];

  if (v35)
  {
    v39 = [v36 description];
    [v3 fm_safelyMapKey:@"collectionErrorDetail" toObject:v39];
  }

  v40 = +[NSUUID UUID];
  [(FMDRequestIdentityV5 *)self setActivationLockRequestUUID:v40];
  [(FMDRequestIdentityV5 *)self _calculateSignatureForBody:v3];

  return v3;
}

- (BOOL)canRequestBeRetriedNow
{
  if ([(FMDRequest *)self httpResponseStatus]== 501)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = FMDRequestIdentityV5;
  return [(FMDRequest *)&v4 canRequestBeRetriedNow];
}

- (BOOL)canReplace:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_calculateSignatureForBody:(id)a3
{
  v4 = a3;
  v45 = [(FMDRequestIdentityV5 *)self activationLockRequestUUID];
  [(FMDRequestIdentityV5 *)self setSignatureHeader:0];
  [(FMDRequestIdentityV5 *)self setSkAuthHeader:0];
  [(FMDRequestIdentityV5 *)self setRequestBodyDataForSignature:0];
  [(FMDRequestIdentityV5 *)self setBaaSignatureHeader:0];
  [(FMDRequestIdentityV5 *)self setBaaAttestationHeader:0];
  if (v4)
  {
    v64 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v64];
    v6 = v64;
    [(FMDRequestIdentityV5 *)self setRequestBodyDataForSignature:v5];

    v7 = [(FMDRequestIdentityV5 *)self requestBodyDataForSignature];
    LODWORD(v5) = v7 == 0;

    if (v5)
    {
      v8 = sub_100002880();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10022A4BC(self);
      }
    }

    if (v6)
    {
      v9 = sub_100002880();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10022A550(self);
      }

      v10 = sub_10017D9A8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022A5EC(self);
      }
    }
  }

  v11 = [(FMDRequestIdentityV5 *)self requestBodyDataForSignature];
  v12 = v11 == 0;

  if (!v12)
  {
    v13 = +[NSMutableData data];
    v44 = [(FMDRequest *)self authHeaderValue];
    if ([v44 length])
    {
      v14 = [v44 dataUsingEncoding:4];
      [v13 appendData:v14];
    }

    v15 = [(FMDRequestIdentityV5 *)self requestBodyDataForSignature];
    [v13 appendData:v15];

    v16 = v13;
    CC_SHA256([v13 bytes], objc_msgSend(v13, "length"), md);
    v17 = [NSData dataWithBytes:md length:32];
    v18 = +[FMDAbsintheV3SigningInterface sharedInterface];
    v63 = 0;
    v43 = [v18 signatureForData:v17 requestUUID:v45 mode:0 error:&v63];
    v19 = v63;

    if (v19)
    {
      v20 = [v19 code];
      v21 = [v19 userInfo];
      v22 = [v21 objectForKeyedSubscript:@"kFMDUnderlyingErrorCodeKey"];
      v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld,%ld", v20, [v22 integerValue]);
      [(FMDRequestIdentityV5 *)self setSignatureError:v23];
    }

    else
    {
      if ([v43 count] != 2)
      {
        goto LABEL_19;
      }

      v40 = [v43 objectAtIndexedSubscript:0];
      v21 = [v40 base64EncodedString];

      v41 = [v43 objectAtIndexedSubscript:1];
      v22 = [v41 base64EncodedString];

      [(FMDRequestIdentityV5 *)self setSignatureHeader:v21];
      v42 = sub_100002880();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v67) = 138412290;
        *(&v67 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Signature header: %@", &v67, 0xCu);
      }

      [(FMDRequestIdentityV5 *)self setSkAuthHeader:v22];
      v23 = sub_100002880();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v67) = 138412290;
        *(&v67 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SkAuth header: %@", &v67, 0xCu);
      }
    }

LABEL_19:
    v24 = objc_alloc_init(FMDDeviceIdentityFactory);
    *&v67 = 0;
    *(&v67 + 1) = &v67;
    v68 = 0x3032000000;
    v69 = sub_10000AA44;
    v70 = sub_100002AEC;
    v71 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = sub_10000AA44;
    v61 = sub_100002AEC;
    v62 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_10000AA44;
    v55 = sub_100002AEC;
    v56 = 0;
    v25 = [[FMDIdentitySigningRequest alloc] initWithData:v17];
    v26 = sub_100002880();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(FMDRequestIdentityV5 *)self baaIdentityTimeoutIntervalInSec];
      *buf = 134217984;
      v66 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sign Using BAA with timeout: %lu seconds", buf, 0xCu);
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1001780E4;
    v46[3] = &unk_1002CF378;
    v48 = &v51;
    v49 = &v67;
    v50 = &v57;
    v28 = [[FMSynchronizer alloc] initWithDescription:@"FMDRequestIdentityV5.BAASigning" andTimeout:{-[FMDRequestIdentityV5 baaIdentityTimeoutIntervalInSec](self, "baaIdentityTimeoutIntervalInSec")}];
    v47 = v28;
    [v24 baaIdentityAttestationForSigningRequest:v25 completion:v46];
    [v28 wait];
    if ([v28 timeoutOccurred])
    {
      v29 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
      v30 = v52[5];
      v52[5] = v29;
    }

    v31 = [*(*(&v67 + 1) + 40) base64EncodedString];
    [(FMDRequestIdentityV5 *)self setBaaSignatureHeader:v31];

    v32 = [v58[5] base64EncodedString];
    [(FMDRequestIdentityV5 *)self setBaaAttestationHeader:v32];

    v33 = v52[5];
    if (v33)
    {
      v34 = [v33 domain];
      v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%ld", v34, [v52[5] code]);
      [(FMDRequestIdentityV5 *)self setBaaError:v35];

      v36 = [v52[5] description];
      [(FMDRequestIdentityV5 *)self setBaaErrorDescription:v36];

      v37 = [FMDALFailureAnalyticsManager alloc];
      WeakRetained = objc_loadWeakRetained(&self->_provider);
      v39 = [(FMDALFailureAnalyticsManager *)v37 initWithProvider:WeakRetained context:@"IdentityV5"];

      [(FMDALFailureAnalyticsManager *)v39 performAnalytics:v52[5]];
    }

    else
    {
      [(FMDRequestIdentityV5 *)self setBaaError:0];
      [(FMDRequestIdentityV5 *)self setBaaErrorDescription:0];
    }

    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v57, 8);

    _Block_object_dispose(&v67, 8);
  }
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end