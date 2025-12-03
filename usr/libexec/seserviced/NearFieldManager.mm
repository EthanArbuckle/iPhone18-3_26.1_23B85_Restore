@interface NearFieldManager
- (id)secureElementInfo;
- (void)getSecureElementWithReason:(id)reason callback:(id)callback;
- (void)getSecureElementWithReason:(id)reason handoffToken:(id)token completion:(id)completion;
- (void)setHandoffToken:(id)token;
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
  info = [v4 info];

  if (info)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    sequenceCounter = [info sequenceCounter];
    unsignedIntValue = [sequenceCounter unsignedIntValue];

    deviceType = [info deviceType];
    v33 = unsignedIntValue;
    if (deviceType > 114)
    {
      if (deviceType != 210 && deviceType != 200)
      {
        if (deviceType != 115)
        {
          goto LABEL_20;
        }

        v32 = unsignedIntValue > 0x90B;
        v13 = 2;
LABEL_24:
        v31 = v13;
        v28 = [info signingKeyType] == 2;
LABEL_25:
        serialNumber = [info serialNumber];
        hexStringAsData = [serialNumber hexStringAsData];
        ecdsaCertificate = [info ecdsaCertificate];
        hexStringAsData2 = [ecdsaCertificate hexStringAsData];
        v19 = [SESTLV TLVWithTag:32545 value:hexStringAsData2];
        asData = [v19 asData];
        rsaCertificate = [info rsaCertificate];
        hexStringAsData3 = [rsaCertificate hexStringAsData];
        v23 = [SESTLV TLVWithTag:32545 value:hexStringAsData3];
        asData2 = [v23 asData];
        v25 = +[SecureElementInfo withSEID:casdCertificate:casdCertificateRSA:isProd:isSkyOrLater:secureElementType:csn:chipID:](SecureElementInfo, "withSEID:casdCertificate:casdCertificateRSA:isProd:isSkyOrLater:secureElementType:csn:chipID:", hexStringAsData, asData, asData2, v28, v32, v31, v33, [info deviceType]);
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
      if (deviceType == 44)
      {
        v32 = 1;
        v13 = 4;
        goto LABEL_24;
      }

      if (deviceType == 55)
      {
        v32 = 1;
        v13 = 5;
        goto LABEL_24;
      }

      if (deviceType != 100)
      {
LABEL_20:
        signingKeyType = [info signingKeyType];
        if (signingKeyType == 2)
        {
          persistentConfigID = [info persistentConfigID];
          unsignedIntValue2 = [persistentConfigID unsignedIntValue];

          v28 = HIBYTE(unsignedIntValue2) != 80;
          v32 = 1;
          v31 = 6;
        }

        else
        {
          v32 = 1;
          v31 = 6;
          v28 = signingKeyType == 2;
        }

        goto LABEL_25;
      }
    }

    v32 = unsignedIntValue > 0xA17;
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

- (void)getSecureElementWithReason:(id)reason callback:(id)callback
{
  reasonCopy = reason;
  callbackCopy = callback;
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
        objc_storeStrong(&self->_reasonForInUseSession, reason);
        v19 = sub_1000554DC();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = 138543362;
          v22[0] = reasonCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Free session claimed for reason %{public}@", &v21, 0xCu);
        }

        sub_1003AE754(self->_timer);
        v20 = sub_1003AFF44(&self->super.isa);
        callbackCopy[2](callbackCopy, v20, 0);
      }

      goto LABEL_11;
    }

LABEL_10:
    queuedWaiters = self->_queuedWaiters;
    v16 = sub_100056548(SERequest, reasonCopy, callbackCopy);
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
      v18 = sub_100056548(SERequest, reasonCopy, callbackCopy);
      [(NSMutableArray *)v17 pushLast:v18];

      sub_1003AFD48(self);
      break;
  }

LABEL_11:
}

- (void)setHandoffToken:(id)token
{
  tokenCopy = token;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005666C;
  v7[3] = &unk_1004C22F0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(queue, v7);
}

- (void)getSecureElementWithReason:(id)reason handoffToken:(id)token completion:(id)completion
{
  reasonCopy = reason;
  tokenCopy = token;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  secureElementInfo = [(NearFieldManager *)self secureElementInfo];
  seid = [secureElementInfo seid];

  if (seid)
  {
    v13 = sub_1000554DC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      asHexString = [tokenCopy asHexString];
      *buf = 138543618;
      v27 = reasonCopy;
      v28 = 2114;
      v29 = asHexString;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Getting SE for reason %{public}@ with token %{public}@", buf, 0x16u);
    }

    v15 = +[NFHardwareManager sharedHardwareManager];
    v24[0] = @"session.handofftoken";
    v24[1] = @"session.handofftoken.failurebehaviour";
    v25[0] = tokenCopy;
    v25[1] = @"fail";
    v16 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100056954;
    v20[3] = &unk_1004C2E58;
    v20[4] = self;
    v21 = reasonCopy;
    v23 = completionCopy;
    v22 = seid;
    v17 = [v15 startSecureElementManagerSessionWithAttributes:v16 completion:v20];
  }

  else
  {
    v18 = sub_1000554DC();
    v19 = SESCreateAndLogError();
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

@end