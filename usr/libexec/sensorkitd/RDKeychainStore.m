@interface RDKeychainStore
- (BOOL)addToKeychainKey:(id)a3 withName:(id)a4 sensor:(id)a5;
- (BOOL)removeFromKeychain:(id)a3;
- (id)keyDataFromKeyChainWithName:(id)a3;
- (id)keyNamesForSensor:(id)a3;
@end

@implementation RDKeychainStore

- (BOOL)addToKeychainKey:(id)a3 withName:(id)a4 sensor:(id)a5
{
  v14[0] = kSecValueData;
  v14[1] = kSecAttrAccount;
  v15[0] = a3;
  v15[1] = a4;
  v14[2] = kSecAttrService;
  v14[3] = kSecClass;
  v15[2] = a5;
  v15[3] = kSecClassGenericPassword;
  v6 = SecItemAdd([NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4], 0);
  if (!v6)
  {
    goto LABEL_5;
  }

  if (v6 == -25299)
  {
    if (qword_1000719D0 == -1)
    {
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
      {
LABEL_5:
        LOBYTE(v8) = 1;
        return v8;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_5;
      }
    }

    v12 = 138543362;
    v13 = a4;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Key for %{public}@ already in keychain", &v12, 0xCu);
    LOBYTE(v8) = 1;
    return v8;
  }

  v9 = v6;
  if (qword_1000719D0 == -1)
  {
    v10 = qword_1000719D8;
    v8 = os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v10 = qword_1000719D8;
    v8 = os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      return v8;
    }
  }

  v12 = 138543362;
  v13 = SecCopyErrorMessageString(v9, 0);
  _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to store key in the keychain. %{public}@", &v12, 0xCu);
  LOBYTE(v8) = 0;
  return v8;
}

- (id)keyDataFromKeyChainWithName:(id)a3
{
  v14[0] = kSecClass;
  v14[1] = kSecMatchLimit;
  v15[0] = kSecClassGenericPassword;
  v15[1] = kSecMatchLimitOne;
  v14[2] = kSecAttrAccount;
  v14[3] = kSecReturnData;
  v15[2] = a3;
  v15[3] = &__kCFBooleanTrue;
  result = 0;
  v4 = SecItemCopyMatching([NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4], &result);
  if (v4)
  {
    v5 = v4;
    if (qword_1000719D0 == -1)
    {
      v6 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v6 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }
    }

    v7 = SecCopyErrorMessageString(v5, 0);
    *buf = 138543618;
    v11 = a3;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to find key matching %{public}@. %{public}@", buf, 0x16u);
    return 0;
  }

  return result;
}

- (BOOL)removeFromKeychain:(id)a3
{
  v14[0] = kSecClass;
  v14[1] = kSecAttrAccount;
  v15[0] = kSecClassGenericPassword;
  v15[1] = a3;
  v4 = SecItemDelete([NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2]);
  if (!v4)
  {
    return 1;
  }

  if (v4 != -25300)
  {
    v7 = v4;
    if (qword_1000719D0 == -1)
    {
      v8 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v8 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    v10 = 138543618;
    v11 = a3;
    v12 = 2114;
    v13 = SecCopyErrorMessageString(v7, 0);
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to find key matching %{public}@. %{public}@", &v10, 0x16u);
    return 0;
  }

  if (qword_1000719D0 != -1)
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
  }

  v5 = qword_1000719D8;
  v6 = 1;
  if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Key %{public}@ not found in keychain", &v10, 0xCu);
  }

  return v6;
}

- (id)keyNamesForSensor:(id)a3
{
  v30[0] = kSecClass;
  v30[1] = kSecMatchLimit;
  v31[0] = kSecClassGenericPassword;
  v31[1] = kSecMatchLimitAll;
  v30[2] = kSecAttrService;
  v30[3] = kSecReturnAttributes;
  v31[2] = a3;
  v31[3] = &__kCFBooleanTrue;
  result = 0;
  v4 = SecItemCopyMatching([NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4], &result);
  if (v4)
  {
    if (v4 == -25300)
    {
      if (qword_1000719D0 == -1)
      {
        v5 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
        {
          return &__NSArray0__struct;
        }
      }

      else
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
        v5 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
        {
          return &__NSArray0__struct;
        }
      }

      *buf = 138543362;
      v27 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "No keys found for sensor %{public}@", buf, 0xCu);
      return &__NSArray0__struct;
    }

    v13 = v4;
    if (qword_1000719D0 == -1)
    {
      v14 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return &__NSArray0__struct;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v14 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return &__NSArray0__struct;
      }
    }

    v15 = SecCopyErrorMessageString(v13, 0);
    *buf = 138543618;
    v27 = a3;
    v28 = 2114;
    v29 = v15;
    v16 = "Failed to find keys for sensor %{public}@ because %{public}@";
    v17 = v14;
LABEL_27:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
    return &__NSArray0__struct;
  }

  v6 = CFGetTypeID(result);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(result);
    if (qword_1000719D0 == -1)
    {
      v18 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return &__NSArray0__struct;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v18 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return &__NSArray0__struct;
      }
    }

    *buf = 134218242;
    v27 = v6;
    v28 = 2114;
    v29 = a3;
    v16 = "Expecting CFArrayTypeID but got %lu when searching for keys for %{public}@";
    v17 = v18;
    goto LABEL_27;
  }

  v7 = result;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        -[NSMutableArray addObject:](v8, "addObject:", [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:kSecAttrAccount]);
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  return [NSArray arrayWithArray:v8];
}

@end