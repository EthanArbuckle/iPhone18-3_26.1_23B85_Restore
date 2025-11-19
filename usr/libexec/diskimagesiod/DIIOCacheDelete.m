@interface DIIOCacheDelete
- (BOOL)registerPeriodicCallback;
- (BOOL)setupNewConnection:(id)a3;
- (DIIOCacheDelete)initWithDebugServiceName:(id)a3;
- (id)onPeriodicWithInfo:(id)a3 urgency:(int)a4;
- (unint64_t)eraseOldCacheFiles;
- (void)restartExitTimer;
- (void)setupExitTimer:(id)a3;
- (void)setupSigtermHandler;
@end

@implementation DIIOCacheDelete

- (DIIOCacheDelete)initWithDebugServiceName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DIIOCacheDelete;
  v6 = [(DIBaseServiceDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugServiceName, a3);
    [(DIIOCacheDelete *)v7 setupSigtermHandler];
  }

  return v7;
}

- (void)setupSigtermHandler
{
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  sigtermHandler = self->_sigtermHandler;
  self->_sigtermHandler = v3;

  dispatch_source_set_event_handler(self->_sigtermHandler, &stru_1001F56A8);
  v5 = self->_sigtermHandler;

  dispatch_resume(v5);
}

- (void)restartExitTimer
{
  v3 = [(DIIOCacheDelete *)self exitTimer];

  if (v3)
  {
    v4 = [(DIIOCacheDelete *)self exitTimer];
    [v4 invalidate];

    [(DIIOCacheDelete *)self setExitTimer:0];
  }

  [(DIIOCacheDelete *)self performSelectorOnMainThread:"setupExitTimer:" withObject:0 waitUntilDone:0];
}

- (void)setupExitTimer:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000027D4;
  v6[3] = &unk_1001F56D0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:20.0];
  [(DIIOCacheDelete *)self setExitTimer:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (unint64_t)eraseOldCacheFiles
{
  if (confstr(65538, v85, 0x400uLL))
  {
    v2 = [NSURL fileURLWithFileSystemRepresentation:v85 isDirectory:1 relativeToURL:0];
    v3 = [NSString stringWithFormat:@"^%@.*\\.%@$", @"diskimage_", @"cache"];
    v62 = [NSRegularExpression regularExpressionWithPattern:v3 options:0 error:0];
    v4 = +[NSFileManager defaultManager];
    v84[0] = NSURLContentAccessDateKey;
    v84[1] = NSURLFileSizeKey;
    v5 = NSURLNameKey;
    v84[2] = NSURLNameKey;
    v6 = [NSArray arrayWithObjects:v84 count:3];
    v7 = [v4 enumeratorAtURL:v2 includingPropertiesForKeys:v6 options:5 errorHandler:&stru_1001F5710];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v8)
    {
      v9 = v8;
      v56 = v3;
      v57 = v2;
      v60 = 0;
      v59 = 0;
      v58 = 0;
      v61 = 0;
      v10 = *v72;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v72 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v71 + 1) + 8 * v11);
          v70 = 0;
          v13 = [v12 getResourceValue:&v70 forKey:v5 error:{0, v54, v55}];
          v14 = v70;
          v15 = v14;
          if (v13 && [v62 numberOfMatchesInString:v14 options:0 range:{0, objc_msgSend(v14, "length")}])
          {
            v68 = 0;
            v69 = 0;
            v16 = [v12 getResourceValue:&v69 forKey:NSURLContentAccessDateKey error:&v68];
            v17 = v69;
            v18 = v68;
            v64 = v17;
            if (v16)
            {
              v66 = 0;
              v67 = 0;
              v19 = [v12 getResourceValue:&v67 forKey:NSURLFileSizeKey error:&v66];
              v20 = v67;
              v21 = v66;

              if (v19)
              {
                ++v61;
                v60 += [v20 unsignedLongLongValue];
                [v17 timeIntervalSinceNow];
                v23 = v22;
                v24 = *__error();
                v25 = sub_1000E95F0();
                if (v23 >= -259200.0)
                {
                  if (v25)
                  {
                    v75 = 0;
                    v34 = sub_1000E957C();
                    os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
                    *buf = 68158466;
                    *&buf[4] = 37;
                    v77 = 2080;
                    v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
                    v79 = 2114;
                    *v80 = v12;
                    *&v80[8] = 2048;
                    *&v80[10] = v23 / -86400.0;
                    LODWORD(v55) = 38;
                    v54 = buf;
                    v35 = _os_log_send_and_compose_impl();

                    if (v35)
                    {
                      fprintf(__stderrp, "%s\n", v35);
                      free(v35);
                    }

                    v5 = NSURLNameKey;
                  }

                  else
                  {
                    v39 = sub_1000E957C();
                    v5 = NSURLNameKey;
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68158466;
                      *&buf[4] = 37;
                      v77 = 2080;
                      v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
                      v79 = 2114;
                      *v80 = v12;
                      *&v80[8] = 2048;
                      *&v80[10] = v23 / -86400.0;
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%.*s: Skipping %{public}@ (last access time was %.2f days ago)", buf, 0x26u);
                    }
                  }

                  *__error() = v24;
                  v18 = v21;
                  goto LABEL_26;
                }

                if (v25)
                {
                  v75 = 0;
                  v26 = sub_1000E957C();
                  os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                  *buf = 68158466;
                  *&buf[4] = 37;
                  v77 = 2080;
                  v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
                  v79 = 2114;
                  *v80 = v12;
                  *&v80[8] = 2048;
                  *&v80[10] = v23 / -86400.0;
                  LODWORD(v55) = 38;
                  v54 = buf;
                  v27 = _os_log_send_and_compose_impl();

                  if (v27)
                  {
                    fprintf(__stderrp, "%s\n", v27);
                    free(v27);
                  }
                }

                else
                {
                  v36 = sub_1000E957C();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68158466;
                    *&buf[4] = 37;
                    v77 = 2080;
                    v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
                    v79 = 2114;
                    *v80 = v12;
                    *&v80[8] = 2048;
                    *&v80[10] = v23 / -86400.0;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%.*s: Last access time expired for %{public}@ (%.2f days), removing", buf, 0x26u);
                  }
                }

                *__error() = v24;
                v37 = +[NSFileManager defaultManager];
                v65 = v21;
                v38 = [v37 removeItemAtURL:v12 error:&v65];
                v18 = v65;

                if (v38)
                {
                  ++v58;
                  v59 += [v20 unsignedLongLongValue];
                  v5 = NSURLNameKey;
                  goto LABEL_26;
                }

                v28 = *__error();
                if (!sub_1000E95F0())
                {
                  v31 = sub_1000E957C();
                  v5 = NSURLNameKey;
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 68158466;
                    *&buf[4] = 37;
                    v77 = 2080;
                    v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
                    v79 = 2114;
                    *v80 = v12;
                    *&v80[8] = 2114;
                    *&v80[10] = v18;
                    v32 = v31;
                    v33 = "%.*s: Failed to remove %{public}@: %{public}@";
LABEL_23:
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x26u);
                  }

                  goto LABEL_24;
                }

LABEL_18:
                v75 = 0;
                v29 = sub_1000E957C();
                os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
                *buf = 68158466;
                *&buf[4] = 37;
                v77 = 2080;
                v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
                v79 = 2114;
                *v80 = v12;
                *&v80[8] = 2114;
                *&v80[10] = v18;
                LODWORD(v55) = 38;
                v54 = buf;
                v30 = _os_log_send_and_compose_impl();

                if (v30)
                {
                  fprintf(__stderrp, "%s\n", v30);
                  free(v30);
                }

                v5 = NSURLNameKey;
                goto LABEL_25;
              }

              v18 = v21;
              v5 = NSURLNameKey;
            }

            else
            {
              v20 = 0;
            }

            v28 = *__error();
            if (sub_1000E95F0())
            {
              goto LABEL_18;
            }

            v31 = sub_1000E957C();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 68158466;
              *&buf[4] = 37;
              v77 = 2080;
              v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
              v79 = 2114;
              *v80 = v12;
              *&v80[8] = 2114;
              *&v80[10] = v18;
              v32 = v31;
              v33 = "%.*s: Failed retrieving property for %{public}@: %{public}@";
              goto LABEL_23;
            }

LABEL_24:

LABEL_25:
            *__error() = v28;
LABEL_26:
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v40 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
        v9 = v40;
        if (!v40)
        {
          v41 = v60 >> 20;
          v3 = v56;
          v2 = v57;
          v42 = v59;
          v43 = v61;
          v44 = v58;
          goto LABEL_51;
        }
      }
    }

    v41 = 0;
    v42 = 0;
    v44 = 0;
    v43 = 0;
LABEL_51:

    v48 = *__error();
    if (sub_1000E95F0())
    {
      v75 = 0;
      v49 = sub_1000E957C();
      os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
      *buf = 0x2504100602;
      v77 = 2080;
      v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
      v79 = 1024;
      *v80 = v44;
      *&v80[4] = 2048;
      *&v80[6] = v42 >> 20;
      *&v80[14] = 1024;
      *&v80[16] = v43;
      v81 = 2048;
      v82 = v41;
      v50 = _os_log_send_and_compose_impl();

      if (v50)
      {
        fprintf(__stderrp, "%s\n", v50);
        free(v50);
      }
    }

    else
    {
      v51 = sub_1000E957C();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0x2504100602;
        v77 = 2080;
        v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
        v79 = 1024;
        *v80 = v44;
        *&v80[4] = 2048;
        *&v80[6] = v42 >> 20;
        *&v80[14] = 1024;
        *&v80[16] = v43;
        v81 = 2048;
        v82 = v41;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%.*s: Summary: removed %u files (%llu MB) out of %u files (%llu MB) of cache", buf, 0x32u);
      }
    }

    *__error() = v48;
  }

  else
  {
    v45 = *__error();
    if (sub_1000E95F0())
    {
      v75 = 0;
      v46 = sub_1000E957C();
      os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      *&buf[4] = 37;
      v77 = 2080;
      v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
      v47 = _os_log_send_and_compose_impl();

      if (v47)
      {
        fprintf(__stderrp, "%s\n", v47);
        free(v47);
      }
    }

    else
    {
      v52 = sub_1000E957C();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        *&buf[4] = 37;
        v77 = 2080;
        v78 = "[DIIOCacheDelete eraseOldCacheFiles]";
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%.*s: Could not determine cache dir", buf, 0x12u);
      }
    }

    v42 = 0;
    *__error() = v45;
  }

  return v42;
}

- (id)onPeriodicWithInfo:(id)a3 urgency:(int)a4
{
  v6 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = *__error();
  if (sub_1000E95F0())
  {
    v8 = sub_1000E957C();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    *buf = 68158467;
    v17 = 46;
    v18 = 2080;
    v19 = "[DIIOCacheDelete onPeriodicWithInfo:urgency:]";
    v20 = 1024;
    v21 = a4;
    v22 = 2113;
    v23 = v6;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158467;
      v17 = 46;
      v18 = 2080;
      v19 = "[DIIOCacheDelete onPeriodicWithInfo:urgency:]";
      v20 = 1024;
      v21 = a4;
      v22 = 2113;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Reached periodic cache delete with urgency %d, volume: %{private}@", buf, 0x22u);
    }
  }

  *__error() = v7;
  v11 = [NSNumber numberWithUnsignedLongLong:[(DIIOCacheDelete *)self eraseOldCacheFiles]];
  [(DIIOCacheDelete *)self restartExitTimer];
  v14[0] = @"CACHE_DELETE_VOLUME";
  v14[1] = @"CACHE_DELETE_AMOUNT";
  v15[0] = v6;
  v15[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v12;
}

- (BOOL)registerPeriodicCallback
{
  objc_initWeak(&location, self);
  v17 = &_CacheDeleteRegisterInfoCallbacks;
  if (&_CacheDeleteRegisterInfoCallbacks)
  {
    objc_copyWeak(&v15, &location);
    v2 = CacheDeleteRegisterInfoCallbacks();
    v3 = v2 == 0;
    if (v2)
    {
      v4 = *__error();
      if (!sub_1000E95F0())
      {
        v11 = sub_1000E957C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v20 = 43;
          v21 = 2080;
          v22 = "[DIIOCacheDelete registerPeriodicCallback]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%.*s: CacheDelete registration failed", buf, 0x12u);
        }

        goto LABEL_23;
      }

      v16 = 0;
      v5 = sub_1000E957C();
      os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v20 = 43;
      v21 = 2080;
      v22 = "[DIIOCacheDelete registerPeriodicCallback]";
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = *__error();
      if (!sub_1000E95F0())
      {
        v13 = sub_1000E957C();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v20 = 43;
          v21 = 2080;
          v22 = "[DIIOCacheDelete registerPeriodicCallback]";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Cache delete periodic registered", buf, 0x12u);
        }

        goto LABEL_23;
      }

      v16 = 0;
      v10 = sub_1000E957C();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v20 = 43;
      v21 = 2080;
      v22 = "[DIIOCacheDelete registerPeriodicCallback]";
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
LABEL_11:
        fprintf(__stderrp, "%s\n", v6);
        free(v6);
      }
    }

LABEL_23:
    *__error() = v4;
    objc_destroyWeak(&v15);
    goto LABEL_24;
  }

  v7 = *__error();
  if (sub_1000E95F0())
  {
    v16 = 0;
    v8 = sub_1000E957C();
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v20 = 43;
    v21 = 2080;
    v22 = "[DIIOCacheDelete registerPeriodicCallback]";
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v12 = sub_1000E957C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v20 = 43;
      v21 = 2080;
      v22 = "[DIIOCacheDelete registerPeriodicCallback]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%.*s: CacheDelete is not supported, daemon was launched unexpectedly without an instance ID", buf, 0x12u);
    }
  }

  v3 = 0;
  *__error() = v7;
LABEL_24:
  objc_destroyWeak(&location);
  return v3;
}

- (BOOL)setupNewConnection:(id)a3
{
  v3 = a3;
  v4 = *__error();
  if (sub_1000E95F0())
  {
    v5 = sub_1000E957C();
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v9 = 38;
    v10 = 2080;
    v11 = "[DIIOCacheDelete setupNewConnection:]";
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E957C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v9 = 38;
      v10 = 2080;
      v11 = "[DIIOCacheDelete setupNewConnection:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%.*s: Connection to cache delete instance is not allowed, quitting", buf, 0x12u);
    }
  }

  *__error() = v4;
  exit(0);
}

@end