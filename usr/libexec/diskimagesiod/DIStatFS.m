@interface DIStatFS
- (DIStatFS)initWithCoder:(id)a3;
- (DIStatFS)initWithFileDescriptor:(int)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)logWithHeader:(id)a3;
@end

@implementation DIStatFS

- (DIStatFS)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIStatFS;
  v5 = [(DIStatFS *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mountedOnURL"];
    mountedOnURL = v5->_mountedOnURL;
    v5->_mountedOnURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mountedFrom"];
    mountedFrom = v5->_mountedFrom;
    v5->_mountedFrom = v8;

    v5->_blockSize = [v4 decodeIntegerForKey:@"blockSize"];
    v5->_supportsBarrier = [v4 decodeBoolForKey:@"supportsBarrier"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DIStatFS *)self mountedOnURL];
  [v6 encodeObject:v4 forKey:@"mountedOnURL"];

  v5 = [(DIStatFS *)self mountedFrom];
  [v6 encodeObject:v5 forKey:@"mountedFrom"];

  [v6 encodeInteger:-[DIStatFS blockSize](self forKey:{"blockSize"), @"blockSize"}];
  [v6 encodeBool:-[DIStatFS supportsBarrier](self forKey:{"supportsBarrier"), @"supportsBarrier"}];
}

- (DIStatFS)initWithFileDescriptor:(int)a3 error:(id *)a4
{
  v27.receiver = self;
  v27.super_class = DIStatFS;
  v6 = [(DIStatFS *)&v27 init];
  if (!v6)
  {
LABEL_23:
    v20 = v6;
    goto LABEL_24;
  }

  if (fstatfs(a3, &v34) < 0)
  {
    v20 = [DIError nilWithPOSIXCode:*__error() verboseInfo:@"fstatfs failed" error:a4];
LABEL_24:
    v21 = v20;
    goto LABEL_25;
  }

  v7 = [NSString stringWithUTF8String:v34.f_mntonname];
  v8 = [NSURL fileURLWithPath:v7 isDirectory:1];
  mountedOnURL = v6->_mountedOnURL;
  v6->_mountedOnURL = v8;

  v6->_blockSize = v34.f_bsize;
  v10 = [DIHelpers copyDevicePathWithStatfs:&v34];
  v11 = v10;
  if ((v34.f_flags & 0x1000) == 0 || ![v10 hasPrefix:@"/dev/disk"])
  {
LABEL_16:
    v22 = *__error();
    if (sub_1000E95F0())
    {
      v23 = sub_1000E957C();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      v29 = 41;
      v30 = 2080;
      v31 = "[DIStatFS initWithFileDescriptor:error:]";
      v32 = 2082;
      f_fstypename = v34.f_fstypename;
      v24 = _os_log_send_and_compose_impl();

      if (v24)
      {
        fprintf(__stderrp, "%s\n", v24);
        free(v24);
      }
    }

    else
    {
      v25 = sub_1000E957C();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v29 = 41;
        v30 = 2080;
        v31 = "[DIStatFS initWithFileDescriptor:error:]";
        v32 = 2082;
        f_fstypename = v34.f_fstypename;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: File system is %{public}s", buf, 0x1Cu);
      }
    }

    *__error() = v22;

    goto LABEL_23;
  }

  objc_storeStrong(&v6->_mountedFrom, v11);
  v12 = [[DIIOMedia alloc] initWithDevName:v11 error:a4];
  v13 = v12;
  if (v12)
  {
    v14 = [(DIIOMedia *)v12 copyBlockDeviceWithError:a4];
    if (v14)
    {
      v15 = [v14 copyPropertyWithClass:objc_opt_class() key:@"IOStorageFeatures"];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:@"Barrier"];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 BOOLValue];
        }

        else
        {
          v19 = 0;
        }

        v6->_supportsBarrier = v19;
      }

      goto LABEL_16;
    }
  }

  v21 = 0;
LABEL_25:

  return v21;
}

- (void)logWithHeader:(id)a3
{
  v24 = a3;
  v6 = *__error();
  if (sub_1000E95F0())
  {
    v7 = sub_1000E957C();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v8 = [(DIStatFS *)self mountedOnURL];
    v9 = [v8 path];
    v10 = [(DIStatFS *)self blockSize];
    v11 = [(DIStatFS *)self mountedFrom];
    if (v11)
    {
      v4 = [(DIStatFS *)self mountedFrom];
      v12 = [NSString stringWithFormat:@"locally mounted from %@", v4];
    }

    else
    {
      v12 = @"remote mount";
    }

    v19 = [(DIStatFS *)self supportsBarrier];
    v26 = 26;
    v20 = @"not ";
    v27 = 2080;
    v28 = "[DIStatFS logWithHeader:]";
    *buf = 68159235;
    v29 = 2114;
    if (v19)
    {
      v20 = &stru_100226D78;
    }

    v30 = v24;
    v31 = 2113;
    v32 = v9;
    v33 = 1024;
    v34 = v10;
    v35 = 2114;
    v36 = v12;
    v37 = 2112;
    v38 = v20;
    v21 = _os_log_send_and_compose_impl();
    if (v11)
    {
    }

    if (v21)
    {
      fprintf(__stderrp, "%s\n", v21);
      free(v21);
    }
  }

  else
  {
    v13 = sub_1000E957C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(DIStatFS *)self mountedOnURL];
      v15 = [v14 path];
      v16 = [(DIStatFS *)self blockSize];
      v17 = [(DIStatFS *)self mountedFrom];
      if (v17)
      {
        v3 = [(DIStatFS *)self mountedFrom];
        v18 = [NSString stringWithFormat:@"locally mounted from %@", v3];
      }

      else
      {
        v18 = @"remote mount";
      }

      v22 = [(DIStatFS *)self supportsBarrier];
      v26 = 26;
      v23 = @"not ";
      v27 = 2080;
      v28 = "[DIStatFS logWithHeader:]";
      *buf = 68159235;
      v29 = 2114;
      if (v22)
      {
        v23 = &stru_100226D78;
      }

      v30 = v24;
      v31 = 2113;
      v32 = v15;
      v33 = 1024;
      v34 = v16;
      v35 = 2114;
      v36 = v18;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@: mounted on %{private}@, %u bytes block size, %{public}@, barriers %@supported", buf, 0x40u);
      if (v17)
      {
      }
    }
  }

  *__error() = v6;
}

@end