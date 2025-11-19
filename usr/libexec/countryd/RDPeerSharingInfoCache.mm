@interface RDPeerSharingInfoCache
+ (id)getCachePath;
+ (id)loadCache;
- (BOOL)save;
- (RDPeerSharingInfoCache)init;
- (RDPeerSharingInfoCache)initWithCache:(id)a3;
- (RDPeerSharingInfoCache)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RDPeerSharingInfoCache

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RDPeerSharingInfoCache *)self cache];
  v6 = [v4 initWithCache:v5];

  return v6;
}

- (RDPeerSharingInfoCache)init
{
  v6.receiver = self;
  v6.super_class = RDPeerSharingInfoCache;
  v2 = [(RDPeerSharingInfoCache *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (RDPeerSharingInfoCache)initWithCache:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RDPeerSharingInfoCache;
  v6 = [(RDPeerSharingInfoCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cache, a3);
  }

  return v7;
}

- (RDPeerSharingInfoCache)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RDPeerSharingInfoCache;
  v5 = [(RDPeerSharingInfoCache *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"kRDPeerSharingInfoCacheKeyCache"];
    v5 = [(RDPeerSharingInfoCache *)v5 initWithCache:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RDPeerSharingInfoCache *)self cache];
  [v4 encodeObject:v5 forKey:@"kRDPeerSharingInfoCacheKeyCache"];
}

+ (id)getCachePath
{
  v2 = +[RDCachedData getCacheDirPath];
  v6[0] = v2;
  v6[1] = @"shareStamps.plist";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [NSString pathWithComponents:v3];

  return v4;
}

+ (id)loadCache
{
  v2 = +[RDPeerSharingInfoCache getCachePath];
  v33 = 0;
  v3 = [NSData dataWithContentsOfFile:v2 options:1 error:&v33];
  v4 = v33;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_100014AF8);
      }

      v6 = qword_100019000;
      if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = [v5 description];
        v9 = [v8 UTF8String];
        *buf = 136315138;
        v35 = v9;
        _os_log_impl(&dword_100000000, v7, OS_LOG_TYPE_ERROR, "Got an error while reading sharing data, but continuing anyway: %s", buf, 0xCu);
      }
    }

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v10, v11, v12, objc_opt_class(), 0];
    v32 = 0;
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v3 error:&v32];
    v15 = v32;
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        if (qword_100018FF8 != -1)
        {
          dispatch_once(&qword_100018FF8, &stru_100014AF8);
        }

        v17 = qword_100019000;
        if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          v19 = [v16 description];
          v20 = [v19 UTF8String];
          *buf = 136315138;
          v35 = v20;
          _os_log_impl(&dword_100000000, v18, OS_LOG_TYPE_ERROR, "Encountered error while unarchiving sharing cache: %s", buf, 0xCu);
        }
      }

      v21 = v14;
    }

    else
    {
      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_100014AF8);
      }

      v27 = qword_100019000;
      if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
        v29 = [v16 description];
        v30 = [v29 UTF8String];
        *buf = 136315138;
        v35 = v30;
        _os_log_impl(&dword_100000000, v28, OS_LOG_TYPE_ERROR, "Failed to read unarchive sharing cache: %s", buf, 0xCu);
      }

      v21 = objc_alloc_init(RDPeerSharingInfoCache);
    }

    v26 = v21;
  }

  else
  {
    if (qword_100018FF8 != -1)
    {
      dispatch_once(&qword_100018FF8, &stru_100014AF8);
    }

    v22 = qword_100019000;
    if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
      v24 = [v5 description];
      v25 = [v24 UTF8String];
      *buf = 136315138;
      v35 = v25;
      _os_log_impl(&dword_100000000, v23, OS_LOG_TYPE_ERROR, "Failed to read sharing cached data file: %s", buf, 0xCu);
    }

    v26 = objc_alloc_init(RDPeerSharingInfoCache);
  }

  return v26;
}

- (BOOL)save
{
  v3 = _CFGetProgname();
  if (!strcmp(*v3, "countryd"))
  {
    v7 = +[RDPeerSharingInfoCache getCachePath];
    v24 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v24];
    v9 = v24;
    if (v9)
    {
      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_100014AF8);
      }

      v10 = qword_100019000;
      if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = [v9 description];
        v13 = [v9 localizedFailureReason];
        *buf = 68289538;
        *&buf[4] = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = v12;
        v30 = 2114;
        v31 = v13;
        _os_log_impl(&dword_100000000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to archive sharing data, description:%{public, location:escape_only}@, failureReason:%{public, location:escape_only}@}", buf, 0x26u);

        if (qword_100018FF8 != -1)
        {
          dispatch_once(&qword_100018FF8, &stru_100014AF8);
        }
      }

      v14 = qword_100019000;
      if (!os_signpost_enabled(qword_100019000))
      {
        goto LABEL_32;
      }

      v15 = v14;
      v16 = [v9 description];
      v17 = [v9 localizedFailureReason];
      *buf = 68289538;
      *&buf[4] = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31 = v17;
      _os_signpost_emit_with_name_impl(&dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to archive sharing data", "{msg%{public}.0s:Failed to archive sharing data, description:%{public, location:escape_only}@, failureReason:%{public, location:escape_only}@}", buf, 0x26u);
    }

    else
    {
      v23 = 0;
      v18 = [v8 writeToFile:v7 options:268435457 error:&v23];
      v15 = v23;
      if (v18)
      {
        if (qword_100018FF8 != -1)
        {
          dispatch_once(&qword_100018FF8, &stru_100014AF8);
        }

        v19 = qword_100019000;
        if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_INFO))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v26 = 2082;
          v27 = "";
          _os_log_impl(&dword_100000000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Saved sharing cache}", buf, 0x12u);
        }

        v6 = 1;
        goto LABEL_33;
      }

      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_100014AF8);
      }

      v20 = qword_100019000;
      if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = v7;
        _os_log_impl(&dword_100000000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to write sharing cache, path:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_100018FF8 != -1)
        {
          dispatch_once(&qword_100018FF8, &stru_100014AF8);
        }
      }

      v21 = qword_100019000;
      if (os_signpost_enabled(qword_100019000))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = v7;
        _os_signpost_emit_with_name_impl(&dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to write sharing cache", "{msg%{public}.0s:Failed to write sharing cache, path:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

LABEL_32:
    v6 = 0;
LABEL_33:

    return v6;
  }

  if (qword_100018FF8 != -1)
  {
    dispatch_once(&qword_100018FF8, &stru_100014AF8);
  }

  v4 = qword_100019000;
  if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Only countryd can save the sharing cache}", buf, 0x12u);
    if (qword_100018FF8 != -1)
    {
      dispatch_once(&qword_100018FF8, &stru_100014AF8);
    }
  }

  v5 = qword_100019000;
  if (os_signpost_enabled(qword_100019000))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    _os_signpost_emit_with_name_impl(&dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Only countryd can save the sharing cache", "{msg%{public}.0s:Only countryd can save the sharing cache}", buf, 0x12u);
  }

  return 0;
}

@end