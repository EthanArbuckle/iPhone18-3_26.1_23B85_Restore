@interface APFileNameConverter
+ (BOOL)validateName:(id)name error:(id *)error;
@end

@implementation APFileNameConverter

+ (BOOL)validateName:(id)name error:(id *)error
{
  nameCopy = name;
  if ([nameCopy length])
  {
    pathComponents = [nameCopy pathComponents];
    if ([pathComponents count] == 1)
    {
      v7 = [pathComponents objectAtIndexedSubscript:0];
      pathExtension = [v7 pathExtension];

      v9 = [pathExtension length];
      v10 = v9 != 0;
      if (!v9)
      {
        v11 = APLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v20 = nameCopy;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Extension is required. %{private}@", buf, 0xCu);
        }

        if (error)
        {
          v15[0] = @"name";
          v15[1] = @"reason";
          v16[0] = nameCopy;
          v16[1] = @"Extension is required.";
          v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
          *error = [NSError errorWithDomain:@"APFileSystemNameErrorDomain" code:1 userInfo:v12];
        }

        v10 = 0;
      }
    }

    else
    {
      v13 = APLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v20 = nameCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Name contains illegal characters. %{private}@", buf, 0xCu);
      }

      if (!error)
      {
        v10 = 0;
        goto LABEL_16;
      }

      v17[0] = @"name";
      v17[1] = @"reason";
      v18[0] = nameCopy;
      v18[1] = @"Name contains illegal characters.";
      pathExtension = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
      [NSError errorWithDomain:@"APFileSystemNameErrorDomain" code:1 userInfo:pathExtension];
      *error = v10 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v21 = @"reason";
    v22 = @"Name is empty.";
    pathComponents = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [NSError errorWithDomain:@"APFileSystemNameErrorDomain" code:1 userInfo:pathComponents];
    *error = v10 = 0;
  }

LABEL_16:

LABEL_17:
  return v10;
}

@end