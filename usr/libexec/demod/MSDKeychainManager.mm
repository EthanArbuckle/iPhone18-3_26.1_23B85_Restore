@interface MSDKeychainManager
+ (id)sharedInstance;
- (BOOL)deleteItemForKey:(id)a3;
- (BOOL)saveItem:(id)a3 forKey:(id)a4;
- (BOOL)saveItem:(id)a3 forKey:(id)a4 withAttributes:(id)a5;
- (MSDKeychainManager)init;
- (MSDKeychainManager)initWithSystemKeychain;
- (id)createSearchDictionaryForKey:(id)a3;
- (id)getAllItemsForKey:(id)a3 withAttributes:(BOOL)a4;
- (id)getItemForKey:(id)a3;
- (int)updateItemForAttributes:(id)a3 withData:(id)a4;
@end

@implementation MSDKeychainManager

+ (id)sharedInstance
{
  if (qword_1001A5838 != -1)
  {
    sub_1000D7308();
  }

  v3 = qword_1001A5830;

  return v3;
}

- (MSDKeychainManager)init
{
  v6.receiver = self;
  v6.super_class = MSDKeychainManager;
  v2 = [(MSDKeychainManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(MSDKeychainManager *)v2 setCache:v3];

    v4 = v2;
  }

  return v2;
}

- (MSDKeychainManager)initWithSystemKeychain
{
  v3.receiver = self;
  v3.super_class = MSDKeychainManager;
  return [(MSDKeychainManager *)&v3 init];
}

- (BOOL)saveItem:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(MSDKeychainManager *)v8 createSearchDictionaryForKey:v7];
  if (![v9 count])
  {
    v14 = sub_100063A54();
    sub_1000D73B8(v14);
LABEL_9:
    v12 = 0;
    goto LABEL_6;
  }

  [v9 setObject:v6 forKey:kSecValueData];
  v10 = SecItemAdd(v9, 0);
  if (v10 == -25299)
  {
    [v9 removeObjectForKey:kSecValueData];
    v10 = [(MSDKeychainManager *)v8 updateItemForAttributes:v9 withData:v6];
  }

  if (v10)
  {
    v15 = sub_100063A54();
    sub_1000D731C(v15);
    goto LABEL_9;
  }

  v11 = [(MSDKeychainManager *)v8 cache];
  [v11 setValue:v6 forKey:v7];

  v12 = 1;
LABEL_6:

  objc_sync_exit(v8);
  return v12;
}

- (id)getItemForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  result = 0;
  v6 = [(MSDKeychainManager *)v5 cache];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [(MSDKeychainManager *)v5 cache];
    v9 = [v8 objectForKey:v4];
    goto LABEL_7;
  }

  v8 = [(MSDKeychainManager *)v5 createSearchDictionaryForKey:v4];
  if (![v8 count])
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000D74C8();
    }

    goto LABEL_14;
  }

  [v8 setObject:kCFBooleanTrue forKey:kSecReturnData];
  if (SecItemCopyMatching(v8, &result))
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000D7454();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = result;
  v10 = [(MSDKeychainManager *)v5 cache];
  [v10 setValue:v9 forKey:v4];
LABEL_6:

LABEL_7:
  objc_sync_exit(v5);

  return v9;
}

- (BOOL)deleteItemForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSDKeychainManager *)v5 createSearchDictionaryForKey:v4];
  if (![v6 count])
  {
    v10 = sub_100063A54();
    sub_1000D757C(v10, &v12);
    v11 = v12;
LABEL_8:

    v8 = 0;
    goto LABEL_4;
  }

  v7 = [(MSDKeychainManager *)v5 cache];
  [v7 removeObjectForKey:v4];

  if (SecItemDelete(v6))
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000D7508();
    }

    goto LABEL_8;
  }

  v8 = 1;
LABEL_4:

  objc_sync_exit(v5);
  return v8;
}

- (BOOL)saveItem:(id)a3 forKey:(id)a4 withAttributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v23 = v9;
  v12 = [(MSDKeychainManager *)v11 createSearchDictionaryForKey:v9];
  if (![v12 count])
  {
    v22 = sub_100063A54();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000D7658();
    }

    goto LABEL_18;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v13 objectForKey:v17];
        [v12 setObject:v18 forKey:v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  [v12 setObject:v8 forKey:kSecValueData];
  v19 = SecItemAdd(v12, 0);
  if (v19 == -25299)
  {
    [v12 removeObjectForKey:kSecValueData];
    v19 = [(MSDKeychainManager *)v11 updateItemForAttributes:v12 withData:v8];
  }

  if (v19)
  {
    v22 = sub_100063A54();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000D75E4();
    }

LABEL_18:

    v20 = 0;
    goto LABEL_13;
  }

  v20 = 1;
LABEL_13:

  objc_sync_exit(v11);
  return v20;
}

- (id)getAllItemsForKey:(id)a3 withAttributes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  result = 0;
  v8 = [(MSDKeychainManager *)v7 createSearchDictionaryForKey:v6];
  if ([v8 count])
  {
    if (v4)
    {
      [v8 setObject:kCFBooleanTrue forKey:kSecReturnAttributes];
    }

    [v8 setObject:kSecMatchLimitAll forKey:kSecMatchLimit];
    [v8 setObject:kCFBooleanTrue forKey:kSecReturnData];
    if (!SecItemCopyMatching(v8, &result))
    {
      v9 = result;
      goto LABEL_6;
    }

    v12 = sub_100063A54();
    sub_1000D76CC(v12);
  }

  else
  {
    v11 = sub_100063A54();
    sub_1000D7768(v11);
  }

  v9 = 0;
LABEL_6:

  objc_sync_exit(v7);

  return v9;
}

- (int)updateItemForAttributes:(id)a3 withData:(id)a4
{
  v5 = a3;
  v6 = [NSDictionary dictionaryWithObject:a4 forKey:kSecValueData];
  v7 = SecItemUpdate(v5, v6);

  return v7;
}

- (id)createSearchDictionaryForKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  if ([(__CFString *)v3 isEqualToString:@"com.apple.mobilestoredemo.wifi.key"])
  {
    [v4 setObject:kSecClassKey forKey:kSecClass];
    [v4 setObject:kSecAttrKeyClassSymmetric forKey:kSecAttrKeyClass];
    v5 = &kSecAttrApplicationLabel;
LABEL_9:
    v6 = *v5;
    v8 = v4;
    v7 = v3;
    goto LABEL_10;
  }

  if ([(__CFString *)v3 isEqualToString:@"com.apple.mobilestoredemo.keychainItemID"])
  {
    [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
    [v4 setObject:v3 forKey:kSecAttrService];
    v6 = kSecAttrAccount;
    v7 = @"UDID";
LABEL_5:
    v8 = v4;
LABEL_10:
    [v8 setObject:v7 forKey:v6];
    goto LABEL_11;
  }

  if (([(__CFString *)v3 isEqualToString:@"com.apple.mobilestoredemo.keychainUserCredID"]& 1) != 0 || [(__CFString *)v3 isEqualToString:@"com.apple.mobilestoredemo.keychainAdminCredID"])
  {
    [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
    v5 = &kSecAttrService;
    goto LABEL_9;
  }

  if ([(__CFString *)v3 isEqualToString:@"com.appl.mobilestoredemo.bluetooth."])
  {
    v10 = kSecAttrAccessGroup;
    v11 = @"com.apple.bluetooth";
LABEL_16:
    [v4 setObject:v11 forKey:v10];
    v7 = kSecClassGenericPassword;
    v12 = &kSecClass;
LABEL_21:
    v6 = *v12;
    goto LABEL_5;
  }

  if ([(__CFString *)v3 isEqualToString:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens"])
  {
    [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
    [v4 setObject:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens" forKey:kSecAttrService];
    v7 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    v12 = &kSecAttrAccessible;
    goto LABEL_21;
  }

  if ([(__CFString *)v3 isEqualToString:@"com.apple.rapport"])
  {
    [v4 setObject:@"com.apple.rapport" forKey:kSecAttrAccessGroup];
    [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
    v7 = kCFBooleanTrue;
    v12 = &kSecAttrSynchronizable;
    goto LABEL_21;
  }

  if ([(__CFString *)v3 isEqualToString:@"com.apple.continuity.encryption"])
  {
    v10 = kSecAttrAccessGroup;
    v11 = @"com.apple.continuity.encryption";
    goto LABEL_16;
  }

  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000D77C4();
  }

LABEL_11:

  return v4;
}

@end