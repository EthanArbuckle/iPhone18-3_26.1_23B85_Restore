@interface MSDCryptoHandler
+ (id)sharedInstance;
- (BOOL)deleteSecretKeyInKeychain;
- (BOOL)preserveAndEncryptKeychainItemsForKey:(id)a3 toFile:(id)a4;
- (BOOL)restoreAndDecryptKeychainItemsForKey:(id)a3 fromFile:(id)a4;
- (BOOL)saveSecretKeyInKeychain:(id)a3;
- (id)archiveAndEncryptKeychainItems:(id)a3;
- (id)copySecretKeyFromKeychain;
- (id)decryptAndUnarchiveKeychainItems:(id)a3;
- (id)generateRandomBytesWithFixedLength;
- (id)performCryptoWithSecretKeyOnData:(id)a3 isDecipher:(BOOL)a4;
- (void)createSecretKeyIfNeeded;
- (void)deleteSecretKey;
@end

@implementation MSDCryptoHandler

+ (id)sharedInstance
{
  if (qword_1001A5A40 != -1)
  {
    sub_1000E7D4C();
  }

  v3 = qword_1001A5A38;

  return v3;
}

- (void)createSecretKeyIfNeeded
{
  v3 = [(MSDCryptoHandler *)self copySecretKeyFromKeychain];

  if (!v3)
  {
    v4 = [(MSDCryptoHandler *)self generateRandomBytesWithFixedLength];
    if (v4)
    {
      v5 = v4;
      v6 = [(MSDCryptoHandler *)self saveSecretKeyInKeychain:v4];
      v7 = sub_100063A54();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Secret key for encryption is created.", v9, 2u);
        }
      }

      else
      {
        sub_1000E7D60(v7);
      }
    }

    else
    {
      v5 = sub_100063A54();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E7DBC();
      }
    }
  }
}

- (BOOL)preserveAndEncryptKeychainItemsForKey:(id)a3 toFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MSDKeychainManager sharedInstance];
  v9 = [v8 getAllItemsForKey:v6 withAttributes:1];

  if (!v9)
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7EA8();
    }

    goto LABEL_10;
  }

  v10 = [(MSDCryptoHandler *)self archiveAndEncryptKeychainItems:v9];
  if (!v10)
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7E6C();
    }

LABEL_10:
    v13 = 0;
    v11 = 0;
LABEL_13:

    v14 = 0;
    goto LABEL_5;
  }

  v11 = v10;
  v17 = 0;
  v12 = [v10 writeToFile:v7 options:0 error:&v17];
  v13 = v17;
  if ((v12 & 1) == 0)
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7DF8();
    }

    goto LABEL_13;
  }

  v14 = 1;
LABEL_5:

  return v14;
}

- (BOOL)restoreAndDecryptKeychainItemsForKey:(id)a3 fromFile:(id)a4
{
  v26 = a3;
  v6 = a4;
  v31 = 0;
  v7 = [NSData dataWithContentsOfFile:v6 options:0 error:&v31];
  v8 = v31;
  if (!v7)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7FC4();
    }

    goto LABEL_21;
  }

  v9 = [(MSDCryptoHandler *)self decryptAndUnarchiveKeychainItems:v7];
  if (!v9)
  {
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7F88();
    }

LABEL_21:
    v20 = 0;
    goto LABEL_16;
  }

  v23 = v8;
  v24 = v7;
  v25 = v6;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 objectForKey:{kSecValueData, v23, v24, v25}];
        v17 = [v15 mutableCopy];
        [v17 removeObjectForKey:kSecValueData];
        v18 = +[MSDKeychainManager sharedInstance];
        v19 = [v18 saveItem:v16 forKey:v26 withAttributes:v17];

        if ((v19 & 1) == 0)
        {
          v21 = sub_100063A54();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1000E7F18();
          }

          v20 = 0;
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_15:
  v7 = v24;
  v6 = v25;
  v8 = v23;
LABEL_16:

  return v20;
}

- (BOOL)saveSecretKeyInKeychain:(id)a3
{
  v3 = a3;
  v4 = +[MSDKeychainManager sharedInstance];
  v5 = [v4 saveItem:v3 forKey:@"com.apple.mobilestoredemo.wifi.key"];

  v6 = sub_100063A54();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Secret key saved in keychain.", v9, 2u);
    }
  }

  else
  {
    sub_1000E8038(v6);
  }

  return v5;
}

- (id)copySecretKeyFromKeychain
{
  v2 = +[MSDKeychainManager sharedInstance];
  v3 = [v2 getItemForKey:@"com.apple.mobilestoredemo.wifi.key"];

  return v3;
}

- (BOOL)deleteSecretKeyInKeychain
{
  v2 = +[MSDKeychainManager sharedInstance];
  v3 = [v2 deleteItemForKey:@"com.apple.mobilestoredemo.wifi.key"];

  v4 = sub_100063A54();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Secret key deleted in keychain.", v7, 2u);
    }
  }

  else
  {
    sub_1000E80C8(v4);
  }

  return v3;
}

- (id)archiveAndEncryptKeychainItems:(id)a3
{
  v22 = self;
  v3 = a3;
  v36[0] = kSecAttrService;
  v36[1] = kSecAttrAccount;
  v36[2] = kSecAttrLabel;
  v36[3] = kSecValueData;
  v4 = [NSArray arrayWithObjects:v36 count:4];
  v24 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 mutableCopy];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * j);
              if (([v4 containsObject:v16] & 1) == 0)
              {
                [v10 removeObjectForKey:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v13);
        }

        [v24 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v25 = 0;
  v17 = [NSPropertyListSerialization dataWithPropertyList:v24 format:200 options:0 error:&v25];
  v18 = v25;
  if (v17)
  {
    v19 = [(MSDCryptoHandler *)v22 performCryptoWithSecretKeyOnData:v17 isDecipher:0];
    if (v19)
    {
      goto LABEL_19;
    }

    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8158();
    }
  }

  else
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8194();
    }
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (id)decryptAndUnarchiveKeychainItems:(id)a3
{
  v3 = a3;
  v4 = +[MSDCryptoHandler sharedInstance];
  v5 = [v4 performCryptoWithSecretKeyOnData:v3 isDecipher:1];

  if (v5)
  {
    v9 = 0;
    v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v9];
    v7 = v9;
    if (v6)
    {
      v6 = v6;

      v7 = v6;
    }

    else
    {
      sub_1000E8204();
    }
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E82A4();
    }

    v6 = 0;
  }

  return v6;
}

- (void)deleteSecretKey
{
  v3 = [(MSDCryptoHandler *)self copySecretKeyFromKeychain];

  if (v3 && [(MSDCryptoHandler *)self deleteSecretKeyInKeychain])
  {
    v4 = sub_100063A54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Secret key for encryption is deleted.", v5, 2u);
    }
  }
}

- (id)performCryptoWithSecretKeyOnData:(id)a3 isDecipher:(BOOL)a4
{
  v5 = a4;
  v7 = a3;
  v8 = v7;
  v52 = 0;
  op = v5;
  if (v5)
  {
    v9 = [v7 length] - 32;
    v10 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v8 bytes], 32, 0);
    v11 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v8 bytes] + 32, v9, 0);
  }

  else
  {
    v10 = [(MSDCryptoHandler *)self generateRandomBytesWithFixedLength];
    v11 = v8;
  }

  v12 = v11;
  if (!v11)
  {
    v43 = sub_100063A54();
    if (!sub_1000AE14C(v43))
    {
LABEL_36:
      v15 = 0;
      v25 = 0;
      v13 = 0;
      goto LABEL_26;
    }

    *buf = 0;
LABEL_39:
    sub_1000AE13C();
    _os_log_error_impl(v45, v46, v47, v48, v49, 2u);
    goto LABEL_36;
  }

  if (!v10)
  {
    v44 = sub_100063A54();
    if (!sub_1000AE14C(v44))
    {
      goto LABEL_36;
    }

    *buf = 0;
    goto LABEL_39;
  }

  v13 = [(MSDCryptoHandler *)self copySecretKeyFromKeychain];
  if (v13)
  {
    v50 = v8;
    v14 = [[NSMutableData alloc] initWithLength:{objc_msgSend(v12, "length") + 32}];
    if (v14)
    {
      v15 = v14;
      while (1)
      {
        v16 = [v13 bytes];
        v17 = [v13 length];
        v18 = [v10 bytes];
        v4 = [v12 bytes];
        v19 = CCCrypt(op, 0, 1u, v16, v17, v18, v4, [v12 length], objc_msgSend(v15, "mutableBytes"), objc_msgSend(v15, "length"), &v52);
        if (v19 != -4301)
        {
          break;
        }

        v20 = sub_100063A54();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v54 = v52;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Output data buffer too small. Retry with larger buffer = %tu bytes.", buf, 0xCu);
        }

        v21 = [[NSMutableData alloc] initWithLength:v52];
        v15 = v21;
        if (!v21)
        {
          goto LABEL_13;
        }
      }

      v23 = v19;
      if (!v19)
      {
        if (op)
        {
          v24 = [v15 mutableBytes];
          v25 = [NSMutableData dataWithBytes:v24 length:v52];
        }

        else
        {
          v25 = [NSMutableData dataWithData:v10];
          v27 = [v15 mutableBytes];
          v28 = [NSData dataWithBytes:v27 length:v52];
          [v25 appendData:v28];
        }

        v8 = v50;
        v4 = sub_100063A54();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v29 = "encrypted";
          if (op)
          {
            v29 = "decrypted";
          }

          *buf = 136446210;
          v54 = v29;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Input data is %{public}s.", buf, 0xCu);
        }

        goto LABEL_26;
      }

      v26 = sub_100063A54();
      if (sub_1000AE14C(v26))
      {
        v32 = "encrypt";
        if (op)
        {
          v32 = "decrypt";
        }

        *buf = 136315394;
        v54 = v32;
        v55 = 1024;
        v56 = v23;
        sub_1000AE13C();
        _os_log_error_impl(v33, v34, v35, v36, v37, 0x12u);
      }
    }

    else
    {
LABEL_13:
      v22 = sub_100063A54();
      if (sub_1000AE14C(v22))
      {
        *buf = 0;
        sub_1000AE13C();
        _os_log_error_impl(v38, v39, v40, v41, v42, 2u);
      }

      v15 = 0;
    }

    v25 = 0;
    v8 = v50;
LABEL_26:

    goto LABEL_27;
  }

  v15 = 0;
  v25 = 0;
LABEL_27:
  v30 = v25;

  return v30;
}

- (id)generateRandomBytesWithFixedLength
{
  v2 = malloc_type_malloc(0x20uLL, 0xA5724B13uLL);
  if (v2)
  {
    v3 = v2;
    *v2 = 0u;
    v2[1] = 0u;
    if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, v2))
    {
      v5 = sub_100063A54();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100008384();
        _os_log_error_impl(v6, v7, v8, v9, v10, 8u);
      }

      v2 = 0;
    }

    else
    {
      v2 = [[NSData alloc] initWithBytesNoCopy:v3 length:32 freeWhenDone:1];
    }
  }

  return v2;
}

@end