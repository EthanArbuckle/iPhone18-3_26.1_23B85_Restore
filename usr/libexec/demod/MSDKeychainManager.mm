@interface MSDKeychainManager
+ (id)sharedInstance;
- (BOOL)deleteItemForKey:(id)key;
- (BOOL)saveItem:(id)item forKey:(id)key;
- (BOOL)saveItem:(id)item forKey:(id)key withAttributes:(id)attributes;
- (MSDKeychainManager)init;
- (MSDKeychainManager)initWithSystemKeychain;
- (id)createSearchDictionaryForKey:(id)key;
- (id)getAllItemsForKey:(id)key withAttributes:(BOOL)attributes;
- (id)getItemForKey:(id)key;
- (int)updateItemForAttributes:(id)attributes withData:(id)data;
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

- (BOOL)saveItem:(id)item forKey:(id)key
{
  itemCopy = item;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(MSDKeychainManager *)selfCopy createSearchDictionaryForKey:keyCopy];
  if (![v9 count])
  {
    v14 = sub_100063A54();
    sub_1000D73B8(v14);
LABEL_9:
    v12 = 0;
    goto LABEL_6;
  }

  [v9 setObject:itemCopy forKey:kSecValueData];
  v10 = SecItemAdd(v9, 0);
  if (v10 == -25299)
  {
    [v9 removeObjectForKey:kSecValueData];
    v10 = [(MSDKeychainManager *)selfCopy updateItemForAttributes:v9 withData:itemCopy];
  }

  if (v10)
  {
    v15 = sub_100063A54();
    sub_1000D731C(v15);
    goto LABEL_9;
  }

  cache = [(MSDKeychainManager *)selfCopy cache];
  [cache setValue:itemCopy forKey:keyCopy];

  v12 = 1;
LABEL_6:

  objc_sync_exit(selfCopy);
  return v12;
}

- (id)getItemForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  result = 0;
  cache = [(MSDKeychainManager *)selfCopy cache];
  v7 = [cache objectForKey:keyCopy];

  if (v7)
  {
    cache2 = [(MSDKeychainManager *)selfCopy cache];
    v9 = [cache2 objectForKey:keyCopy];
    goto LABEL_7;
  }

  cache2 = [(MSDKeychainManager *)selfCopy createSearchDictionaryForKey:keyCopy];
  if (![cache2 count])
  {
    cache3 = sub_100063A54();
    if (os_log_type_enabled(cache3, OS_LOG_TYPE_ERROR))
    {
      sub_1000D74C8();
    }

    goto LABEL_14;
  }

  [cache2 setObject:kCFBooleanTrue forKey:kSecReturnData];
  if (SecItemCopyMatching(cache2, &result))
  {
    cache3 = sub_100063A54();
    if (os_log_type_enabled(cache3, OS_LOG_TYPE_ERROR))
    {
      sub_1000D7454();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = result;
  cache3 = [(MSDKeychainManager *)selfCopy cache];
  [cache3 setValue:v9 forKey:keyCopy];
LABEL_6:

LABEL_7:
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)deleteItemForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MSDKeychainManager *)selfCopy createSearchDictionaryForKey:keyCopy];
  if (![v6 count])
  {
    v10 = sub_100063A54();
    sub_1000D757C(v10, &v12);
    v11 = v12;
LABEL_8:

    v8 = 0;
    goto LABEL_4;
  }

  cache = [(MSDKeychainManager *)selfCopy cache];
  [cache removeObjectForKey:keyCopy];

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

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)saveItem:(id)item forKey:(id)key withAttributes:(id)attributes
{
  itemCopy = item;
  keyCopy = key;
  attributesCopy = attributes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = keyCopy;
  v12 = [(MSDKeychainManager *)selfCopy createSearchDictionaryForKey:keyCopy];
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
  v13 = attributesCopy;
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

  [v12 setObject:itemCopy forKey:kSecValueData];
  v19 = SecItemAdd(v12, 0);
  if (v19 == -25299)
  {
    [v12 removeObjectForKey:kSecValueData];
    v19 = [(MSDKeychainManager *)selfCopy updateItemForAttributes:v12 withData:itemCopy];
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

  objc_sync_exit(selfCopy);
  return v20;
}

- (id)getAllItemsForKey:(id)key withAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  result = 0;
  v8 = [(MSDKeychainManager *)selfCopy createSearchDictionaryForKey:keyCopy];
  if ([v8 count])
  {
    if (attributesCopy)
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

  objc_sync_exit(selfCopy);

  return v9;
}

- (int)updateItemForAttributes:(id)attributes withData:(id)data
{
  attributesCopy = attributes;
  v6 = [NSDictionary dictionaryWithObject:data forKey:kSecValueData];
  v7 = SecItemUpdate(attributesCopy, v6);

  return v7;
}

- (id)createSearchDictionaryForKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc_init(NSMutableDictionary);
  if ([(__CFString *)keyCopy isEqualToString:@"com.apple.mobilestoredemo.wifi.key"])
  {
    [v4 setObject:kSecClassKey forKey:kSecClass];
    [v4 setObject:kSecAttrKeyClassSymmetric forKey:kSecAttrKeyClass];
    v5 = &kSecAttrApplicationLabel;
LABEL_9:
    v6 = *v5;
    v8 = v4;
    v7 = keyCopy;
    goto LABEL_10;
  }

  if ([(__CFString *)keyCopy isEqualToString:@"com.apple.mobilestoredemo.keychainItemID"])
  {
    [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
    [v4 setObject:keyCopy forKey:kSecAttrService];
    v6 = kSecAttrAccount;
    v7 = @"UDID";
LABEL_5:
    v8 = v4;
LABEL_10:
    [v8 setObject:v7 forKey:v6];
    goto LABEL_11;
  }

  if (([(__CFString *)keyCopy isEqualToString:@"com.apple.mobilestoredemo.keychainUserCredID"]& 1) != 0 || [(__CFString *)keyCopy isEqualToString:@"com.apple.mobilestoredemo.keychainAdminCredID"])
  {
    [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
    v5 = &kSecAttrService;
    goto LABEL_9;
  }

  if ([(__CFString *)keyCopy isEqualToString:@"com.appl.mobilestoredemo.bluetooth."])
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

  if ([(__CFString *)keyCopy isEqualToString:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens"])
  {
    [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
    [v4 setObject:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens" forKey:kSecAttrService];
    v7 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    v12 = &kSecAttrAccessible;
    goto LABEL_21;
  }

  if ([(__CFString *)keyCopy isEqualToString:@"com.apple.rapport"])
  {
    [v4 setObject:@"com.apple.rapport" forKey:kSecAttrAccessGroup];
    [v4 setObject:kSecClassGenericPassword forKey:kSecClass];
    v7 = kCFBooleanTrue;
    v12 = &kSecAttrSynchronizable;
    goto LABEL_21;
  }

  if ([(__CFString *)keyCopy isEqualToString:@"com.apple.continuity.encryption"])
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