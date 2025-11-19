@interface AuthenticationService
+ (void)initialize;
- (AuthenticationService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (BOOL)verifyCertificateIsUnique;
- (id)authStateString;
- (id)certificateSerialNumber;
- (void)authTimeout;
- (void)authenticationDidFail;
- (void)authenticationDidSucceed;
- (void)dealloc;
- (void)issueChallenge;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)start;
- (void)stop;
- (void)verifyChallenge;
@end

@implementation AuthenticationService

- (AuthenticationService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8.receiver = self;
  v8.super_class = AuthenticationService;
  v5 = [(ClientService *)&v8 initWithManager:a3 peripheral:a4 service:a5];
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

  v9 = [(ClientService *)self peripheral];
  v10 = [(ClientService *)self service];
  [v9 discoverCharacteristics:v8 forService:v10];

  [(AuthenticationService *)self setAuthState:1];
  v11 = [NSTimer scheduledTimerWithTimeInterval:self target:"authTimeout" selector:0 userInfo:0 repeats:90.0];
  [(AuthenticationService *)self setAuthTimer:v11];
}

- (void)stop
{
  v3 = [(AuthenticationService *)self authTimer];
  [v3 invalidate];

  [qword_1000DDBA8 removeObject:self];
  v4.receiver = self;
  v4.super_class = AuthenticationService;
  [(ClientService *)&v4 stop];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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
  v39 = [(AuthenticationService *)self versionCharacteristic];
  v3 = [v39 value];
  if (v3)
  {
    v4 = v3;
    v5 = [(AuthenticationService *)self certificate1Characteristic];
    v6 = [v5 value];
    if (v6)
    {
      v7 = v6;
      v8 = [(AuthenticationService *)self certificate2Characteristic];
      v9 = [v8 value];

      if (!v9)
      {
        return;
      }

      v10 = [(AuthenticationService *)self versionCharacteristic];
      v11 = [v10 value];
      v12 = [DataInputStream inputStreamWithData:v11 byteOrder:1];

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
      v15 = [(AuthenticationService *)self certificate1Characteristic];
      v16 = [v15 value];
      v17 = [v16 bytes];
      v18 = [(AuthenticationService *)self certificate1Characteristic];
      v19 = [v18 value];
      CFDataAppendBytes(Mutable, v17, [v19 length]);

      v20 = [(AuthenticationService *)self certificate2Characteristic];
      v21 = [v20 value];
      v22 = [v21 bytes];
      v23 = [(AuthenticationService *)self certificate2Characteristic];
      v24 = [v23 value];
      CFDataAppendBytes(Mutable, v22, [v24 length]);

      v25 = [(AuthenticationService *)self authInfo];
      v26 = kAuthCertBufferKey;
      CFDictionarySetValue(v25, kAuthCertBufferKey, Mutable);
      CFRelease(Mutable);
      v27 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_10007A944(v27, self, v26);
      }

      if (VerifyCertSerialNumber() && VerifyCertAuthority() && [(AuthenticationService *)self verifyCertificateIsUnique])
      {
        GetRandomDigest();
        v28 = [(AuthenticationService *)self authInfo];
        v29 = kAuthNonceBufferKey;
        CFDictionarySetValue(v28, kAuthNonceBufferKey, 0);
        CFRelease(0);
        v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
        v31 = [(AuthenticationService *)self authInfo];
        CFDictionarySetValue(v31, kAuthVersionKey, v30);
        CFRelease(v30);
        v32 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          sub_10007AAB8(v32, self, v29);
        }

        v33 = [(ClientService *)self peripheral];
        v34 = [(AuthenticationService *)self challengeResponseCharacteristic];
        [v33 setNotifyValue:1 forCharacteristic:v34];

        v35 = [(ClientService *)self peripheral];
        v36 = [(AuthenticationService *)self challengeResponseCharacteristic];
        [v35 writeValue:0 forCharacteristic:v36 type:0];

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

    v4 = [(ClientService *)self peripheral];
    v5 = [(AuthenticationService *)self challengeResponseCharacteristic];
    [v4 readValueForCharacteristic:v5];

    [(AuthenticationService *)self setAuthState:3];
  }

  else if ([(AuthenticationService *)self authState]== 3)
  {
    v6 = [(AuthenticationService *)self authInfo];
    v7 = kAuthResponseBufferKey;
    v8 = [(AuthenticationService *)self challengeResponseCharacteristic];
    v9 = [v8 value];
    CFDictionarySetValue(v6, v7, v9);

    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_10007AC60(v10, self, v7);
    }

    v11 = [(AuthenticationService *)self authTimer];
    [v11 invalidate];

    [(AuthenticationService *)self setAuthState:4];
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v19 = 138412290;
      v20 = [(AuthenticationService *)self authInfo];
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
        v17 = [(ClientService *)self peripheral];
        v18 = [v17 name];
        v19 = 138412290;
        v20 = v18;
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
  v3 = [(AuthenticationService *)self authState];
  v4 = qword_1000DDBC8;
  v5 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR);
  if (v3 == 2)
  {
    if (v5)
    {
      sub_10007AF54(v4);
    }

    v6 = [(ClientService *)self peripheral];
    v7 = [(AuthenticationService *)self challengeResponseCharacteristic];
    [v6 readValueForCharacteristic:v7];

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

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v39 = a3;
  if (!a5)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [a4 characteristics];
    v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      v38 = self;
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
          v13 = [(AuthenticationService *)self versionCharacteristic];
          if (v13)
          {
          }

          else
          {
            v15 = v10;
            v16 = [v12 UUID];
            v17 = [CBUUID UUIDWithString:@"9FBF120D-6301-42D9-8C58-25E699A21DBD"];
            if ([v16 isEqual:v17])
            {

              v10 = v15;
LABEL_22:
              [(AuthenticationService *)self setVersionCharacteristic:v12];
              goto LABEL_23;
            }

            v26 = [v12 UUID];
            v27 = [CBUUID UUIDWithString:@"0188BF66-463A-405D-91FD-0B8940B92254"];
            v28 = [v26 isEqual:v27];

            self = v38;
            v10 = v15;
            if (v28)
            {
              goto LABEL_22;
            }
          }

          v14 = [(AuthenticationService *)self certificate1Characteristic];
          if (v14)
          {
          }

          else
          {
            v18 = [v12 UUID];
            v19 = [CBUUID UUIDWithString:@"2BDCAEBE-8746-45DF-A841-96B840980FB7"];
            v20 = [v18 isEqual:v19];

            if (v20)
            {
              [(AuthenticationService *)self setCertificate1Characteristic:v12];
              goto LABEL_23;
            }
          }

          v21 = [(AuthenticationService *)self certificate2Characteristic];
          if (v21)
          {

LABEL_19:
            v25 = [(AuthenticationService *)self challengeResponseCharacteristic];
            if (v25)
            {
            }

            else
            {
              v30 = [v12 UUID];
              v31 = [CBUUID UUIDWithString:@"30E69638-3752-4FEB-A3AA-3226BCD05ACE"];
              v32 = [v30 isEqual:v31];

              if (v32)
              {
                [(AuthenticationService *)self setChallengeResponseCharacteristic:v12];
              }
            }

            goto LABEL_27;
          }

          v22 = [v12 UUID];
          v23 = [CBUUID UUIDWithString:@"2BDCAEBE-8746-45DF-A841-96B840980FB8"];
          v24 = [v22 isEqual:v23];

          if (!v24)
          {
            goto LABEL_19;
          }

          [(AuthenticationService *)self setCertificate2Characteristic:v12];
LABEL_23:
          v29 = [v12 value];

          if (!v29)
          {
            [v39 readValueForCharacteristic:v12];
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
    v33 = [(AuthenticationService *)self versionCharacteristic];

    if (!v33 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007AFFC();
    }

    v34 = [(AuthenticationService *)self certificate1Characteristic];
    if (!v34 || (v35 = v34, [(AuthenticationService *)self certificate2Characteristic], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, !v36))
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B030();
      }
    }

    v37 = [(AuthenticationService *)self challengeResponseCharacteristic];

    if (!v37 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007B064();
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(AuthenticationService *)self challengeResponseCharacteristic];

    if (v11 == v9)
    {
      v12 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B098(v12, self, v10);
      }

      [(AuthenticationService *)self authenticationDidFail];
    }

    goto LABEL_14;
  }

  v13 = [(AuthenticationService *)self versionCharacteristic];
  if (v13 == v9)
  {
    goto LABEL_12;
  }

  v14 = [(AuthenticationService *)self certificate1Characteristic];
  v15 = v14;
  if (v14 == v9)
  {

LABEL_12:
    goto LABEL_13;
  }

  v16 = [(AuthenticationService *)self certificate2Characteristic];

  if (v16 == v9)
  {
LABEL_13:
    [(AuthenticationService *)self issueChallenge];
    goto LABEL_14;
  }

  v17 = [(AuthenticationService *)self challengeResponseCharacteristic];

  if (v17 == v9)
  {
    [(AuthenticationService *)self verifyChallenge];
  }

LABEL_14:
}

- (id)certificateSerialNumber
{
  v2 = [(AuthenticationService *)self authInfo];
  Value = CFDictionaryGetValue(v2, kAuthCertBufferKey);
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
  v3 = [(AuthenticationService *)self certificateSerialNumber];
  v4 = v3 != 0;
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
          v11 = [(AuthenticationService *)v10 certificateSerialNumber];
          if (v11)
          {
            v12 = [v3 isEqualToData:v11] ^ 1;
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
  v3 = [(AuthenticationService *)self authInfo];
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:kAuthVersionKey];
  v5 = [v4 intValue];
  CertClass = 0x7FFFFFFFLL;
  if (v5 <= 2 && (v7 = [(AuthenticationService *)self authInfo], CFDictionaryGetValue(v7, kAuthCertBufferKey), CertClass = GetCertClass(), CertClass == 0x7FFFFFFF))
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
    v11 = [(ClientService *)self peripheral];
    [v10 postNotificationName:@"AuthenticationServiceAuthDidSucceedNotification" object:v11 userInfo:v9];
  }
}

- (void)authenticationDidFail
{
  v4 = +[NSNotificationCenter defaultCenter];
  v3 = [(ClientService *)self peripheral];
  [v4 postNotificationName:@"AuthenticationServiceAuthDidFailNotification" object:v3];
}

- (id)authStateString
{
  v2 = [(AuthenticationService *)self authState];
  if ((v2 - 1) > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1000BE500[v2 - 1];
  }
}

@end