@interface SecuritydXPCServer
- (NSXPCConnection)connection;
- (SecuritydXPCServer)initWithConnection:(id)a3;
- (SecuritydXPCServer)initWithSecurityClient:(SecurityClient *)a3;
- (void)SecItemAddAndNotifyOnSync:(id)a3 syncCallback:(id)a4 complete:(id)a5;
- (void)dealloc;
- (void)findItemPersistentRefByUUID:(id)a3 extraLoggingString:(id)a4 client:(SecurityClient *)a5 complete:(id)a6;
- (void)secItemDeleteForAppClipApplicationIdentifier:(id)a3 completion:(id)a4;
- (void)secItemDigest:(id)a3 accessGroup:(id)a4 complete:(id)a5;
- (void)secItemFetchCurrentItemAcrossAllDevices:(id)a3 identifier:(id)a4 viewHint:(id)a5 fetchCloudValue:(BOOL)a6 complete:(id)a7;
- (void)secItemFetchCurrentItemOutOfBand:(id)a3 forceFetch:(BOOL)a4 complete:(id)a5;
- (void)secItemFetchPCSIdentityByKeyOutOfBand:(id)a3 forceFetch:(BOOL)a4 complete:(id)a5;
- (void)secItemPersistKeychainWritesAtHighPerformanceCost:(id)a3;
- (void)secItemPromoteItemsForAppClip:(id)a3 toParentApp:(id)a4 completion:(id)a5;
- (void)secItemSetCurrentItemAcrossAllDevices:(id)a3 newCurrentItemHash:(id)a4 accessGroup:(id)a5 identifier:(id)a6 viewHint:(id)a7 oldCurrentItemReference:(id)a8 oldCurrentItemHash:(id)a9 complete:(id)a10;
- (void)secItemUnsetCurrentItemsAcrossAllDevices:(id)a3 identifiers:(id)a4 viewHint:(id)a5 complete:(id)a6;
- (void)secKeychainCopyDatabasePath:(id)a3;
- (void)secKeychainDeleteMultiuser:(id)a3 complete:(id)a4;
- (void)secKeychainForceUpgradeIfNeeded:(id)a3;
@end

@implementation SecuritydXPCServer

- (void)SecItemAddAndNotifyOnSync:(id)a3 syncCallback:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000263F0;
  v47[3] = &unk_1000632D8;
  v10 = a5;
  v48 = v10;
  v11 = objc_retainBlock(v47);
  cf = 0;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.deny"])
  {
    SecError(-25291, &cf, @"SecItemAddAndNotifyOnSync: %@ has entitlement %@", self->_client.task, @"com.apple.private.keychain.deny");
    goto LABEL_20;
  }

  v12 = [v8 objectForKeyedSubscript:kSecAttrDeriveSyncIDFromItemAttributes];
  if (v12 || ([v8 objectForKeyedSubscript:kSecAttrPCSPlaintextServiceIdentifier], (v12 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "objectForKeyedSubscript:", kSecAttrPCSPlaintextPublicKey), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v28 = [v8 objectForKeyedSubscript:kSecAttrPCSPlaintextPublicIdentity];

    if (!v28)
    {
      goto LABEL_8;
    }
  }

  if (![(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.ckks.plaintextfields"])
  {
    task = self->_client.task;
    v37 = @"com.apple.private.ckks.plaintextfields";
    v20 = @"SecItemAddAndNotifyOnSync: %@ does not have entitlement %@, but is using SPI anyway";
    goto LABEL_19;
  }

LABEL_8:
  v13 = [v8 objectForKeyedSubscript:kSecDataInetExtraNotes];
  if (v13)
  {
    goto LABEL_13;
  }

  v13 = [v8 objectForKeyedSubscript:kSecDataInetExtraHistory];
  if (v13 || ([v8 objectForKeyedSubscript:kSecDataInetExtraClientDefined0], (v13 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "objectForKeyedSubscript:", kSecDataInetExtraClientDefined1), (v13 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "objectForKeyedSubscript:", kSecDataInetExtraClientDefined2), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_13:

LABEL_14:
    if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.inet_expansion_fields"])
    {
      goto LABEL_15;
    }

    task = self->_client.task;
    v37 = @"com.apple.private.keychain.inet_expansion_fields";
    v20 = @"SecItemAddAndNotifyOnSync: %@ does not have entitlement %@";
LABEL_19:
    SecError(-34018, &cf, v20, task, v37);
LABEL_20:
    (v11[2])(v11, 0, 0, cf);
    v21 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v21);
    }

    goto LABEL_22;
  }

  v35 = [v8 objectForKeyedSubscript:kSecDataInetExtraClientDefined3];

  if (v35)
  {
    goto LABEL_14;
  }

LABEL_15:
  v45 = 0;
  v14 = [v8 mutableCopy];
  v15 = [SecOSTransactionHolder alloc];
  v16 = os_transaction_create();
  v17 = [(SecOSTransactionHolder *)v15 init:v16];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100026400;
  v42[3] = &unk_100063300;
  v43 = v9;
  v18 = v17;
  v44 = v18;
  v19 = objc_retainBlock(v42);
  [v14 setObject:v19 forKeyedSubscript:@"f_ckkscallback"];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  *v39 = 0u;
  if (OctagonSupportsPersonaMultiuser())
  {
    SecSecurityFixUpClientWithPersona();
  }

  else
  {
    v22 = *&self->_client.allowSystemKeychain;
    v38 = *&self->_client.task;
    *v39 = v22;
    v23 = *&self->_client.applicationIdentifier;
    v40 = *&self->_client.keybag;
    v41 = v23;
  }

  if (sub_10001B514(v14, &v38, &v45, &cf))
  {
    if (v45)
    {
      v24 = CFGetTypeID(v45);
      if (v24 != CFDictionaryGetTypeID())
      {
        v32 = CFGetTypeID(v45);
        if (v32 == CFArrayGetTypeID())
        {
          (v11[2])(v11, 0, v45, 0);
        }

        else
        {
          v49 = NSLocalizedDescriptionKey;
          v50 = @"_SecItemAdd returned bad data type";
          v33 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v34 = [NSError errorWithDomain:@"securityd" code:-26276 userInfo:v33];

          (v11[2])(v11, 0, 0, v34);
          [v18 setTransaction:0];
        }

        goto LABEL_33;
      }

      v25 = v45;
      v26 = v11[2];
      v27 = v11;
    }

    else
    {
      v26 = v11[2];
      v27 = v11;
      v25 = 0;
    }

    v26(v27, v25, 0, 0);
  }

  else
  {
    (v11[2])(v11, 0, 0, cf);
    [v18 setTransaction:0];
  }

LABEL_33:
  v29 = v45;
  if (v45)
  {
    v45 = 0;
    CFRelease(v29);
  }

  v30 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v30);
  }

  if (OctagonSupportsPersonaMultiuser())
  {
    v31 = v39[1];
    if (v39[1])
    {
      v39[1] = 0;
      CFRelease(v31);
    }
  }

LABEL_22:
}

- (void)secItemSetCurrentItemAcrossAllDevices:(id)a3 newCurrentItemHash:(id)a4 accessGroup:(id)a5 identifier:(id)a6 viewHint:(id)a7 oldCurrentItemReference:(id)a8 oldCurrentItemHash:(id)a9 complete:(id)a10
{
  v13 = NSLocalizedDescriptionKey;
  v14 = @"SecItemSetCurrentItemAcrossAllDevices not implemented on this platform";
  v10 = a10;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [NSError errorWithDomain:@"securityd" code:-50 userInfo:v11];
  (*(a10 + 2))(v10, v12);
}

- (void)secItemUnsetCurrentItemsAcrossAllDevices:(id)a3 identifiers:(id)a4 viewHint:(id)a5 complete:(id)a6
{
  v10 = NSLocalizedDescriptionKey;
  v11 = @"SecItemUnsetCurrentItemsAcrossAllDevices not implemented on this platform";
  v7 = a6;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [NSError errorWithDomain:@"securityd" code:-50 userInfo:v8];
  (*(a6 + 2))(v7, v9);
}

- (void)secItemFetchCurrentItemAcrossAllDevices:(id)a3 identifier:(id)a4 viewHint:(id)a5 fetchCloudValue:(BOOL)a6 complete:(id)a7
{
  v11 = NSLocalizedDescriptionKey;
  v12 = @"SecItemFetchCurrentItemAcrossAllDevices not implemented on this platform";
  v8 = a7;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [NSError errorWithDomain:@"securityd" code:-50 userInfo:v9];
  (*(a7 + 2))(v8, 0, 0, v10);
}

- (void)secItemFetchCurrentItemOutOfBand:(id)a3 forceFetch:(BOOL)a4 complete:(id)a5
{
  v9 = NSLocalizedDescriptionKey;
  v10 = @"secItemFetchCurrentItemOutOfBand not implemented on this platform";
  v6 = a5;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:@"securityd" code:-50 userInfo:v7];
  (*(a5 + 2))(v6, 0, v8);
}

- (void)secItemFetchPCSIdentityByKeyOutOfBand:(id)a3 forceFetch:(BOOL)a4 complete:(id)a5
{
  v9 = NSLocalizedDescriptionKey;
  v10 = @"secItemFetchPCSIdentityByKeyOutOfBand not implemented on this platform";
  v6 = a5;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:@"securityd" code:-50 userInfo:v7];
  (*(a5 + 2))(v6, 0, v8);
}

- (void)findItemPersistentRefByUUID:(id)a3 extraLoggingString:(id)a4 client:(SecurityClient *)a5 complete:(id)a6
{
  v24 = a3;
  v22 = a4;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100026BE8;
  v27[3] = &unk_100063328;
  v23 = a6;
  v28 = v23;
  v21 = objc_retainBlock(v27);
  v25 = 0;
  cf = 0;
  v9 = sub_100017114();
  v10 = *(v9 + 8);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = kSecAttrUUID;
  v12 = (v9 + 16);
  while (1)
  {
    if (*(v10 + 8) != 1)
    {
      goto LABEL_11;
    }

    v13 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v13);
    }

    v37[0] = kSecClass;
    v38[0] = **(v12 - 1);
    v38[1] = kSecAttrSynchronizableAny;
    v37[1] = kSecAttrSynchronizable;
    v37[2] = kSecMatchLimit;
    v38[2] = kSecMatchLimitOne;
    v38[3] = v24;
    v37[3] = v11;
    v37[4] = kSecReturnPersistentRef;
    v38[4] = &__kCFBooleanTrue;
    sub_10001AD28([NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5], a5, &v25, &cf);
    if (cf)
    {
      break;
    }

    v15 = v25;
    if (v25)
    {
      goto LABEL_14;
    }

LABEL_11:
    v16 = *v12++;
    v10 = v16;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  Code = CFErrorGetCode(cf);
  v15 = v25;
  if (Code == -25300 && !v25)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v15 && !cf)
  {
    v17 = secLogObjForScope("ckkscurrent");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = v22;
      sub_100040B80(v22, v24, v17);
    }

    else
    {
LABEL_17:
      v18 = v22;
    }

    goto LABEL_18;
  }

LABEL_12:
  v17 = secLogObjForScope("SecError");
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_17;
  }

  *buf = 138413058;
  v18 = v22;
  v30 = v22;
  v31 = 2112;
  v32 = v24;
  v33 = 2112;
  v34 = v25;
  v35 = 2112;
  v36 = cf;
  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ckkscurrent: No current item for (%@,%@): %@ %@", buf, 0x2Au);
LABEL_18:

  (v21[2])(v21, v25, cf);
  v19 = v25;
  if (v25)
  {
    v25 = 0;
    CFRelease(v19);
  }

  v20 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v20);
  }
}

- (void)secItemDigest:(id)a3 accessGroup:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  p_client = &self->_client;
  accessGroups = self->_client.accessGroups;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (!v8 || !v9)
  {
    SecError(-50, &v40, @"parameter missing: %@", p_client->task);
    v10[2](v10, 0, v38[3]);
    v17 = v38[3];
    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_16:
    v38[3] = 0;
    CFRelease(v17);
    goto LABEL_35;
  }

  if (([v8 isEqualToString:@"inet"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"genp") & 1) == 0)
  {
    SecError(-50, v38 + 3, @"class %@ is not supported: %@", v8, p_client->task);
    v10[2](v10, 0, v38[3]);
    v17 = v38[3];
    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  if ((sub_1000189C8(accessGroups, v9, p_client) & 1) == 0)
  {
    SecError(-34018, v38 + 3, @"Client is missing access-group %@: %@", v9, p_client->task);
    v10[2](v10, 0, v38[3]);
    v17 = v38[3];
    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  v45.length = CFArrayGetCount(accessGroups);
  v45.location = 0;
  if (CFArrayContainsValue(accessGroups, v45, @"*"))
  {
    v13 = 0;
  }

  else
  {
    v13 = accessGroups;
  }

  if (SecKeychainIsStaticPersistentRefsEnabled())
  {
    v43[0] = kSecClass;
    v43[1] = kSecAttrAccessGroup;
    v44[0] = v8;
    v44[1] = v9;
    v43[2] = kSecAttrSynchronizable;
    v43[3] = kSecReturnPersistentRef;
    v44[2] = kSecAttrSynchronizableAny;
    v44[3] = &__kCFBooleanTrue;
    v14 = v43;
    v15 = v44;
    v16 = 4;
  }

  else
  {
    v41[0] = kSecClass;
    v41[1] = kSecAttrAccessGroup;
    v42[0] = v8;
    v42[1] = v9;
    v41[2] = kSecAttrSynchronizable;
    v42[2] = kSecAttrSynchronizableAny;
    v14 = v41;
    v15 = v42;
    v16 = 3;
  }

  v18 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:v16];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  *cf = 0u;
  if (OctagonSupportsPersonaMultiuser())
  {
    SecSecurityFixUpClientWithPersona();
  }

  else
  {
    v19 = *&p_client->allowSystemKeychain;
    v29 = *&p_client->task;
    *cf = v19;
    v20 = *&p_client->applicationIdentifier;
    v31 = *&p_client->keybag;
    v32 = v20;
  }

  v21 = sub_10002A574(v18, cf[1], 0, &v29, v38 + 3);
  v22 = v21;
  if (v21)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000270F8;
    v28[3] = &unk_100063350;
    v28[6] = v21;
    v28[7] = v13;
    v28[4] = &v33;
    v28[5] = &v37;
    sub_10001992C(0, 0, (v38 + 3), v28);
    v10[2](v10, v34[3], v38[3]);
    sub_100029F58(v22, v38 + 3);
    v23 = v34[3];
    if (v23)
    {
      v34[3] = 0;
      CFRelease(v23);
    }

    v24 = v38[3];
    if (v24)
    {
      v38[3] = 0;
      CFRelease(v24);
    }

    if (OctagonSupportsPersonaMultiuser())
    {
      v25 = cf[1];
      if (cf[1])
      {
        cf[1] = 0;
        CFRelease(v25);
      }
    }
  }

  else
  {
    SecError(-50, v38 + 3, @"failed to build query: %@", v29);
    v10[2](v10, 0, v38[3]);
    v26 = v38[3];
    if (v26)
    {
      v38[3] = 0;
      CFRelease(v26);
    }

    if (OctagonSupportsPersonaMultiuser())
    {
      v27 = cf[1];
      if (cf[1])
      {
        cf[1] = 0;
        CFRelease(v27);
      }
    }
  }

LABEL_35:
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)secKeychainDeleteMultiuser:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.keychain.multiuser-admin"])
  {
    SecError(-25291, v17 + 3, @"secKeychainDeleteMultiuser: %@ need entitlement %@", self->_client.task, @"com.apple.keychain.multiuser-admin");
    v7[2](v7, 0, v17[3]);
    v8 = v17[3];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = [v6 length];
    v10 = v17;
    if (v9 == 16)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100027340;
      v13[3] = &unk_100063378;
      v14 = v6;
      v15 = &v16;
      v11 = sub_10001992C(1, 0, (v10 + 3), v13);
      v7[2](v7, v11, v17[3]);
      v12 = v17[3];
      if (v12)
      {
        v17[3] = 0;
        CFRelease(v12);
      }
    }

    else
    {
      SecError(-25291, v17 + 3, @"secKeychainDeleteMultiuser: %@ uuid have wrong length: %d", self->_client.task, [v6 length]);
      v7[2](v7, 0, v17[3]);
      v8 = v17[3];
      if (v8)
      {
LABEL_9:
        v17[3] = 0;
        CFRelease(v8);
      }
    }
  }

  _Block_object_dispose(&v16, 8);
}

- (void)secItemDeleteForAppClipApplicationIdentifier:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.appclipdeletion"])
  {
    v7 = sub_10000D2A0(v8);
  }

  else
  {
    v7 = 4294933278;
  }

  v6[2](v6, v7);
}

- (void)secItemPersistKeychainWritesAtHighPerformanceCost:(id)a3
{
  v4 = a3;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.performance_impacting_api"])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = secLogObjForScope("item");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing keychain database checkpoint", buf, 2u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100027698;
    v11[3] = &unk_1000633A0;
    v11[4] = &v12;
    if (sub_10001992C(1, 0, (v13 + 3), v11))
    {
      v6 = secLogObjForScope("item");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Keychain database checkpoint succeeded", buf, 2u);
      }

      v7 = 0;
    }

    else
    {
      v6 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v13[3];
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "item: keychain database checkpoint failed: %@", buf, 0xCu);
      }

      v7 = 4294941020;
    }

    v4[2](v4, v7, v13[3]);
    v10 = v13[3];
    if (v10)
    {
      v13[3] = 0;
      CFRelease(v10);
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
    (v4)[2](v4, 4294933278, v8);
  }
}

- (void)secItemPromoteItemsForAppClip:(id)a3 toParentApp:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.appclipdeletion"])
  {
    v10 = sub_10000D6D8(v11, v8);
  }

  else
  {
    v10 = 4294933278;
  }

  v9[2](v9, v10);
}

- (void)secKeychainForceUpgradeIfNeeded:(id)a3
{
  v7 = 0;
  v3 = a3;
  v4 = secLogObjForScope("secKeychainForceUpgradeIfNeeded");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Performing keychain database upgrade if needed", buf, 2u);
  }

  if (sub_10001992C(0, 0, &v7, &stru_1000633E0))
  {
    v5 = secLogObjForScope("secKeychainForceUpgradeIfNeeded");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "succeeded", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "secKeychainForceUpgradeIfNeeded: failed: %@", buf, 0xCu);
    }

    v6 = 4294941020;
  }

  v3[2](v3, v6);
}

- (void)secKeychainCopyDatabasePath:(id)a3
{
  v4 = a3;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.databasepath"])
  {
    v5 = sub_100018AE8();
    v6 = secLogObjForScope("secKeychainCopyDatabasePath");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100040C08(v5, v6);
    }

    v4[2](v4, 0, v5);
  }

  else
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Missing Entitlement for SecKeychainCopyDatabasePath()", &v9, 2u);
    }

    v10 = NSLocalizedDescriptionKey;
    v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:v5];
    v4[2](v4, v8, 0);

    v4 = v8;
  }
}

- (SecuritydXPCServer)initWithConnection:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SecuritydXPCServer;
  v5 = [(SecuritydXPCServer *)&v11 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  objc_storeWeak(&v5->_connection, v4);
  v7 = [v4 effectiveUserIdentifier];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  if (!sub_100024EA0(&v6->_client, v7, v10))
  {
    v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = v6;
  }

  return v8;
}

- (SecuritydXPCServer)initWithSecurityClient:(SecurityClient *)a3
{
  v3 = a3;
  if (a3)
  {
    v12.receiver = self;
    v12.super_class = SecuritydXPCServer;
    v4 = [(SecuritydXPCServer *)&v12 init];
    v5 = v4;
    if (v4)
    {
      objc_storeWeak(&v4->_connection, 0);
      v6 = *v3;
      if (*v3)
      {
        CFRetain(*v3);
      }

      v5->_client.task = v6;
      v7 = *(v3 + 1);
      if (v7)
      {
        CFRetain(*(v3 + 1));
      }

      v5->_client.accessGroups = v7;
      v8 = *(v3 + 5);
      *&v5->_client.allowSystemKeychain = *(v3 + 4);
      v5->_client.uid = v8;
      v9 = *(v3 + 3);
      if (v9)
      {
        CFRetain(*(v3 + 3));
      }

      v5->_client.musr = v9;
      v5->_client.keybag = *(v3 + 8);
      v5->_client.inEduMode = *(v3 + 36);
      v5->_client.activeUser = *(v3 + 10);
      v10 = *(v3 + 6);
      if (v10)
      {
        CFRetain(*(v3 + 6));
      }

      v5->_client.applicationIdentifier = v10;
      v5->_client.isAppClip = *(v3 + 44);
      v5->_client.allowKeychainSharing = *(v3 + 57);
    }

    self = v5;
    v3 = self;
  }

  return v3;
}

- (void)dealloc
{
  task = self->_client.task;
  if (task)
  {
    self->_client.task = 0;
    CFRelease(task);
  }

  accessGroups = self->_client.accessGroups;
  if (accessGroups)
  {
    self->_client.accessGroups = 0;
    CFRelease(accessGroups);
  }

  musr = self->_client.musr;
  if (musr)
  {
    self->_client.musr = 0;
    CFRelease(musr);
  }

  applicationIdentifier = self->_client.applicationIdentifier;
  if (applicationIdentifier)
  {
    self->_client.applicationIdentifier = 0;
    CFRelease(applicationIdentifier);
  }

  v7.receiver = self;
  v7.super_class = SecuritydXPCServer;
  [(SecuritydXPCServer *)&v7 dealloc];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end