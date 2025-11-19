@interface FMDFMIPNanoIDSListener
- (FMDFMIPNanoIDSListener)initWithManager:(id)a3;
- (id)_v5SignedResponseForRequestBody:(id)a3 activationLockRequestUUID:(id)a4;
- (void)_registerIDSHandlers;
@end

@implementation FMDFMIPNanoIDSListener

- (FMDFMIPNanoIDSListener)initWithManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FMDFMIPNanoIDSListener;
  v6 = [(FMDFMIPNanoIDSListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsManager, a3);
    [(FMDFMIPNanoIDSListener *)v7 _registerIDSHandlers];
    [(FMNanoIDSManager *)v7->_idsManager start];
  }

  return v7;
}

- (void)_registerIDSHandlers
{
  v3 = [(FMDFMIPNanoIDSListener *)self idsManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001683B8;
  v7[3] = &unk_1002CF310;
  v7[4] = self;
  [v3 handleRequestsOfType:1 withHandler:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001685C8;
  v6[3] = &unk_1002CF310;
  v6[4] = self;
  [v3 handleRequestsOfType:3 withHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001687A4;
  v5[3] = &unk_1002CF310;
  v5[4] = self;
  [v3 handleRequestsOfType:7 withHandler:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100168980;
  v4[3] = &unk_1002CF310;
  v4[4] = self;
  [v3 handleRequestsOfType:9 withHandler:v4];
  [v3 handleRequestsOfType:5 withHandler:&stru_1002CF350];
}

- (id)_v5SignedResponseForRequestBody:(id)a3 activationLockRequestUUID:(id)a4
{
  v55 = a3;
  v56 = a4;
  v59 = [v55 mutableCopy];
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSDate date];
  [v6 timeIntervalSince1970];
  v57 = [NSString stringWithFormat:@"%ld", v7];

  v8 = +[FMSystemInfo sharedInstance];
  v9 = [v8 serialNumber];
  [v5 fm_safelyMapKey:@"serialNumber" toObject:v9];

  v10 = [v8 imei];
  [v5 fm_safelyMapKey:@"imei" toObject:v10];

  v11 = [v8 meid];
  [v5 fm_safelyMapKey:@"meid" toObject:v11];

  v12 = [v8 ecid];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v12 longLongValue]);
  [v5 fm_safelyMapKey:@"ecid" toObject:v13];

  v14 = +[FMDSystemConfig sharedInstance];
  v15 = [v14 chipId];
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [v15 longLongValue]);
  [v5 fm_safelyMapKey:@"chipId" toObject:v16];

  v17 = [v8 wifiMacAddress];
  [v5 fm_safelyMapKey:@"wifiMac" toObject:v17];

  v18 = [v8 btMacAddress];
  [v5 fm_safelyMapKey:@"btMac" toObject:v18];

  [v5 fm_safelyMapKey:@"timeStampMillis" toObject:v57];
  v19 = +[FMDAbsintheV3SigningInterface sharedInterface];
  v79 = 0;
  v20 = [v19 inFieldCollectionReceipt:&v79];
  v58 = v79;
  [v5 fm_safelyMapKey:@"ifcReceipt" toObject:v20];

  v21 = [v58 fm_commaSeparatedString];
  [v5 fm_safelyMapKey:@"collectionError" toObject:v21];

  v22 = +[FMSystemInfo sharedInstance];
  LODWORD(v20) = [v22 isInternalBuild];

  if (v20)
  {
    v23 = [v58 description];
    [v5 fm_safelyMapKey:@"collectionErrorDetail" toObject:v23];
  }

  v24 = +[NSMutableDictionary dictionary];
  v25 = [v8 productType];
  [v24 fm_safelyMapKey:@"productType" toObject:v25];

  v26 = [v8 deviceUDID];
  [v24 fm_safelyMapKey:@"udid" toObject:v26];

  v27 = +[FMDSystemConfig sharedInstance];
  v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v27 alCapability]);
  [v24 fm_safelyMapKey:@"alCapability" toObject:v28];

  [v5 fm_safelyMapKey:@"deviceInfo" toObject:v24];
  [v59 setObject:v5 forKeyedSubscript:@"otherDevice"];
  v29 = objc_alloc_init(FMDNanoSupportProtoSignedDataV5);
  v78 = 0;
  v30 = [NSJSONSerialization dataWithJSONObject:v59 options:0 error:&v78];
  v31 = v78;
  v32 = sub_100002880();
  v33 = v32;
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Error serializing the data to sign : %@", buf, 0xCu);
    }

    [(FMDNanoSupportProtoSignedDataV5 *)v29 setErrorOccurred:1];
  }

  else
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_100229A94(v30, v33);
    }

    v34 = v30;
    CC_SHA256([v30 bytes], objc_msgSend(v30, "length"), md);
    v53 = [NSData dataWithBytes:md length:32];
    v35 = +[FMDAbsintheV3SigningInterface sharedInterface];
    v77 = 0;
    v54 = [v35 signatureForData:v53 requestUUID:v56 mode:0 error:&v77];
    v50 = v77;

    if ([v54 count] == 2)
    {
      v36 = [v54 objectAtIndexedSubscript:0];
      [(FMDNanoSupportProtoSignedDataV5 *)v29 setSignedData:v36];

      v37 = [v54 objectAtIndexedSubscript:1];
      [(FMDNanoSupportProtoSignedDataV5 *)v29 setSkAuth:v37];

      [(FMDNanoSupportProtoSignedDataV5 *)v29 setFinalRequestJsonData:v30];
      v38 = sub_100002880();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [(FMDNanoSupportProtoSignedDataV5 *)v29 signedData];
        v39 = [v51 length];
        v40 = [(FMDNanoSupportProtoSignedDataV5 *)v29 skAuth];
        v41 = [v40 length];
        *buf = 134218240;
        *&buf[4] = v39;
        *&buf[12] = 2048;
        *&buf[14] = v41;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Signed data length : %ld, sk auth length : %ld", buf, 0x16u);
      }
    }

    else
    {
      [(FMDNanoSupportProtoSignedDataV5 *)v29 setErrorOccurred:1];
    }

    v52 = objc_alloc_init(FMDDeviceIdentityFactory);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v81 = sub_10000AA34;
    v82 = sub_100002AE4;
    v83 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = sub_10000AA34;
    v75 = sub_100002AE4;
    v76 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = sub_10000AA34;
    v69 = sub_100002AE4;
    v70 = 0;
    v42 = [[FMDIdentitySigningRequest alloc] initWithData:v53];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1001699C0;
    v60[3] = &unk_1002CF378;
    v62 = &v65;
    v63 = buf;
    v64 = &v71;
    v43 = [[FMSynchronizer alloc] initWithDescription:@"FMDRequestIdentityV5.BAASigning" andTimeout:60.0];
    v61 = v43;
    [v52 baaIdentityAttestationForSigningRequest:v42 completion:v60];
    [v43 wait];
    if ([v43 timeoutOccurred])
    {
      v44 = [NSError errorWithDomain:kFMDErrorDomain code:4 userInfo:0];
      v45 = v66[5];
      v66[5] = v44;
    }

    [(FMDNanoSupportProtoSignedDataV5 *)v29 setBaaSignature:*(*&buf[8] + 40)];
    [(FMDNanoSupportProtoSignedDataV5 *)v29 setBaaAttestation:v72[5]];
    v46 = v66[5];
    if (v46)
    {
      v47 = [v46 domain];
      v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%ld", v47, [v66[5] code], v50);
      [(FMDNanoSupportProtoSignedDataV5 *)v29 setBaaError:v48];
    }

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v71, 8);

    _Block_object_dispose(buf, 8);
  }

  return v29;
}

@end