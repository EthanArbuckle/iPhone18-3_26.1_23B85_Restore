@interface NSPPersistentContainer
+ (id)defaultDirectoryURL;
@end

@implementation NSPPersistentContainer

+ (id)defaultDirectoryURL
{
  v3 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v4 = v3;
  if (v3)
  {
    firstObject = [v3 firstObject];
    if (firstObject)
    {
      v6 = nplog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = firstObject;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Application Support Directory: %@", buf, 0xCu);
      }

      v7 = [NSString stringWithFormat:@"%@/networkserviceproxy", firstObject];
      if (v7)
      {
        v8 = [NSURL fileURLWithPath:v7 isDirectory:1];
        v9 = nplog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Custom directory for coreData storage: %@", buf, 0xCu);
        }

        if (v8)
        {

          goto LABEL_15;
        }
      }
    }
  }

  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set custom directory for coreData storage, using default Directory", buf, 2u);
  }

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___NSPPersistentContainer;
  v8 = objc_msgSendSuper2(&v12, "defaultDirectoryURL");
LABEL_15:

  return v8;
}

@end