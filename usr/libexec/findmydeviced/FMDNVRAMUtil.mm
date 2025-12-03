@interface FMDNVRAMUtil
+ (id)sharedInstance;
- (id)dataValueForKey:(id)key;
- (id)stringValueForKey:(id)key;
- (void)clearPropertyWithKey:(id)key;
- (void)setDataPropertyWithKey:(id)key value:(id)value;
- (void)setStringPropertyWithKey:(id)key value:(id)value;
@end

@implementation FMDNVRAMUtil

+ (id)sharedInstance
{
  if (qword_100314650 != -1)
  {
    sub_100228E90();
  }

  v3 = qword_100314648;

  return v3;
}

- (void)setStringPropertyWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = valueCopy;
  if (keyCopy && valueCopy)
  {
    v9 = [valueCopy dataUsingEncoding:4];
    [(FMDNVRAMUtil *)self setDataPropertyWithKey:keyCopy value:v9];
  }

  else
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = keyCopy;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#nvram - Cannot save NULL to NVRAM key %@ value %@", &v11, 0x16u);
    }
  }
}

- (id)stringValueForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(FMDNVRAMUtil *)self dataValueForKey:keyCopy];
    if (v5)
    {
      v6 = [[NSString alloc] initWithData:v5 encoding:4];
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = keyCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#nvram - retrieved string value %@ for key %@", &v9, 0x16u);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearPropertyWithKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v4 = +[NSData data];
    v5 = sub_100167298(keyCopy, v4);

    if (v5)
    {
      v6 = sub_100002880();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100228EA4(v5, v6);
      }
    }
  }
}

- (void)setDataPropertyWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v7 = valueCopy;
  if (!keyCopy || !valueCopy)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#nvram - Cannot save data since data or key is nil", v9, 2u);
    }

    goto LABEL_8;
  }

  if (sub_100167298(keyCopy, valueCopy))
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100228F1C(keyCopy, v7, v8);
    }

LABEL_8:
  }
}

- (id)dataValueForKey:(id)key
{
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy)
  {
    v13 = 0;
    v5 = sub_1001673C0(keyCopy, &v13);
    if (v5)
    {
      v6 = v5;
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100228FBC(v6, v7);
      }

      v8 = 0;
    }

    else
    {
      v8 = v13;
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v8)
        {
          v10 = @"(not-nil)";
        }

        else
        {
          v10 = @"(nil)";
        }

        v11 = [(__CFData *)v8 length];
        *buf = 138412802;
        v15 = v10;
        v16 = 2048;
        v17 = v11;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#nvram - read data value %@ of length %lu for key %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#nvram - nil key provided to retrieve data from nvram", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

@end