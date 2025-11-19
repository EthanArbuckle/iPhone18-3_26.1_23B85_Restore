@interface LTSStatsStore
+ (BOOL)writeDictionary:(id)a3 toFile:(id)a4;
+ (id)getBootUUID;
+ (id)getPrevStatsSinceBoot;
+ (id)readFromFile:(id)a3;
+ (void)saveStatsSinceBoot:(id)a3;
- (id)getDeviceSerialNumber;
- (id)getLifetimeStats;
- (id)getLifetimeStatsForVersion:(unint64_t)a3;
- (id)getfileNameForChannel:(id)a3;
- (id)initForChannel:(id)a3;
- (void)saveLifetimeStats:(id)a3 forVersion:(unint64_t)a4;
- (void)setChannelExistsForChannel:(id)a3;
@end

@implementation LTSStatsStore

- (id)getfileNameForChannel:(id)a3
{
  v4 = off_100014948;
  v5 = 14;
  while (![a3 isEqualToString:*(v4 - 1)])
  {
    v4 += 4;
    if (!--v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = *v4;
LABEL_6:

  return v6;
}

- (void)setChannelExistsForChannel:(id)a3
{
  v4 = off_100014940;
  v5 = 14;
  while (![a3 isEqualToString:*v4])
  {
    v4 += 4;
    if (!--v5)
    {
      return;
    }
  }

  *(v4 + 24) = 1;
}

- (id)getDeviceSerialNumber
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    if (![v2 length] && os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
    {
      sub_100007FD8();
    }
  }

  else
  {
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
    {
      sub_10000800C();
    }

    v3 = +[NSString string];
  }

  return v3;
}

- (id)initForChannel:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LTSStatsStore;
  v5 = [(LTSStatsStore *)&v20 init];
  [(LTSStatsStore *)v5 setChannelExistsForChannel:v4];
  v6 = [(LTSStatsStore *)v5 getfileNameForChannel:v4];
  fileName = v5->_fileName;
  v5->_fileName = v6;

  if (v5->_fileName)
  {
    v8 = [(LTSStatsStore *)v5 getDeviceSerialNumber];
    v9 = [LTSStatsStore readFromFile:v5->_fileName];
    lts = v5->_lts;
    v5->_lts = v9;

    v11 = v5->_lts;
    if (v11)
    {
      v12 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:@"Serial"];
      v13 = v12;
      if (!v12 || [v12 compare:v8])
      {
        if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
        {
          sub_100008040();
        }

        v14 = +[NSMutableDictionary dictionary];
        v15 = v5->_lts;
        v5->_lts = v14;

        [(NSMutableDictionary *)v5->_lts setObject:v8 forKeyedSubscript:@"Serial"];
      }
    }

    else
    {
      v16 = +[NSMutableDictionary dictionary];
      v17 = v5->_lts;
      v5->_lts = v16;

      [(NSMutableDictionary *)v5->_lts setObject:v8 forKeyedSubscript:@"Serial"];
    }

    if (v5->_lts)
    {
      v18 = v5;
    }

    else
    {
      sub_100008074();
      v18 = 0;
    }
  }

  else
  {
    sub_100008114();
    v18 = v21;
  }

  return v18;
}

+ (BOOL)writeDictionary:(id)a3 toFile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSMutableString stringWithString:@"/var/db/SoC/"];
  v8 = +[NSFileManager defaultManager];
  v26 = 0;
  [v7 appendString:v6];
  v29 = NSFileProtectionKey;
  v30 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v9 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v25 = 0;
  [v8 createDirectoryAtPath:@"/var/db/SoC/" withIntermediateDirectories:0 attributes:v9 error:&v25];
  v10 = v25;

  if ([v8 fileExistsAtPath:@"/var/db/SoC/" isDirectory:&v26] && v26 == 1)
  {
    [NSOutputStream outputStreamToFileAtPath:v7 append:0];
    v12 = v11 = v5;
    [v12 open];
    v24 = 0;
    v21 = v11;
    v13 = [NSPropertyListSerialization writePropertyList:v11 toStream:v12 format:200 options:0 error:&v24];
    v14 = v24;

    v22 = v12;
    [v12 close];
    if (v13)
    {
      v27 = NSFileProtectionKey;
      v28 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v23 = v14;
      v16 = [v8 setAttributes:v15 ofItemAtPath:v7 error:&v23];
      v17 = v23;

      v18 = off_100014B00;
      if (v16)
      {
        v5 = v21;
        if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_DEBUG))
        {
          sub_100008284(v7, v13, v18);
        }

        v19 = 1;
      }

      else
      {
        v5 = v21;
        if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
        {
          sub_10000821C();
        }

        v19 = 0;
      }

      v14 = v17;
    }

    else
    {
      if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
      {
        sub_1000082FC();
      }

      v19 = 0;
      v5 = v21;
    }

    v10 = v14;
  }

  else
  {
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
    {
      sub_1000081B4();
    }

    v19 = 0;
  }

  return v19;
}

+ (id)readFromFile:(id)a3
{
  v3 = a3;
  v4 = [NSMutableString stringWithString:@"/var/db/SoC/"];
  [v4 appendString:v3];

  v5 = [NSInputStream inputStreamWithFileAtPath:v4];
  [v5 open];
  v16 = 0;
  v6 = [NSPropertyListSerialization propertyListWithStream:v5 options:2 format:0 error:&v16];
  v7 = v16;
  [v5 close];
  v8 = off_100014B00;
  if (v6)
  {
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_DEBUG))
    {
      sub_100008364(v4, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
  {
    sub_1000083D0();
  }

  return v6;
}

- (id)getLifetimeStats
{
  v3 = [(NSMutableDictionary *)self->_lts objectForKeyedSubscript:@"LifetimeStats"];
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_DEBUG))
  {
    sub_100008438(self);
  }

  return v3;
}

- (id)getLifetimeStatsForVersion:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_lts objectForKeyedSubscript:@"version"];
  v6 = v5;
  if (v5 && [(NSString *)v5 unsignedLongLongValue]== a3)
  {
    v7 = [(LTSStatsStore *)self getLifetimeStats];
    v8 = [NSMutableDictionary dictionaryWithDictionary:v7];
    v9 = v8;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = off_100014B00;
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
    {
      fileName = self->_fileName;
      v15 = 138543874;
      v16 = v6;
      v17 = 2048;
      v18 = a3;
      v19 = 2114;
      v20 = fileName;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "LTS on-disk version(%{public}@) doesn't match with current version(%lld) for domain %{public}@\n", &v15, 0x20u);
    }

    [(NSMutableDictionary *)self->_lts removeObjectForKey:@"version"];
    [(NSMutableDictionary *)self->_lts removeObjectForKey:@"LifetimeStats"];
    v8 = 0;
  }

  v9 = objc_alloc_init(NSMutableDictionary);

  v11 = off_100014B00;
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
  {
    v12 = self->_fileName;
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Returning empty dictionary for lifetime stats of domain %{public}@", &v15, 0xCu);
  }

  v7 = 0;
LABEL_11:

  return v9;
}

- (void)saveLifetimeStats:(id)a3 forVersion:(unint64_t)a4
{
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedLongLong:a4];
  [(NSMutableDictionary *)self->_lts setObject:v7 forKey:@"version"];
  [(NSMutableDictionary *)self->_lts setObject:v6 forKey:@"LifetimeStats"];

  [LTSStatsStore writeDictionary:self->_lts toFile:self->_fileName];
  v8 = off_100014B00;
  if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
  {
    fileName = self->_fileName;
    v10 = 138543362;
    v11 = fileName;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Saved lifetime stats of domain %{public}@", &v10, 0xCu);
  }
}

+ (id)getBootUUID
{
  memset(v8, 0, sizeof(v8));
  v7 = 37;
  if (!qword_100014B38)
  {
    v2 = sysctlbyname("kern.bootsessionuuid", v8, &v7, 0, 0);
    if (v2)
    {
      sub_1000084B0(v2);
    }

    else
    {
      v3 = [NSString stringWithCString:v8 encoding:1];
      v4 = qword_100014B38;
      qword_100014B38 = v3;
    }
  }

  v5 = qword_100014B38;

  return v5;
}

+ (void)saveStatsSinceBoot:(id)a3
{
  v3 = a3;
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];
  v5 = +[LTSStatsStore getBootUUID];
  if (v5)
  {
    [v4 setObject:v3 forKey:@"PrevStatsSinceBoot"];
    [v4 setObject:v5 forKey:@"bootuuid"];
    [LTSStatsStore writeDictionary:v4 toFile:@"lts.statssinceboot.plist"];
  }

  else
  {
    sub_100008554();
  }
}

+ (id)getPrevStatsSinceBoot
{
  v2 = +[LTSStatsStore getBootUUID];
  if (!v2)
  {
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
    {
      sub_1000085F0();
    }

    v5 = 0;
    v3 = 0;
    goto LABEL_8;
  }

  v3 = [LTSStatsStore readFromFile:@"lts.statssinceboot.plist"];
  v4 = [v3 objectForKeyedSubscript:@"bootuuid"];
  if (!v4)
  {
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_ERROR))
    {
      sub_1000085BC();
    }

    v5 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  if (([v4 isEqualToString:v2] & 1) == 0)
  {
    v7 = off_100014B00;
    if (os_log_type_enabled(off_100014B00, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "On-disk stats since boot are with different boot session UUID", v10, 2u);
    }

    [v3 removeObjectForKey:@"PrevStatsSinceBoot"];
    [v3 removeObjectForKey:@"bootuuid"];
    [LTSStatsStore writeDictionary:v3 toFile:@"lts.statssinceboot.plist"];
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = [v3 objectForKey:@"PrevStatsSinceBoot"];
LABEL_9:
  v8 = v6;

  return v6;
}

@end