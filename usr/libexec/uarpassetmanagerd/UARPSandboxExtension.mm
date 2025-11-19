@interface UARPSandboxExtension
+ (id)readTokenStringWithURL:(id)a3;
+ (id)readWriteTokenStringWithURL:(id)a3;
- (UARPSandboxExtension)initWithTokenString:(id)a3;
- (void)dealloc;
@end

@implementation UARPSandboxExtension

+ (id)readTokenStringWithURL:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = +[NSFileManager defaultManager];
  v8 = [location[0] path];
  v10 = [(NSFileManager *)v9 fileExistsAtPath:?];

  if (v10)
  {
    v6 = [location[0] path];
    v3 = v6;
    [v6 UTF8String];
    v7 = sandbox_extension_issue_file();

    v14 = v7;
    oslog = &_os_log_default;
    v12 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v20, "+[UARPSandboxExtension readTokenStringWithURL:]", location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v12, "%s: Generating Read Sandbox Extension Token for %@ ", v20, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (v14)
    {
      v11 = [NSString stringWithUTF8String:v14];
      free(v14);
      v19 = v11;
      v15 = 1;
      objc_storeStrong(&v11, 0);
    }

    else
    {
      v19 = 0;
      v15 = 1;
    }
  }

  else
  {
    v17 = &_os_log_default;
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v21, "+[UARPSandboxExtension readTokenStringWithURL:]", location[0]);
      _os_log_error_impl(&_mh_execute_header, v17, v16, "%s: Cannot Generate Sandbox Extension Token for %@ ", v21, 0x16u);
    }

    objc_storeStrong(&v17, 0);
    v19 = 0;
    v15 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v19;

  return v4;
}

+ (id)readWriteTokenStringWithURL:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = +[NSFileManager defaultManager];
  v8 = [location[0] path];
  v10 = [(NSFileManager *)v9 fileExistsAtPath:?];

  if (v10)
  {
    v6 = [location[0] path];
    v3 = v6;
    [v6 UTF8String];
    v7 = sandbox_extension_issue_file();

    v14 = v7;
    oslog = &_os_log_default;
    v12 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v20, "+[UARPSandboxExtension readWriteTokenStringWithURL:]", location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v12, "%s: Generating Read-Write Sandbox Extension Token for %@ ", v20, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (v14)
    {
      v11 = [NSString stringWithUTF8String:v14];
      free(v14);
      v19 = v11;
      v15 = 1;
      objc_storeStrong(&v11, 0);
    }

    else
    {
      v19 = 0;
      v15 = 1;
    }
  }

  else
  {
    v17 = &_os_log_default;
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v21, "+[UARPSandboxExtension readWriteTokenStringWithURL:]", location[0]);
      _os_log_error_impl(&_mh_execute_header, v17, v16, "%s: Cannot Generate Sandbox Extension Token for %@ ", v21, 0x16u);
    }

    objc_storeStrong(&v17, 0);
    v19 = 0;
    v15 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v19;

  return v4;
}

- (UARPSandboxExtension)initWithTokenString:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = UARPSandboxExtension;
  v10 = [(UARPSandboxExtension *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10 && (v6 = location[0], v4 = location[0], [v6 UTF8String], *(v10 + 1) = sandbox_extension_consume(), *(v10 + 1) == -1))
  {
    oslog = &_os_log_default;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v12, "[UARPSandboxExtension initWithTokenString:]");
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%s: failed to consume sandbox token", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v11;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_sandboxExtensionHandle != -1)
  {
    sandboxExtensionHandle = v5->_sandboxExtensionHandle;
    sandbox_extension_release();
    v5->_sandboxExtensionHandle = -1;
  }

  v3.receiver = v5;
  v3.super_class = UARPSandboxExtension;
  [(UARPSandboxExtension *)&v3 dealloc];
}

@end