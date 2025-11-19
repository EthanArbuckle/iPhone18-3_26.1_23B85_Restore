@interface KTLoggableData
- (BOOL)verifySignatureWithAccountKey:(id)a3 error:(id *)a4;
- (void)computeHashesForSalt:(id)a3;
@end

@implementation KTLoggableData

- (void)computeHashesForSalt:(id)a3
{
  v9 = a3;
  v4 = [(KTLoggableData *)self deviceID];

  if (v4)
  {
    v5 = [(KTLoggableData *)self deviceID];
    v6 = [v5 kt_sha256WithSalt:v9];
    [(KTLoggableData *)self setDeviceIdHash:v6];
  }

  v7 = [(KTLoggableData *)self clientData];
  v8 = [v7 kt_sha256WithSalt:v9];
  [(KTLoggableData *)self setClientDataHash:v8];
}

- (BOOL)verifySignatureWithAccountKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTLoggableData *)self clientData];
  if (v7 && (v8 = v7, [(KTLoggableData *)self signature], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [(KTLoggableData *)self clientData];
    v11 = [(KTLoggableData *)self signature];
    v45 = 0;
    v12 = [KTAccountKeyServer verifyData:v10 signature:v11 accountPublicKeyInfo:v6 error:&v45];
    v13 = v45;

    if (v12)
    {
      v14 = 1;
    }

    else
    {
      if (qword_10039CAA8 != -1)
      {
        sub_10025CF28();
      }

      v31 = qword_10039CAB0;
      if (os_log_type_enabled(qword_10039CAB0, OS_LOG_TYPE_ERROR))
      {
        log = v31;
        v44 = [(KTLoggableData *)self deviceID];
        v42 = [v44 kt_hexString];
        v32 = [(KTLoggableData *)self ktCapable];
        v33 = [(KTLoggableData *)self clientData];
        v34 = [v33 kt_hexString];
        v35 = [v6 kt_hexString];
        v36 = [(KTLoggableData *)self signature];
        v37 = [v36 kt_hexString];
        *buf = 138413314;
        v47 = v42;
        v48 = 1024;
        v49 = v32;
        v50 = 2112;
        v51 = v34;
        v52 = 2112;
        v53 = v35;
        v54 = 2112;
        v55 = v37;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to verify signature for deviceID %@, ktCapable %d, client data %@ key: %@ signature: %@", buf, 0x30u);
      }

      v38 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-272 underlyingError:v13 description:@"failed to validate loggable data signature"];

      if (qword_10039CAA8 != -1)
      {
        sub_10025CF50();
      }

      v39 = qword_10039CAB0;
      if (os_log_type_enabled(qword_10039CAB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v38;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "failed to validate loggable data signatures: %@", buf, 0xCu);
      }

      v14 = 0;
      if (a4 && v38)
      {
        v40 = v38;
        v14 = 0;
        *a4 = v38;
      }

      v13 = v38;
    }
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
    v16 = [(KTLoggableData *)self deviceID];
    v17 = [v16 kt_hexString];
    [v15 setObject:v17 forKeyedSubscript:@"deviceID"];

    v18 = [(KTLoggableData *)self product];
    [v15 setObject:v18 forKeyedSubscript:@"product"];

    v19 = [(KTLoggableData *)self build];
    [v15 setObject:v19 forKeyedSubscript:@"build"];

    v20 = [NSNumber numberWithBool:[(KTLoggableData *)self ktCapable]];
    [v15 setObject:v20 forKeyedSubscript:@"ktCapable"];

    v21 = [(KTLoggableData *)self clientData];

    if (v21)
    {
      v22 = -286;
    }

    else
    {
      v22 = -362;
    }

    v13 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:v22 errorLevel:4 underlyingError:0 userinfo:v15 description:@"no signature for client data"];
    if (qword_10039CAA8 != -1)
    {
      sub_10025CF78();
    }

    v23 = qword_10039CAB0;
    if (os_log_type_enabled(qword_10039CAB0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [(KTLoggableData *)self deviceID];
      v26 = [v25 kt_hexString];
      v27 = [(KTLoggableData *)self ktCapable];
      v28 = [(KTLoggableData *)self clientData];
      v29 = [v28 kt_hexString];
      *buf = 138412802;
      v47 = v26;
      v48 = 1024;
      v49 = v27;
      v50 = 2112;
      v51 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "no signature for deviceId %@, ktCapable %d, client data %@", buf, 0x1Cu);
    }

    if (a4 && v13)
    {
      v30 = v13;
      *a4 = v13;
    }

    v14 = 0;
  }

  return v14;
}

@end