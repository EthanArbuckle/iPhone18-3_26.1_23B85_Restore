@interface KTLoggableData
- (BOOL)verifySignatureWithAccountKey:(id)key error:(id *)error;
- (void)computeHashesForSalt:(id)salt;
@end

@implementation KTLoggableData

- (void)computeHashesForSalt:(id)salt
{
  saltCopy = salt;
  deviceID = [(KTLoggableData *)self deviceID];

  if (deviceID)
  {
    deviceID2 = [(KTLoggableData *)self deviceID];
    v6 = [deviceID2 kt_sha256WithSalt:saltCopy];
    [(KTLoggableData *)self setDeviceIdHash:v6];
  }

  clientData = [(KTLoggableData *)self clientData];
  v8 = [clientData kt_sha256WithSalt:saltCopy];
  [(KTLoggableData *)self setClientDataHash:v8];
}

- (BOOL)verifySignatureWithAccountKey:(id)key error:(id *)error
{
  keyCopy = key;
  clientData = [(KTLoggableData *)self clientData];
  if (clientData && (v8 = clientData, [(KTLoggableData *)self signature], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    clientData2 = [(KTLoggableData *)self clientData];
    signature = [(KTLoggableData *)self signature];
    v45 = 0;
    v12 = [KTAccountKeyServer verifyData:clientData2 signature:signature accountPublicKeyInfo:keyCopy error:&v45];
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
        deviceID = [(KTLoggableData *)self deviceID];
        kt_hexString = [deviceID kt_hexString];
        ktCapable = [(KTLoggableData *)self ktCapable];
        clientData3 = [(KTLoggableData *)self clientData];
        kt_hexString2 = [clientData3 kt_hexString];
        kt_hexString3 = [keyCopy kt_hexString];
        signature2 = [(KTLoggableData *)self signature];
        kt_hexString4 = [signature2 kt_hexString];
        *buf = 138413314;
        v47 = kt_hexString;
        v48 = 1024;
        v49 = ktCapable;
        v50 = 2112;
        v51 = kt_hexString2;
        v52 = 2112;
        v53 = kt_hexString3;
        v54 = 2112;
        v55 = kt_hexString4;
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
      if (error && v38)
      {
        v40 = v38;
        v14 = 0;
        *error = v38;
      }

      v13 = v38;
    }
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
    deviceID2 = [(KTLoggableData *)self deviceID];
    kt_hexString5 = [deviceID2 kt_hexString];
    [v15 setObject:kt_hexString5 forKeyedSubscript:@"deviceID"];

    product = [(KTLoggableData *)self product];
    [v15 setObject:product forKeyedSubscript:@"product"];

    build = [(KTLoggableData *)self build];
    [v15 setObject:build forKeyedSubscript:@"build"];

    v20 = [NSNumber numberWithBool:[(KTLoggableData *)self ktCapable]];
    [v15 setObject:v20 forKeyedSubscript:@"ktCapable"];

    clientData4 = [(KTLoggableData *)self clientData];

    if (clientData4)
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
      deviceID3 = [(KTLoggableData *)self deviceID];
      kt_hexString6 = [deviceID3 kt_hexString];
      ktCapable2 = [(KTLoggableData *)self ktCapable];
      clientData5 = [(KTLoggableData *)self clientData];
      kt_hexString7 = [clientData5 kt_hexString];
      *buf = 138412802;
      v47 = kt_hexString6;
      v48 = 1024;
      v49 = ktCapable2;
      v50 = 2112;
      v51 = kt_hexString7;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "no signature for deviceId %@, ktCapable %d, client data %@", buf, 0x1Cu);
    }

    if (error && v13)
    {
      v30 = v13;
      *error = v13;
    }

    v14 = 0;
  }

  return v14;
}

@end