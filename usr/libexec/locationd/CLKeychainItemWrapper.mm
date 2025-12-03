@interface CLKeychainItemWrapper
- (CLKeychainItemWrapper)initWithIdentifier:(id)identifier keyType:(__CFString *)type;
- (id)dictionaryToSecItemFormat:(id)format;
- (id)objectForKey:(id)key;
- (id)secItemFormatToDictionary:(id)dictionary;
- (void)dealloc;
- (void)initializeKeychainItemWithIdentifier:(id)identifier keyType:(__CFString *)type;
- (void)resetKeychainItem;
- (void)setObject:(id)object forKey:(id)key;
- (void)writeToKeychain;
@end

@implementation CLKeychainItemWrapper

- (CLKeychainItemWrapper)initWithIdentifier:(id)identifier keyType:(__CFString *)type
{
  v18.receiver = self;
  v18.super_class = CLKeychainItemWrapper;
  v6 = [(CLKeychainItemWrapper *)&v18 init];
  if (v6)
  {
    if (identifier)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018B4654();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        uTF8String = [identifier UTF8String];
        *buf = 68289539;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2081;
        v24 = uTF8String;
        v25 = 2113;
        typeCopy = type;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Initializing CLKeychainItemWrapper with identifier and key., identifier:%{private, location:escape_only}s, key:%{private, location:escape_only}@}", buf, 0x26u);
      }

      v9 = objc_opt_new();
      v6->_genericPasswordQuery = v9;
      [(NSMutableDictionary *)v9 setObject:kSecClassGenericPassword forKey:kSecClass];
      [(NSMutableDictionary *)v6->_genericPasswordQuery setObject:identifier forKey:type];
      [(NSMutableDictionary *)v6->_genericPasswordQuery setObject:kSecMatchLimitOne forKey:kSecMatchLimit];
      [(NSMutableDictionary *)v6->_genericPasswordQuery setObject:kCFBooleanTrue forKey:kSecReturnAttributes];
      result = 0;
      v10 = SecItemCopyMatching(v6->_genericPasswordQuery, &result);
      if (v10 == -25300)
      {
        goto LABEL_17;
      }

      v11 = v10;
      if (!v10)
      {
        v12 = [(CLKeychainItemWrapper *)v6 secItemFormatToDictionary:result];
        if (v12)
        {
          v6->_keychainItemData = v12;
LABEL_18:

          return v6;
        }

LABEL_17:
        [(CLKeychainItemWrapper *)v6 initializeKeychainItemWithIdentifier:identifier keyType:type];
        goto LABEL_18;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_1018B4654();
      }

      v14 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 1026;
        LODWORD(v24) = v11;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Initial query to CLKeychainItemWrapper failed, error:%{public}d}", buf, 0x18u);
        if (qword_1025D47A0 != -1)
        {
          sub_1018B4654();
        }
      }

      v15 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 1026;
        LODWORD(v24) = v11;
        _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Initial query to CLKeychainItemWrapper failed", "{msg%{public}.0s:Initial query to CLKeychainItemWrapper failed, error:%{public}d}", buf, 0x18u);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018B4654();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "nil identifier given to CLKeychainItemWrapper", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B467C();
      }
    }

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  self->_keychainItemData = 0;

  self->_genericPasswordQuery = 0;
  v3.receiver = self;
  v3.super_class = CLKeychainItemWrapper;
  [(CLKeychainItemWrapper *)&v3 dealloc];
}

- (void)setObject:(id)object forKey:(id)key
{
  if (object && ([-[CLKeychainItemWrapper objectForKey:](self objectForKey:{key), "isEqual:", object}] & 1) == 0)
  {
    [(NSMutableDictionary *)[(CLKeychainItemWrapper *)self keychainItemData] setObject:object forKey:key];

    [(CLKeychainItemWrapper *)self writeToKeychain];
  }
}

- (id)objectForKey:(id)key
{
  keychainItemData = [(CLKeychainItemWrapper *)self keychainItemData];

  return [(NSMutableDictionary *)keychainItemData objectForKey:key];
}

- (void)initializeKeychainItemWithIdentifier:(id)identifier keyType:(__CFString *)type
{
  [(CLKeychainItemWrapper *)self resetKeychainItem];
  keychainItemData = self->_keychainItemData;

  [(NSMutableDictionary *)keychainItemData setObject:identifier forKey:type];
}

- (void)resetKeychainItem
{
  if ([(CLKeychainItemWrapper *)self keychainItemData])
  {
    SecItemDelete([(CLKeychainItemWrapper *)self dictionaryToSecItemFormat:[(CLKeychainItemWrapper *)self keychainItemData]]);
    [(NSMutableDictionary *)[(CLKeychainItemWrapper *)self keychainItemData] removeAllObjects];
  }

  else
  {
    [(CLKeychainItemWrapper *)self setKeychainItemData:objc_opt_new()];
  }

  [(NSMutableDictionary *)[(CLKeychainItemWrapper *)self keychainItemData] setObject:@"com.apple.locationd" forKey:kSecAttrService];
  keychainItemData = [(CLKeychainItemWrapper *)self keychainItemData];

  [(NSMutableDictionary *)keychainItemData setObject:&stru_1025052F8 forKey:kSecValueData];
}

- (id)dictionaryToSecItemFormat:(id)format
{
  if (!format)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B4758();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "nil dictionary passed for converstion", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B4848();
    }

    return 0;
  }

  v4 = [NSMutableDictionary dictionaryWithDictionary:?];
  [(NSMutableDictionary *)v4 setObject:kSecClassGenericPassword forKey:kSecClass];
  v5 = [format objectForKey:kSecValueData];
  if (!v5)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B4758();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Conversion of dictionary without kSecValueData key requested.", v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B476C();
    }

    return 0;
  }

  -[NSMutableDictionary setObject:forKey:](v4, "setObject:forKey:", [v5 dataUsingEncoding:4], kSecValueData);
  return v4;
}

- (id)secItemFormatToDictionary:(id)dictionary
{
  if (!dictionary)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B4758();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "nil dictionary passed for retrieving keychain item", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B4A0C();
    }

    return 0;
  }

  v3 = [NSMutableDictionary dictionaryWithDictionary:?];
  [(NSMutableDictionary *)v3 setObject:kCFBooleanTrue forKey:kSecReturnData];
  [(NSMutableDictionary *)v3 setObject:kSecClassGenericPassword forKey:kSecClass];
  result = 0;
  v4 = SecItemCopyMatching(v3, &result);
  if (v4 == -25300)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B4654();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Expected keychain item not found.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4924();
    }

    return 0;
  }

  v5 = v4;
  if (v4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B4654();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v5;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to retrieve keychain item, error:%{public}d}", buf, 0x18u);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B4654();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to retrieve keychain item", "{msg%{public}.0s:Unable to retrieve keychain item, error:%{public}d}", buf, 0x18u);
    }

    return 0;
  }

  [(NSMutableDictionary *)v3 removeObjectForKey:kSecReturnData];
  v6 = [NSString alloc];
  v7 = [v6 initWithData:result encoding:4];
  [(NSMutableDictionary *)v3 setObject:v7 forKey:kSecValueData];

  return v3;
}

- (void)writeToKeychain
{
  result = 0;
  v3 = SecItemCopyMatching([(CLKeychainItemWrapper *)self genericPasswordQuery], &result);
  if (v3 == -25300)
  {
    v13 = SecItemAdd([(CLKeychainItemWrapper *)self dictionaryToSecItemFormat:[(CLKeychainItemWrapper *)self keychainItemData]], 0);
    if (v13)
    {
      v14 = v13;
      if (qword_1025D47A0 != -1)
      {
        sub_1018B4654();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 1026;
        v23 = v14;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't add the Keychain Item, error:%{public}d}", buf, 0x18u);
        if (qword_1025D47A0 != -1)
        {
          sub_1018B4654();
        }
      }

      v10 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 1026;
        v23 = v14;
        v11 = "Couldn't add the Keychain Item";
        v12 = "{msg%{public}.0s:Couldn't add the Keychain Item, error:%{public}d}";
        goto LABEL_26;
      }
    }
  }

  else
  {
    v4 = v3;
    if (v3)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018B4654();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 1026;
        v23 = v4;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't query for the Keychain Item to add, error:%{public}d}", buf, 0x18u);
        if (qword_1025D47A0 != -1)
        {
          sub_1018B4654();
        }
      }

      v10 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 1026;
        v23 = v4;
        v11 = "Couldn't query for the Keychain Item to add";
        v12 = "{msg%{public}.0s:Couldn't query for the Keychain Item to add, error:%{public}d}";
        goto LABEL_26;
      }
    }

    else
    {
      v5 = [NSMutableDictionary dictionaryWithDictionary:result];
      [(NSMutableDictionary *)v5 setObject:[(NSMutableDictionary *)[(CLKeychainItemWrapper *)self genericPasswordQuery] objectForKey:kSecClass] forKey:kSecClass];
      v6 = [(CLKeychainItemWrapper *)self dictionaryToSecItemFormat:[(CLKeychainItemWrapper *)self keychainItemData]];
      [v6 removeObjectForKey:kSecClass];
      v7 = SecItemUpdate(v5, v6);
      if (v7)
      {
        v8 = v7;
        if (qword_1025D47A0 != -1)
        {
          sub_1018B4654();
        }

        v9 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289282;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 1026;
          v23 = v8;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't update the Keychain Item, error:%{public}d}", buf, 0x18u);
          if (qword_1025D47A0 != -1)
          {
            sub_1018B4654();
          }
        }

        v10 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          *buf = 68289282;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 1026;
          v23 = v8;
          v11 = "Couldn't update the Keychain Item";
          v12 = "{msg%{public}.0s:Couldn't update the Keychain Item, error:%{public}d}";
LABEL_26:
          _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v11, v12, buf, 0x18u);
        }
      }
    }
  }
}

@end