@interface AuthenticationService
+ (void)initialize;
- (AuthenticationService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (BOOL)verifyCertificateIsUnique;
- (id)authStateString;
- (id)certificateSerialNumber;
- (void)authTimeout;
- (void)authenticationDidFail;
- (void)authenticationDidSucceed;
- (void)dealloc;
- (void)issueChallenge;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)start;
- (void)stop;
- (void)verifyChallenge;
@end

@implementation AuthenticationService

- (AuthenticationService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v8.receiver = self;
  v8.super_class = AuthenticationService;
  v5 = [(ClientService *)&v8 initWithManager:manager peripheral:peripheral service:service];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setIsPrimary:1];
    [(ClientService *)v6 setPriority:4];
    [(ClientService *)v6 setStartTimeout:0.0];
    v6->_authState = 0;
    v6->_authInfo = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return v6;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = AuthenticationService;
  [(ClientService *)&v12 start];
  [qword_1000DDBA8 addObject:self];
  v3 = [CBUUID UUIDWithString:@"9FBF120D-6301-42D9-8C58-25E699A21DBD"];
  v13[0] = v3;
  v4 = [CBUUID UUIDWithString:@"0188BF66-463A-405D-91FD-0B8940B92254"];
  v13[1] = v4;
  v5 = [CBUUID UUIDWithString:@"2BDCAEBE-8746-45DF-A841-96B840980FB7"];
  v13[2] = v5;
  v6 = [CBUUID UUIDWithString:@"2BDCAEBE-8746-45DF-A841-96B840980FB8"];
  v13[3] = v6;
  v7 = [CBUUID UUIDWithString:@"30E69638-3752-4FEB-A3AA-3226BCD05ACE"];
  v13[4] = v7;
  v8 = [NSArray arrayWithObjects:v13 count:5];

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v8 forService:service];

  [(AuthenticationService *)self setAuthState:1];
  v11 = [NSTimer scheduledTimerWithTimeInterval:self target:"authTimeout" selector:0 userInfo:0 repeats:90.0];
  [(AuthenticationService *)self setAuthTimer:v11];
}

- (void)stop
{
  authTimer = [(AuthenticationService *)self authTimer];
  [authTimer invalidate];

  [qword_1000DDBA8 removeObject:self];
  v4.receiver = self;
  v4.super_class = AuthenticationService;
  [(ClientService *)&v4 stop];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000DDBA8 = objc_alloc_init(NSMutableSet);

    _objc_release_x1();
  }
}

- (void)dealloc
{
  CFRelease(self->_authInfo);
  v3.receiver = self;
  v3.super_class = AuthenticationService;
  [(AuthenticationService *)&v3 dealloc];
}

- (void)issueChallenge
{
  versionCharacteristic = [(AuthenticationService *)self versionCharacteristic];
  value = [versionCharacteristic value];
  if (value)
  {
    v4 = value;
    certificate1Characteristic = [(AuthenticationService *)self certificate1Characteristic];
    value2 = [certificate1Characteristic value];
    if (value2)
    {
      v7 = value2;
      certificate2Characteristic = [(AuthenticationService *)self certificate2Characteristic];
      value3 = [certificate2Characteristic value];

      if (!value3)
      {
        return;
      }

      versionCharacteristic2 = [(AuthenticationService *)self versionCharacteristic];
      value4 = [versionCharacteristic2 value];
      v12 = [DataInputStream inputStreamWithData:value4 byteOrder:1];

      v41 = 0;
      if (([v12 readUint16:&v41] & 1) == 0)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_10007A910();
        }

        goto LABEL_27;
      }

      if (v41 == 512)
      {
        v13 = 2;
      }

      else
      {
        if (v41 != 768)
        {
          v38 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_10007AB84(v38, self);
          }

          goto LABEL_27;
        }

        v13 = 3;
      }

      valuePtr = v13;
      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
      certificate1Characteristic2 = [(AuthenticationService *)self certificate1Characteristic];
      value5 = [certificate1Characteristic2 value];
      bytes = [value5 bytes];
      certificate1Characteristic3 = [(AuthenticationService *)self certificate1Characteristic];
      value6 = [certificate1Characteristic3 value];
      CFDataAppendBytes(Mutable, bytes, [value6 length]);

      certificate2Characteristic2 = [(AuthenticationService *)self certificate2Characteristic];
      value7 = [certificate2Characteristic2 value];
      bytes2 = [value7 bytes];
      certificate2Characteristic3 = [(AuthenticationService *)self certificate2Characteristic];
      value8 = [certificate2Characteristic3 value];
      CFDataAppendBytes(Mutable, bytes2, [value8 length]);

      authInfo = [(AuthenticationService *)self authInfo];
      v26 = kAuthCertBufferKey;
      CFDictionarySetValue(authInfo, kAuthCertBufferKey, Mutable);
      CFRelease(Mutable);
      v27 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_10007A944(v27, self, v26);
      }

      if (VerifyCertSerialNumber() && VerifyCertAuthority() && [(AuthenticationService *)self verifyCertificateIsUnique])
      {
        GetRandomDigest();
        authInfo2 = [(AuthenticationService *)self authInfo];
        v29 = kAuthNonceBufferKey;
        CFDictionarySetValue(authInfo2, kAuthNonceBufferKey, 0);
        CFRelease(0);
        v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
        authInfo3 = [(AuthenticationService *)self authInfo];
        CFDictionarySetValue(authInfo3, kAuthVersionKey, v30);
        CFRelease(v30);
        v32 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          sub_10007AAB8(v32, self, v29);
        }

        peripheral = [(ClientService *)self peripheral];
        challengeResponseCharacteristic = [(AuthenticationService *)self challengeResponseCharacteristic];
        [peripheral setNotifyValue:1 forCharacteristic:challengeResponseCharacteristic];

        peripheral2 = [(ClientService *)self peripheral];
        challengeResponseCharacteristic2 = [(AuthenticationService *)self challengeResponseCharacteristic];
        [peripheral2 writeValue:0 forCharacteristic:challengeResponseCharacteristic2 type:0];

        [(AuthenticationService *)self setAuthState:2];
        [(ClientService *)self notifyDidStart];
        goto LABEL_28;
      }

      v37 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007AA10(v37);
      }

LABEL_27:
      [(AuthenticationService *)self authenticationDidFail];
LABEL_28:

      return;
    }
  }
}

- (void)verifyChallenge
{
  if ([(AuthenticationService *)self authState]== 2)
  {
    v3 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_10007ADD4(v3);
    }

    peripheral = [(ClientService *)self peripheral];
    challengeResponseCharacteristic = [(AuthenticationService *)self challengeResponseCharacteristic];
    [peripheral readValueForCharacteristic:challengeResponseCharacteristic];

    [(AuthenticationService *)self setAuthState:3];
  }

  else if ([(AuthenticationService *)self authState]== 3)
  {
    authInfo = [(AuthenticationService *)self authInfo];
    v7 = kAuthResponseBufferKey;
    challengeResponseCharacteristic2 = [(AuthenticationService *)self challengeResponseCharacteristic];
    value = [challengeResponseCharacteristic2 value];
    CFDictionarySetValue(authInfo, v7, value);

    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_10007AC60(v10, self, v7);
    }

    authTimer = [(AuthenticationService *)self authTimer];
    [authTimer invalidate];

    [(AuthenticationService *)self setAuthState:4];
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v19 = 138412290;
      authInfo2 = [(AuthenticationService *)self authInfo];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "About to verify nonce with dictionary %@", &v19, 0xCu);
    }

    [(AuthenticationService *)self authInfo];
    v14 = VerifyNonceSigned();
    v15 = qword_1000DDBC8;
    if (v14)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        peripheral2 = [(ClientService *)self peripheral];
        name = [peripheral2 name];
        v19 = 138412290;
        authInfo2 = name;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Authentication has succeeded on peripheral %@", &v19, 0xCu);
      }

      [(AuthenticationService *)self authenticationDidSucceed];
    }

    else
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007AD2C(v15);
      }

      [(AuthenticationService *)self authenticationDidFail];
    }
  }
}

- (void)authTimeout
{
  authState = [(AuthenticationService *)self authState];
  v4 = qword_1000DDBC8;
  v5 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR);
  if (authState == 2)
  {
    if (v5)
    {
      sub_10007AF54(v4);
    }

    peripheral = [(ClientService *)self peripheral];
    challengeResponseCharacteristic = [(AuthenticationService *)self challengeResponseCharacteristic];
    [peripheral readValueForCharacteristic:challengeResponseCharacteristic];

    [(AuthenticationService *)self setAuthState:3];
  }

  else
  {
    if (v5)
    {
      sub_10007AE8C(v4, self);
    }

    [(AuthenticationService *)self authenticationDidFail];
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  if (!error)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [service characteristics];
    v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      selfCopy = self;
      do
      {
        v11 = 0;
        do
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v41 + 1) + 8 * v11);
          versionCharacteristic = [(AuthenticationService *)self versionCharacteristic];
          if (versionCharacteristic)
          {
          }

          else
          {
            v15 = v10;
            uUID = [v12 UUID];
            v17 = [CBUUID UUIDWithString:@"9FBF120D-6301-42D9-8C58-25E699A21DBD"];
            if ([uUID isEqual:v17])
            {

              v10 = v15;
LABEL_22:
              [(AuthenticationService *)self setVersionCharacteristic:v12];
              goto LABEL_23;
            }

            uUID2 = [v12 UUID];
            v27 = [CBUUID UUIDWithString:@"0188BF66-463A-405D-91FD-0B8940B92254"];
            v28 = [uUID2 isEqual:v27];

            self = selfCopy;
            v10 = v15;
            if (v28)
            {
              goto LABEL_22;
            }
          }

          certificate1Characteristic = [(AuthenticationService *)self certificate1Characteristic];
          if (certificate1Characteristic)
          {
          }

          else
          {
            uUID3 = [v12 UUID];
            v19 = [CBUUID UUIDWithString:@"2BDCAEBE-8746-45DF-A841-96B840980FB7"];
            v20 = [uUID3 isEqual:v19];

            if (v20)
            {
              [(AuthenticationService *)self setCertificate1Characteristic:v12];
              goto LABEL_23;
            }
          }

          certificate2Characteristic = [(AuthenticationService *)self certificate2Characteristic];
          if (certificate2Characteristic)
          {

LABEL_19:
            challengeResponseCharacteristic = [(AuthenticationService *)self challengeResponseCharacteristic];
            if (challengeResponseCharacteristic)
            {
            }

            else
            {
              uUID4 = [v12 UUID];
              v31 = [CBUUID UUIDWithString:@"30E69638-3752-4FEB-A3AA-3226BCD05ACE"];
              v32 = [uUID4 isEqual:v31];

              if (v32)
              {
                [(AuthenticationService *)self setChallengeResponseCharacteristic:v12];
              }
            }

            goto LABEL_27;
          }

          uUID5 = [v12 UUID];
          v23 = [CBUUID UUIDWithString:@"2BDCAEBE-8746-45DF-A841-96B840980FB8"];
          v24 = [uUID5 isEqual:v23];

          if (!v24)
          {
            goto LABEL_19;
          }

          [(AuthenticationService *)self setCertificate2Characteristic:v12];
LABEL_23:
          value = [v12 value];

          if (!value)
          {
            [peripheralCopy readValueForCharacteristic:v12];
          }

LABEL_27:
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v9);
    }

    [(AuthenticationService *)self issueChallenge];
    versionCharacteristic2 = [(AuthenticationService *)self versionCharacteristic];

    if (!versionCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007AFFC();
    }

    certificate1Characteristic2 = [(AuthenticationService *)self certificate1Characteristic];
    if (!certificate1Characteristic2 || (v35 = certificate1Characteristic2, [(AuthenticationService *)self certificate2Characteristic], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, !v36))
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B030();
      }
    }

    challengeResponseCharacteristic2 = [(AuthenticationService *)self challengeResponseCharacteristic];

    if (!challengeResponseCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007B064();
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    challengeResponseCharacteristic = [(AuthenticationService *)self challengeResponseCharacteristic];

    if (challengeResponseCharacteristic == characteristicCopy)
    {
      v12 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B098(v12, self, errorCopy);
      }

      [(AuthenticationService *)self authenticationDidFail];
    }

    goto LABEL_14;
  }

  versionCharacteristic = [(AuthenticationService *)self versionCharacteristic];
  if (versionCharacteristic == characteristicCopy)
  {
    goto LABEL_12;
  }

  certificate1Characteristic = [(AuthenticationService *)self certificate1Characteristic];
  v15 = certificate1Characteristic;
  if (certificate1Characteristic == characteristicCopy)
  {

LABEL_12:
    goto LABEL_13;
  }

  certificate2Characteristic = [(AuthenticationService *)self certificate2Characteristic];

  if (certificate2Characteristic == characteristicCopy)
  {
LABEL_13:
    [(AuthenticationService *)self issueChallenge];
    goto LABEL_14;
  }

  challengeResponseCharacteristic2 = [(AuthenticationService *)self challengeResponseCharacteristic];

  if (challengeResponseCharacteristic2 == characteristicCopy)
  {
    [(AuthenticationService *)self verifyChallenge];
  }

LABEL_14:
}

- (id)certificateSerialNumber
{
  authInfo = [(AuthenticationService *)self authInfo];
  Value = CFDictionaryGetValue(authInfo, kAuthCertBufferKey);
  if (Value)
  {
    v4 = Value;
    v7[0] = 0;
    v7[1] = 0;
    CFDataGetBytePtr(Value);
    CFDataGetLength(v4);
    v5 = IapAuthCertSerial();
    Value = 0;
    if (v5)
    {
      Value = [NSData dataWithBytes:v7 length:16];
    }
  }

  return Value;
}

- (BOOL)verifyCertificateIsUnique
{
  certificateSerialNumber = [(AuthenticationService *)self certificateSerialNumber];
  v4 = certificateSerialNumber != 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = qword_1000DDBA8;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v10 != self)
        {
          certificateSerialNumber2 = [(AuthenticationService *)v10 certificateSerialNumber];
          if (certificateSerialNumber2)
          {
            v12 = [certificateSerialNumber isEqualToData:certificateSerialNumber2] ^ 1;
          }

          else
          {
            LOBYTE(v12) = 1;
          }

          v4 &= v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4 & 1;
}

- (void)authenticationDidSucceed
{
  authInfo = [(AuthenticationService *)self authInfo];
  v4 = [(__CFDictionary *)authInfo objectForKeyedSubscript:kAuthVersionKey];
  intValue = [v4 intValue];
  CertClass = 0x7FFFFFFFLL;
  if (intValue <= 2 && (v7 = [(AuthenticationService *)self authInfo], CFDictionaryGetValue(v7, kAuthCertBufferKey), CertClass = GetCertClass(), CertClass == 0x7FFFFFFF))
  {
    [(AuthenticationService *)self authenticationDidFail];
  }

  else
  {
    v12[0] = @"AuthenticationServiceCertClassUserInfoKey";
    v8 = [NSNumber numberWithUnsignedInt:CertClass];
    v12[1] = @"AuthenticationServiceAuthVersionKey";
    v13[0] = v8;
    v13[1] = v4;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

    v10 = +[NSNotificationCenter defaultCenter];
    peripheral = [(ClientService *)self peripheral];
    [v10 postNotificationName:@"AuthenticationServiceAuthDidSucceedNotification" object:peripheral userInfo:v9];
  }
}

- (void)authenticationDidFail
{
  v4 = +[NSNotificationCenter defaultCenter];
  peripheral = [(ClientService *)self peripheral];
  [v4 postNotificationName:@"AuthenticationServiceAuthDidFailNotification" object:peripheral];
}

- (id)authStateString
{
  authState = [(AuthenticationService *)self authState];
  if ((authState - 1) > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1000BE500[authState - 1];
  }
}

@end