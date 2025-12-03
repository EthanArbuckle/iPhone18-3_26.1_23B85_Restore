@interface SESKeychainWrapper
+ (id)sharedInstance;
+ (void)setInterposedWrapper:(id)wrapper;
- (BOOL)copyItemData:(id)data outData:(id *)outData updateToApplePayView:(BOOL)view error:(id *)error;
- (BOOL)copyMultipleItemData:(id)data outDatas:(id *)datas error:(id *)error;
- (SESKeychainWrapper)init;
- (id)otCliqueForAltDSID:(id)d;
- (int)addItem:(id)item;
- (int)deleteItem:(id)item;
- (os_state_data_s)dumpState;
- (void)addKeychainItem:(id)item completion:(id)completion;
- (void)addLocalSEPeerIdentity:(id)identity altDSID:(id)d completion:(id)completion;
- (void)canSyncSEKeys:(id)keys;
- (void)copyKeychainItemData:(id)data updateToApplePayView:(BOOL)view completion:(id)completion;
- (void)copyMultipleKeychainItemData:(id)data completion:(id)completion;
- (void)deleteKeychainItem:(id)item completion:(id)completion;
- (void)deleteSEView:(id)view altDSID:(id)d completion:(id)completion;
- (void)fetchCachedContentForSEView:(id)view altDSID:(id)d completion:(id)completion;
- (void)getSEPeerIdentityInfo:(id)info withCompletion:(id)completion;
- (void)modifyTLKSharesForView:(id)view altDSID:(id)d addingShares:(id)shares removingShares:(id)removingShares completion:(id)completion;
- (void)proposeRolledTLKForView:(id)view oldTLKRecord:(id)record newTLKRecord:(id)kRecord newTLKSelfShare:(id)share altDSID:(id)d completion:(id)completion;
- (void)proposeTLKForView:(id)view record:(id)record selfShare:(id)share altDSID:(id)d completion:(id)completion;
- (void)removeLocalSEPeerIdentity:(id)identity altDSID:(id)d completion:(id)completion;
- (void)syncContentsForSEView:(id)view altDSID:(id)d completion:(id)completion;
- (void)updateKeychainItemToApplePayView:(id)view completion:(id)completion;
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

+ (void)setInterposedWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v3 = +[SESKeychainWrapper sharedInstance];
  if (wrapperCopy)
  {
    v4 = wrapperCopy;
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

- (void)canSyncSEKeys:(id)keys
{
  keysCopy = keys;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F4A0;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = keysCopy;
  v6 = keysCopy;
  dispatch_async(queue, v7);
}

- (void)getSEPeerIdentityInfo:(id)info withCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F800;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)addLocalSEPeerIdentity:(id)identity altDSID:(id)d completion:(id)completion
{
  identityCopy = identity;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000FBB4;
  v15[3] = &unk_1004C09E0;
  v15[4] = self;
  v16 = dCopy;
  v17 = identityCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identityCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)removeLocalSEPeerIdentity:(id)identity altDSID:(id)d completion:(id)completion
{
  identityCopy = identity;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000FD68;
  v15[3] = &unk_1004C09E0;
  v15[4] = self;
  v16 = dCopy;
  v17 = identityCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identityCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)fetchCachedContentForSEView:(id)view altDSID:(id)d completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FEE8;
  block[3] = &unk_1004C1038;
  v13 = viewCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = viewCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);
}

- (void)modifyTLKSharesForView:(id)view altDSID:(id)d addingShares:(id)shares removingShares:(id)removingShares completion:(id)completion
{
  viewCopy = view;
  sharesCopy = shares;
  removingSharesCopy = removingShares;
  completionCopy = completion;
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000103E8;
  v20[3] = &unk_1004C10E8;
  v21 = sharesCopy;
  v22 = removingSharesCopy;
  v23 = viewCopy;
  v24 = completionCopy;
  v16 = viewCopy;
  v17 = removingSharesCopy;
  v18 = sharesCopy;
  v19 = completionCopy;
  dispatch_async(queue, v20);
}

- (void)proposeTLKForView:(id)view record:(id)record selfShare:(id)share altDSID:(id)d completion:(id)completion
{
  viewCopy = view;
  recordCopy = record;
  shareCopy = share;
  completionCopy = completion;
  queue = self->_queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100010698;
  v20[3] = &unk_1004C10E8;
  v21 = viewCopy;
  v22 = recordCopy;
  v23 = shareCopy;
  v24 = completionCopy;
  v16 = shareCopy;
  v17 = recordCopy;
  v18 = viewCopy;
  v19 = completionCopy;
  dispatch_async(queue, v20);
}

- (void)syncContentsForSEView:(id)view altDSID:(id)d completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001093C;
  v12[3] = &unk_1004C1138;
  v13 = viewCopy;
  v14 = completionCopy;
  v10 = viewCopy;
  v11 = completionCopy;
  dispatch_async(queue, v12);
}

- (void)deleteSEView:(id)view altDSID:(id)d completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = viewCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Deleting SE view %@", buf, 0xCu);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010CB8;
  v13[3] = &unk_1004C1138;
  v14 = viewCopy;
  v15 = completionCopy;
  v11 = viewCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
}

- (void)proposeRolledTLKForView:(id)view oldTLKRecord:(id)record newTLKRecord:(id)kRecord newTLKSelfShare:(id)share altDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010F90;
  block[3] = &unk_1004C1188;
  v13 = completionCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);
}

- (int)addItem:(id)item
{
  itemCopy = item;
  v4 = SecItemAdd(itemCopy, 0);
  v5 = SESDefaultLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = [(__CFDictionary *)itemCopy mutableCopy];
    [v7 removeObjectForKey:kSecValueData];
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10[0] = 67109378;
      v10[1] = v4;
      v11 = 2112;
      v12 = itemCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SecItemAdd %d - %@", v10, 0x12u);
    }
  }

  return v4;
}

- (int)deleteItem:(id)item
{
  itemCopy = item;
  v4 = SecItemDelete(itemCopy);
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109378;
    v7[1] = v4;
    v8 = 2112;
    v9 = itemCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SecItemDelete %d - %@", v7, 0x12u);
  }

  return v4;
}

- (BOOL)copyItemData:(id)data outData:(id *)outData updateToApplePayView:(BOOL)view error:(id *)error
{
  viewCopy = view;
  dataCopy = data;
  v10 = [dataCopy mutableCopy];
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
      if (!error)
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
      if (viewCopy)
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
          v18 = SecItemUpdate(dataCopy, v20);
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

      if (!outData)
      {
        v13 = 1;
        goto LABEL_21;
      }

      v19 = [v14 objectForKeyedSubscript:kSecValueData];
      v13 = 1;
      error = outData;
    }

    *error = v19;
LABEL_21:

    goto LABEL_22;
  }

  v13 = 1;
LABEL_22:

  return v13;
}

- (BOOL)copyMultipleItemData:(id)data outDatas:(id *)datas error:(id *)error
{
  v7 = [data mutableCopy];
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
    if (datas)
    {
      *datas = +[NSArray array];
    }

LABEL_10:
    LOBYTE(error) = 1;
    goto LABEL_11;
  }

  if (!v8 && result)
  {
    if (datas)
    {
      v12 = v9;
      *datas = v9;
    }

    goto LABEL_10;
  }

  if (error)
  {
    v14 = SESDefaultLogObject();
    *error = SESCreateAndLogError();

    LOBYTE(error) = 0;
  }

LABEL_11:

  return error;
}

- (void)addKeychainItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011770;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = itemCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = itemCopy;
  dispatch_async(queue, block);
}

- (void)copyKeychainItemData:(id)data updateToApplePayView:(BOOL)view completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100011918;
  v13[3] = &unk_1004C11B0;
  v13[4] = self;
  v14 = dataCopy;
  viewCopy = view;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = dataCopy;
  dispatch_async(queue, v13);
}

- (void)copyMultipleKeychainItemData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011A60;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

- (void)deleteKeychainItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011BA4;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = itemCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = itemCopy;
  dispatch_async(queue, block);
}

- (void)updateKeychainItemToApplePayView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011D44;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = viewCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = viewCopy;
  dispatch_async(queue, block);
}

- (id)otCliqueForAltDSID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(OTConfigurationContext);
  [v4 setContext:OTDefaultContext];
  v5 = [NSString stringWithAsciiData:dCopy];

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
    asHexString = [(NSData *)lastLocalPeerIdentifier asHexString];
    [v4 setObject:asHexString forKeyedSubscript:@"_lastLocalPeerIdentifier"];
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
    allValues = [(NSMutableDictionary *)lastRetrievedViewInformation allValues];
    v12 = [allValues ses_map:&stru_1004C1230];
    [v4 setObject:v12 forKeyedSubscript:@"_lastViewInformation"];
  }

  v13 = sub_100015DA0("keychainwrapper", v4);

  return v13;
}

@end