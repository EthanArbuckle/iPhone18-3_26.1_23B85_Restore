@interface MIBUBTController
- (MIBUBTController)initWithDelegate:(id)a3;
- (id)_getDispatchTable;
- (id)_handleAuthenticate:(id)a3;
- (id)_handleChallenge:(id)a3;
- (id)_handleDeviceInfo:(id)a3;
- (id)_handleStartSSUpdate:(id)a3;
- (id)_handleStartUpdate:(id)a3;
- (id)_handleStatusUpdate:(id)a3;
- (id)_loadAdvertisementPayload;
- (id)_loadLinkEncryptionKey;
- (id)handleCommand:(id)a3;
- (void)_verifyTatsuTicketFromCmd:(id)a3 error:(id *)a4;
- (void)didConnect:(id)a3;
- (void)didDisconnect:(id)a3;
- (void)didInit:(id)a3;
- (void)didInvalidate:(id)a3;
- (void)reset:(id *)a3;
- (void)start:(id *)a3;
- (void)terminate:(id *)a3;
@end

@implementation MIBUBTController

- (MIBUBTController)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MIBUBTController;
  v5 = [(MIBUBTController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUBTController *)v5 setDelegate:v4];
    [(MIBUBTController *)v6 setAuthenticated:0];
    v7 = [[MIBUBTConnection alloc] initWithDelegate:v6];
    [(MIBUBTController *)v6 setConnection:v7];

    v8 = [(MIBUBTController *)v6 _getDispatchTable];
    [(MIBUBTController *)v6 setDispatchTable:v8];

    [(MIBUBTController *)v6 setShouldCloseSession:0];
  }

  return v6;
}

- (void)reset:(id *)a3
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005870C();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reseting BT controller", v6, 2u);
  }

  [(MIBUBTController *)self setAuthenticated:0];
  v5 = [[MIBUBTConnection alloc] initWithDelegate:self];
  [(MIBUBTController *)self setConnection:v5];
}

- (void)start:(id *)a3
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058720();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting BT controller", v9, 2u);
  }

  v6 = [(MIBUBTController *)self _loadAdvertisementPayload];
  v7 = [(MIBUBTController *)self _loadLinkEncryptionKey];
  v8 = [(MIBUBTController *)self connection];
  [v8 startWithRspIRK:v6 usingLTK:v7 outError:a3];
}

- (void)terminate:(id *)a3
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058734();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Terminating BT controller", v6, 2u);
  }

  v5 = [(MIBUBTController *)self connection];
  [v5 invalidate];
}

- (void)didInit:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058748();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Listening for Bluetooth connection: %{public}@", &v8, 0xCu);
  }

  v7 = [(MIBUBTController *)v5 delegate];
  [v7 didInit];

  objc_sync_exit(v5);
}

- (void)didConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005875C();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bluetooth connection established: %{public}@", &v8, 0xCu);
  }

  [(MIBUBTController *)v5 setConnection:v4];
  v7 = [(MIBUBTController *)v5 delegate];
  [v7 didConnect];

  objc_sync_exit(v5);
}

- (void)didDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058770();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bluetooth connection dropped: %{public}@", &v10, 0xCu);
  }

  if ([(MIBUBTController *)v5 shouldCloseSession])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058784();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Closing Bluetooth session", &v10, 2u);
    }

    v8 = [(MIBUBTController *)v5 connection];
    [v8 invalidate];

    [(MIBUBTController *)v5 setConnection:0];
  }

  v9 = [(MIBUBTController *)v5 delegate];
  [v9 didDisconnect];

  objc_sync_exit(v5);
}

- (void)didInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000587AC();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalidated Bluetooth connection: %{public}@", &v8, 0xCu);
  }

  v7 = [(MIBUBTController *)v5 delegate];
  [v7 didInvalidate];

  objc_sync_exit(v5);
}

- (id)handleCommand:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MIBUNFCResponse);
  v6 = [(MIBUBTController *)self connection];

  if (v6)
  {
    if (-[MIBUBTController authenticated](self, "authenticated") || [v4 code] == 1 || objc_msgSend(v4, "code") == 12 || objc_msgSend(v4, "code") == 13)
    {
      v7 = [(MIBUBTController *)self delegate];
      v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
      v9 = [v7 isCommandAllowed:v8];

      if (v9)
      {
        v10 = [(MIBUBTController *)self dispatchTable];
        v11 = [v10 allKeys];
        v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          v14 = [(MIBUBTController *)self dispatchTable];
          v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
          v16 = [v14 objectForKey:v15];
          v17 = NSSelectorFromString(v16);

          v18 = ([(MIBUBTController *)self methodForSelector:v17])(self, v17, v4);

          v19 = [(MIBUBTController *)self delegate];
          v20 = [(MIBUNFCResponse *)v18 error];
          [v19 didHandleCommand:v4 withError:v20];

          v5 = v18;
        }

        else
        {
          sub_100058970();
        }
      }

      else
      {
        sub_100058898();
      }
    }

    else
    {
      sub_1000587C0();
    }
  }

  else
  {
    sub_100058A48();
  }

  return v5;
}

- (id)_loadAdvertisementPayload
{
  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 useSrNmForDeviceKey], v2, v3))
  {
    v4 = MGCopyAnswer();
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058BBC();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using device serial number %{public}@ as adv key", buf, 0xCu);
    }

    v6 = [v4 dataUsingEncoding:4];
    v7 = [NSData adjustData:v6 toLength:10];
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058BD0();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loaded advertisement material: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v10 = 0;
    v4 = [MIBUCryptoHelper deriveDeviceIDsForBTAdvertisement:&v10];
    v6 = v10;
    if (v4 && [v4 count] == 3)
    {
      v7 = [v4 objectAtIndexedSubscript:1];
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100058B20();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100058B48();
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)_loadLinkEncryptionKey
{
  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 useSrNmForDeviceKey], v2, v3))
  {
    v4 = MGCopyAnswer();
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058C94();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using device serial number %{public}@ as link encryption key", buf, 0xCu);
    }

    v6 = [v4 dataUsingEncoding:4];
    v7 = [NSData adjustData:v6 toLength:10];
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058CA8();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loaded link encryption key: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v10 = 0;
    v4 = [MIBUCryptoHelper deriveDeviceIDsForBTConnection:&v10];
    v6 = v10;
    if (v4 && [v4 count] == 3)
    {
      v7 = [v4 objectAtIndexedSubscript:1];
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100058BF8();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100058C20();
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)_getDispatchTable
{
  v4[0] = &off_1000A7F50;
  v4[1] = &off_1000A7F68;
  v5[0] = @"_handleDeviceInfo:";
  v5[1] = @"_handleStartUpdate:";
  v4[2] = &off_1000A7F80;
  v4[3] = &off_1000A7F98;
  v5[2] = @"_handleStatusUpdate:";
  v5[3] = @"_handleChallenge:";
  v4[4] = &off_1000A7FB0;
  v4[5] = &off_1000A7FC8;
  v5[4] = @"_handleAuthenticate:";
  v5[5] = @"_handleStartSSUpdate:";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (id)_handleDeviceInfo:(id)a3
{
  v3 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058CD0();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling device info command...", buf, 2u);
  }

  v9 = MGCopyAnswer();
  if (!v9)
  {
    v48 = 0;
    sub_100016130(&v48, 100663299, 0, @"Failed to fetch device serial number", v5, v6, v7, v8, v42);
    v24 = v48;
    goto LABEL_19;
  }

  v10 = MGCopyAnswer();
  if (!v10)
  {
    sub_100058E7C();
LABEL_25:
    v24 = *buf;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = MGCopyAnswer();
  if (!v12)
  {
    sub_100058DAC(&v47, v11, buf);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = MGCopyAnswer();
  if (!v14)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058D84();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100055A04();
    }

    v46 = 0;
    sub_100016130(&v46, 100663299, 0, @"Failed to fetch device chipID", v26, v27, v28, v29, v42);
    v24 = v46;
    goto LABEL_47;
  }

  v15 = v14;
  v16 = MGCopyAnswer();
  if (!v16)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058D5C();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000559A8();
    }

    v45 = 0;
    sub_100016130(&v45, 100663299, 0, @"Failed to fetch device security domain", v30, v31, v32, v33, v42);
    v24 = v45;
    goto LABEL_46;
  }

  v17 = v16;
  v18 = +[MIBUTatsuVerifier apNonce];
  if (!v18)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058D34();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005594C();
    }

    v44 = 0;
    sub_100016130(&v44, 100663299, 0, @"Failed to fetch device apNonce", v34, v35, v36, v37, v42);
    v24 = v44;

    goto LABEL_46;
  }

  v19 = v18;
  v20 = +[MIBUTatsuVerifier sepNonce];
  if (!v20)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058D0C();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000558F0();
    }

    v43 = 0;
    sub_100016130(&v43, 100663299, 0, @"Failed to fetch device sepNonce", v38, v39, v40, v41, v42);
    v24 = v43;

LABEL_46:
LABEL_47:

    goto LABEL_19;
  }

  v21 = v20;
  v22 = +[MIBUTatsuVerifier sikaFuse];
  if (!v22)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058CE4();
    }

    v23 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No SikAFuse key detected", buf, 2u);
    }

    v22 = [NSNumber numberWithInt:0];
    [v3 setSikaFuseExists:0];
  }

  [v3 setSerialNumber:v9];
  [v3 setEcid:v11];
  [v3 setBoardID:v13];
  [v3 setChipID:v15];
  [v3 setSecurityDomain:v17];
  [v3 setApNonce:v19];
  [v3 setSepNonce:v21];
  [v3 setSikaFuse:v22];
  [v3 setProductionMode:MGGetBoolAnswer()];
  [v3 setSecurityMode:MGGetBoolAnswer()];
  [v3 setUidMode:0];

  v24 = 0;
LABEL_19:
  [v3 setError:v24];

  return v3;
}

- (id)_handleStartUpdate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058F3C();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling start update command...", buf, 2u);
  }

  v9 = 0;
  [(MIBUBTController *)self _verifyTatsuTicketFromCmd:v4 error:&v9];

  v7 = v9;
  [v5 setError:v7];

  return v5;
}

- (id)_handleStatusUpdate:(id)a3
{
  v4 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058F50();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling status update command...", buf, 2u);
  }

  v6 = [(MIBUBTController *)self delegate];
  v7 = [v6 deviceStatus];
  [v4 setStatus:v7];

  v8 = +[MIBUDeviceController sharedInstance];
  v9 = [v8 osVersion];
  [v4 setOsVersion:v9];

  v10 = [v4 osVersion];

  if (v10)
  {
    v18 = MGCopyAnswer();
    [v4 setSerialNumber:v18];

    v19 = [v4 serialNumber];

    if (v19)
    {
      v27 = +[MIBUDeviceController sharedInstance];
      v28 = [v27 buildVersion];
      [v4 setBuildVersion:v28];

      v29 = [v4 buildVersion];

      if (v29)
      {
        v37 = 0;
        goto LABEL_9;
      }

      v39 = &v40;
      sub_100055C04(&v40, v30, v31, v32, v33, v34, v35, v36);
    }

    else
    {
      v39 = &v41;
      sub_100055C28(&v41, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  else
  {
    v39 = &v42;
    sub_100055C4C(&v42, v11, v12, v13, v14, v15, v16, v17);
  }

  v37 = *v39;
LABEL_9:
  [v4 setError:v37];

  return v4;
}

- (id)_handleChallenge:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_10001C3F0;
  v49 = sub_10001C400;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_10001C3F0;
  v43 = sub_10001C400;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10001C3F0;
  v37 = sub_10001C400;
  v38 = 0;
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058F64();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling challenge command...", buf, 2u);
  }

  v6 = [v3 payload];
  v7 = [v6 objectForKey:@"ChallengeBlob"];

  if (!v7)
  {
    v31 = 0;
    v24 = &v31;
    sub_100016130(&v31, 100663300, 0, @"No challenge blob provided.", v8, v9, v10, v11, v25);
LABEL_20:
    v22 = *v24;
    v17 = 0;
    goto LABEL_15;
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001C470;
  v30[3] = &unk_10009B4E8;
  v30[4] = &v45;
  v30[5] = &v39;
  v30[6] = &v33;
  [MIBUCryptoHelper createSignatureUsingSUCertForData:v7 withCompletion:v30];
  v16 = v34[5];
  if (v16)
  {
    v29 = 0;
    v24 = &v29;
    sub_100016130(&v29, 100663300, v16, @"Failed to sign challenge data using SU cert", v12, v13, v14, v15, v25);
    goto LABEL_20;
  }

  v17 = objc_alloc_init(NSMutableData);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v46[5];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v51 count:16];
  if (v19)
  {
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [v17 appendData:{*(*(&v25 + 1) + 8 * i), v25}];
      }

      v19 = [v18 countByEnumeratingWithState:&v25 objects:v51 count:16];
    }

    while (v19);
  }

  [v4 setSignatureBlob:v40[5]];
  [v4 setCertChainBlob:v17];
  v22 = 0;
LABEL_15:
  [v4 setError:{v22, v25}];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);

  return v4;
}

- (id)_handleAuthenticate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058F8C();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling status authenticate command...", buf, 2u);
  }

  v11 = 0;
  [(MIBUBTController *)self _verifyTatsuTicketFromCmd:v4 error:&v11];

  v7 = v11;
  if (!v7)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100058FA0();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BT Link Authenticated!", v10, 2u);
    }

    [(MIBUBTController *)self setAuthenticated:1];
  }

  [v5 setError:v7];

  return v5;
}

- (id)_handleStartSSUpdate:(id)a3
{
  v4 = objc_opt_new();
  if (qword_1000B84A8[0] != -1)
  {
    sub_100058FC8();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling start SS update command...", buf, 2u);
  }

  v6 = [(MIBUBTController *)self delegate];
  v7 = [v6 deviceStatus];
  v8 = [v7 state];

  if (v8 == 1)
  {
    v9 = 0;
  }

  else
  {
    sub_100058FDC(&v11, self, buf);
    v9 = *buf;
  }

  [v4 setError:v9];

  return v4;
}

- (void)_verifyTatsuTicketFromCmd:(id)a3 error:(id *)a4
{
  v5 = [a3 payload];
  v6 = [v5 objectForKey:@"TatsuTicket"];

  if (qword_1000B84A8[0] != -1)
  {
    sub_100059064();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Tatsu ticket: %{public}@", buf, 0xCu);
  }

  if (v6)
  {
    v19 = 0;
    v15 = &v19;
    [MIBUTatsuVerifier verifyTatsuEntitlement:v6 error:&v19];
  }

  else
  {
    v15 = &v20;
    sub_100056134(&v20, v8, v9, v10, v11, v12, v13, v14);
  }

  v16 = *v15;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    *a4 = v17;
  }
}

@end