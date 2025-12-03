@interface NIServerKeychainManager
+ (id)sharedInstance;
- (BOOL)_shouldLog;
- (BOOL)deleteAllItemsWithService:(id)service synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain;
- (BOOL)deleteItemWithService:(id)service account:(id)account synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain;
- (BOOL)writeItem:(id)item synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain;
- (id)_initInternal;
- (id)_internalReadItemWithService:(id)service account:(id)account synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain;
- (id)readAllItemsWithService:(id)service synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain;
- (id)readItemWithService:(id)service account:(id)account synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain;
- (void)_unitTest1;
- (void)_unitTest2;
- (void)_unitTest3;
@end

@implementation NIServerKeychainManager

+ (id)sharedInstance
{
  if (qword_1009F4D50 != -1)
  {
    sub_1004BD5D8();
  }

  v3 = qword_1009F4D48;

  return v3;
}

- (BOOL)writeItem:(id)item synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain
{
  itemCopy = item;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100304438;
  v13[3] = &unk_1009A4738;
  v13[4] = self;
  v14 = itemCopy;
  synchronizableCopy = synchronizable;
  keychainCopy = keychain;
  v15 = &v18;
  v10 = itemCopy;
  dispatch_sync(queue, v13);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11;
}

- (id)readItemWithService:(id)service account:(id)account synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain
{
  serviceCopy = service;
  accountCopy = account;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100304A6C;
  v27 = sub_100304A7C;
  v28 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100304A84;
  block[3] = &unk_1009A4760;
  block[4] = self;
  v18 = serviceCopy;
  v19 = accountCopy;
  v20 = &v23;
  synchronizableCopy = synchronizable;
  keychainCopy = keychain;
  v13 = accountCopy;
  v14 = serviceCopy;
  dispatch_sync(queue, block);
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

- (id)readAllItemsWithService:(id)service synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain
{
  serviceCopy = service;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100304A6C;
  v22 = sub_100304A7C;
  v23 = objc_opt_new();
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100304C30;
  v13[3] = &unk_1009A4738;
  v13[4] = self;
  v14 = serviceCopy;
  synchronizableCopy = synchronizable;
  keychainCopy = keychain;
  v15 = &v18;
  v10 = serviceCopy;
  dispatch_sync(queue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (BOOL)deleteItemWithService:(id)service account:(id)account synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain
{
  serviceCopy = service;
  accountCopy = account;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003051E0;
  block[3] = &unk_1009A47B0;
  block[4] = self;
  v17 = serviceCopy;
  synchronizableCopy = synchronizable;
  keychainCopy = keychain;
  v18 = accountCopy;
  v19 = &v22;
  v13 = accountCopy;
  v14 = serviceCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return queue;
}

- (BOOL)deleteAllItemsWithService:(id)service synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain
{
  serviceCopy = service;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100305530;
  v13[3] = &unk_1009A4738;
  v13[4] = self;
  v14 = serviceCopy;
  synchronizableCopy = synchronizable;
  keychainCopy = keychain;
  v15 = &v18;
  v10 = serviceCopy;
  dispatch_sync(queue, v13);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11;
}

- (id)_initInternal
{
  if ([(NIServerKeychainManager *)self _shouldLog])
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ni-km,_initInternal", buf, 2u);
    }
  }

  v8.receiver = self;
  v8.super_class = NIServerKeychainManager;
  v4 = [(NIServerKeychainManager *)&v8 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.nearbyd.km", 0);
    queue = v4->_queue;
    v4->_queue = v5;
  }

  return v4;
}

- (id)_internalReadItemWithService:(id)service account:(id)account synchronizable:(BOOL)synchronizable systemKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  synchronizableCopy = synchronizable;
  serviceCopy = service;
  accountCopy = account;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NIServerKeychainManager *)self _shouldLog])
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478595;
      *v28 = serviceCopy;
      *&v28[8] = 2113;
      *&v28[10] = accountCopy;
      v29 = 1024;
      v30 = synchronizableCopy;
      v31 = 1024;
      v32 = keychainCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ni-km,Read: %{private}@, %{private}@, %d, %d", buf, 0x22u);
    }
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = CFAutorelease(Mutable);
  v15 = v14;
  result = 0;
  if (keychainCopy)
  {
    v16 = kCFBooleanTrue;
  }

  else
  {
    v16 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v14, kSecUseSystemKeychain, v16);
  CFDictionaryAddValue(v15, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v15, kSecUseDataProtectionKeychain, kCFBooleanTrue);
  CFDictionaryAddValue(v15, kSecAttrAccount, accountCopy);
  CFDictionaryAddValue(v15, kSecAttrService, serviceCopy);
  CFDictionaryAddValue(v15, kSecAttrAccessGroup, @"com.apple.nearbyd");
  if (synchronizableCopy)
  {
    v17 = kCFBooleanTrue;
  }

  else
  {
    v17 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v15, kSecAttrSynchronizable, v17);
  CFDictionaryAddValue(v15, kSecReturnData, kCFBooleanTrue);
  CFDictionaryAddValue(v15, kSecReturnAttributes, kCFBooleanTrue);
  v18 = SecItemCopyMatching(v15, &result);
  if (result)
  {
    TypeID = CFDictionaryGetTypeID();
    v20 = CFGetTypeID(result);
    v21 = result;
    if (TypeID != v20)
    {
      v21 = 0;
      CFRelease(result);
    }
  }

  else
  {
    v21 = 0;
  }

  if ([(NIServerKeychainManager *)self _shouldLog])
  {
    v22 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67174915;
      *v28 = v18;
      *&v28[4] = 2113;
      *&v28[6] = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ni-km,Read status: %{private}d. Result: %{private}@", buf, 0x12u);
    }
  }

  v23 = [v21 objectForKeyedSubscript:kSecValueData];
  if (v23)
  {
    v24 = [[NIServerKeychainItem alloc] initWithService:serviceCopy account:accountCopy data:v23];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)_unitTest1
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ni-km,======================================================================", buf, 2u);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ni-km,UNIT TEST 1", buf, 2u);
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v76 = 0;
    v5 = [(NIServerKeychainManager *)self readItemWithService:@"UnitTestFunction1" account:@"UnitTest1" synchronizable:0 systemKeychain:0];
    v6 = v5;
    if (v5)
    {
      v7 = [(NIServerKeychainItem *)v5 isEqual:0];
    }

    else
    {
      v7 = 1;
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 1-%d: READ", buf, 8u);
    }

    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", buf, 0xCu);
    }

    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected read result: %@", buf, 0xCu);
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "FAILED";
      if (v7)
      {
        v13 = "PASSED";
      }

      *buf = 136315138;
      v78 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", buf, 0xCu);
    }

    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    ++v76;
    v15 = [NIServerKeychainItem alloc];
    v16 = [NSData dataWithBytes:&v76 length:1];
    v17 = [(NIServerKeychainItem *)v15 initWithService:@"UnitTestFunction1" account:@"UnitTest1" data:v16];

    v18 = [(NIServerKeychainManager *)self writeItem:v17 synchronizable:0 systemKeychain:0];
    v19 = qword_1009F9820;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v20 = qword_1009F9820;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = 2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 1-%d: WRITE", buf, 8u);
    }

    v21 = qword_1009F9820;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Write: %@.", buf, 0xCu);
    }

    v22 = qword_1009F9820;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "FAILED";
      if (v18)
      {
        v23 = "PASSED";
      }

      *buf = 136315138;
      v78 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", buf, 0xCu);
    }

    v24 = qword_1009F9820;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v25 = [(NIServerKeychainItem *)v17 copy];
    v26 = [(NIServerKeychainManager *)self readItemWithService:@"UnitTestFunction1" account:@"UnitTest1" synchronizable:0 systemKeychain:0];

    if (v26 | v25)
    {
      v27 = [v26 isEqual:v25];
    }

    else
    {
      v27 = 1;
    }

    v28 = qword_1009F9820;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v29 = qword_1009F9820;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = 3;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 1-%d: READ", buf, 8u);
    }

    v30 = qword_1009F9820;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v26;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", buf, 0xCu);
    }

    v31 = qword_1009F9820;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v25;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected read result: %@", buf, 0xCu);
    }

    v32 = qword_1009F9820;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = "FAILED";
      if (v27)
      {
        v33 = "PASSED";
      }

      *buf = 136315138;
      v78 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", buf, 0xCu);
    }

    v34 = qword_1009F9820;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    ++v76;
    v35 = [NIServerKeychainItem alloc];
    v36 = [NSData dataWithBytes:&v76 length:1];
    v37 = [(NIServerKeychainItem *)v35 initWithService:@"UnitTestFunction1" account:@"UnitTest1" data:v36];

    v38 = [(NIServerKeychainManager *)self writeItem:v37 synchronizable:0 systemKeychain:0];
    v39 = qword_1009F9820;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v40 = qword_1009F9820;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = 4;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 1-%d: WRITE", buf, 8u);
    }

    v41 = qword_1009F9820;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v37;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Write: %@.", buf, 0xCu);
    }

    v42 = qword_1009F9820;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = "FAILED";
      if (v38)
      {
        v43 = "PASSED";
      }

      *buf = 136315138;
      v78 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", buf, 0xCu);
    }

    v44 = qword_1009F9820;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v45 = [(NIServerKeychainItem *)v37 copy];
    v46 = [(NIServerKeychainManager *)self readItemWithService:@"UnitTestFunction1" account:@"UnitTest1" synchronizable:0 systemKeychain:0];

    if (v46 | v45)
    {
      v47 = [v46 isEqual:v45];
    }

    else
    {
      v47 = 1;
    }

    v48 = qword_1009F9820;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v49 = qword_1009F9820;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = 5;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 1-%d: READ", buf, 8u);
    }

    v50 = qword_1009F9820;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v46;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", buf, 0xCu);
    }

    v51 = qword_1009F9820;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v45;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected read result: %@", buf, 0xCu);
    }

    v52 = qword_1009F9820;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = "FAILED";
      if (v47)
      {
        v53 = "PASSED";
      }

      *buf = 136315138;
      v78 = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", buf, 0xCu);
    }

    v54 = qword_1009F9820;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v55 = [(NIServerKeychainManager *)self deleteItemWithService:@"UnitTestFunction1" account:@"UnitTest1" synchronizable:0 systemKeychain:0];
    v56 = qword_1009F9820;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v57 = qword_1009F9820;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = 6;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 1-%d: DELETE", buf, 8u);
    }

    v58 = qword_1009F9820;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = "FAILED";
      if (v55)
      {
        v59 = "PASSED";
      }

      *buf = 136315138;
      v78 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", buf, 0xCu);
    }

    v60 = qword_1009F9820;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v61 = [(NIServerKeychainManager *)self deleteItemWithService:@"UnitTestFunction1" account:@"UnitTest1" synchronizable:0 systemKeychain:0];
    v62 = qword_1009F9820;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v63 = qword_1009F9820;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = 7;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 1-%d: DELETE", buf, 8u);
    }

    v64 = qword_1009F9820;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = "FAILED";
      if (v61)
      {
        v65 = "PASSED";
      }

      *buf = 136315138;
      v78 = v65;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", buf, 0xCu);
    }

    v66 = qword_1009F9820;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v67 = [(NIServerKeychainManager *)self readItemWithService:@"UnitTestFunction1" account:@"UnitTest1" synchronizable:0 systemKeychain:0];

    if (v67)
    {
      v68 = [(NIServerKeychainItem *)v67 isEqual:0];
    }

    else
    {
      v68 = 1;
    }

    v69 = qword_1009F9820;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }

    v70 = qword_1009F9820;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v78) = 8;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 1-%d: READ", buf, 8u);
    }

    v71 = qword_1009F9820;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v67;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", buf, 0xCu);
    }

    v72 = qword_1009F9820;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = 0;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected read result: %@", buf, 0xCu);
    }

    v73 = qword_1009F9820;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = "FAILED";
      if (v68)
      {
        v74 = "PASSED";
      }

      *buf = 136315138;
      v78 = v74;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", buf, 0xCu);
    }

    v75 = qword_1009F9820;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", buf, 2u);
    }
  }
}

- (void)_unitTest2
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ni-km,======================================================================", buf, 2u);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ni-km,UNIT TEST 2", buf, 2u);
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    *buf = 0;
    v110 = buf;
    v111 = 0x2020000000;
    v112 = 0;
    v108 = 0;
    v91 = objc_opt_new();
    v5 = [(NIServerKeychainManager *)self readAllItemsWithService:@"UnitTestFunction2" synchronizable:0 systemKeychain:0];
    v6 = [v5 count];
    v7 = [v91 count];
    v110[24] = v6 == v7;
    if (v6 == v7)
    {
      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_1003082A4;
      v105[3] = &unk_1009A47D8;
      v106 = v91;
      v107 = buf;
      [v5 enumerateObjectsUsingBlock:v105];
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
    }

    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 67109120;
      LODWORD(v114) = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 2-%d: READ ALL", v113, 8u);
    }

    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 138412290;
      v114 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", v113, 0xCu);
    }

    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 138412290;
      v114 = v91;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected stored: %@", v113, 0xCu);
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v110[24])
      {
        v13 = "PASSED";
      }

      else
      {
        v13 = "FAILED";
      }

      *v113 = 136315138;
      v114 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", v113, 0xCu);
    }

    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      ++v108;
      v19 = [NSString stringWithFormat:@"UnitTest2-%d", v18];

      v20 = [NSData dataWithBytes:&v108 length:8];

      v92 = [[NIServerKeychainItem alloc] initWithService:@"UnitTestFunction2" account:v19 data:v20];
      if (![NIServerKeychainManager writeItem:"writeItem:synchronizable:systemKeychain:" synchronizable:? systemKeychain:?])
      {
        v69 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004BD5EC(v92, v69, v70, v71, v72, v73, v74, v75);
        }

        goto LABEL_108;
      }

      [v91 addObject:?];
      v18 = (v18 + 1);
      v15 = v92;
      v16 = v19;
      v17 = v20;
    }

    while (v18 != 8);
    v21 = [(NIServerKeychainManager *)self readAllItemsWithService:@"UnitTestFunction2" synchronizable:0 systemKeychain:0];

    v22 = [v21 count];
    v23 = [v91 count];
    v110[24] = v22 == v23;
    if (v22 == v23)
    {
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_1003082EC;
      v102[3] = &unk_1009A47D8;
      v103 = v91;
      v104 = buf;
      [v21 enumerateObjectsUsingBlock:v102];
    }

    v24 = qword_1009F9820;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
    }

    v25 = qword_1009F9820;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 67109120;
      LODWORD(v114) = 2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 2-%d: READ ALL", v113, 8u);
    }

    v26 = qword_1009F9820;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 138412290;
      v114 = v21;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", v113, 0xCu);
    }

    v27 = qword_1009F9820;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 138412290;
      v114 = v91;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected stored: %@", v113, 0xCu);
    }

    v28 = qword_1009F9820;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (v110[24])
      {
        v29 = "PASSED";
      }

      else
      {
        v29 = "FAILED";
      }

      *v113 = 136315138;
      v114 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", v113, 0xCu);
    }

    v30 = qword_1009F9820;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
    }

    v31 = 1;
    do
    {
      v32 = v31;
      allObjects = [v91 allObjects];
      firstObject = [allObjects firstObject];

      service = [firstObject service];
      account = [firstObject account];
      v37 = [(NIServerKeychainManager *)self deleteItemWithService:service account:account synchronizable:0 systemKeychain:0];

      if ((v37 & 1) == 0)
      {
        v76 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004BD658(firstObject, v76, v77, v78, v79, v80, v81, v82);
        }

        goto LABEL_107;
      }

      [v91 removeObject:firstObject];

      v31 = 0;
    }

    while ((v32 & 1) != 0);
    v5 = [(NIServerKeychainManager *)self readAllItemsWithService:@"UnitTestFunction2" synchronizable:0 systemKeychain:0];

    v38 = [v5 count];
    v39 = [v91 count];
    v110[24] = v38 == v39;
    if (v38 == v39)
    {
      v99[0] = _NSConcreteStackBlock;
      v99[1] = 3221225472;
      v99[2] = sub_100308334;
      v99[3] = &unk_1009A47D8;
      v100 = v91;
      v101 = buf;
      [v5 enumerateObjectsUsingBlock:v99];
    }

    v40 = qword_1009F9820;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
    }

    v41 = qword_1009F9820;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 67109120;
      LODWORD(v114) = 3;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 2-%d: READ ALL", v113, 8u);
    }

    v42 = qword_1009F9820;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 138412290;
      v114 = v5;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", v113, 0xCu);
    }

    v43 = qword_1009F9820;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 138412290;
      v114 = v91;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected stored: %@", v113, 0xCu);
    }

    v44 = qword_1009F9820;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      if (v110[24])
      {
        v45 = "PASSED";
      }

      else
      {
        v45 = "FAILED";
      }

      *v113 = 136315138;
      v114 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", v113, 0xCu);
    }

    v46 = qword_1009F9820;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
    }

    v47 = 8;
    v48 = v92;
    v49 = v19;
    v50 = v20;
    do
    {
      ++v108;
      v19 = [NSString stringWithFormat:@"UnitTest2-%d", v47];

      v20 = [NSData dataWithBytes:&v108 length:8];

      v92 = [[NIServerKeychainItem alloc] initWithService:@"UnitTestFunction2" account:v19 data:v20];
      if (![NIServerKeychainManager writeItem:"writeItem:synchronizable:systemKeychain:" synchronizable:? systemKeychain:?])
      {
        v83 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004BD5EC(v92, v83, v84, v85, v86, v87, v88, v89);
        }

        goto LABEL_108;
      }

      [v91 addObject:?];
      v47 = (v47 + 1);
      v48 = v92;
      v49 = v19;
      v50 = v20;
    }

    while (v47 != 108);
    v21 = [(NIServerKeychainManager *)self readAllItemsWithService:@"UnitTestFunction2" synchronizable:0 systemKeychain:0];

    v51 = [v21 count];
    v52 = [v91 count];
    v110[24] = v51 == v52;
    if (v51 == v52)
    {
      v96[0] = _NSConcreteStackBlock;
      v96[1] = 3221225472;
      v96[2] = sub_10030837C;
      v96[3] = &unk_1009A47D8;
      v97 = v91;
      v98 = buf;
      [v21 enumerateObjectsUsingBlock:v96];
    }

    v53 = qword_1009F9820;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
    }

    v54 = qword_1009F9820;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 67109120;
      LODWORD(v114) = 4;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 2-%d: READ ALL", v113, 8u);
    }

    v55 = qword_1009F9820;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 138412290;
      v114 = v21;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", v113, 0xCu);
    }

    v56 = qword_1009F9820;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 138412290;
      v114 = v91;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected stored: %@", v113, 0xCu);
    }

    v57 = qword_1009F9820;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      if (v110[24])
      {
        v58 = "PASSED";
      }

      else
      {
        v58 = "FAILED";
      }

      *v113 = 136315138;
      v114 = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", v113, 0xCu);
    }

    v59 = qword_1009F9820;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
    }

    if ([(NIServerKeychainManager *)self deleteAllItemsWithService:@"UnitTestFunction2" synchronizable:0 systemKeychain:0])
    {
      [v91 removeAllObjects];
      v5 = [(NIServerKeychainManager *)self readAllItemsWithService:@"UnitTestFunction2" synchronizable:0 systemKeychain:0];

      v60 = [v5 count];
      v61 = [v91 count];
      v110[24] = v60 == v61;
      if (v60 == v61)
      {
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_1003083C4;
        v93[3] = &unk_1009A47D8;
        v94 = v91;
        v95 = buf;
        [v5 enumerateObjectsUsingBlock:v93];
      }

      v62 = qword_1009F9820;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 0;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
      }

      v63 = qword_1009F9820;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 67109120;
        LODWORD(v114) = 5;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 2-%d: READ ALL", v113, 8u);
      }

      v64 = qword_1009F9820;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 138412290;
        v114 = v5;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", v113, 0xCu);
      }

      v65 = qword_1009F9820;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 138412290;
        v114 = v91;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected stored: %@", v113, 0xCu);
      }

      v66 = qword_1009F9820;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        if (v110[24])
        {
          v67 = "PASSED";
        }

        else
        {
          v67 = "FAILED";
        }

        *v113 = 136315138;
        v114 = v67;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", v113, 0xCu);
      }

      v68 = qword_1009F9820;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *v113 = 0;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", v113, 2u);
      }

      goto LABEL_108;
    }

    v90 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004BD6C4(v90);
    }

LABEL_107:
    v5 = v21;
LABEL_108:

    _Block_object_dispose(buf, 8);
  }
}

- (void)_unitTest3
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v70) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ni-km,======================================================================", &v70, 2u);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v70) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ni-km,UNIT TEST 3", &v70, 2u);
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v5 = [(NIServerKeychainManager *)self readItemWithService:@"UnitTestFunction3" account:@"UnitTest3" synchronizable:0 systemKeychain:0];
    v6 = v5;
    if (v5)
    {
      v7 = [(NIServerKeychainItem *)v5 isEqual:0];
    }

    else
    {
      v7 = 1;
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 67109120;
      LODWORD(v71) = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 3-%d: READ", &v70, 8u);
    }

    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", &v70, 0xCu);
    }

    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected read result: %@", &v70, 0xCu);
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "FAILED";
      if (v7)
      {
        v13 = "PASSED";
      }

      v70 = 136315138;
      v71 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", &v70, 0xCu);
    }

    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v15 = [NIServerKeychainItem alloc];
    v16 = NSRandomData();
    v17 = [(NIServerKeychainItem *)v15 initWithService:@"UnitTestFunction3" account:@"UnitTest3" data:v16];

    v18 = [(NIServerKeychainManager *)self writeItem:v17 synchronizable:0 systemKeychain:0];
    v19 = qword_1009F9820;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v20 = qword_1009F9820;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 67109120;
      LODWORD(v71) = 2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 3-%d: WRITE", &v70, 8u);
    }

    v21 = qword_1009F9820;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Write: %@.", &v70, 0xCu);
    }

    v22 = qword_1009F9820;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "FAILED";
      if (v18)
      {
        v23 = "PASSED";
      }

      v70 = 136315138;
      v71 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", &v70, 0xCu);
    }

    v24 = qword_1009F9820;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v25 = [(NIServerKeychainItem *)v17 copy];
    v26 = [(NIServerKeychainManager *)self readItemWithService:@"UnitTestFunction3" account:@"UnitTest3" synchronizable:0 systemKeychain:0];

    if (v26 | v25)
    {
      v27 = [v26 isEqual:v25];
    }

    else
    {
      v27 = 1;
    }

    v28 = qword_1009F9820;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v29 = qword_1009F9820;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 67109120;
      LODWORD(v71) = 3;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 3-%d: READ", &v70, 8u);
    }

    v30 = qword_1009F9820;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = v26;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", &v70, 0xCu);
    }

    v31 = qword_1009F9820;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = v25;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected read result: %@", &v70, 0xCu);
    }

    v32 = qword_1009F9820;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = "FAILED";
      if (v27)
      {
        v33 = "PASSED";
      }

      v70 = 136315138;
      v71 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", &v70, 0xCu);
    }

    v34 = qword_1009F9820;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v35 = [NIServerKeychainItem alloc];
    v36 = NSRandomData();
    v37 = [(NIServerKeychainItem *)v35 initWithService:@"UnitTestFunction3" account:@"UnitTest3" data:v36];

    v38 = [(NIServerKeychainManager *)self writeItem:v37 synchronizable:0 systemKeychain:0];
    v39 = qword_1009F9820;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v40 = qword_1009F9820;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 67109120;
      LODWORD(v71) = 4;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 3-%d: WRITE", &v70, 8u);
    }

    v41 = qword_1009F9820;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = v37;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Write: %@.", &v70, 0xCu);
    }

    v42 = qword_1009F9820;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = "FAILED";
      if (v38)
      {
        v43 = "PASSED";
      }

      v70 = 136315138;
      v71 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", &v70, 0xCu);
    }

    v44 = qword_1009F9820;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v45 = [(NIServerKeychainItem *)v37 copy];
    v46 = [(NIServerKeychainManager *)self readItemWithService:@"UnitTestFunction3" account:@"UnitTest3" synchronizable:0 systemKeychain:0];

    if (v46 | v45)
    {
      v47 = [v46 isEqual:v45];
    }

    else
    {
      v47 = 1;
    }

    v48 = qword_1009F9820;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v49 = qword_1009F9820;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 67109120;
      LODWORD(v71) = 5;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 3-%d: READ", &v70, 8u);
    }

    v50 = qword_1009F9820;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = v46;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", &v70, 0xCu);
    }

    v51 = qword_1009F9820;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = v45;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected read result: %@", &v70, 0xCu);
    }

    v52 = qword_1009F9820;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = "FAILED";
      if (v47)
      {
        v53 = "PASSED";
      }

      v70 = 136315138;
      v71 = v53;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", &v70, 0xCu);
    }

    v54 = qword_1009F9820;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v55 = [(NIServerKeychainManager *)self deleteItemWithService:@"UnitTestFunction3" account:@"UnitTest3" synchronizable:0 systemKeychain:0];
    v56 = qword_1009F9820;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v57 = qword_1009F9820;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 67109120;
      LODWORD(v71) = 6;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 3-%d: DELETE", &v70, 8u);
    }

    v58 = qword_1009F9820;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = "FAILED";
      if (v55)
      {
        v59 = "PASSED";
      }

      v70 = 136315138;
      v71 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", &v70, 0xCu);
    }

    v60 = qword_1009F9820;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v61 = [(NIServerKeychainManager *)self readItemWithService:@"UnitTestFunction3" account:@"UnitTest3" synchronizable:0 systemKeychain:0];

    if (v61)
    {
      v62 = [(NIServerKeychainItem *)v61 isEqual:0];
    }

    else
    {
      v62 = 1;
    }

    v63 = qword_1009F9820;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }

    v64 = qword_1009F9820;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 67109120;
      LODWORD(v71) = 7;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#ni-km,| Test 3-%d: READ", &v70, 8u);
    }

    v65 = qword_1009F9820;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = v61;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Read result: %@.", &v70, 0xCu);
    }

    v66 = qword_1009F9820;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v70 = 138412290;
      v71 = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Expected read result: %@", &v70, 0xCu);
    }

    v67 = qword_1009F9820;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = "FAILED";
      if (v62)
      {
        v68 = "PASSED";
      }

      v70 = 136315138;
      v71 = v68;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#ni-km,|     Test result: %s", &v70, 0xCu);
    }

    v69 = qword_1009F9820;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#ni-km,|------------------------------------------------------------", &v70, 2u);
    }
  }
}

- (BOOL)_shouldLog
{
  if (!+[NIPlatformInfo isInternalBuild])
  {
    return 0;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"KMOutputLogs"];

  return v3;
}

@end