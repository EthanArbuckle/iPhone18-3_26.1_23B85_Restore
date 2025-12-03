@interface KTAccountKeyServer
+ (BOOL)verifyData:(id)data signature:(id)signature accountPublicKeyInfo:(id)info error:(id *)error;
+ (_PCSPublicIdentityData)decodePublicKeyInfo:(id)info error:(id *)error;
+ (id)applicationToService:(id)service;
+ (id)publicKeyInfoFromIdentity:(_PCSIdentityData *)identity error:(id *)error;
+ (id)sharedKeyService:(id)service;
+ (id)sharedKeyServiceForApplication:(id)application;
+ (void)clearCachedPCSIdentities;
+ (void)startMetrics:(id)metrics services:(id)services;
- (BOOL)haveIdentity;
- (BOOL)isAccountIdentity:(id)identity error:(id *)error;
- (KTAccountKeyServer)initWithService:(id)service;
- (_PCSIdentitySetData)copyPCSIdentitySet:(id *)set;
- (id)copyCachedPCSIdentity;
- (id)initKeyServiceWithApplication:(id)application;
- (id)pcsOptions:(id *)options;
- (id)publicPublicKey:(id *)key;
- (void)cachePCSIdentity:(id)identity;
- (void)clearCachedPCSIdentity;
- (void)createIdentityForSet:(_PCSIdentitySetData *)set roll:(BOOL)roll completionBlock:(id)block;
- (void)getPCSIdentity:(id)identity;
- (void)rollKey:(id)key;
- (void)signData:(id)data completionBlock:(id)block;
- (void)wrapperPCSIdentitySetCreateManatee:(_PCSIdentitySetData *)manatee service:(__CFString *)service options:(id)options block:(id)block;
@end

@implementation KTAccountKeyServer

- (void)clearCachedPCSIdentity
{
  os_unfair_lock_lock(&self->_identityCacheLock);
  [(KTAccountKeyServer *)self set_pcsIdentity:0];
  [(KTAccountKeyServer *)self set_pcsIdentityCachedTime:0];

  os_unfair_lock_unlock(&self->_identityCacheLock);
}

- (id)copyCachedPCSIdentity
{
  os_unfair_lock_lock(&self->_identityCacheLock);
  _pcsIdentity = [(KTAccountKeyServer *)self _pcsIdentity];
  if (_pcsIdentity)
  {
    _pcsIdentityCachedTime = [(KTAccountKeyServer *)self _pcsIdentityCachedTime];
    [_pcsIdentityCachedTime timeIntervalSinceNow];
    v6 = v5;
    v7 = -kKTAuthenticationLifetime;

    if (v6 <= v7)
    {
      _pcsIdentity = 0;
    }

    else
    {
      _pcsIdentity = [(KTAccountKeyServer *)self _pcsIdentity];
    }
  }

  os_unfair_lock_unlock(&self->_identityCacheLock);
  return _pcsIdentity;
}

- (void)cachePCSIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock(&self->_identityCacheLock);
  [(KTAccountKeyServer *)self set_pcsIdentity:identityCopy];

  v5 = +[NSDate date];
  [(KTAccountKeyServer *)self set_pcsIdentityCachedTime:v5];

  os_unfair_lock_unlock(&self->_identityCacheLock);
}

+ (id)applicationToService:(id)service
{
  v3 = qword_10039CAE8;
  serviceCopy = service;
  if (v3 != -1)
  {
    sub_10025D158();
  }

  v5 = [qword_10039CAF0 objectForKeyedSubscript:serviceCopy];

  return v5;
}

+ (id)sharedKeyServiceForApplication:(id)application
{
  applicationCopy = application;
  v4 = [TransparencyApplication applicationValueForIdentifier:applicationCopy];

  if (v4)
  {
    v5 = [objc_opt_class() applicationToService:applicationCopy];
    if (v5)
    {
      v6 = [objc_opt_class() sharedKeyService:v5];
    }

    else
    {
      if (qword_10039CAF8 != -1)
      {
        sub_10025D16C();
      }

      v8 = qword_10039CB00;
      if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = applicationCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unknown application mapping: %@", &v10, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    if (qword_10039CAF8 != -1)
    {
      sub_10025D180();
    }

    v7 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = applicationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unknown application identifier: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (void)clearCachedPCSIdentities
{
  os_unfair_lock_lock(&unk_10039CB08);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  allValues = [qword_10039CB10 allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6) clearCachedPCSIdentity];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&unk_10039CB08);
}

+ (id)sharedKeyService:(id)service
{
  serviceCopy = service;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE130;
  block[3] = &unk_100327700;
  block[4] = self;
  if (qword_10039CB18 != -1)
  {
    dispatch_once(&qword_10039CB18, block);
  }

  os_unfair_lock_lock(&unk_10039CB08);
  v5 = [qword_10039CB10 objectForKeyedSubscript:serviceCopy];
  os_unfair_lock_unlock(&unk_10039CB08);
  if (!v5)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithService:serviceCopy];
    if (v5)
    {
      os_unfair_lock_lock(&unk_10039CB08);
      v6 = [qword_10039CB10 objectForKeyedSubscript:serviceCopy];

      if (v6)
      {
        v7 = [qword_10039CB10 objectForKeyedSubscript:serviceCopy];

        v5 = v7;
      }

      else
      {
        [qword_10039CB10 setObject:v5 forKeyedSubscript:serviceCopy];
      }

      os_unfair_lock_unlock(&unk_10039CB08);
    }
  }

  return v5;
}

- (id)initKeyServiceWithApplication:(id)application
{
  applicationCopy = application;
  v5 = [objc_opt_class() applicationToService:applicationCopy];
  if (v5)
  {
    self = [(KTAccountKeyServer *)self initWithService:applicationCopy];
    selfCopy = self;
  }

  else
  {
    if (qword_10039CAF8 != -1)
    {
      sub_10025D1A8();
    }

    v7 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = applicationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unknown application mapping: %@", &v9, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (KTAccountKeyServer)initWithService:(id)service
{
  v12.receiver = self;
  v12.super_class = KTAccountKeyServer;
  v3 = [(KTAccountKeyServer *)&v12 init];
  v4 = v3;
  if (v3)
  {
    v3->_identityCacheLock._os_unfair_lock_opaque = 0;
    v5 = dispatch_group_create();
    creationGroup = v4->_creationGroup;
    v4->_creationGroup = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.transparencyd.AccountKeyCreate", v7);
    creationQueue = v4->_creationQueue;
    v4->_creationQueue = v8;

    v10 = v4;
  }

  return v4;
}

+ (void)startMetrics:(id)metrics services:(id)services
{
  metricsCopy = metrics;
  servicesCopy = services;
  objc_initWeak(&location, metricsCopy);
  v7 = SFAnalyticsSamplerIntervalOncePerReport;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001EE5F4;
  v9[3] = &unk_100328A70;
  objc_copyWeak(&v11, &location);
  v8 = servicesCopy;
  v10 = v8;
  [metricsCopy addMultiSamplerForName:@"KTAccountKeyMultiSampler" withTimeInterval:v9 block:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)pcsOptions:(id *)options
{
  v15 = 0;
  v4 = [TransparencyAccount primaryAccount:&v15];
  v5 = v15;
  if (v4)
  {
    aa_personID = [v4 aa_personID];
    v7 = aa_personID;
    if (aa_personID)
    {
      v16 = kPCSSetupDSID;
      v17 = aa_personID;
      v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      if (qword_10039CAF8 != -1)
      {
        sub_10025D1BC();
      }

      v11 = qword_10039CB00;
      if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        identifier = [v4 identifier];
        *buf = 138412290;
        v19 = identifier;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to get primary account dsid, returning nil PCS options: %@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    if (qword_10039CAF8 != -1)
    {
      sub_10025D1E4();
    }

    v9 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get primary account, returning nil PCS options", buf, 2u);
    }

    v8 = 0;
    if (options && v5)
    {
      v10 = v5;
      v8 = 0;
      *options = v5;
    }
  }

  return v8;
}

- (_PCSIdentitySetData)copyPCSIdentitySet:(id *)set
{
  v12 = 0;
  v13 = 0;
  v5 = [(KTAccountKeyServer *)self pcsOptions:&v12];
  v6 = v12;
  if (v5)
  {
    [(KTAccountKeyServer *)self service];
    v7 = PCSIdentitySetCreate();
    if (v7 && !v13)
    {
      goto LABEL_15;
    }

    if (qword_10039CAF8 != -1)
    {
      sub_10025D20C();
    }

    v8 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to create account key identity set: %@", buf, 0xCu);
    }

    v9 = v13;

    v6 = v9;
    if (!v9)
    {
      v6 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-267 description:@"failed to create account key identity set"];
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  v7 = 0;
  if (set && v6)
  {
    v10 = v6;
    v7 = 0;
    *set = v6;
  }

LABEL_15:

  return v7;
}

- (void)createIdentityForSet:(_PCSIdentitySetData *)set roll:(BOOL)roll completionBlock:(id)block
{
  blockCopy = block;
  creationGroup = [(KTAccountKeyServer *)self creationGroup];
  objc_sync_enter(creationGroup);
  if ([(KTAccountKeyServer *)self outstandingCreationSignal])
  {
    creationGroup2 = [(KTAccountKeyServer *)self creationGroup];
    creationQueue = [(KTAccountKeyServer *)self creationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001EEF54;
    block[3] = &unk_10031ABA0;
    block[4] = self;
    v20 = blockCopy;
    v12 = blockCopy;
    dispatch_group_notify(creationGroup2, creationQueue, block);

    objc_sync_exit(creationGroup);
  }

  else
  {
    objc_sync_exit(creationGroup);

    creationGroup3 = [(KTAccountKeyServer *)self creationGroup];
    creationQueue2 = [(KTAccountKeyServer *)self creationQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001EEF60;
    v15[3] = &unk_100328B40;
    v15[4] = self;
    v16 = blockCopy;
    rollCopy = roll;
    setCopy = set;
    creationGroup = blockCopy;
    dispatch_group_async(creationGroup3, creationQueue2, v15);
  }
}

- (void)wrapperPCSIdentitySetCreateManatee:(_PCSIdentitySetData *)manatee service:(__CFString *)service options:(id)options block:(id)block
{
  blockCopy = block;
  v6 = blockCopy;
  PCSIdentitySetCreateManatee();
}

- (BOOL)haveIdentity
{
  copyCachedPCSIdentity = [(KTAccountKeyServer *)self copyCachedPCSIdentity];
  if (copyCachedPCSIdentity)
  {
    v4 = copyCachedPCSIdentity;
    v5 = 1;
  }

  else
  {
    v9 = 0;
    v6 = [(KTAccountKeyServer *)self copyPCSIdentitySet:&v9];
    v7 = v9;
    if (v6)
    {
      [(KTAccountKeyServer *)self service];
      v4 = PCSIdentitySetCopyCurrentIdentityPointer();
      v5 = v4 != 0;
      CFRelease(v6);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  return v5;
}

- (void)getPCSIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[TransparencyAnalytics logger];
  copyCachedPCSIdentity = [(KTAccountKeyServer *)self copyCachedPCSIdentity];
  if (copyCachedPCSIdentity)
  {
    v7 = copyCachedPCSIdentity;
    identityCopy[2](identityCopy, copyCachedPCSIdentity, 0);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v22 = 0;
    v9 = [(KTAccountKeyServer *)self copyPCSIdentitySet:&v22];
    v10 = v22;
    if (v9)
    {
      [(KTAccountKeyServer *)self service];
      v11 = PCSIdentitySetCopyCurrentIdentityPointer();
      v7 = v11;
      if (v11)
      {
        [v11 identity];
        v12 = PCSIdentityCopyPublicKeyInfo();
        if (qword_10039CAF8 != -1)
        {
          sub_10025D248();
        }

        v13 = qword_10039CB00;
        if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          kt_hexString = [v12 kt_hexString];
          *buf = 138412290;
          v24 = kt_hexString;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Caching PCS identity: %@", buf, 0xCu);
        }

        [(KTAccountKeyServer *)self cachePCSIdentity:v7];
        v16 = CFAbsoluteTimeGetCurrent() - Current;
        v17 = +[TransparencyAnalytics logger];
        v18 = [NSNumber numberWithDouble:v16];
        [v17 logMetric:v18 withName:@"KTAccountKeyFetchTime"];

        v19 = +[TransparencyAnalytics logger];
        [v19 logSuccessForEventNamed:@"KTAccountKeyFetch"];

        if (qword_10039CAF8 != -1)
        {
          sub_10025D270();
        }

        v20 = qword_10039CB00;
        if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "copied current account key identity", buf, 2u);
        }

        identityCopy[2](identityCopy, v7, 0);
        CFRelease(v9);
      }

      else
      {
        if (qword_10039CAF8 != -1)
        {
          sub_10025D298();
        }

        v21 = qword_10039CB00;
        if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to copy account key identity: %@", buf, 0xCu);
        }

        [v5 logResultForEvent:@"KTAccountKeyFetch" hardFailure:0 result:0];
        identityCopy[2](identityCopy, 0, 0);
        CFRelease(v9);
      }
    }

    else
    {
      [v5 logResultForEvent:@"KTAccountKeyFetch" hardFailure:1 result:v10];
      (identityCopy)[2](identityCopy, 0, v10);
      v7 = 0;
    }
  }
}

+ (id)publicKeyInfoFromIdentity:(_PCSIdentityData *)identity error:(id *)error
{
  v6 = PCSIdentityCopyPublicKeyInfo();
  if (!v6)
  {
    if (qword_10039CAF8 != -1)
    {
      sub_10025D2C0();
    }

    v7 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      identityCopy = identity;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to get PCS public key info from identity: %@", &v9, 0xCu);
    }

    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-268 description:@"failed to get PCS public key info from identity"];
    }
  }

  return v6;
}

+ (_PCSPublicIdentityData)decodePublicKeyInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if (!infoCopy)
  {
    v6 = 0;
    v7 = 1;
LABEL_5:
    if (qword_10039CAF8 != -1)
    {
      sub_10025D2D4();
    }

    v9 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to create public key from data: %@", buf, 0xCu);
    }

    v8 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-269 description:@"failed to create public key from data"];
    if (v7)
    {
      if (error)
      {
        goto LABEL_14;
      }
    }

    else
    {
      CFRelease(v6);
      if (error)
      {
LABEL_14:
        if (v8)
        {
          v10 = v8;
          *error = v8;
        }
      }
    }

    v11 = +[TransparencyAnalytics logger];
    [v11 logResultForEvent:@"KTAccountKeyPublicDecode" hardFailure:1 result:v8];

    v6 = 0;
    goto LABEL_17;
  }

  v6 = PCSPublicIdentityCreateWithPublicKeyInfo();
  v7 = v6 == 0;
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = +[TransparencyAnalytics logger];
  [v8 logSuccessForEventNamed:@"KTAccountKeyPublicDecode"];
LABEL_17:

  return v6;
}

- (void)rollKey:(id)key
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v14 = 0;
  v5 = [(KTAccountKeyServer *)self copyPCSIdentitySet:&v14];
  v6 = v14;
  v18 = v5;
  if (v16[3])
  {
    if (qword_10039CAF8 != -1)
    {
      sub_10025D2FC();
    }

    v7 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "attempting to roll account key identity", buf, 2u);
    }

    v8 = v16[3];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001EFFCC;
    v10[3] = &unk_100328C90;
    v11 = keyCopy;
    v12 = &v15;
    [(KTAccountKeyServer *)self createIdentityForSet:v8 roll:1 completionBlock:v10];
  }

  else
  {
    v9 = +[TransparencyAnalytics logger];
    [v9 logResultForEvent:@"KTAccountKeyRoll" hardFailure:1 result:v6];

    (*(keyCopy + 2))(keyCopy, 0, v6);
  }

  _Block_object_dispose(&v15, 8);
}

- (BOOL)isAccountIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v20 = 0;
  v7 = [(KTAccountKeyServer *)self copyPCSIdentitySet:&v20];
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v19 = v8;
    v10 = [KTAccountKeyServer decodePublicKeyInfo:identityCopy error:&v19];
    v11 = v19;

    if (v10)
    {
      PCSPublicIdentityGetPublicID();
      v12 = PCSIdentitySetCopyIdentityWithError();
      v13 = v12 != 0;
      if (v12)
      {
        CFRelease(v12);
      }

      else
      {
        if (qword_10039CAF8 != -1)
        {
          sub_10025D34C();
        }

        v14 = qword_10039CB00;
        if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to get identity for public identity: %@", buf, 0xCu);
        }

        v11 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-271 description:@"failed to find identity for public identity"];
        if (error && v11)
        {
          v15 = v11;
          *error = v11;
        }
      }

      CFRelease(v10);
      CFRelease(v7);
    }

    else
    {
      CFRelease(v7);
      v13 = 0;
      if (error && v11)
      {
        v17 = v11;
        v13 = 0;
        *error = v11;
      }
    }
  }

  else
  {
    v13 = 0;
    if (error && v8)
    {
      v16 = v8;
      v13 = 0;
      *error = v9;
    }

    v11 = v9;
  }

  return v13;
}

- (void)signData:(id)data completionBlock:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F05E8;
  v8[3] = &unk_100328D38;
  dataCopy = data;
  blockCopy = block;
  v6 = dataCopy;
  v7 = blockCopy;
  [(KTAccountKeyServer *)self getPCSIdentity:v8];
}

- (id)publicPublicKey:(id *)key
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1001F0C44;
  v18 = sub_1001F0C54;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1001F0C44;
  v12 = sub_1001F0C54;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F0C5C;
  v7[3] = &unk_100328D60;
  v7[4] = &v8;
  v7[5] = &v14;
  [(KTAccountKeyServer *)self getPCSIdentity:v7];
  if (key)
  {
    v4 = v9[5];
    if (v4)
    {
      *key = v4;
    }
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

+ (BOOL)verifyData:(id)data signature:(id)signature accountPublicKeyInfo:(id)info error:(id *)error
{
  dataCopy = data;
  signatureCopy = signature;
  infoCopy = info;
  v12 = infoCopy;
  if (!dataCopy)
  {
    v18 = -346;
LABEL_17:
    v14 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:v18 description:@"missing data or signature or accountKey"];
    if (qword_10039CAF8 != -1)
    {
      sub_10025D400();
    }

    v19 = qword_10039CB00;
    if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "PCS signature verify failed due to missing data or signature or accountKey", buf, 2u);
    }

    goto LABEL_21;
  }

  if (!signatureCopy)
  {
    v18 = -347;
    goto LABEL_17;
  }

  if (!infoCopy)
  {
    v18 = -348;
    goto LABEL_17;
  }

  v22 = 0;
  v13 = [KTAccountKeyServer decodePublicKeyInfo:infoCopy error:&v22];
  v14 = v22;
  if (v13)
  {
    v15 = PCSValidateSignature();
    if ((v15 & 1) == 0)
    {
      if (qword_10039CAF8 != -1)
      {
        sub_10025D3D8();
      }

      v16 = qword_10039CB00;
      if (os_log_type_enabled(qword_10039CB00, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to verify data: %@", buf, 0xCu);
      }

      v14 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-270 description:@"failed to verify data with account key"];
      if (error && v14)
      {
        v17 = v14;
        *error = v14;
      }
    }

    CFRelease(v13);
    goto LABEL_24;
  }

LABEL_21:
  v15 = 0;
  if (error && v14)
  {
    v20 = v14;
    v15 = 0;
    *error = v14;
  }

LABEL_24:

  return v15;
}

@end