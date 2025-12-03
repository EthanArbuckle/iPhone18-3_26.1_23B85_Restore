@interface SDAppleIDDatabaseManager
+ (id)sharedManager;
- (NSDictionary)metaInfo;
- (SDAppleIDDatabaseManager)init;
- (id)_accountForAppleID:(id)d;
- (id)_cachedPersonInfoWithEmailOrPhone:(id)phone;
- (id)_identityForAppleID:(id)d;
- (id)_statusInfo;
- (id)accountForAppleID:(id)d;
- (id)cachedPersonInfoWithEmailOrPhone:(id)phone;
- (id)identityForAppleID:(id)d;
- (id)statusInfo;
- (void)_addAppleID:(id)d;
- (void)_addPersonInfoToCache:(id)cache;
- (void)_clearLegacyPreferencesIfNeeded;
- (void)_clearPersonInfoCache;
- (void)_postNotificationWithName:(id)name;
- (void)_readPrefs;
- (void)_removeAppleID:(id)d;
- (void)_setAccount:(id)account;
- (void)_setIdentity:(id)identity forAppleID:(id)d;
- (void)_setMetaInfo:(id)info;
- (void)_updateAccountInfoPrefs;
- (void)_updateMetaInfoPrefs;
- (void)_updatePersonInfoCachePrefs;
- (void)addAppleID:(id)d;
- (void)addPersonInfoToCache:(id)cache;
- (void)clearPersonInfoCache;
- (void)removeAppleID:(id)d;
- (void)setCertificateToken:(id)token privateKeyPersistentReference:(id)reference forAppleID:(id)d;
- (void)setContactInfo:(id)info validationRecord:(id)record forAppleID:(id)d;
- (void)setIdentity:(id)identity forAppleID:(id)d;
- (void)setLastConnectionDate:(id)date;
- (void)setLastSuccessfulConnectionDate:(id)date;
- (void)setMetaInfo:(id)info;
@end

@implementation SDAppleIDDatabaseManager

- (SDAppleIDDatabaseManager)init
{
  v8.receiver = self;
  v8.super_class = SDAppleIDDatabaseManager;
  v2 = [(SDAppleIDDatabaseManager *)&v8 init];
  if (v2)
  {
    v3 = +[_TtC16DaemoniOSLibrary32SDAppleIDAccountInfoStoreFactory platformStore];
    accountInfoStore = v2->_accountInfoStore;
    v2->_accountInfoStore = v3;

    v5 = +[NSMutableDictionary dictionary];
    personInfoCache = v2->_personInfoCache;
    v2->_personInfoCache = v5;

    [(SDAppleIDDatabaseManager *)v2 _readPrefs];
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_100989ED0 != -1)
  {
    sub_100139124();
  }

  v3 = qword_100989ED8;

  return v3;
}

- (void)_readPrefs
{
  selfCopy = self;
  accountInfoStore = self->_accountInfoStore;
  p_opt_inst_meths = &OBJC_PROTOCOL___SDAirDropServerDelegate.opt_inst_meths;
  if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
  {
    sub_100139138();
  }

  v5 = kCFPreferencesCurrentUser;
  v6 = CFPreferencesCopyValue(@"AppleIDAgentMetaInfo", @"com.apple.sharingd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = selfCopy;
    v8 = accountInfoStore;
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v34 = objc_opt_class();
    v11 = [NSSet setWithObjects:v9, v10, v34, objc_opt_class(), 0];
    v38 = 0;
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v6 error:&v38];
    v13 = v38;
    if (v12)
    {
      v35 = v12;
      objc_storeStrong(&v7->_metaInfo, v12);
      accountInfoStore = v8;
      if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        selfCopy = v7;
        sub_100139180(&v7->_metaInfo);
        goto LABEL_18;
      }
    }

    else
    {
      accountInfoStore = v8;
      if (dword_100971348 <= 60)
      {
        selfCopy = v7;
        if (dword_100971348 != -1 || _LogCategory_Initialize())
        {
          sub_1001391C4();
        }

        v35 = 0;
LABEL_18:
        v5 = kCFPreferencesCurrentUser;
        if (!accountInfoStore)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v35 = 0;
    }

    selfCopy = v7;
    goto LABEL_18;
  }

  v13 = 0;
  v35 = 0;
  v11 = 0;
  if (!accountInfoStore)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (([(SDAppleIDPlatformAccountInfoStore *)selfCopy->_accountInfoStore storeExists]& 1) != 0)
  {
    v14 = 0;
    v15 = 0;
LABEL_47:
    if (([(SDAppleIDPlatformAccountInfoStore *)selfCopy->_accountInfoStore storeExists]& 1) != 0)
    {
      read = [(SDAppleIDPlatformAccountInfoStore *)selfCopy->_accountInfoStore read];
      v22 = read;
      if (read)
      {
        account = [read account];

        if (account)
        {
          account2 = [v22 account];
          [(SDAppleIDDatabaseManager *)selfCopy _setAccount:account2];
        }

        personInfo = [v22 personInfo];
        v26 = [personInfo mutableCopy];

        if (v26)
        {
          personInfo2 = [v22 personInfo];
          v28 = [personInfo2 mutableCopy];
          [(SDAppleIDDatabaseManager *)selfCopy setPersonInfoCache:v28];
        }
      }

      else
      {
        v33 = *(p_opt_inst_meths + 210);
        if (v33 <= 90 && (v33 != -1 || _LogCategory_Initialize()))
        {
          sub_1001393B8();
        }
      }

      [(SDAppleIDDatabaseManager *)selfCopy _clearLegacyPreferencesIfNeeded];
    }

    else
    {
      v29 = *(p_opt_inst_meths + 210);
      if (v29 <= 50 && (v29 != -1 || _LogCategory_Initialize()))
      {
        sub_100139384();
      }

      v30 = selfCopy->_accountInfoStore;
      account3 = [(SDAppleIDDatabaseManager *)selfCopy account];
      personInfoCache = [(SDAppleIDDatabaseManager *)selfCopy personInfoCache];
      LODWORD(v30) = [(SDAppleIDPlatformAccountInfoStore *)v30 storeWithAccount:account3 personInfo:personInfoCache];

      if (v30)
      {
        [(SDAppleIDDatabaseManager *)selfCopy _clearLegacyPreferencesIfNeeded];
      }
    }

    goto LABEL_62;
  }

LABEL_21:
  if (dword_100971348 <= 50 && (dword_100971348 != -1 || _LogCategory_Initialize()))
  {
    sub_10013920C();
  }

  v16 = CFPreferencesCopyValue(@"AppleIDAccount", @"com.apple.sharingd", v5, kCFPreferencesCurrentHost);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_30;
  }

  v37 = 0;
  v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:&v37];
  v13 = v37;
  if (!v15)
  {
    if (dword_100971348 <= 60 && (dword_100971348 != -1 || _LogCategory_Initialize()))
    {
      sub_100139298();
    }

LABEL_30:
    v15 = 0;
    goto LABEL_31;
  }

  [(SDAppleIDDatabaseManager *)selfCopy _setAccount:v15];
  if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
  {
    sub_100139240(selfCopy);
  }

LABEL_31:
  v6 = CFPreferencesCopyValue(@"PersonInfoCache", @"com.apple.sharingd", v5, kCFPreferencesCurrentHost);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [NSSet setWithObjects:v17, v18, objc_opt_class(), 0];

    v36 = 0;
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v19 fromData:v6 error:&v36];
    v13 = v36;
    p_opt_inst_meths = &OBJC_PROTOCOL___SDAirDropServerDelegate.opt_inst_meths;
    if (v14)
    {
      v20 = [NSMutableDictionary dictionaryWithDictionary:v14];
      [(SDAppleIDDatabaseManager *)selfCopy setPersonInfoCache:v20];

      if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        sub_1001392E0(selfCopy);
      }
    }

    else
    {
      if (dword_100971348 <= 60 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        sub_10013933C();
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v19 = v11;
    p_opt_inst_meths = (&OBJC_PROTOCOL___SDAirDropServerDelegate + 40);
  }

  v11 = v19;
  if (accountInfoStore)
  {
    goto LABEL_47;
  }

LABEL_62:
}

- (void)_clearLegacyPreferencesIfNeeded
{
  accountInfoStore = self->_accountInfoStore;
  storeExists = [(SDAppleIDPlatformAccountInfoStore *)accountInfoStore storeExists];
  if (accountInfoStore)
  {
    v4 = storeExists == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (dword_100971348 <= 50 && (dword_100971348 != -1 || _LogCategory_Initialize()))
    {
      sub_1001393EC();
    }

    CFPreferencesSetValue(@"AppleIDAccount", 0, @"com.apple.sharingd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    CFPreferencesSetValue(@"PersonInfoCache", 0, @"com.apple.sharingd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

    CFPreferencesAppSynchronize(@"com.apple.sharingd");
  }
}

- (id)accountForAppleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SDAppleIDDatabaseManager *)selfCopy _accountForAppleID:dCopy];
  v7 = [v6 copy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)identityForAppleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SDAppleIDDatabaseManager *)selfCopy _identityForAppleID:dCopy];
  v7 = [v6 copy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)statusInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _statusInfo = [(SDAppleIDDatabaseManager *)selfCopy _statusInfo];
  objc_sync_exit(selfCopy);

  return _statusInfo;
}

- (void)_updateAccountInfoPrefs
{
  accountInfoStore = self->_accountInfoStore;
  account = [(SDAppleIDDatabaseManager *)self account];
  v5 = account;
  if (accountInfoStore)
  {
    personInfoCache = [(SDAppleIDDatabaseManager *)self personInfoCache];
    [(SDAppleIDPlatformAccountInfoStore *)accountInfoStore storeWithAccount:v5 personInfo:personInfoCache];

    v7 = v5;
  }

  else
  {
    if (account)
    {
      account2 = [(SDAppleIDDatabaseManager *)self account];
      value = [NSKeyedArchiver archivedDataWithRootObject:account2 requiringSecureCoding:1 error:0];
    }

    else
    {
      value = 0;
    }

    CFPreferencesSetValue(@"AppleIDAccount", value, @"com.apple.sharingd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    CFPreferencesAppSynchronize(@"com.apple.sharingd");
    if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
    {
      sub_10013940C();
    }

    v7 = value;
  }
}

- (void)_updateMetaInfoPrefs
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self->_metaInfo requiringSecureCoding:1 error:0];
  CFPreferencesSetValue(@"AppleIDAgentMetaInfo", v2, @"com.apple.sharingd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesAppSynchronize(@"com.apple.sharingd");
  if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
  {
    sub_100139428();
  }
}

- (void)_updatePersonInfoCachePrefs
{
  accountInfoStore = self->_accountInfoStore;
  if (accountInfoStore)
  {
    value = [(SDAppleIDDatabaseManager *)self account];
    personInfoCache = [(SDAppleIDDatabaseManager *)self personInfoCache];
    [(SDAppleIDPlatformAccountInfoStore *)accountInfoStore storeWithAccount:value personInfo:personInfoCache];
  }

  else
  {
    personInfoCache2 = [(SDAppleIDDatabaseManager *)self personInfoCache];
    value = [NSKeyedArchiver archivedDataWithRootObject:personInfoCache2 requiringSecureCoding:1 error:0];

    CFPreferencesSetValue(@"PersonInfoCache", value, @"com.apple.sharingd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    CFPreferencesAppSynchronize(@"com.apple.sharingd");
    if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
    {
      sub_100139444();
    }
  }
}

- (void)_setAccount:(id)account
{
  accountCopy = account;
  account = [(SDAppleIDDatabaseManager *)self account];
  v5 = [accountCopy isEqual:account];

  v6 = accountCopy;
  if ((v5 & 1) == 0)
  {
    identity = [accountCopy identity];
    account2 = [(SDAppleIDDatabaseManager *)self account];
    identity2 = [account2 identity];
    if (identity == identity2)
    {
      v13 = 0;
    }

    else
    {
      identity3 = [accountCopy identity];
      account3 = [(SDAppleIDDatabaseManager *)self account];
      identity4 = [account3 identity];
      v13 = [identity3 isEqual:identity4] ^ 1;
    }

    validationRecord = [accountCopy validationRecord];
    account4 = [(SDAppleIDDatabaseManager *)self account];
    validationRecord2 = [account4 validationRecord];
    if (validationRecord == validationRecord2)
    {
      v20 = 0;
    }

    else
    {
      validationRecord3 = [accountCopy validationRecord];
      account5 = [(SDAppleIDDatabaseManager *)self account];
      validationRecord4 = [account5 validationRecord];
      v20 = [validationRecord3 isEqual:validationRecord4] ^ 1;
    }

    account6 = [(SDAppleIDDatabaseManager *)self account];
    identity5 = [account6 identity];
    [identity5 removeFromKeychain];

    [(SDAppleIDDatabaseManager *)self setAccount:accountCopy];
    [(SDAppleIDDatabaseManager *)self _updateAccountInfoPrefs];
    if (v13)
    {
      [(SDAppleIDDatabaseManager *)self _postNotificationWithName:SFAppleIDIdentityDidChangeNotification];
    }

    v6 = accountCopy;
    if (v20)
    {
      [(SDAppleIDDatabaseManager *)self _postNotificationWithName:SFAppleIDValidationRecordDidChangeNotification];
      v6 = accountCopy;
    }
  }
}

- (void)addAppleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _addAppleID:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeAppleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _removeAppleID:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)addPersonInfoToCache:(id)cache
{
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _addPersonInfoToCache:cacheCopy];
  objc_sync_exit(selfCopy);
}

- (id)cachedPersonInfoWithEmailOrPhone:(id)phone
{
  phoneCopy = phone;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SDAppleIDDatabaseManager *)selfCopy _cachedPersonInfoWithEmailOrPhone:phoneCopy];
  objc_sync_exit(selfCopy);

  if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
  {
    sub_100139460(v6);
  }

  return v6;
}

- (void)_clearPersonInfoCache
{
  accountInfoStore = self->_accountInfoStore;
  personInfoCache = [(SDAppleIDDatabaseManager *)self personInfoCache];
  [personInfoCache removeAllObjects];

  if (accountInfoStore)
  {
    v5 = self->_accountInfoStore;
    account = [(SDAppleIDDatabaseManager *)self account];
    [(SDAppleIDPlatformAccountInfoStore *)v5 deletePersonInfoCacheWithAccount:account];
  }

  else
  {

    [(SDAppleIDDatabaseManager *)self _updatePersonInfoCachePrefs];
  }
}

- (void)clearPersonInfoCache
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDDatabaseManager *)obj _clearPersonInfoCache];
  objc_sync_exit(obj);
}

- (void)setLastConnectionDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _setLastConnectionDate:dateCopy];
  objc_sync_exit(selfCopy);
}

- (void)setLastSuccessfulConnectionDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _setLastSuccessfulConnectionDate:dateCopy];
  objc_sync_exit(selfCopy);
}

- (void)setIdentity:(id)identity forAppleID:(id)d
{
  identityCopy = identity;
  dCopy = d;
  v7 = [identityCopy copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _setIdentity:v7 forAppleID:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)setCertificateToken:(id)token privateKeyPersistentReference:(id)reference forAppleID:(id)d
{
  tokenCopy = token;
  referenceCopy = reference;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _setCertificateToken:tokenCopy privateKeyPersistentReference:referenceCopy forAppleID:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)setContactInfo:(id)info validationRecord:(id)record forAppleID:(id)d
{
  infoCopy = info;
  recordCopy = record;
  dCopy = d;
  v10 = [infoCopy copy];
  v11 = [recordCopy copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _setContactInfo:v10 validationRecord:v11 forAppleID:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)_setMetaInfo:(id)info
{
  infoCopy = info;
  metaInfo = self->_metaInfo;
  if (metaInfo != infoCopy)
  {
    v9 = infoCopy;
    v6 = [(NSDictionary *)metaInfo isEqual:infoCopy];
    infoCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      v8 = self->_metaInfo;
      self->_metaInfo = v7;

      [(SDAppleIDDatabaseManager *)self _updateMetaInfoPrefs];
      infoCopy = v9;
    }
  }
}

- (void)setMetaInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDDatabaseManager *)selfCopy _setMetaInfo:infoCopy];
  objc_sync_exit(selfCopy);
}

- (NSDictionary)metaInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_metaInfo;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_postNotificationWithName:(id)name
{
  nameCopy = name;
  v4 = SFMainQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001380C4;
  block[3] = &unk_1008CDEA0;
  v7 = nameCopy;
  v5 = nameCopy;
  dispatch_async(v4, block);
}

- (id)_identityForAppleID:(id)d
{
  dCopy = d;
  if (dCopy && (-[SDAppleIDDatabaseManager account](self, "account"), v5 = objc_claimAutoreleasedReturnValue(), [v5 appleID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", dCopy), v6, v5, v7))
  {
    account = [(SDAppleIDDatabaseManager *)self account];
  }

  else
  {
    account = 0;
  }

  identity = [account identity];

  return identity;
}

- (id)_accountForAppleID:(id)d
{
  dCopy = d;
  if (dCopy && (-[SDAppleIDDatabaseManager account](self, "account"), v5 = objc_claimAutoreleasedReturnValue(), [v5 appleID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", dCopy), v6, v5, v7))
  {
    account = [(SDAppleIDDatabaseManager *)self account];
  }

  else
  {
    account = 0;
  }

  return account;
}

- (id)_statusInfo
{
  v3 = +[NSMutableDictionary dictionary];
  if (v3)
  {
    v4 = [NSNumber numberWithInt:MKBDeviceUnlockedSinceBoot()];
    [v3 setObject:v4 forKeyedSubscript:@"DeviceUnlockedSinceBoot"];

    v5 = [NSNumber numberWithInt:getpid()];
    [v3 setObject:v5 forKeyedSubscript:@"PID"];

    [v3 setObject:self->_lastConnectionDate forKeyedSubscript:@"LastConnectAttempt"];
    [v3 setObject:self->_lastSuccessfulConnectionDate forKeyedSubscript:@"LastSuccessfulConnect"];
    [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"AccountRequiresUserAction"];
    v6 = v3;
  }

  return v3;
}

- (void)_addAppleID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v5 = [(SDAppleIDDatabaseManager *)self _accountForAppleID:dCopy];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = [[SFAppleIDAccount alloc] initWithAppleID:v7];
    }

    [(SDAppleIDDatabaseManager *)self _setAccount:v6];
    if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)_removeAppleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    account = [(SDAppleIDDatabaseManager *)self account];
    appleID = [account appleID];
    v6 = [appleID isEqualToString:dCopy];

    if (v6)
    {
      [(SDAppleIDDatabaseManager *)self _setAccount:0];
      if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }
}

- (void)_addPersonInfoToCache:(id)cache
{
  cacheCopy = cache;
  if (cacheCopy)
  {
    matchedValue = [cacheCopy matchedValue];

    if (matchedValue)
    {
      personInfoCache = [(SDAppleIDDatabaseManager *)self personInfoCache];
      matchedValue2 = [cacheCopy matchedValue];
      [personInfoCache setObject:cacheCopy forKeyedSubscript:matchedValue2];

      [(SDAppleIDDatabaseManager *)self _updatePersonInfoCachePrefs];
      if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        matchedValue3 = [cacheCopy matchedValue];
        LogPrintF();
      }
    }
  }
}

- (id)_cachedPersonInfoWithEmailOrPhone:(id)phone
{
  phoneCopy = phone;
  if (phoneCopy)
  {
    personInfoCache = [(SDAppleIDDatabaseManager *)self personInfoCache];
    v6 = [personInfoCache objectForKeyedSubscript:phoneCopy];

    if (v6 && ([v6 isStale] & 1) == 0)
    {
      v7 = v6;
      v6 = v7;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7;
}

- (void)_setIdentity:(id)identity forAppleID:(id)d
{
  sub_100021EA0();
  v5 = v4;
  v7 = v6;
  v23 = v8;
  v9 = v5;
  if (!v9)
  {
LABEL_31:
    identity = 0;
    altDSID = 0;
    v11 = 0;
    goto LABEL_24;
  }

  v10 = [v7 _accountForAppleID:v9];
  if (!v10)
  {
    if (dword_100971348 <= 90 && (dword_100971348 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_31;
  }

  v11 = v10;
  identity = [v10 identity];
  v13 = v23;
  if (identity == v23)
  {
    v14 = 0;
  }

  else
  {
    if ([v23 isEqual:identity])
    {
      v14 = 0;
    }

    else
    {
      identity2 = [v11 identity];
      [identity2 removeFromKeychain];

      [v11 setIdentity:v23];
      if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [v7 _postNotificationWithName:SFAppleIDIdentityDidChangeNotification];
      v14 = 1;
    }

    v13 = v23;
  }

  altDSID = [v13 altDSID];
  altDSID2 = [v11 altDSID];
  v18 = altDSID2;
  if (altDSID != altDSID2)
  {
    altDSID3 = [v11 altDSID];
    v20 = [altDSID isEqual:altDSID3];

    if (v20)
    {
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      [v11 setAltDSID:altDSID];
      if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

LABEL_23:
    [v7 _updateAccountInfoPrefs];
    goto LABEL_24;
  }

  if (v14)
  {
    goto LABEL_23;
  }

LABEL_24:

  sub_100035D70();
}

@end