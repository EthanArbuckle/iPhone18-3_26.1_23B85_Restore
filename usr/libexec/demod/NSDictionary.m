@interface NSDictionary
+ (NSDictionary)dictionaryWithXPCDictionary:(id)a3;
+ (id)dictionaryFromJsonData:(id)a3;
+ (id)dictionaryFromXPCDictionary:(id)a3 withDataFromKey:(const char *)a4;
- (BOOL)saveAsDataInXPCDictionary:(id)a3 forKey:(const char *)a4;
- (NSDictionary)initWithXPCDictionary:(id)a3;
- (id)convertToNSData;
- (id)createXPCDictionary;
- (id)objectForKey:(id)a3 ofType:(Class)a4;
@end

@implementation NSDictionary

+ (NSDictionary)dictionaryWithXPCDictionary:(id)a3
{
  v3 = a3;
  v4 = [[NSDictionary alloc] initWithXPCDictionary:v3];

  return v4;
}

- (NSDictionary)initWithXPCDictionary:(id)a3
{
  v4 = a3;
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
  v5 = self;
  v13 = v5;
  if (xpc_dictionary_apply(v4, &v9))
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E08A8(v16, v6);
    }

    v5 = [(NSDictionary *)v5 initWithDictionary:*(v16[0] + 40), v9, v10, v11, v12];
    v7 = v5;
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
  v4 = self;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(NSDictionary *)v4 objectForKey:v9, v27];
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
              v12 = [v11 objCType];
              if (*v12 == 105 && !v12[1] || (v13 = [v11 objCType], *v13 == 115) && !v13[1] || (v14 = [v11 objCType], *v14 == 113) && !v14[1] || (v15 = [v11 objCType], *v15 == 113) && !v15[1])
              {
                xpc_dictionary_set_int64(v3, [v9 UTF8String], -[NSObject longLongValue](v11, "longLongValue"));
              }

              else
              {
                v16 = [v11 objCType];
                if (*v16 == 102 && !v16[1] || (v17 = [v11 objCType], *v17 == 100) && !v17[1])
                {
                  v22 = [v9 UTF8String];
                  [v11 doubleValue];
                  xpc_dictionary_set_double(v3, v22, v23);
                }

                else
                {
                  v18 = [v11 objCType];
                  if (*v18 != 66 || v18[1])
                  {
                    v19 = [v11 objCType];
                    if (*v19 != 99 || v19[1])
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

              v20 = [v9 UTF8String];
              [v10 timeIntervalSince1970];
              xpc_dictionary_set_date(v3, v20, v21);
            }
          }
        }
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
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

+ (id)dictionaryFromJsonData:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E0C54();
    }

    goto LABEL_11;
  }

  v9 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v9];
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

+ (id)dictionaryFromXPCDictionary:(id)a3 withDataFromKey:(const char *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 && (xpc_dictionary_get_value(v6, a4), v8 = objc_claimAutoreleasedReturnValue(), (a4 = v8) != 0) && xpc_get_type(v8) == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a4);
    length = xpc_data_get_length(a4);
    v11 = dispatch_get_global_queue(9, 0);
    destructor[0] = _NSConcreteStackBlock;
    destructor[1] = 3221225472;
    destructor[2] = nullsub_2;
    destructor[3] = &unk_100169B70;
    a4 = a4;
    v16 = a4;
    v12 = dispatch_data_create(bytes_ptr, length, v11, destructor);

    v13 = [a1 dictionaryFromJsonData:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)saveAsDataInXPCDictionary:(id)a3 forKey:(const char *)a4
{
  v6 = a3;
  LOBYTE(v7) = 0;
  if (v6)
  {
    if (a4)
    {
      v8 = [(NSDictionary *)self convertToNSData];
      v7 = v8;
      if (v8)
      {
        v9 = [v8 _createDispatchData];
        v10 = xpc_data_create_with_dispatch_data(v9);

        xpc_dictionary_set_value(v6, a4, v10);
        LOBYTE(v7) = 1;
      }
    }
  }

  return v7;
}

- (id)objectForKey:(id)a3 ofType:(Class)a4
{
  v4 = [(NSDictionary *)self objectForKey:a3];
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