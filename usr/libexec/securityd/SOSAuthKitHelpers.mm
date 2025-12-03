@interface SOSAuthKitHelpers
+ (BOOL)accountIsCDPCapable;
+ (BOOL)peerinfoHasMID:(id)d;
+ (BOOL)updateMIDInPeerInfo:(id)info;
+ (id)machineID;
+ (void)activeMIDs:(id)ds;
- (BOOL)midIsValidInList:(id)list;
- (BOOL)serialIsValidInList:(id)list;
- (SOSAuthKitHelpers)initWithActiveMIDS:(id)s;
@end

@implementation SOSAuthKitHelpers

- (BOOL)serialIsValidInList:(id)list
{
  if (list)
  {
    return [(NSSet *)self->_serialNumbers containsObject:?];
  }

  else
  {
    return 1;
  }
}

- (BOOL)midIsValidInList:(id)list
{
  if (list)
  {
    return [(NSSet *)self->_machineIDs containsObject:?];
  }

  else
  {
    return 1;
  }
}

- (SOSAuthKitHelpers)initWithActiveMIDS:(id)s
{
  sCopy = s;
  v32.receiver = self;
  v32.super_class = SOSAuthKitHelpers;
  v6 = [(SOSAuthKitHelpers *)&v32 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v8 = objc_alloc_init(NSMutableSet);
    v9 = objc_alloc_init(NSSet);
    machineIDs = v6->_machineIDs;
    v6->_machineIDs = v9;

    v11 = objc_alloc_init(NSSet);
    serialNumbers = v6->_serialNumbers;
    v6->_serialNumbers = v11;

    if (!sCopy)
    {

      v26 = 0;
      goto LABEL_17;
    }

    objc_storeStrong(&v6->_midList, s);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v6->_midList;
    v14 = [(NSSet *)v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          machineID = [v18 machineID];

          if (machineID)
          {
            machineID2 = [v18 machineID];
            [(NSSet *)v7 addObject:machineID2];
          }

          serialNumber = [v18 serialNumber];

          if (serialNumber)
          {
            serialNumber2 = [v18 serialNumber];
            [(NSSet *)v8 addObject:serialNumber2];
          }
        }

        v15 = [(NSSet *)v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v15);
    }

    v23 = v6->_machineIDs;
    v6->_machineIDs = v7;
    v24 = v7;

    v25 = v6->_serialNumbers;
    v6->_serialNumbers = v8;
  }

  v26 = v6;
LABEL_17:

  return v26;
}

+ (BOOL)accountIsCDPCapable
{
  if (objc_opt_class() && objc_opt_class())
  {
    v2 = sub_100235084();
    v3 = +[AKAccountManager sharedInstance];
    v4 = v3;
    if (v3)
    {
      v5 = v2 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = sub_100006274("sosauthkit");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to get manager", buf, 2u);
      }

      LOBYTE(v7) = 0;
      goto LABEL_32;
    }

    v8 = [v3 altDSIDForAccount:v2];
    v19 = 0;
    v9 = [v4 authKitAccountWithAltDSID:v8 error:&v19];
    v10 = v19;
    v6 = v10;
    if (v9)
    {
      v11 = [v4 securityLevelForAccount:v9];
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v7 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v12 = sub_100006274("sosauthkit");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "failed to get ak account: %@", buf, 0xCu);
      }

      v11 = 0;
    }

    v13 = sub_100006274("sosauthkit");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Security level is %lu", buf, 0xCu);
    }

    v7 = 0;
    if (v11 > 5)
    {
      v14 = @"oh no please file a radar to Security | iCloud Keychain security level";
      goto LABEL_25;
    }

LABEL_23:
    v14 = *(&off_100346540 + v11);
LABEL_25:
    v15 = sub_100006274("sosauthkit");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = v8;
      v22 = 2048;
      v23 = v11;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Security level for altDSID %@ is %lu.  Account type: %@", buf, 0x20u);
    }

    v16 = sub_100006274("sosauthkit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "isn't";
      if (v7)
      {
        v17 = "is";
      }

      *buf = 136315138;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Account %s CDP Capable", buf, 0xCu);
    }

LABEL_32:
    goto LABEL_33;
  }

  v2 = sub_100006274("sosauthkit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ACAccount not available", buf, 2u);
  }

  LOBYTE(v7) = 0;
LABEL_33:

  return v7;
}

+ (BOOL)updateMIDInPeerInfo:(id)info
{
  infoCopy = info;
  v4 = +[SOSAuthKitHelpers machineID];
  if (v4)
  {
    cf = 0;
    sub_100228C18(infoCopy, sMachineIDKey, v4, &cf);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100235330;
    v9[3] = &unk_100346520;
    v10 = v4;
    v5 = sub_10021A5E8(infoCopy, @"Add Machine ID", &cf, v9);
    if ((v5 & 1) == 0)
    {
      v6 = sub_100006274("sosauthkit");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = cf;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to record MID in PeerInfo: %@", buf, 0xCu);
      }
    }

    v7 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v7);
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (BOOL)peerinfoHasMID:(id)d
{
  [d fullPeerInfo];
  if (!SOSFullPeerInfoGetPeerInfo())
  {
    return 1;
  }

  return SOSPeerInfoV2DictionaryHasString();
}

+ (void)activeMIDs:(id)ds
{
  dsCopy = ds;
  if (objc_opt_class() && objc_opt_class() && objc_opt_class() && AKServiceNameiCloud != 0)
  {
    v8 = sub_100235084();
    v6 = v8;
    if (v8)
    {
      v9 = objc_opt_new();
      if (v9)
      {
        v7 = v9;
        aa_altDSID = [v6 aa_altDSID];
        [v7 setAltDSID:aa_altDSID];

        v11 = objc_opt_new();
        if (v11)
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100235850;
          v18[3] = &unk_1003464F8;
          v19 = dsCopy;
          [v11 deviceListWithContext:v7 completion:v18];
          v12 = v19;
        }

        else
        {
          v21 = NSLocalizedDescriptionKey;
          v22 = @"can't get authController";
          v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          v17 = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-50 userInfo:v12];
          (*(dsCopy + 2))(dsCopy, 0, v17);
        }

        goto LABEL_23;
      }

      v14 = kCFErrorDomainOSStatus;
      v23 = NSLocalizedDescriptionKey;
      v24 = @"can't get AKDeviceListRequestContextClass";
      v15 = &v24;
      v16 = &v23;
    }

    else
    {
      v13 = sub_100006274("sosauthkit");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "can't get account", buf, 2u);
      }

      v14 = kCFErrorDomainOSStatus;
      v25 = NSLocalizedDescriptionKey;
      v26 = @"no primary account";
      v15 = &v26;
      v16 = &v25;
    }

    v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:1];
    v11 = [NSError errorWithDomain:v14 code:-50 userInfo:v7];
    (*(dsCopy + 2))(dsCopy, 0, v11);
LABEL_23:

    goto LABEL_11;
  }

  v5 = sub_100006274("sosauthkit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ACAccount not available", buf, 2u);
  }

  v27 = NSLocalizedDescriptionKey;
  v28 = @"AuthKit/AppleAccount not available";
  v6 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v7 = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-50 userInfo:v6];
  (*(dsCopy + 2))(dsCopy, 0, v7);
LABEL_11:
}

+ (id)machineID
{
  v2 = sub_100006274("sosauthkit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Entering machineID", buf, 2u);
  }

  if (objc_opt_class() && objc_opt_class())
  {
    v3 = objc_opt_new();
    v4 = v3;
    if (!v3)
    {
      v5 = sub_100006274("sosauthkit");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "can't get controller", buf, 2u);
      }

      v8 = 0;
      v6 = 0;
      goto LABEL_23;
    }

    v16 = 0;
    v5 = [v3 anisetteDataWithError:&v16];
    v6 = v16;
    if (v5)
    {
      machineID = [v5 machineID];
      v8 = [machineID copy];

      v9 = sub_100006274("sosauthkit");
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "machineID is %@", buf, 0xCu);
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 0;
        v12 = "Failed to get machineID";
        v13 = v9;
        v14 = 2;
        goto LABEL_20;
      }
    }

    else
    {
      v9 = sub_100006274("sosauthkit");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v6;
        v12 = "can't get mID: %@";
        v13 = v9;
        v14 = 12;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

    v8 = 0;
LABEL_22:

LABEL_23:
    v11 = v8;

    goto LABEL_24;
  }

  v6 = sub_100006274("sosauthkit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AKAnisette not available", buf, 2u);
  }

  v11 = 0;
LABEL_24:

  return v11;
}

@end