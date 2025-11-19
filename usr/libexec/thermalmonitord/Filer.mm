@interface Filer
+ (BOOL)writeDictionary:(id)a3 toFile:(id)a4;
+ (id)copyDictionaryFromFile:(id)a3;
- (Filer)initWithFileName:(char *)a3 inDirectory:(char *)a4;
- (id)copyDictionaryFromFile;
- (id)copyValuesForKeys:(id)a3;
- (void)dealloc;
- (void)setMultiple:(id)a3 remove:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation Filer

+ (BOOL)writeDictionary:(id)a3 toFile:(id)a4
{
  v11 = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [NSOutputStream outputStreamToFileAtPath:a4 append:0];
  [(NSOutputStream *)v7 open];
  v8 = [NSPropertyListSerialization writePropertyList:a3 toStream:v7 format:200 options:0 error:&v11];
  [(NSOutputStream *)v7 close];
  if (v8)
  {
    if (byte_1000AB2F8 == 1)
    {
      v9 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v13 = v8;
        v14 = 2112;
        v15 = a4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> Wrote %ld bytes to file %@", buf, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057790(a4, &v11);
  }

  objc_autoreleasePoolPop(v6);
  return v8 != 0;
}

+ (id)copyDictionaryFromFile:(id)a3
{
  v10 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = [NSInputStream inputStreamWithFileAtPath:a3];
  [(NSInputStream *)v5 open];
  v6 = [NSPropertyListSerialization propertyListWithStream:v5 options:2 format:0 error:&v10];
  [(NSInputStream *)v5 close];
  if (!v6)
  {
    sub_1000578AC(a3, &v10);
LABEL_9:
    v7 = *buf;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_100057810();
    goto LABEL_9;
  }

  v7 = v6;
  if (byte_1000AB2F8 == 1)
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Successfully Read from file %@.", buf, 0xCu);
    }
  }

LABEL_6:
  objc_autoreleasePoolPop(v4);
  return v7;
}

- (id)copyDictionaryFromFile
{
  v2 = [NSMutableDictionary dictionaryWithDictionary:self->_fileDict];

  return v2;
}

- (id)copyValuesForKeys:(id)a3
{
  v5 = [+[NSMutableDictionary init](NSMutableDictionary alloc];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(Filer *)self getValueForKey:v10];
        if (v11)
        {
          [(NSMutableDictionary *)v5 setObject:v11 forKey:v10];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)setMultiple:(id)a3 remove:(id)a4
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(a3);
        }

        -[Filer setValue:forKey:](self, "setValue:forKey:", [a3 objectForKey:*(*(&v19 + 1) + 8 * v10)], *(*(&v19 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = [a4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(a4);
        }

        [(Filer *)self setValue:0 forKey:*(*(&v15 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [a4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  fileDict = self->_fileDict;
  if (a3)
  {
    [(NSMutableDictionary *)fileDict setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)fileDict removeObjectForKey:a4];
  }
}

- (Filer)initWithFileName:(char *)a3 inDirectory:(char *)a4
{
  v4 = 0;
  v17 = xmmword_1000678E0;
  if (a3 && a4)
  {
    v19 = 0;
    memset(v24, 0, sizeof(v24));
    v18 = 0;
    v8 = objc_autoreleasePoolPush();
    v16.receiver = self;
    v16.super_class = Filer;
    v4 = [(Filer *)&v16 init];
    if (!v4)
    {
LABEL_8:
      objc_autoreleasePoolPop(v8);
      return v4;
    }

    v9 = [NSString stringWithUTF8String:a3];
    v10 = [NSString stringWithUTF8String:a4];
    v11 = +[NSFileManager defaultManager];
    if (gethostuuid(v24, &v17))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100057960();
      }

LABEL_7:

      v4 = 0;
      goto LABEL_8;
    }

    v4->_path = [NSString stringWithFormat:@"%@/%@.%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X.plist", v10, v9, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15]];
    p_path = &v4->_path;
    if ([(NSFileManager *)v11 fileExistsAtPath:v10 isDirectory:&v19])
    {
      if ((v19 & 1) == 0)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100057AC0();
        }

        goto LABEL_7;
      }
    }

    else if (![(NSFileManager *)v11 createDirectoryAtPath:v10 withIntermediateDirectories:0 attributes:0 error:&v18])
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000579D0(&v18);
      }

      goto LABEL_7;
    }

    if ([(NSFileManager *)v11 fileExistsAtPath:*p_path isDirectory:&v19])
    {
      if (v19)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100057A48(&v4->_path);
        }

        goto LABEL_7;
      }

      v20 = NSFilePosixPermissions;
      v21 = &off_10008D398;
      [(NSFileManager *)v11 setAttributes:[NSDictionary dictionaryWithObjects:&v20 forKeys:1 count:?], *p_path, &v18];
    }

    else
    {
      v14 = *p_path;
      v22 = NSFilePosixPermissions;
      v23 = &off_10008D398;
      [(NSFileManager *)v11 createFileAtPath:v14 contents:0 attributes:[NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1]];
    }

    v15 = [Filer copyDictionaryFromFile:v4->_path];
    v4->_fileDict = v15;
    if (!v15)
    {
      v4->_fileDict = objc_alloc_init(NSMutableDictionary);
    }

    goto LABEL_8;
  }

  return v4;
}

- (void)dealloc
{
  self->_path = 0;

  self->_fileDict = 0;
  v3.receiver = self;
  v3.super_class = Filer;
  [(Filer *)&v3 dealloc];
}

@end