@interface EPKeychain
+ (BOOL)keyExistsInKeychain:(id)keychain keychainGroup:(id)group attributes:(id)attributes;
+ (BOOL)newKeysWithName:(id)name;
+ (BOOL)storeKeyWithData:(id)data name:(id)name keychainGroup:(id)group;
+ (BOOL)storeWatchTransferData:(id)data watchIdentifier:(id)identifier;
+ (id)keyAttributesWithName:(id)name keychainGroup:(id)group;
+ (id)removeKeyWithName:(id)name keychainGroup:(id)group;
+ (id)removeKeyWithName:(id)name keychainGroup:(id)group attributes:(id)attributes;
+ (id)retrieveKeyWithName:(id)name keychainGroup:(id)group;
+ (id)retrieveKeyWithName:(id)name keychainGroup:(id)group attributes:(id)attributes;
+ (id)retrieveWatchTransferData;
+ (id)storeKey:(id)key keychainGroup:(id)group;
+ (void)removeWatchTransferDataForWatchWithIdentifier:(id)identifier;
@end

@implementation EPKeychain

+ (id)keyAttributesWithName:(id)name keychainGroup:(id)group
{
  nameCopy = name;
  v11[0] = kSecAttrLabel;
  groupCopy = group;
  v7 = [NSString stringWithFormat:@"%@.%@", @"com.apple.nanoregistry", @"migration"];
  v12[0] = v7;
  v12[1] = groupCopy;
  v11[1] = kSecAttrAccessGroup;
  v11[2] = kSecClass;
  v12[2] = kSecClassGenericPassword;
  v12[3] = kSecAttrViewHintNanoRegistry;
  v11[3] = kSecAttrSyncViewHint;
  v11[4] = kSecAttrSynchronizable;
  v11[5] = kSecAttrAccessible;
  v12[4] = kCFBooleanTrue;
  v12[5] = kSecAttrAccessibleWhenUnlocked;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];

  v9 = [v8 mutableCopy];
  if (nameCopy && ([nameCopy isEqual:@"migration"] & 1) == 0)
  {
    [v9 setObject:nameCopy forKeyedSubscript:kSecAttrAccount];
  }

  return v9;
}

+ (id)removeKeyWithName:(id)name keychainGroup:(id)group
{
  groupCopy = group;
  nameCopy = name;
  v7 = objc_opt_class();
  v8 = [objc_opt_class() keyAttributesWithName:nameCopy keychainGroup:groupCopy];
  v9 = [v8 mutableCopy];
  v10 = [v7 removeKeyWithName:nameCopy keychainGroup:groupCopy attributes:v9];

  return v10;
}

+ (id)removeKeyWithName:(id)name keychainGroup:(id)group attributes:(id)attributes
{
  nameCopy = name;
  v7 = SecItemDelete(attributes);
  v8 = nr_framework_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (v9)
    {
      v10 = nr_framework_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v18 = nameCopy;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPKeychain: Failed to delete keys for device %{public}@ from keychain, error code %ld", buf, 0x16u);
      }
    }

    v11 = v7;
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Failed to delete key from keychain";
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.NanoRegistry" code:v11 userInfo:v12];
LABEL_11:

    goto LABEL_12;
  }

  if (v9)
  {
    v12 = nr_framework_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = nameCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPKeychain: Deleted keys for device %{public}@ from keychain", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (BOOL)newKeysWithName:(id)name
{
  nameCopy = name;
  v5 = [objc_opt_class() removeKeyWithName:nameCopy keychainGroup:@"com.apple.nanoregistry.migration"];
  v6 = [objc_opt_class() removeKeyWithName:@"migration" keychainGroup:@"com.apple.nanoregistry.migration"];
  v7 = [objc_opt_class() removeKeyWithName:nameCopy keychainGroup:@"com.apple.nanoregistry.migration2"];
  if (!SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes))
  {
    v10 = [NSData dataWithBytes:bytes length:32];
    if (v10)
    {
      v11 = nr_daemon_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = nr_daemon_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          sHA256Data = [v10 SHA256Data];
          v15 = [sHA256Data base64EncodedStringWithOptions:0];
          v16 = [v15 substringToIndex:6];
          v25 = 138412290;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPKeychain: newKeysWithName created key, digest %@", &v25, 0xCu);
        }
      }
    }

    v17 = [EPKey keyFromData:v10];
    data = [v17 data];
    v19 = [self storeKeyWithData:data name:nameCopy keychainGroup:@"com.apple.nanoregistry.migration2"];

    v9 = v19 & [self storeKeyWithData:v10 name:@"migration" keychainGroup:@"com.apple.nanoregistry.migration2"];
    if (v9 == 1)
    {
      v20 = nr_framework_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v22 = nr_framework_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = sub_1000FDEC4(v17);
          v25 = 138543618;
          v26 = nameCopy;
          v27 = 2048;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EPKeychain: Keys generated and stored for %{public}@ version %lx", &v25, 0x16u);
        }
      }
    }

    goto LABEL_17;
  }

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100105534();
    }

    LOBYTE(v9) = 0;
LABEL_17:
  }

  return v9;
}

+ (BOOL)storeKeyWithData:(id)data name:(id)name keychainGroup:(id)group
{
  dataCopy = data;
  groupCopy = group;
  nameCopy = name;
  v10 = [dataCopy base64EncodedDataWithOptions:0];
  v11 = [objc_opt_class() keyAttributesWithName:nameCopy keychainGroup:groupCopy];

  v12 = [v11 mutableCopy];
  [v12 setObject:v10 forKeyedSubscript:kSecValueData];
  v13 = SecItemAdd(v12, 0);
  v14 = nr_daemon_log();
  v15 = v14;
  if (v13)
  {
    v16 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v17 = nr_daemon_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100105568();
      }

LABEL_8:
    }
  }

  else
  {
    v18 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v17 = nr_daemon_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134217984;
        v21 = [dataCopy length];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EPKeychain: storeKeyWithData stored key, length %ld", &v20, 0xCu);
      }

      goto LABEL_8;
    }
  }

  return v13 == 0;
}

+ (id)retrieveKeyWithName:(id)name keychainGroup:(id)group
{
  groupCopy = group;
  nameCopy = name;
  v7 = objc_opt_class();
  v8 = [objc_opt_class() keyAttributesWithName:nameCopy keychainGroup:groupCopy];
  v9 = [v8 mutableCopy];
  v10 = [v7 retrieveKeyWithName:nameCopy keychainGroup:groupCopy attributes:v9];

  return v10;
}

+ (id)retrieveKeyWithName:(id)name keychainGroup:(id)group attributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  [attributesCopy setObject:kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  [attributesCopy setObject:kSecMatchLimitOne forKeyedSubscript:kSecMatchLimit];
  result = 0;
  v8 = SecItemCopyMatching(attributesCopy, &result);

  v9 = result;
  if (!result || v8)
  {
    v15 = nr_framework_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (!v16)
    {
      v14 = 0;
      goto LABEL_20;
    }

    v10 = nr_framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10010564C();
    }

    v14 = 0;
  }

  else
  {
    v10 = [[NSData alloc] initWithBase64EncodedData:result options:0];
    if (v10)
    {
      v11 = nr_daemon_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = nr_daemon_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = nameCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPKeychain: retrieveKeyWithName retrieved key %@", buf, 0xCu);
        }
      }

      v10 = v10;
      v14 = v10;
    }

    else
    {
      v17 = nr_framework_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        v19 = nr_framework_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1001055D8();
        }
      }

      v14 = 0;
    }
  }

LABEL_20:

  return v14;
}

+ (BOOL)keyExistsInKeychain:(id)keychain keychainGroup:(id)group attributes:(id)attributes
{
  keychainCopy = keychain;
  attributesCopy = attributes;
  [attributesCopy setObject:kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  [attributesCopy setObject:kSecMatchLimitOne forKeyedSubscript:kSecMatchLimit];
  result = 0;
  v8 = SecItemCopyMatching(attributesCopy, &result);

  if (v8)
  {
    v9 = nr_framework_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = nr_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001056C4();
      }
    }
  }

  return v8 == 0;
}

+ (id)storeKey:(id)key keychainGroup:(id)group
{
  groupCopy = group;
  v21[0] = kSecAttrLabel;
  v5 = [NSString stringWithFormat:@"%@.%@", @"com.apple.nanoregistry", @"watchgraduation"];
  v22[0] = v5;
  v22[1] = groupCopy;
  v21[1] = kSecAttrAccessGroup;
  v21[2] = kSecClass;
  v22[2] = kSecClassGenericPassword;
  v22[3] = kCFBooleanTrue;
  v21[3] = kSecAttrSynchronizable;
  v21[4] = kSecAttrAccessible;
  v22[4] = kSecAttrAccessibleAfterFirstUnlock;
  v6 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
  v7 = [v6 mutableCopy];

  v8 = SecItemAdd(v7, 0);
  v9 = nr_daemon_log();
  v10 = v9;
  if (v8)
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100105568();
      }
    }

    v13 = v8;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"Failed to Store Key in keychain";
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.NanoRegistry" code:v13 userInfo:v14];
LABEL_11:

    goto LABEL_12;
  }

  v16 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v14 = nr_daemon_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPKeychain: storeKeyWithData stored key", buf, 2u);
    }

    v15 = 0;
    goto LABEL_11;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

+ (BOOL)storeWatchTransferData:(id)data watchIdentifier:(id)identifier
{
  dataCopy = data;
  v19[0] = kSecAttrAccessGroup;
  identifierCopy = identifier;
  v7 = [NSString stringWithFormat:@"%@.%@", @"com.apple.nanoregistry", @"watchtransfer"];
  v20[0] = v7;
  v20[1] = kSecClassGenericPassword;
  v19[1] = kSecClass;
  v19[2] = kSecAttrSyncViewHint;
  v20[2] = kSecAttrViewHintNanoRegistry;
  v20[3] = kCFBooleanTrue;
  v19[3] = kSecAttrSynchronizable;
  v19[4] = kSecAttrAccessible;
  v19[5] = kSecAttrAccount;
  v20[4] = kSecAttrAccessibleAfterFirstUnlock;
  v20[5] = identifierCopy;
  v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:6];

  v9 = [v8 mutableCopy];
  [v9 setObject:dataCopy forKeyedSubscript:kSecValueData];
  v10 = SecItemAdd(v9, 0);
  v11 = nr_daemon_log();
  v12 = v11;
  if (v10)
  {
    v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10010573C();
      }

LABEL_8:
    }
  }

  else
  {
    v15 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = [dataCopy length];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPKeychain: stored watch transfer data with length %ld", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  return v10 == 0;
}

+ (id)retrieveWatchTransferData
{
  v37[0] = kSecAttrAccessGroup;
  v2 = [NSString stringWithFormat:@"%@.%@", @"com.apple.nanoregistry", @"watchtransfer"];
  v38[0] = v2;
  v38[1] = kSecClassGenericPassword;
  v37[1] = kSecClass;
  v37[2] = kSecAttrSyncViewHint;
  v38[2] = kSecAttrViewHintNanoRegistry;
  v38[3] = kCFBooleanTrue;
  v37[3] = kSecAttrSynchronizable;
  v37[4] = kSecAttrAccessible;
  v38[4] = kSecAttrAccessibleAfterFirstUnlock;
  v38[5] = kCFBooleanTrue;
  v37[5] = kSecReturnData;
  v37[6] = kSecMatchLimit;
  v38[6] = kSecMatchLimitAll;
  v3 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:7];

  result = 0;
  v4 = SecItemCopyMatching(v3, &result);
  if (v4 == -25300)
  {
    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v26 = nr_daemon_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "EPKeychain: no watch transfer data in account", buf, 2u);
      }
    }

    goto LABEL_28;
  }

  if (v4)
  {
    v27 = nr_daemon_log();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

    if (v28)
    {
      v29 = nr_daemon_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1001057E0();
      }
    }

LABEL_28:
    v11 = 0;
    goto LABEL_35;
  }

  v5 = CFGetTypeID(result);
  TypeID = CFArrayGetTypeID();
  v7 = nr_daemon_log();
  v8 = v7;
  if (v5 == TypeID)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPKeychain: transfer data is an array!", buf, 2u);
      }
    }

    v11 = objc_alloc_init(NSMutableArray);
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; v13 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(result, i);
        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 == CFDataGetTypeID())
        {
          v17 = [ValueAtIndex copy];
          [v11 addObject:v17];

          v18 = nr_daemon_log();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

          if (v19)
          {
            v20 = nr_daemon_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              lastObject = [v11 lastObject];
              *buf = 138412290;
              v36 = lastObject;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EPKeychain: added data %@", buf, 0xCu);
            }

LABEL_17:
          }
        }

        else
        {
          v22 = nr_daemon_log();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

          if (v23)
          {
            v20 = nr_daemon_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EPKeychain: dataRef isn't CFData???", buf, 2u);
            }

            goto LABEL_17;
          }
        }
      }
    }
  }

  else
  {
    v30 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v30)
    {
      v31 = nr_daemon_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1001057AC();
      }
    }

    v11 = 0;
  }

  CFRelease(result);
LABEL_35:
  v32 = [v11 copy];

  return v32;
}

+ (void)removeWatchTransferDataForWatchWithIdentifier:(id)identifier
{
  v19[0] = kSecAttrAccessGroup;
  identifierCopy = identifier;
  v4 = [NSString stringWithFormat:@"%@.%@", @"com.apple.nanoregistry", @"watchtransfer"];
  v20[0] = v4;
  v20[1] = kSecClassGenericPassword;
  v19[1] = kSecClass;
  v19[2] = kSecAttrSyncViewHint;
  v20[2] = kSecAttrViewHintNanoRegistry;
  v20[3] = kCFBooleanTrue;
  v19[3] = kSecAttrSynchronizable;
  v19[4] = kSecAttrAccessible;
  v19[5] = kSecAttrAccount;
  v20[4] = kSecAttrAccessibleAfterFirstUnlock;
  v20[5] = identifierCopy;
  v5 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:6];

  v6 = SecItemDelete(v5);
  if (v6 == -25300)
  {
    v11 = nr_daemon_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "EPKeychain: watch transfer data not present";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  else if (v6)
  {
    v13 = SecCopyErrorMessageString(v6, 0);
    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      if (v15)
      {
        v16 = nr_daemon_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100105850();
        }
      }

      CFRelease(v13);
    }

    else if (v15)
    {
      v17 = nr_daemon_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001058C0();
      }
    }
  }

  else
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "EPKeychain: successfully removed transfer data";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }
}

@end