@interface NearFieldManager
- (id)secureElementInfo;
- (void)getSecureElementWithReason:(id)a3 callback:(id)a4;
- (void)getSecureElementWithReason:(id)a3 handoffToken:(id)a4 completion:(id)a5;
- (void)setHandoffToken:(id)a3;
@end

@implementation NearFieldManager

- (id)secureElementInfo
{
  secureElementInfo = self->_secureElementInfo;
  if (secureElementInfo)
  {
    goto LABEL_26;
  }

  v34 = 0;
  v4 = [NFSecureElement embeddedSecureElementWithError:&v34];
  v5 = v34;
  v6 = [v4 info];

  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10 = [v6 sequenceCounter];
    v11 = [v10 unsignedIntValue];

    v12 = [v6 deviceType];
    v33 = v11;
    if (v12 > 114)
    {
      if (v12 != 210 && v12 != 200)
      {
        if (v12 != 115)
        {
          goto LABEL_20;
        }

        v32 = v11 > 0x90B;
        v13 = 2;
LABEL_24:
        v31 = v13;
        v28 = [v6 signingKeyType] == 2;
LABEL_25:
        v30 = [v6 serialNumber];
        v17 = [v30 hexStringAsData];
        v29 = [v6 ecdsaCertificate];
        v18 = [v29 hexStringAsData];
        v19 = [SESTLV TLVWithTag:32545 value:v18];
        v20 = [v19 asData];
        v21 = [v6 rsaCertificate];
        v22 = [v21 hexStringAsData];
        v23 = [SESTLV TLVWithTag:32545 value:v22];
        v24 = [v23 asData];
        v25 = +[SecureElementInfo withSEID:casdCertificate:casdCertificateRSA:isProd:isSkyOrLater:secureElementType:csn:chipID:](SecureElementInfo, "withSEID:casdCertificate:casdCertificateRSA:isProd:isSkyOrLater:secureElementType:csn:chipID:", v17, v20, v24, v28, v32, v31, v33, [v6 deviceType]);
        v26 = self->_secureElementInfo;
        self->_secureElementInfo = v25;

        secureElementInfo = self->_secureElementInfo;
LABEL_26:
        v9 = secureElementInfo;
        goto LABEL_27;
      }
    }

    else
    {
      if (v12 == 44)
      {
        v32 = 1;
        v13 = 4;
        goto LABEL_24;
      }

      if (v12 == 55)
      {
        v32 = 1;
        v13 = 5;
        goto LABEL_24;
      }

      if (v12 != 100)
      {
LABEL_20:
        v14 = [v6 signingKeyType];
        if (v14 == 2)
        {
          v15 = [v6 persistentConfigID];
          v16 = [v15 unsignedIntValue];

          v28 = HIBYTE(v16) != 80;
          v32 = 1;
          v31 = 6;
        }

        else
        {
          v32 = 1;
          v31 = 6;
          v28 = v14 == 2;
        }

        goto LABEL_25;
      }
    }

    v32 = v11 > 0xA17;
    v13 = 3;
    goto LABEL_24;
  }

  v8 = sub_1000554DC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to retrieve eSE info %@", buf, 0xCu);
  }

  v9 = 0;
LABEL_27:

  return v9;
}

- (void)getSecureElementWithReason:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v9 = sub_1000554DC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    internalState = self->_internalState;
    v11 = [(NSMutableArray *)self->_queuedWaiters count];
    v21 = 67240448;
    LODWORD(v22[0]) = internalState;
    WORD2(v22[0]) = 1026;
    *(v22 + 6) = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Client request %{public}u queue (before) %{public}u", &v21, 0xEu);
  }

  v12 = self->_internalState;
  if (v12 > 3)
  {
    if ((v12 - 5) >= 2)
    {
      if (v12 == 4)
      {
        self->_internalState = 3;
        objc_storeStrong(&self->_reasonForInUseSession, a3);
        v19 = sub_1000554DC();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = 138543362;
          v22[0] = v7;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Free session claimed for reason %{public}@", &v21, 0xCu);
        }

        sub_1003AE754(self->_timer);
        v20 = sub_1003AFF44(&self->super.isa);
        v8[2](v8, v20, 0);
      }

      goto LABEL_11;
    }

LABEL_10:
    queuedWaiters = self->_queuedWaiters;
    v16 = sub_100056548(SERequest, v7, v8);
    [(NSMutableArray *)queuedWaiters pushLast:v16];

    goto LABEL_11;
  }

  switch(v12)
  {
    case 2:
      goto LABEL_10;
    case 3:
      v13 = sub_1000554DC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        reasonForInUseSession = self->_reasonForInUseSession;
        v21 = 138543362;
        v22[0] = reasonForInUseSession;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Currently in use for %{public}@", &v21, 0xCu);
      }

      goto LABEL_10;
    case 1:
      v17 = self->_queuedWaiters;
      v18 = sub_100056548(SERequest, v7, v8);
      [(NSMutableArray *)v17 pushLast:v18];

      sub_1003AFD48(self);
      break;
  }

LABEL_11:
}

- (void)setHandoffToken:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005666C;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)getSecureElementWithReason:(id)a3 handoffToken:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(NearFieldManager *)self secureElementInfo];
  v12 = [v11 seid];

  if (v12)
  {
    v13 = sub_1000554DC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v9 asHexString];
      *buf = 138543618;
      v27 = v8;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Getting SE for reason %{public}@ with token %{public}@", buf, 0x16u);
    }

    v15 = +[NFHardwareManager sharedHardwareManager];
    v24[0] = @"session.handofftoken";
    v24[1] = @"session.handofftoken.failurebehaviour";
    v25[0] = v9;
    v25[1] = @"fail";
    v16 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100056954;
    v20[3] = &unk_1004C2E58;
    v20[4] = self;
    v21 = v8;
    v23 = v10;
    v22 = v12;
    v17 = [v15 startSecureElementManagerSessionWithAttributes:v16 completion:v20];
  }

  else
  {
    v18 = sub_1000554DC();
    v19 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, v19);
  }
}

@end