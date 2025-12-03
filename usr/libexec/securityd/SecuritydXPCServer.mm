@interface SecuritydXPCServer
- (NSXPCConnection)connection;
- (SecuritydXPCServer)initWithConnection:(id)connection;
- (SecuritydXPCServer)initWithSecurityClient:(SecurityClient *)client;
- (void)SecItemAddAndNotifyOnSync:(id)sync syncCallback:(id)callback complete:(id)complete;
- (void)dealloc;
- (void)findItemPersistentRefByUUID:(id)d extraLoggingString:(id)string client:(SecurityClient *)client complete:(id)complete;
- (void)secItemDeleteForAppClipApplicationIdentifier:(id)identifier completion:(id)completion;
- (void)secItemDigest:(id)digest accessGroup:(id)group complete:(id)complete;
- (void)secItemFetchCurrentItemAcrossAllDevices:(id)devices identifier:(id)identifier viewHint:(id)hint fetchCloudValue:(BOOL)value complete:(id)complete;
- (void)secItemPersistKeychainWritesAtHighPerformanceCost:(id)cost;
- (void)secItemPromoteItemsForAppClip:(id)clip toParentApp:(id)app completion:(id)completion;
- (void)secItemSetCurrentItemAcrossAllDevices:(id)devices newCurrentItemHash:(id)hash accessGroup:(id)group identifier:(id)identifier viewHint:(id)hint oldCurrentItemReference:(id)reference oldCurrentItemHash:(id)itemHash complete:(id)self0;
- (void)secItemUnsetCurrentItemsAcrossAllDevices:(id)devices identifiers:(id)identifiers viewHint:(id)hint complete:(id)complete;
- (void)secKeychainCopyDatabasePath:(id)path;
- (void)secKeychainDeleteMultiuser:(id)multiuser complete:(id)complete;
- (void)secKeychainForceUpgradeIfNeeded:(id)needed;
@end

@implementation SecuritydXPCServer

- (void)secKeychainCopyDatabasePath:(id)path
{
  pathCopy = path;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.databasepath"])
  {
    v5 = sub_10017FD94();
    v6 = sub_100006274("secKeychainCopyDatabasePath");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Keychain DB path %@", &v9, 0xCu);
    }

    pathCopy[2](pathCopy, 0, v5);
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Missing Entitlement for SecKeychainCopyDatabasePath()", &v9, 2u);
    }

    v11 = NSLocalizedDescriptionKey;
    v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:v5];
    pathCopy[2](pathCopy, v8, 0);

    pathCopy = v8;
  }
}

- (void)secKeychainForceUpgradeIfNeeded:(id)needed
{
  v7 = 0;
  neededCopy = needed;
  v4 = sub_100006274("secKeychainForceUpgradeIfNeeded");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Performing keychain database upgrade if needed", buf, 2u);
  }

  if (sub_100008A70(0, 1, 0, &v7, &stru_100335458))
  {
    v5 = sub_100006274("secKeychainForceUpgradeIfNeeded");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "succeeded", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "secKeychainForceUpgradeIfNeeded: failed: %@", buf, 0xCu);
    }

    v6 = 4294941020;
  }

  neededCopy[2](neededCopy, v6);
}

- (void)secItemPromoteItemsForAppClip:(id)clip toParentApp:(id)app completion:(id)completion
{
  clipCopy = clip;
  appCopy = app;
  completionCopy = completion;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.appclipdeletion"])
  {
    v10 = sub_100006274("item");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = clipCopy;
      *&buf[12] = 2112;
      *&buf[14] = appCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request to promote keychain items for app clip '%@' to parent app '%@'", buf, 0x16u);
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x2000000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    v42 = 1;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2000000000;
    v38 = sub_1001515FC(kCFAllocatorDefault, v11, v12, v13, v14, v15, v16, v17, kSecAttrAccessGroup, clipCopy);
    v25 = sub_10001104C(kCFAllocatorDefault, v18, v19, v20, v21, v22, v23, v24, @"clip", kCFBooleanFalse);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_10017B374;
    v50 = &unk_100339B60;
    v51 = &v43;
    v52 = &v35;
    v53 = &v39;
    v54 = v25;
    v26 = sub_100008A70(1, 1, 0, (v44 + 3), buf);
    *(v40 + 24) &= v26;
    v27 = v36[3];
    if (v27)
    {
      v36[3] = 0;
      CFRelease(v27);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    v28 = *(v40 + 24);
    v29 = sub_100006274("item");
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v28 == 1)
    {
      if (v30)
      {
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Promotion reports success, now deleting leftover app clip items", v47, 2u);
      }

      Code = sub_10017AF38(clipCopy);
    }

    else
    {
      if (v30)
      {
        v32 = v44[3];
        *v47 = 138412290;
        v48 = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "App clip item promotion failed: %@", v47, 0xCu);
      }

      Code = CFErrorGetCode(v44[3]);
      v33 = v44[3];
      if (v33)
      {
        v44[3] = 0;
        CFRelease(v33);
      }
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v43, 8);
  }

  else
  {
    Code = 4294933278;
  }

  completionCopy[2](completionCopy, Code);
}

- (void)secItemPersistKeychainWritesAtHighPerformanceCost:(id)cost
{
  costCopy = cost;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.performance_impacting_api"])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = sub_100006274("item");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing keychain database checkpoint", buf, 2u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000816E0;
    v11[3] = &unk_100335418;
    v11[4] = &v12;
    if (sub_100008A70(1, 1, 0, (v13 + 3), v11))
    {
      v6 = sub_100006274("item");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Keychain database checkpoint succeeded", buf, 2u);
      }

      v7 = 0;
    }

    else
    {
      v6 = sub_100006274("SecError");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v13[3];
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "item: keychain database checkpoint failed: %@", buf, 0xCu);
      }

      v7 = 4294941020;
    }

    costCopy[2](costCopy, v7, v13[3]);
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
    (costCopy)[2](costCopy, 4294933278, v8);
  }
}

- (void)secItemDeleteForAppClipApplicationIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.appclipdeletion"])
  {
    v7 = sub_10017AF38(identifierCopy);
  }

  else
  {
    v7 = 4294933278;
  }

  completionCopy[2](completionCopy, v7);
}

- (void)secKeychainDeleteMultiuser:(id)multiuser complete:(id)complete
{
  multiuserCopy = multiuser;
  completeCopy = complete;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.keychain.multiuser-admin"])
  {
    sub_1000103CC(-25291, v17 + 3, @"secKeychainDeleteMultiuser: %@ need entitlement %@", self->_client.task, @"com.apple.keychain.multiuser-admin");
    completeCopy[2](completeCopy, 0, v17[3]);
    v8 = v17[3];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = [multiuserCopy length];
    v10 = v17;
    if (v9 == 16)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000819E0;
      v13[3] = &unk_1003353F0;
      v14 = multiuserCopy;
      v15 = &v16;
      v11 = sub_100008A70(1, 1, 0, (v10 + 3), v13);
      completeCopy[2](completeCopy, v11, v17[3]);
      v12 = v17[3];
      if (v12)
      {
        v17[3] = 0;
        CFRelease(v12);
      }
    }

    else
    {
      sub_1000103CC(-25291, v17 + 3, @"secKeychainDeleteMultiuser: %@ uuid have wrong length: %d", self->_client.task, [multiuserCopy length]);
      completeCopy[2](completeCopy, 0, v17[3]);
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

- (void)secItemDigest:(id)digest accessGroup:(id)group complete:(id)complete
{
  digestCopy = digest;
  groupCopy = group;
  completeCopy = complete;
  accessGroups = self->_client.accessGroups;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (!digestCopy || !groupCopy)
  {
    sub_1000103CC(-50, &v36, @"parameter missing: %@", self->_client.task);
    completeCopy[2](completeCopy, 0, v34[3]);
    v14 = v34[3];
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_18:
    v34[3] = 0;
    CFRelease(v14);
    goto LABEL_38;
  }

  if (([digestCopy isEqualToString:@"inet"] & 1) == 0 && (objc_msgSend(digestCopy, "isEqualToString:", @"genp") & 1) == 0)
  {
    sub_1000103CC(-50, v34 + 3, @"class %@ is not supported: %@", digestCopy, self->_client.task);
    completeCopy[2](completeCopy, 0, v34[3]);
    v14 = v34[3];
    if (!v14)
    {
      goto LABEL_38;
    }

    goto LABEL_18;
  }

  if ((sub_1000091A8(accessGroups, groupCopy, &self->_client) & 1) == 0)
  {
    sub_1000103CC(-34018, v34 + 3, @"Client is missing access-group %@: %@", groupCopy, self->_client.task);
    completeCopy[2](completeCopy, 0, v34[3]);
    v14 = v34[3];
    if (!v14)
    {
      goto LABEL_38;
    }

    goto LABEL_18;
  }

  v39.length = CFArrayGetCount(accessGroups);
  v39.location = 0;
  if (CFArrayContainsValue(accessGroups, v39, @"*"))
  {
    v12 = 0;
  }

  else
  {
    v12 = accessGroups;
  }

  v37[0] = kSecClass;
  v37[1] = kSecAttrAccessGroup;
  v38[0] = digestCopy;
  v38[1] = groupCopy;
  v37[2] = kSecAttrSynchronizable;
  v37[3] = kSecReturnPersistentRef;
  v38[2] = kSecAttrSynchronizableAny;
  v38[3] = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  *cf = 0u;
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    SecSecurityFixUpClientWithPersona();
  }

  else
  {
    v15 = *&self->_client.allowSystemKeychain;
    v25 = *&self->_client.task;
    *cf = v15;
    v16 = *&self->_client.applicationIdentifier;
    v27 = *&self->_client.keybag;
    v28 = v16;
  }

  v17 = sub_100006454(v13, cf[1], 0, &v25, v34 + 3);
  if (v17)
  {
    v18 = v17;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100081F40;
    v24[3] = &unk_1003353C8;
    v24[6] = v17;
    v24[7] = v12;
    v24[4] = &v29;
    v24[5] = &v33;
    sub_100008A70(0, 1, 0, (v34 + 3), v24);
    completeCopy[2](completeCopy, v30[3], v34[3]);
    sub_10000DF70(v18, v34 + 3);
    v19 = v30[3];
    if (v19)
    {
      v30[3] = 0;
      CFRelease(v19);
    }

    v20 = v34[3];
    if (v20)
    {
      v34[3] = 0;
      CFRelease(v20);
    }

    if (qword_10039E108 != -1)
    {
      dispatch_once(&qword_10039E108, &stru_1003420B8);
    }

    if (byte_10039E100 == 1)
    {
      v21 = cf[1];
      if (cf[1])
      {
        cf[1] = 0;
        CFRelease(v21);
      }
    }
  }

  else
  {
    sub_1000103CC(-50, v34 + 3, @"failed to build query: %@", v25);
    completeCopy[2](completeCopy, 0, v34[3]);
    v22 = v34[3];
    if (v22)
    {
      v34[3] = 0;
      CFRelease(v22);
    }

    if (qword_10039E108 != -1)
    {
      dispatch_once(&qword_10039E108, &stru_1003420B8);
    }

    if (byte_10039E100 == 1)
    {
      v23 = cf[1];
      if (cf[1])
      {
        cf[1] = 0;
        CFRelease(v23);
      }
    }
  }

LABEL_38:
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

- (void)findItemPersistentRefByUUID:(id)d extraLoggingString:(id)string client:(SecurityClient *)client complete:(id)complete
{
  dCopy = d;
  stringCopy = string;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100082334;
  v24[3] = &unk_1003353A0;
  completeCopy = complete;
  v25 = completeCopy;
  v18 = objc_retainBlock(v24);
  v22 = 0;
  cf = 0;
  v9 = &off_10033C738;
  v10 = off_10033E8C8;
  v11 = kSecAttrUUID;
  while (1)
  {
    if (*(v9 + 8) == 1)
    {
      v12 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v12);
      }

      v34[0] = kSecClass;
      v35[0] = **(v10 - 1);
      v35[1] = kSecAttrSynchronizableAny;
      v34[1] = kSecAttrSynchronizable;
      v34[2] = kSecMatchLimit;
      v35[2] = kSecMatchLimitOne;
      v35[3] = dCopy;
      v34[3] = v11;
      v34[4] = kSecReturnPersistentRef;
      v35[4] = &__kCFBooleanTrue;
      sub_100007B14([NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:5], &v22, client, &cf);
      if (!cf)
      {
        if (v22)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      if (CFErrorGetCode(cf) != -25300 || v22)
      {
        break;
      }
    }

LABEL_10:
    v13 = *v10++;
    v9 = v13;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  if (!v22 || cf)
  {
LABEL_11:
    v14 = sub_100006274("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v15 = stringCopy;
      v27 = stringCopy;
      v28 = 2112;
      v29 = dCopy;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = cf;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ckkscurrent: No current item for (%@,%@): %@ %@", buf, 0x2Au);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  v14 = sub_100006274("ckkscurrent");
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
LABEL_16:
    v15 = stringCopy;
    goto LABEL_17;
  }

  *buf = 138412546;
  v15 = stringCopy;
  v27 = stringCopy;
  v28 = 2112;
  v29 = dCopy;
  _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Found current item for (%@: %@)", buf, 0x16u);
LABEL_17:

  (v18[2])(v18, v22, cf);
  v16 = v22;
  if (v22)
  {
    v22 = 0;
    CFRelease(v16);
  }

  v17 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v17);
  }
}

- (void)secItemFetchCurrentItemAcrossAllDevices:(id)devices identifier:(id)identifier viewHint:(id)hint fetchCloudValue:(BOOL)value complete:(id)complete
{
  valueCopy = value;
  devicesCopy = devices;
  identifierCopy = identifier;
  hintCopy = hint;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10008326C;
  v35[3] = &unk_100335300;
  completeCopy = complete;
  v36 = completeCopy;
  v16 = objc_retainBlock(v35);
  cf = 0;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.deny"])
  {
    sub_1000103CC(-25291, &cf, @"SecItemFetchCurrentItemAcrossAllDevices: %@ has entitlement %@", self->_client.task, @"com.apple.private.keychain.deny");
    goto LABEL_10;
  }

  p_client = &self->_client;
  if (![(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.ckks.currentitempointers_read"])
  {
    sub_1000103CC(-25291, &cf, @"SecItemFetchCurrentItemAcrossAllDevices: %@ does not have entitlement %@", p_client->task, @"com.apple.private.ckks.currentitempointers_read");
    goto LABEL_10;
  }

  if ((sub_1000091A8(self->_client.accessGroups, devicesCopy, &self->_client) & 1) == 0)
  {
    sub_1000103CC(-34018, &cf, @"SecItemFetchCurrentItemAcrossAllDevices: client is missing access-group %@: %@", devicesCopy, p_client->task);
LABEL_10:
    (v16[2])(v16, 0, 0, cf);
    v23 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v23);
    }

    goto LABEL_12;
  }

  v26 = valueCopy;
  v18 = +[CKKSViewManager manager];
  completedSecCKKSInitialize = [v18 completedSecCKKSInitialize];
  v20 = [completedSecCKKSInitialize wait:10];

  if (v20)
  {
    v21 = sub_100006274("SecError");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SecItemFetchCurrentItemAcrossAllDevices: CKKSViewManager not initialized?", buf, 2u);
    }

    v22 = [NSError errorWithDomain:@"CKKSErrorDomain" code:9 description:@"CKKS not yet initialized"];
    (v16[2])(v16, 0, 0, v22);
  }

  else
  {
    if (qword_10039E108 != -1)
    {
      dispatch_once(&qword_10039E108, &stru_1003420B8);
    }

    if (byte_10039E100 == 1)
    {
      v24 = malloc_type_malloc(0x40uLL, 0x1060040B1A58C1AuLL);
      SecSecurityFixUpClientWithPersona();
      p_client = v24;
    }

    v25 = +[CKKSViewManager manager];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000832FC;
    v27[3] = &unk_100335350;
    v28 = devicesCopy;
    v29 = identifierCopy;
    v31 = v16;
    v32 = p_client;
    selfCopy = self;
    [v25 getCurrentItemForAccessGroup:v28 identifier:v29 viewHint:hintCopy fetchCloudValue:v26 complete:v27];
  }

LABEL_12:
}

- (void)secItemUnsetCurrentItemsAcrossAllDevices:(id)devices identifiers:(id)identifiers viewHint:(id)hint complete:(id)complete
{
  devicesCopy = devices;
  identifiersCopy = identifiers;
  hintCopy = hint;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000839B8;
  v29[3] = &unk_100337928;
  completeCopy = complete;
  v30 = completeCopy;
  v14 = objc_retainBlock(v29);
  cf = 0;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.deny"])
  {
    sub_1000103CC(-25291, &cf, @"SecItemUnsetCurrentItemsAcrossAllDevices: %@ has entitlement %@", self->_client.task, @"com.apple.private.keychain.deny");
    goto LABEL_13;
  }

  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.ckks.currentitempointers_write"])
  {
    if (sub_1000091A8(self->_client.accessGroups, devicesCopy, &self->_client))
    {
      v15 = +[CKKSViewManager manager];
      v16 = v15;
      if (v15)
      {
        completedSecCKKSInitialize = [v15 completedSecCKKSInitialize];
        v18 = [completedSecCKKSInitialize wait:10];

        if (!v18)
        {
          [v16 unsetCurrentItemsForAccessGroup:devicesCopy identifiers:identifiersCopy viewHint:hintCopy complete:v14];
          goto LABEL_21;
        }

        v19 = sub_100006274("SecError");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SecItemUnsetCurrentItemsAcrossAllDevices: CKKSViewManager not initialized?", buf, 2u);
        }

        v20 = @"CKKS not yet initialized";
      }

      else
      {
        v23 = sub_100006274("SecError");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SecItemUnsetCurrentItemsAcrossAllDevices: no view manager?", buf, 2u);
        }

        v20 = @"No view manager, cannot forward request";
      }

      v24 = [NSError errorWithDomain:@"CKKSErrorDomain" code:9 description:v20];
      (v14[2])(v14, v24);

LABEL_21:
      goto LABEL_15;
    }

    v25 = devicesCopy;
    task = self->_client.task;
    v21 = @"SecItemUnsetCurrentItemsAcrossAllDevices: client is missing access-group %@: %@";
  }

  else
  {
    v25 = self->_client.task;
    task = @"com.apple.private.ckks.currentitempointers_write";
    v21 = @"SecItemUnsetCurrentItemsAcrossAllDevices: %@ does not have entitlement %@";
  }

  sub_1000103CC(-34018, &cf, v21, v25, task);
LABEL_13:
  (v14[2])(v14, cf);
  v22 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v22);
  }

LABEL_15:
}

- (void)secItemSetCurrentItemAcrossAllDevices:(id)devices newCurrentItemHash:(id)hash accessGroup:(id)group identifier:(id)identifier viewHint:(id)hint oldCurrentItemReference:(id)reference oldCurrentItemHash:(id)itemHash complete:(id)self0
{
  devicesCopy = devices;
  hashCopy = hash;
  groupCopy = group;
  identifierCopy = identifier;
  hintCopy = hint;
  referenceCopy = reference;
  itemHashCopy = itemHash;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100083DD4;
  v39[3] = &unk_100337928;
  completeCopy = complete;
  v40 = completeCopy;
  v23 = objc_retainBlock(v39);
  cf = 0;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.deny"])
  {
    sub_1000103CC(-25291, &cf, @"SecItemSetCurrentItemAcrossAllDevices: %@ has entitlement %@", self->_client.task, @"com.apple.private.keychain.deny");
    goto LABEL_10;
  }

  if (![(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.ckks.currentitempointers_write"])
  {
    sub_1000103CC(-34018, &cf, @"SecItemSetCurrentItemAcrossAllDevices: %@ does not have entitlement %@", self->_client.task, @"com.apple.private.ckks.currentitempointers_write");
LABEL_10:
    (v23[2])(v23, cf);
    v30 = cf;
    v24 = groupCopy;
    if (cf)
    {
LABEL_11:
      cf = 0;
      CFRelease(v30);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v24 = groupCopy;
  if ((sub_1000091A8(self->_client.accessGroups, groupCopy, &self->_client) & 1) == 0)
  {
    sub_1000103CC(-34018, &cf, @"SecItemSetCurrentItemAcrossAllDevices: client is missing access-group %@: %@", groupCopy, self->_client.task);
    (v23[2])(v23, cf);
    v30 = cf;
    if (!cf)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v35 = hashCopy;
  v25 = +[CKKSViewManager manager];
  completedSecCKKSInitialize = [v25 completedSecCKKSInitialize];
  v27 = [completedSecCKKSInitialize wait:10];

  if (v27)
  {
    v28 = sub_100006274("SecError");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "SecItemSetCurrentItemAcrossAllDevices: CKKSViewManager not initialized?", buf, 2u);
    }

    v29 = [NSError errorWithDomain:@"CKKSErrorDomain" code:9 description:@"CKKS not yet initialized"];
    (v23[2])(v23, v29);

    hashCopy = v35;
    v24 = groupCopy;
  }

  else
  {
    v31 = +[CKKSViewManager manager];
    v32 = v31;
    if (v31)
    {
      hashCopy = v35;
      v24 = groupCopy;
      [v31 setCurrentItemForAccessGroup:devicesCopy hash:v35 accessGroup:groupCopy identifier:identifierCopy viewHint:hintCopy replacing:referenceCopy hash:itemHashCopy complete:v23];
    }

    else
    {
      v33 = sub_100006274("SecError");
      hashCopy = v35;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "SecItemSetCurrentItemAcrossAllDevices: no view manager?", buf, 2u);
      }

      v34 = [NSError errorWithDomain:@"CKKSErrorDomain" code:9 description:@"No view manager, cannot forward request"];
      (v23[2])(v23, v34);

      v24 = groupCopy;
    }
  }

LABEL_12:
}

- (void)SecItemAddAndNotifyOnSync:(id)sync syncCallback:(id)callback complete:(id)complete
{
  syncCopy = sync;
  callbackCopy = callback;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100084460;
  v43[3] = &unk_1003352B0;
  completeCopy = complete;
  v44 = completeCopy;
  v11 = objc_retainBlock(v43);
  cf = 0;
  if ([(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.deny"])
  {
    sub_1000103CC(-25291, &cf, @"SecItemAddAndNotifyOnSync: %@ has entitlement %@", self->_client.task, @"com.apple.private.keychain.deny");
    goto LABEL_21;
  }

  v12 = +[CKKSViewManager manager];
  completedSecCKKSInitialize = [v12 completedSecCKKSInitialize];
  [completedSecCKKSInitialize wait:10];

  v14 = [syncCopy objectForKeyedSubscript:kSecAttrDeriveSyncIDFromItemAttributes];
  if (v14 || ([syncCopy objectForKeyedSubscript:kSecAttrPCSPlaintextServiceIdentifier], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(syncCopy, "objectForKeyedSubscript:", kSecAttrPCSPlaintextPublicKey), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v26 = [syncCopy objectForKeyedSubscript:kSecAttrPCSPlaintextPublicIdentity];

    if (!v26)
    {
      goto LABEL_8;
    }
  }

  if (![(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.ckks.plaintextfields"])
  {
    sub_1000103CC(-34018, &cf, @"SecItemAddAndNotifyOnSync: %@ does not have entitlement %@, but is using SPI anyway", self->_client.task, @"com.apple.private.ckks.plaintextfields");
    goto LABEL_21;
  }

LABEL_8:
  v15 = [syncCopy objectForKeyedSubscript:kSecDataInetExtraNotes];
  if (v15)
  {
    goto LABEL_13;
  }

  v15 = [syncCopy objectForKeyedSubscript:kSecDataInetExtraHistory];
  if (v15 || ([syncCopy objectForKeyedSubscript:kSecDataInetExtraClientDefined0], (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(syncCopy, "objectForKeyedSubscript:", kSecDataInetExtraClientDefined1), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(syncCopy, "objectForKeyedSubscript:", kSecDataInetExtraClientDefined2), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_13:
  }

  else
  {
    v33 = [syncCopy objectForKeyedSubscript:kSecDataInetExtraClientDefined3];

    if (!v33)
    {
      goto LABEL_15;
    }
  }

  if (![(SecuritydXPCServer *)self clientHasBooleanEntitlement:@"com.apple.private.keychain.inet_expansion_fields"])
  {
    sub_1000103CC(-34018, &cf, @"SecItemAddAndNotifyOnSync: %@ does not have entitlement %@", self->_client.task, @"com.apple.private.keychain.inet_expansion_fields");
LABEL_21:
    (v11[2])(v11, 0, 0, cf);
    v22 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v22);
    }

    goto LABEL_23;
  }

LABEL_15:
  v41 = 0;
  v16 = [syncCopy mutableCopy];
  v17 = [SecOSTransactionHolder alloc];
  v18 = os_transaction_create();
  v19 = [(SecOSTransactionHolder *)v17 init:v18];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000844F0;
  v38[3] = &unk_1003352D8;
  v39 = callbackCopy;
  v20 = v19;
  v40 = v20;
  v21 = objc_retainBlock(v38);
  [v16 setObject:v21 forKeyedSubscript:@"f_ckkscallback"];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  *v35 = 0u;
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    SecSecurityFixUpClientWithPersona();
  }

  else
  {
    v23 = *&self->_client.allowSystemKeychain;
    v34 = *&self->_client.task;
    *v35 = v23;
    v24 = *&self->_client.applicationIdentifier;
    v36 = *&self->_client.keybag;
    v37 = v24;
  }

  if (sub_100019784(v16, &v34, &v41, &cf))
  {
    if (v41)
    {
      v25 = CFGetTypeID(v41);
      if (v25 == CFDictionaryGetTypeID())
      {
        (v11[2])(v11, v41, 0, 0);
      }

      else
      {
        v30 = CFGetTypeID(v41);
        if (v30 == CFArrayGetTypeID())
        {
          (v11[2])(v11, 0, v41, 0);
        }

        else
        {
          v45 = NSLocalizedDescriptionKey;
          v46 = @"_SecItemAdd returned bad data type";
          v31 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v32 = [NSError errorWithDomain:@"securityd" code:-26276 userInfo:v31];

          (v11[2])(v11, 0, 0, v32);
          [v20 setTransaction:0];
        }
      }
    }

    else
    {
      (v11[2])(v11, 0, 0, 0);
    }
  }

  else
  {
    (v11[2])(v11, 0, 0, cf);
    [v20 setTransaction:0];
  }

  v27 = v41;
  if (v41)
  {
    v41 = 0;
    CFRelease(v27);
  }

  v28 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v28);
  }

  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    v29 = v35[1];
    if (v35[1])
    {
      v35[1] = 0;
      CFRelease(v29);
    }
  }

LABEL_23:
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
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

- (SecuritydXPCServer)initWithSecurityClient:(SecurityClient *)client
{
  selfCopy = client;
  if (client)
  {
    v12.receiver = self;
    v12.super_class = SecuritydXPCServer;
    v4 = [(SecuritydXPCServer *)&v12 init];
    v5 = v4;
    if (v4)
    {
      objc_storeWeak(&v4->_connection, 0);
      v6 = *selfCopy;
      if (*selfCopy)
      {
        CFRetain(*selfCopy);
      }

      v5->_client.task = v6;
      v7 = *(selfCopy + 1);
      if (v7)
      {
        CFRetain(*(selfCopy + 1));
      }

      v5->_client.accessGroups = v7;
      v8 = *(selfCopy + 5);
      *&v5->_client.allowSystemKeychain = *(selfCopy + 4);
      v5->_client.uid = v8;
      v9 = *(selfCopy + 3);
      if (v9)
      {
        CFRetain(*(selfCopy + 3));
      }

      v5->_client.musr = v9;
      v5->_client.keybag = *(selfCopy + 8);
      v5->_client.inEduMode = *(selfCopy + 36);
      v5->_client.activeUser = *(selfCopy + 10);
      v10 = *(selfCopy + 6);
      if (v10)
      {
        CFRetain(*(selfCopy + 6));
      }

      v5->_client.applicationIdentifier = v10;
      v5->_client.isAppClip = *(selfCopy + 44);
      v5->_client.allowKeychainSharing = *(selfCopy + 57);
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (SecuritydXPCServer)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = SecuritydXPCServer;
  v5 = [(SecuritydXPCServer *)&v11 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  objc_storeWeak(&v5->_connection, connectionCopy);
  effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  if (!sub_1000053B4(&v6->_client, effectiveUserIdentifier, v10))
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

@end