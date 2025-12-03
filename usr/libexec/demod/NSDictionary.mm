@interface NSDictionary
+ (NSDictionary)dictionaryWithXPCDictionary:(id)dictionary;
+ (id)dictionaryFromJsonData:(id)data;
+ (id)dictionaryFromXPCDictionary:(id)dictionary withDataFromKey:(const char *)key;
- (BOOL)saveAsDataInXPCDictionary:(id)dictionary forKey:(const char *)key;
- (NSDictionary)initWithXPCDictionary:(id)dictionary;
- (id)convertToNSData;
- (id)createXPCDictionary;
- (id)objectForKey:(id)key ofType:(Class)type;
@end

@implementation NSDictionary

+ (NSDictionary)dictionaryWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[NSDictionary alloc] initWithXPCDictionary:dictionaryCopy];

  return v4;
}

- (NSDictionary)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = sub_10008E324;
  v16[3] = sub_10008E334;
  v17 = +[NSMutableDictionary dictionary];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10008E33C;
  v12 = &unk_10016BAC8;
  v14 = &v15;
  selfCopy = self;
  v13 = selfCopy;
  if (xpc_dictionary_apply(dictionaryCopy, &v9))
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E08A8(v16, v6);
    }

    selfCopy = [(NSDictionary *)selfCopy initWithDictionary:*(v16[0] + 40), v9, v10, v11, v12];
    v7 = selfCopy;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (id)createXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  v5 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(NSDictionary *)selfCopy objectForKey:v9, v27];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          xpc_dictionary_set_string(v3, [v9 UTF8String], objc_msgSend(v10, "UTF8String"));
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            xpc_dictionary_set_data(v3, [v9 UTF8String], objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"));
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = v10;
              objCType = [v11 objCType];
              if (*objCType == 105 && !objCType[1] || (v13 = [v11 objCType], *v13 == 115) && !v13[1] || (v14 = [v11 objCType], *v14 == 113) && !v14[1] || (v15 = [v11 objCType], *v15 == 113) && !v15[1])
              {
                xpc_dictionary_set_int64(v3, [v9 UTF8String], -[NSObject longLongValue](v11, "longLongValue"));
              }

              else
              {
                objCType2 = [v11 objCType];
                if (*objCType2 == 102 && !objCType2[1] || (v17 = [v11 objCType], *v17 == 100) && !v17[1])
                {
                  uTF8String = [v9 UTF8String];
                  [v11 doubleValue];
                  xpc_dictionary_set_double(v3, uTF8String, v23);
                }

                else
                {
                  objCType3 = [v11 objCType];
                  if (*objCType3 != 66 || objCType3[1])
                  {
                    objCType4 = [v11 objCType];
                    if (*objCType4 != 99 || objCType4[1])
                    {
                      v25 = sub_100063A54();
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000E0A44(v11);
                      }

LABEL_41:
                      v24 = 0;
                      goto LABEL_42;
                    }
                  }

                  xpc_dictionary_set_BOOL(v3, [v9 UTF8String], -[NSObject BOOLValue](v11, "BOOLValue"));
                }
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v11 = sub_100063A54();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09A0();
                }

                goto LABEL_41;
              }

              uTF8String2 = [v9 UTF8String];
              [v10 timeIntervalSince1970];
              xpc_dictionary_set_date(v3, uTF8String2, v21);
            }
          }
        }
      }

      v6 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v24 = v3;
LABEL_42:

  return v24;
}

+ (id)dictionaryFromJsonData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E0C54();
    }

    goto LABEL_11;
  }

  v9 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v4)
  {
    sub_1000E0B90(v5);
LABEL_11:
    v7 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;

    v6 = v7;
  }

  else
  {
    sub_1000E0ACC(v4, v6);
    v7 = 0;
    v6 = v4;
  }

LABEL_5:

  return v7;
}

- (id)convertToNSData
{
  if ([NSJSONSerialization isValidJSONObject:self])
  {
    v8 = 0;
    v3 = [NSJSONSerialization dataWithJSONObject:self options:0 error:&v8];
    v4 = v8;
    v5 = v4;
    if (v3)
    {
      v6 = v3;

      v5 = v6;
      goto LABEL_4;
    }

    sub_1000E0D60(v4);
  }

  else
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E0CDC();
    }
  }

  v6 = 0;
LABEL_4:

  return v6;
}

+ (id)dictionaryFromXPCDictionary:(id)dictionary withDataFromKey:(const char *)key
{
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (key && (xpc_dictionary_get_value(dictionaryCopy, key), v8 = objc_claimAutoreleasedReturnValue(), (key = v8) != 0) && xpc_get_type(v8) == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(key);
    length = xpc_data_get_length(key);
    v11 = dispatch_get_global_queue(9, 0);
    destructor[0] = _NSConcreteStackBlock;
    destructor[1] = 3221225472;
    destructor[2] = nullsub_2;
    destructor[3] = &unk_100169B70;
    key = key;
    keyCopy = key;
    v12 = dispatch_data_create(bytes_ptr, length, v11, destructor);

    v13 = [self dictionaryFromJsonData:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)saveAsDataInXPCDictionary:(id)dictionary forKey:(const char *)key
{
  dictionaryCopy = dictionary;
  LOBYTE(v7) = 0;
  if (dictionaryCopy)
  {
    if (key)
    {
      convertToNSData = [(NSDictionary *)self convertToNSData];
      v7 = convertToNSData;
      if (convertToNSData)
      {
        _createDispatchData = [convertToNSData _createDispatchData];
        v10 = xpc_data_create_with_dispatch_data(_createDispatchData);

        xpc_dictionary_set_value(dictionaryCopy, key, v10);
        LOBYTE(v7) = 1;
      }
    }
  }

  return v7;
}

- (id)objectForKey:(id)key ofType:(Class)type
{
  v4 = [(NSDictionary *)self objectForKey:key];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end