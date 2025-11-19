@interface SESKeychainWrapper
+ (id)sharedInstance;
+ (void)setInterposedWrapper:(id)a3;
- (BOOL)copyItemData:(id)a3 outData:(id *)a4 updateToApplePayView:(BOOL)a5 error:(id *)a6;
- (BOOL)copyMultipleItemData:(id)a3 outDatas:(id *)a4 error:(id *)a5;
- (SESKeychainWrapper)init;
- (id)otCliqueForAltDSID:(id)a3;
- (int)addItem:(id)a3;
- (int)deleteItem:(id)a3;
- (os_state_data_s)dumpState;
- (void)addKeychainItem:(id)a3 completion:(id)a4;
- (void)addLocalSEPeerIdentity:(id)a3 altDSID:(id)a4 completion:(id)a5;
- (void)canSyncSEKeys:(id)a3;
- (void)copyKeychainItemData:(id)a3 updateToApplePayView:(BOOL)a4 completion:(id)a5;
- (void)copyMultipleKeychainItemData:(id)a3 completion:(id)a4;
- (void)deleteKeychainItem:(id)a3 completion:(id)a4;
- (void)deleteSEView:(id)a3 altDSID:(id)a4 completion:(id)a5;
- (void)fetchCachedContentForSEView:(id)a3 altDSID:(id)a4 completion:(id)a5;
- (void)getSEPeerIdentityInfo:(id)a3 withCompletion:(id)a4;
- (void)modifyTLKSharesForView:(id)a3 altDSID:(id)a4 addingShares:(id)a5 removingShares:(id)a6 completion:(id)a7;
- (void)proposeRolledTLKForView:(id)a3 oldTLKRecord:(id)a4 newTLKRecord:(id)a5 newTLKSelfShare:(id)a6 altDSID:(id)a7 completion:(id)a8;
- (void)proposeTLKForView:(id)a3 record:(id)a4 selfShare:(id)a5 altDSID:(id)a6 completion:(id)a7;
- (void)removeLocalSEPeerIdentity:(id)a3 altDSID:(id)a4 completion:(id)a5;
- (void)syncContentsForSEView:(id)a3 altDSID:(id)a4 completion:(id)a5;
- (void)updateKeychainItemToApplePayView:(id)a3 completion:(id)a4;
@end

@implementation SESKeychainWrapper

+ (id)sharedInstance
{
  if (qword_10050CBF0 != -1)
  {
    sub_1003A9E14();
  }

  v3 = qword_10050CBE8;

  return v3;
}

+ (void)setInterposedWrapper:(id)a3
{
  v6 = a3;
  v3 = +[SESKeychainWrapper sharedInstance];
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = qword_10050CBE8;
  qword_10050CBE8 = v4;
}

- (SESKeychainWrapper)init
{
  v12.receiver = self;
  v12.super_class = SESKeychainWrapper;
  v2 = [(SESKeychainWrapper *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, 0x16u, 0);

    v5 = dispatch_queue_create("com.apple.seserviced.keychainwrapper", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_new();
    lastRetrievedViewInformation = v2->_lastRetrievedViewInformation;
    v2->_lastRetrievedViewInformation = v7;

    v9 = v2->_queue;
    v11 = v2;
    os_state_add_handler();
  }

  return v2;
}

- (void)canSyncSEKeys:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F4A0;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)getSEPeerIdentityInfo:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F800;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)addLocalSEPeerIdentity:(id)a3 altDSID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000FBB4;
  v15[3] = &unk_1004C09E0;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)removeLocalSEPeerIdentity:(id)a3 altDSID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000FD68;
  v15[3] = &unk_1004C09E0;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)fetchCachedContentForSEView:(id)a3 altDSID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FEE8;
  block[3] = &unk_1004C1038;
  v13 = v7;
  v14 = v8;
  block[4] = self;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, block);
}

- (void)modifyTLKSharesForView:(id)a3 altDSID:(id)a4 addingShares:(id)a5 removingShares:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000103E8;
  v20[3] = &unk_1004C10E8;
  v21 = v12;
  v22 = v13;
  v23 = v11;
  v24 = v14;
  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = v14;
  dispatch_async(queue, v20);
}

- (void)proposeTLKForView:(id)a3 record:(id)a4 selfShare:(id)a5 altDSID:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100010698;
  v20[3] = &unk_1004C10E8;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v14;
  dispatch_async(queue, v20);
}

- (void)syncContentsForSEView:(id)a3 altDSID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001093C;
  v12[3] = &unk_1004C1138;
  v13 = v7;
  v14 = v8;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, v12);
}

- (void)deleteSEView:(id)a3 altDSID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Deleting SE view %@", buf, 0xCu);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010CB8;
  v13[3] = &unk_1004C1138;
  v14 = v7;
  v15 = v8;
  v11 = v7;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)proposeRolledTLKForView:(id)a3 oldTLKRecord:(id)a4 newTLKRecord:(id)a5 newTLKSelfShare:(id)a6 altDSID:(id)a7 completion:(id)a8
{
  v9 = a8;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010F90;
  block[3] = &unk_1004C1188;
  v13 = v9;
  v11 = v9;
  dispatch_async(queue, block);
}

- (int)addItem:(id)a3
{
  v3 = a3;
  v4 = SecItemAdd(v3, 0);
  v5 = SESDefaultLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = [(__CFDictionary *)v3 mutableCopy];
    [v7 removeObjectForKey:kSecValueData];
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10[0] = 67109378;
      v10[1] = v4;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SecItemAdd %d - %@", v10, 0x12u);
    }
  }

  return v4;
}

- (int)deleteItem:(id)a3
{
  v3 = a3;
  v4 = SecItemDelete(v3);
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109378;
    v7[1] = v4;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SecItemDelete %d - %@", v7, 0x12u);
  }

  return v4;
}

- (BOOL)copyItemData:(id)a3 outData:(id *)a4 updateToApplePayView:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = [v9 mutableCopy];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
  result = 0;
  v11 = SecItemCopyMatching(v10, &result);
  v12 = SESDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    *v25 = v11;
    *&v25[4] = 2112;
    *&v25[6] = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "SecItemCopyMatching (one) %d : %@", buf, 0x12u);
  }

  if (v11 != -25300)
  {
    if (v11 || (v14 = result) == 0)
    {
      if (!a6)
      {
        v13 = 0;
        goto LABEL_22;
      }

      v14 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
      v13 = 0;
    }

    else
    {
      if (v7)
      {
        v15 = [result objectForKeyedSubscript:kSecAttrSyncViewHint];
        v16 = kSecAttrViewHintApplePay;
        v17 = [v15 isEqualToString:kSecAttrViewHintApplePay];
        if (v17)
        {
          v18 = 0;
        }

        else
        {
          v28 = kSecAttrSyncViewHint;
          v29 = v16;
          v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v18 = SecItemUpdate(v9, v20);
        }

        v21 = SESDefaultLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *v25 = result;
          *&v25[8] = 1024;
          *&v25[10] = v17 ^ 1;
          v26 = 1024;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Item %@ upgrade needed %d status %d", buf, 0x18u);
        }
      }

      if (!a4)
      {
        v13 = 1;
        goto LABEL_21;
      }

      v19 = [v14 objectForKeyedSubscript:kSecValueData];
      v13 = 1;
      a6 = a4;
    }

    *a6 = v19;
LABEL_21:

    goto LABEL_22;
  }

  v13 = 1;
LABEL_22:

  return v13;
}

- (BOOL)copyMultipleItemData:(id)a3 outDatas:(id *)a4 error:(id *)a5
{
  v7 = [a3 mutableCopy];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  [v7 setObject:kSecMatchLimitAll forKeyedSubscript:kSecMatchLimit];
  result = 0;
  v8 = SecItemCopyMatching(v7, &result);
  v9 = result;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v9 count];
    *buf = 67109634;
    v17 = v8;
    v18 = 1024;
    v19 = v11;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "SecItemCopyMatching (All) %d (%u) : %@", buf, 0x18u);
  }

  if (v8 == -25300)
  {
    if (a4)
    {
      *a4 = +[NSArray array];
    }

LABEL_10:
    LOBYTE(a5) = 1;
    goto LABEL_11;
  }

  if (!v8 && result)
  {
    if (a4)
    {
      v12 = v9;
      *a4 = v9;
    }

    goto LABEL_10;
  }

  if (a5)
  {
    v14 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();

    LOBYTE(a5) = 0;
  }

LABEL_11:

  return a5;
}

- (void)addKeychainItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011770;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)copyKeychainItemData:(id)a3 updateToApplePayView:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100011918;
  v13[3] = &unk_1004C11B0;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)copyMultipleKeychainItemData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011A60;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)deleteKeychainItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011BA4;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)updateKeychainItemToApplePayView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011D44;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (id)otCliqueForAltDSID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(OTConfigurationContext);
  [v4 setContext:OTDefaultContext];
  v5 = [NSString stringWithAsciiData:v3];

  [v4 setAltDSID:v5];
  v6 = [[OTClique alloc] initWithContextData:v4];

  return v6;
}

- (os_state_data_s)dumpState
{
  v3 = objc_opt_new();
  v4 = v3;
  lastEnabledDSID = self->_lastEnabledDSID;
  if (lastEnabledDSID)
  {
    [v3 setObject:lastEnabledDSID forKeyedSubscript:@"_lastEnabledDSID"];
  }

  lastLocalPeerIdentifier = self->_lastLocalPeerIdentifier;
  if (lastLocalPeerIdentifier)
  {
    v7 = [(NSData *)lastLocalPeerIdentifier asHexString];
    [v4 setObject:v7 forKeyedSubscript:@"_lastLocalPeerIdentifier"];
  }

  lastTrustedPeerIdentities = self->_lastTrustedPeerIdentities;
  if (lastTrustedPeerIdentities)
  {
    v9 = [(NSArray *)lastTrustedPeerIdentities ses_map:&stru_1004C11F0];
    [v4 setObject:v9 forKeyedSubscript:@"_lastTrustedPeers"];
  }

  lastRetrievedViewInformation = self->_lastRetrievedViewInformation;
  if (lastRetrievedViewInformation)
  {
    v11 = [(NSMutableDictionary *)lastRetrievedViewInformation allValues];
    v12 = [v11 ses_map:&stru_1004C1230];
    [v4 setObject:v12 forKeyedSubscript:@"_lastViewInformation"];
  }

  v13 = sub_100015DA0("keychainwrapper", v4);

  return v13;
}

@end