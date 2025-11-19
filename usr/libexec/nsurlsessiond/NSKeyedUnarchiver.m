@interface NSKeyedUnarchiver
+ (id)_nsurlsessionproxy_secureUnarchiveObjectOfClass:(Class)a3 withData:(id)a4;
@end

@implementation NSKeyedUnarchiver

+ (id)_nsurlsessionproxy_secureUnarchiveObjectOfClass:(Class)a3 withData:(id)a4
{
  v5 = a4;
  v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:0];
  v7 = +[PDURLSessionProxyCommon allowedClassesForUnarchiving];
  v8 = [v7 setByAddingObject:a3];

  v9 = [v6 decodeObjectOfClasses:v8 forKey:NSKeyedArchiveRootObjectKey];
  if (!v9)
  {
    v10 = qword_1000EB1D8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = a3;
      v14 = 2048;
      v15 = [v5 length];
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive data of class %@, length %lu", &v12, 0x16u);
    }
  }

  return v9;
}

@end