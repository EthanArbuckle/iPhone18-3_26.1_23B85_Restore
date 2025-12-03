@interface TMCache
- (BOOL)readValidCache:(id)cache clock:(id)clock;
- (NSUUID)hostUUID;
- (TMCache)initWithDictionary:(id)dictionary clock:(id)clock;
- (TMCache)initWithPath:(id)path clock:(id)clock;
- (id)filesystemTimestampOfPath:(id)path;
- (void)dealloc;
- (void)emptyPath:(id)path;
- (void)saveDict:(id)dict toPath:(id)path;
- (void)savePath:(id)path;
- (void)touchPath:(id)path tv:(timeval *)tv;
@end

@implementation TMCache

- (NSUUID)hostUUID
{
  result = self->_hostUUID;
  if (!result)
  {
    v4.tv_sec = 0;
    v4.tv_nsec = 0;
    memset(v5, 0, sizeof(v5));
    gethostuuid(v5, &v4);
    result = [[NSUUID alloc] initWithUUIDBytes:v5];
    self->_hostUUID = result;
  }

  return result;
}

- (TMCache)initWithPath:(id)path clock:(id)clock
{
  v7 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v15) = sub_100005F84();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PMU presence: %d", buf, 8u);
    v7 = qword_100033218;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100012240();
  }

  v13 = 0;
  v8 = [[NSDictionary alloc] initWithContentsOfURL:+[NSURL fileURLWithPath:](NSURL error:{"fileURLWithPath:", path), &v13}];
  v9 = qword_100033218;
  if (!v8 && os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [v13 userInfo];
    *buf = 138412290;
    v15 = userInfo;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to read cache: %@", buf, 0xCu);
    v9 = qword_100033218;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "read cache: %@", buf, 0xCu);
  }

  v11 = [(TMCache *)self initWithDictionary:v8 clock:clock];

  return v11;
}

- (TMCache)initWithDictionary:(id)dictionary clock:(id)clock
{
  v6 = [(TMCache *)self init];
  if (v6)
  {
    -[TMCache setSystemTimeSet:](v6, "setSystemTimeSet:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"TMSystemTimeSet", "BOOLValue"}]);
    v6->_clock = clock;
    if ([(TMCache *)v6 readValidCache:dictionary clock:clock])
    {
      [objc_msgSend(dictionary objectForKeyedSubscript:{@"TMLastRtcTime", "doubleValue"}];
      [(TMCache *)v6 setLastRtcTime:?];
      [objc_msgSend(dictionary objectForKeyedSubscript:{@"TMLastNtpFetchAttempt", "doubleValue"}];
      [(TMCache *)v6 setLastNTPFetchAttempt:?];
      -[TMCache setRtcResetCount:](v6, "setRtcResetCount:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"RTCResetCount", "unsignedIntValue"}]);
      v7 = [dictionary objectForKeyedSubscript:@"TMAccessoryUnc_s"];
      if (!v7)
      {
        v7 = &off_10002C090;
      }

      [v7 doubleValue];
      [(TMCache *)v6 setAccessoryUnc_s:?];
      if ([dictionary objectForKeyedSubscript:@"BootUUID"])
      {
        v6->_bootUUID = [[NSUUID alloc] initWithUUIDString:{objc_msgSend(dictionary, "objectForKeyedSubscript:", @"BootUUID"}];
      }

      if ([dictionary objectForKeyedSubscript:@"TDTF"])
      {
        -[TMCache setTDTF:](v6, "setTDTF:", [dictionary objectForKeyedSubscript:@"TDTF"]);
      }

      if ([dictionary objectForKeyedSubscript:@"STF"])
      {
        -[TMCache setSTF:](v6, "setSTF:", [dictionary objectForKeyedSubscript:@"STF"]);
      }

      v6->_valid = 1;
    }
  }

  return v6;
}

- (void)dealloc
{
  self->_clock = 0;
  [(TMCache *)self setBootUUID:0];
  [(TMCache *)self setHostUUID:0];
  [(TMCache *)self setSTF:0];
  [(TMCache *)self setTDTF:0];
  v3.receiver = self;
  v3.super_class = TMCache;
  [(TMCache *)&v3 dealloc];
}

- (void)touchPath:(id)path tv:(timeval *)tv
{
  if (utimes([path UTF8String], &v4))
  {
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000122B4();
    }
  }
}

- (void)emptyPath:(id)path
{
  [(TMCache *)self setSystemTimeSet:0];
  [(TMCache *)self setLastRtcTime:0.0];
  [(TMCache *)self setLastNTPFetchAttempt:0.0];
  [(TMCache *)self setRtcResetCount:0];
  [(TMCache *)self setAccessoryUnc_s:1.79769313e308];
  [(TMCache *)self setBootUUID:0];
  [(TMCache *)self setHostUUID:0];
  [(TMCache *)self setSTF:0];
  [(TMCache *)self setTDTF:0];
  self->_valid = 0;
  v5 = [[NSURL alloc] initFileURLWithPath:path];
  if (v5)
  {
    v13 = 0;
    if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
    {
      v6 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_10001231C(&v13, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }
}

- (void)savePath:(id)path
{
  v5 = [NSMutableDictionary dictionaryWithObject:[NSNumber numberWithBool:[(TMCache *)self systemTimeSet]] forKey:@"TMSystemTimeSet"];
  [(TMCache *)self lastRtcTime];
  [(NSMutableDictionary *)v5 setObject:[NSNumber numberWithDouble:?], @"TMLastRtcTime"];
  [(TMCache *)self lastNTPFetchAttempt];
  [(NSMutableDictionary *)v5 setObject:[NSNumber numberWithDouble:?], @"TMLastNtpFetchAttempt"];
  [(NSMutableDictionary *)v5 setObject:&off_10002C0D0 forKeyedSubscript:@"TMVersionKey"];
  [(NSMutableDictionary *)v5 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedInt:" numberWithUnsignedInt:?], @"RTCResetCount"];
  [(TMCache *)self accessoryUnc_s];
  [(NSMutableDictionary *)v5 setObject:[NSNumber numberWithDouble:?], @"TMAccessoryUnc_s"];
  [(NSMutableDictionary *)v5 setObject:[(NSUUID *)[(TMCache *)self hostUUID] UUIDString] forKeyedSubscript:@"HostUUID"];
  [(NSMutableDictionary *)v5 setObject:[(NSUUID *)[(TMCache *)self bootUUID] UUIDString] forKeyedSubscript:@"BootUUID"];
  [(NSMutableDictionary *)v5 setObject:[(TMCache *)self STF] forKeyedSubscript:@"STF"];
  [(NSMutableDictionary *)v5 setObject:[(TMCache *)self TDTF] forKeyedSubscript:@"TDTF"];

  [(TMCache *)self saveDict:v5 toPath:path];
}

- (id)filesystemTimestampOfPath:(id)path
{
  result = [[NSURL alloc] initFileURLWithPath:path];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v18 = 0;
  v6 = -[NSFileManager attributesOfItemAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "attributesOfItemAtPath:error:", [result path], &v18);

  if (!v6)
  {
    v14 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v18;
      v15 = "Unable to stat cache for modification timestamp: %@";
      v16 = v14;
      v17 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }

    return 0;
  }

  fileModificationDate = [(NSDictionary *)v6 fileModificationDate];
  v8 = qword_100033218;
  if (!fileModificationDate)
  {
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Unable to access the modification timestamp for cache";
      v16 = v8;
      v17 = 2;
      goto LABEL_15;
    }

    return 0;
  }

  v9 = fileModificationDate;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Saving modification timestamp from cache", buf, 2u);
  }

  [(NSDate *)v9 timeIntervalSinceReferenceDate];
  v11 = v10;
  v19[0] = @"TMCommand";
  v19[1] = @"TMSource";
  v20[0] = @"TMSetSourceTime";
  v20[1] = @"FilesystemTimestamp";
  v19[2] = @"TMCurrentTime";
  v20[2] = [NSNumber numberWithDouble:?];
  v20[3] = &off_10002C0A0;
  v19[3] = @"TMTimeError";
  v19[4] = @"TMRtcTime";
  [(TMMonotonicClock *)self->_clock coarseMonotonicTime];
  v20[4] = [NSNumber numberWithDouble:?];
  v19[5] = @"TMMachTime";
  v20[5] = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v19[6] = @"TMAbsoluteNanoTime";
  if (v11 >= 9223372040.0)
  {
    sub_10001238C(v11);
  }

  if (v11 <= -9223372040.0)
  {
    sub_100012404(v11);
  }

  *buf = 0;
  v12 = modf(v11, buf);
  v20[6] = [NSNumber numberWithLongLong:llround(v12 * 1000000000.0) + 1000000000 * *buf];
  v19[7] = @"TMNanoTimeError";
  *buf = 0;
  v13 = modf(1500000000.0, buf);
  v20[7] = [NSNumber numberWithLongLong:llround(v13 * 1000000000.0) + 1000000000 * *buf];
  return [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:8];
}

- (BOOL)readValidCache:(id)cache clock:(id)clock
{
  if (![cache count])
  {
    v15 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cache is empty.", &v25, 2u);
    }

    goto LABEL_11;
  }

  v7 = [objc_msgSend(cache objectForKeyedSubscript:{@"TMVersionKey", "integerValue"}];
  if (v7 != 18)
  {
    v16 = *&v7;
    v17 = qword_100033218;
    v14 = os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      return v14;
    }

    v25 = 134218240;
    v26 = v16;
    v27 = 2048;
    v28 = 18;
    v18 = "Cache format changed from %ld to %ld. Cache invalid.";
    goto LABEL_14;
  }

  [objc_msgSend(cache objectForKeyedSubscript:{@"TMLastRtcTime", "doubleValue"}];
  v9 = v8;
  [clock coarseMonotonicTime];
  v11 = v10;
  v12 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_INFO))
  {
    v25 = 134218240;
    v26 = v11;
    v27 = 2048;
    v28 = *&v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Current RTC: %lf Cached RTC: %lf", &v25, 0x16u);
  }

  if (v9 <= v11)
  {
    if (sub_100003B58(0))
    {
      if (sub_100005F84())
      {
        v21 = COERCE_DOUBLE([cache objectForKeyedSubscript:@"HostUUID"]);
        uUIDString = [(NSUUID *)[(TMCache *)self hostUUID] UUIDString];
        if (([*&v21 isEqual:uUIDString] & 1) == 0)
        {
          v17 = qword_100033218;
          v14 = os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT);
          if (!v14)
          {
            return v14;
          }

          v25 = 138412546;
          v26 = v21;
          v27 = 2112;
          v28 = uUIDString;
          v18 = "Host UUID has changed. Cache Invalid. Cached:%@ Host:%@";
LABEL_14:
          v19 = v17;
          v20 = 22;
LABEL_25:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v25, v20);
          LOBYTE(v14) = 0;
          return v14;
        }

LABEL_11:
        LOBYTE(v14) = 1;
        return v14;
      }

      v23 = qword_100033218;
      v14 = os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT);
      if (!v14)
      {
        return v14;
      }

      LOWORD(v25) = 0;
      v18 = "This platform is not equipped with a PMU RTC. Cache invalid.";
    }

    else
    {
      v23 = qword_100033218;
      v14 = os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT);
      if (!v14)
      {
        return v14;
      }

      LOWORD(v25) = 0;
      v18 = "Current RTC offset is zero. RTC reset likely. Cache invalid.";
    }

    v19 = v23;
    v20 = 2;
    goto LABEL_25;
  }

  v13 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current RTC value older than cache. RTC reset likely. Cache invalid.", &v25, 2u);
  }

  LOBYTE(v14) = 0;
  self->_rtcReset = 1;
  return v14;
}

- (void)saveDict:(id)dict toPath:(id)path
{
  v19 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:dict format:200 options:0 error:&v19];
  if (v19)
  {
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_10001247C();
    }
  }

  else
  {
    v6 = v5;
    v7 = [[NSURL alloc] initFileURLWithPath:path];
    if (v7)
    {
      v18 = 0;
      v8 = [(NSData *)v6 writeToURL:v7 options:268435457 error:&v18];
      v9 = qword_100033218;
      if (v8)
      {
        if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEBUG))
        {
          *v17 = 0;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Cached state.", v17, 2u);
          v9 = qword_100033218;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_100012554();
        }
      }

      else if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_1000124E4(&v18, v9, v11, v12, v13, v14, v15, v16);
      }
    }

    else
    {
      v10 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
      {
        sub_1000125C8(v10);
      }
    }
  }
}

@end