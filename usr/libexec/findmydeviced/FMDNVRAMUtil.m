@interface FMDNVRAMUtil
+ (id)sharedInstance;
- (id)dataValueForKey:(id)a3;
- (id)stringValueForKey:(id)a3;
- (void)clearPropertyWithKey:(id)a3;
- (void)setDataPropertyWithKey:(id)a3 value:(id)a4;
- (void)setStringPropertyWithKey:(id)a3 value:(id)a4;
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

- (void)setStringPropertyWithKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 dataUsingEncoding:4];
    [(FMDNVRAMUtil *)self setDataPropertyWithKey:v6 value:v9];
  }

  else
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#nvram - Cannot save NULL to NVRAM key %@ value %@", &v11, 0x16u);
    }
  }
}

- (id)stringValueForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(FMDNVRAMUtil *)self dataValueForKey:v4];
    if (v5)
    {
      v6 = [[NSString alloc] initWithData:v5 encoding:4];
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v4;
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

- (void)clearPropertyWithKey:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[NSData data];
    v5 = sub_100167298(v3, v4);

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

- (void)setDataPropertyWithKey:(id)a3 value:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#nvram - Cannot save data since data or key is nil", v9, 2u);
    }

    goto LABEL_8;
  }

  if (sub_100167298(v5, v6))
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100228F1C(v5, v7, v8);
    }

LABEL_8:
  }
}

- (id)dataValueForKey:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v13 = 0;
    v5 = sub_1001673C0(v3, &v13);
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