@interface SDAppleIDDatabaseManager
+ (id)sharedManager;
- (NSDictionary)metaInfo;
- (SDAppleIDDatabaseManager)init;
- (id)_accountForAppleID:(id)a3;
- (id)_cachedPersonInfoWithEmailOrPhone:(id)a3;
- (id)_identityForAppleID:(id)a3;
- (id)_statusInfo;
- (id)accountForAppleID:(id)a3;
- (id)cachedPersonInfoWithEmailOrPhone:(id)a3;
- (id)identityForAppleID:(id)a3;
- (id)statusInfo;
- (void)_addAppleID:(id)a3;
- (void)_addPersonInfoToCache:(id)a3;
- (void)_clearLegacyPreferencesIfNeeded;
- (void)_clearPersonInfoCache;
- (void)_postNotificationWithName:(id)a3;
- (void)_readPrefs;
- (void)_removeAppleID:(id)a3;
- (void)_setAccount:(id)a3;
- (void)_setIdentity:(id)a3 forAppleID:(id)a4;
- (void)_setMetaInfo:(id)a3;
- (void)_updateAccountInfoPrefs;
- (void)_updateMetaInfoPrefs;
- (void)_updatePersonInfoCachePrefs;
- (void)addAppleID:(id)a3;
- (void)addPersonInfoToCache:(id)a3;
- (void)clearPersonInfoCache;
- (void)removeAppleID:(id)a3;
- (void)setCertificateToken:(id)a3 privateKeyPersistentReference:(id)a4 forAppleID:(id)a5;
- (void)setContactInfo:(id)a3 validationRecord:(id)a4 forAppleID:(id)a5;
- (void)setIdentity:(id)a3 forAppleID:(id)a4;
- (void)setLastConnectionDate:(id)a3;
- (void)setLastSuccessfulConnectionDate:(id)a3;
- (void)setMetaInfo:(id)a3;
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
  v2 = self;
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
    v7 = v2;
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
        v2 = v7;
        sub_100139180(&v7->_metaInfo);
        goto LABEL_18;
      }
    }

    else
    {
      accountInfoStore = v8;
      if (dword_100971348 <= 60)
      {
        v2 = v7;
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

    v2 = v7;
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
  if (([(SDAppleIDPlatformAccountInfoStore *)v2->_accountInfoStore storeExists]& 1) != 0)
  {
    v14 = 0;
    v15 = 0;
LABEL_47:
    if (([(SDAppleIDPlatformAccountInfoStore *)v2->_accountInfoStore storeExists]& 1) != 0)
    {
      v21 = [(SDAppleIDPlatformAccountInfoStore *)v2->_accountInfoStore read];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 account];

        if (v23)
        {
          v24 = [v22 account];
          [(SDAppleIDDatabaseManager *)v2 _setAccount:v24];
        }

        v25 = [v22 personInfo];
        v26 = [v25 mutableCopy];

        if (v26)
        {
          v27 = [v22 personInfo];
          v28 = [v27 mutableCopy];
          [(SDAppleIDDatabaseManager *)v2 setPersonInfoCache:v28];
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

      [(SDAppleIDDatabaseManager *)v2 _clearLegacyPreferencesIfNeeded];
    }

    else
    {
      v29 = *(p_opt_inst_meths + 210);
      if (v29 <= 50 && (v29 != -1 || _LogCategory_Initialize()))
      {
        sub_100139384();
      }

      v30 = v2->_accountInfoStore;
      v31 = [(SDAppleIDDatabaseManager *)v2 account];
      v32 = [(SDAppleIDDatabaseManager *)v2 personInfoCache];
      LODWORD(v30) = [(SDAppleIDPlatformAccountInfoStore *)v30 storeWithAccount:v31 personInfo:v32];

      if (v30)
      {
        [(SDAppleIDDatabaseManager *)v2 _clearLegacyPreferencesIfNeeded];
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

  [(SDAppleIDDatabaseManager *)v2 _setAccount:v15];
  if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
  {
    sub_100139240(v2);
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
      [(SDAppleIDDatabaseManager *)v2 setPersonInfoCache:v20];

      if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        sub_1001392E0(v2);
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
  v3 = [(SDAppleIDPlatformAccountInfoStore *)accountInfoStore storeExists];
  if (accountInfoStore)
  {
    v4 = v3 == 0;
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

- (id)accountForAppleID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SDAppleIDDatabaseManager *)v5 _accountForAppleID:v4];
  v7 = [v6 copy];

  objc_sync_exit(v5);

  return v7;
}

- (id)identityForAppleID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SDAppleIDDatabaseManager *)v5 _identityForAppleID:v4];
  v7 = [v6 copy];

  objc_sync_exit(v5);

  return v7;
}

- (id)statusInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SDAppleIDDatabaseManager *)v2 _statusInfo];
  objc_sync_exit(v2);

  return v3;
}

- (void)_updateAccountInfoPrefs
{
  accountInfoStore = self->_accountInfoStore;
  v4 = [(SDAppleIDDatabaseManager *)self account];
  v5 = v4;
  if (accountInfoStore)
  {
    v6 = [(SDAppleIDDatabaseManager *)self personInfoCache];
    [(SDAppleIDPlatformAccountInfoStore *)accountInfoStore storeWithAccount:v5 personInfo:v6];

    v7 = v5;
  }

  else
  {
    if (v4)
    {
      v8 = [(SDAppleIDDatabaseManager *)self account];
      value = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
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
    v4 = [(SDAppleIDDatabaseManager *)self personInfoCache];
    [(SDAppleIDPlatformAccountInfoStore *)accountInfoStore storeWithAccount:value personInfo:v4];
  }

  else
  {
    v5 = [(SDAppleIDDatabaseManager *)self personInfoCache];
    value = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];

    CFPreferencesSetValue(@"PersonInfoCache", value, @"com.apple.sharingd", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    CFPreferencesAppSynchronize(@"com.apple.sharingd");
    if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
    {
      sub_100139444();
    }
  }
}

- (void)_setAccount:(id)a3
{
  v23 = a3;
  v4 = [(SDAppleIDDatabaseManager *)self account];
  v5 = [v23 isEqual:v4];

  v6 = v23;
  if ((v5 & 1) == 0)
  {
    v7 = [v23 identity];
    v8 = [(SDAppleIDDatabaseManager *)self account];
    v9 = [v8 identity];
    if (v7 == v9)
    {
      v13 = 0;
    }

    else
    {
      v10 = [v23 identity];
      v11 = [(SDAppleIDDatabaseManager *)self account];
      v12 = [v11 identity];
      v13 = [v10 isEqual:v12] ^ 1;
    }

    v14 = [v23 validationRecord];
    v15 = [(SDAppleIDDatabaseManager *)self account];
    v16 = [v15 validationRecord];
    if (v14 == v16)
    {
      v20 = 0;
    }

    else
    {
      v17 = [v23 validationRecord];
      v18 = [(SDAppleIDDatabaseManager *)self account];
      v19 = [v18 validationRecord];
      v20 = [v17 isEqual:v19] ^ 1;
    }

    v21 = [(SDAppleIDDatabaseManager *)self account];
    v22 = [v21 identity];
    [v22 removeFromKeychain];

    [(SDAppleIDDatabaseManager *)self setAccount:v23];
    [(SDAppleIDDatabaseManager *)self _updateAccountInfoPrefs];
    if (v13)
    {
      [(SDAppleIDDatabaseManager *)self _postNotificationWithName:SFAppleIDIdentityDidChangeNotification];
    }

    v6 = v23;
    if (v20)
    {
      [(SDAppleIDDatabaseManager *)self _postNotificationWithName:SFAppleIDValidationRecordDidChangeNotification];
      v6 = v23;
    }
  }
}

- (void)addAppleID:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SDAppleIDDatabaseManager *)v4 _addAppleID:v5];
  objc_sync_exit(v4);
}

- (void)removeAppleID:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SDAppleIDDatabaseManager *)v4 _removeAppleID:v5];
  objc_sync_exit(v4);
}

- (void)addPersonInfoToCache:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SDAppleIDDatabaseManager *)v4 _addPersonInfoToCache:v5];
  objc_sync_exit(v4);
}

- (id)cachedPersonInfoWithEmailOrPhone:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SDAppleIDDatabaseManager *)v5 _cachedPersonInfoWithEmailOrPhone:v4];
  objc_sync_exit(v5);

  if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
  {
    sub_100139460(v6);
  }

  return v6;
}

- (void)_clearPersonInfoCache
{
  accountInfoStore = self->_accountInfoStore;
  v4 = [(SDAppleIDDatabaseManager *)self personInfoCache];
  [v4 removeAllObjects];

  if (accountInfoStore)
  {
    v5 = self->_accountInfoStore;
    v6 = [(SDAppleIDDatabaseManager *)self account];
    [(SDAppleIDPlatformAccountInfoStore *)v5 deletePersonInfoCacheWithAccount:v6];
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

- (void)setLastConnectionDate:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SDAppleIDDatabaseManager *)v4 _setLastConnectionDate:v5];
  objc_sync_exit(v4);
}

- (void)setLastSuccessfulConnectionDate:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SDAppleIDDatabaseManager *)v4 _setLastSuccessfulConnectionDate:v5];
  objc_sync_exit(v4);
}

- (void)setIdentity:(id)a3 forAppleID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 copy];
  v8 = self;
  objc_sync_enter(v8);
  [(SDAppleIDDatabaseManager *)v8 _setIdentity:v7 forAppleID:v6];
  objc_sync_exit(v8);
}

- (void)setCertificateToken:(id)a3 privateKeyPersistentReference:(id)a4 forAppleID:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  [(SDAppleIDDatabaseManager *)v10 _setCertificateToken:v11 privateKeyPersistentReference:v8 forAppleID:v9];
  objc_sync_exit(v10);
}

- (void)setContactInfo:(id)a3 validationRecord:(id)a4 forAppleID:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v13 copy];
  v11 = [v8 copy];
  v12 = self;
  objc_sync_enter(v12);
  [(SDAppleIDDatabaseManager *)v12 _setContactInfo:v10 validationRecord:v11 forAppleID:v9];
  objc_sync_exit(v12);
}

- (void)_setMetaInfo:(id)a3
{
  v4 = a3;
  metaInfo = self->_metaInfo;
  if (metaInfo != v4)
  {
    v9 = v4;
    v6 = [(NSDictionary *)metaInfo isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      v8 = self->_metaInfo;
      self->_metaInfo = v7;

      [(SDAppleIDDatabaseManager *)self _updateMetaInfoPrefs];
      v4 = v9;
    }
  }
}

- (void)setMetaInfo:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(SDAppleIDDatabaseManager *)v4 _setMetaInfo:v5];
  objc_sync_exit(v4);
}

- (NSDictionary)metaInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_metaInfo;
  objc_sync_exit(v2);

  return v3;
}

- (void)_postNotificationWithName:(id)a3
{
  v3 = a3;
  v4 = SFMainQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001380C4;
  block[3] = &unk_1008CDEA0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (id)_identityForAppleID:(id)a3
{
  v4 = a3;
  if (v4 && (-[SDAppleIDDatabaseManager account](self, "account"), v5 = objc_claimAutoreleasedReturnValue(), [v5 appleID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v4), v6, v5, v7))
  {
    v8 = [(SDAppleIDDatabaseManager *)self account];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 identity];

  return v9;
}

- (id)_accountForAppleID:(id)a3
{
  v4 = a3;
  if (v4 && (-[SDAppleIDDatabaseManager account](self, "account"), v5 = objc_claimAutoreleasedReturnValue(), [v5 appleID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v4), v6, v5, v7))
  {
    v8 = [(SDAppleIDDatabaseManager *)self account];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

- (void)_addAppleID:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [(SDAppleIDDatabaseManager *)self _accountForAppleID:v4];
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

- (void)_removeAppleID:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(SDAppleIDDatabaseManager *)self account];
    v5 = [v4 appleID];
    v6 = [v5 isEqualToString:v7];

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

- (void)_addPersonInfoToCache:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [v8 matchedValue];

    if (v4)
    {
      v5 = [(SDAppleIDDatabaseManager *)self personInfoCache];
      v6 = [v8 matchedValue];
      [v5 setObject:v8 forKeyedSubscript:v6];

      [(SDAppleIDDatabaseManager *)self _updatePersonInfoCachePrefs];
      if (dword_100971348 <= 30 && (dword_100971348 != -1 || _LogCategory_Initialize()))
      {
        v7 = [v8 matchedValue];
        LogPrintF();
      }
    }
  }
}

- (id)_cachedPersonInfoWithEmailOrPhone:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SDAppleIDDatabaseManager *)self personInfoCache];
    v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_setIdentity:(id)a3 forAppleID:(id)a4
{
  sub_100021EA0();
  v5 = v4;
  v7 = v6;
  v23 = v8;
  v9 = v5;
  if (!v9)
  {
LABEL_31:
    v12 = 0;
    v16 = 0;
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
  v12 = [v10 identity];
  v13 = v23;
  if (v12 == v23)
  {
    v14 = 0;
  }

  else
  {
    if ([v23 isEqual:v12])
    {
      v14 = 0;
    }

    else
    {
      v15 = [v11 identity];
      [v15 removeFromKeychain];

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

  v16 = [v13 altDSID];
  v17 = [v11 altDSID];
  v18 = v17;
  if (v16 != v17)
  {
    v19 = [v11 altDSID];
    v20 = [v16 isEqual:v19];

    if (v20)
    {
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      [v11 setAltDSID:v16];
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