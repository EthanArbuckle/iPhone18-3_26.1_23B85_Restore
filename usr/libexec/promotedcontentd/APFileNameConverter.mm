@interface APFileNameConverter
+ (BOOL)validateName:(id)a3 error:(id *)a4;
@end

@implementation APFileNameConverter

+ (BOOL)validateName:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 length])
  {
    v6 = [v5 pathComponents];
    if ([v6 count] == 1)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v7 pathExtension];

      v9 = [v8 length];
      v10 = v9 != 0;
      if (!v9)
      {
        v11 = APLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v20 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Extension is required. %{private}@", buf, 0xCu);
        }

        if (a4)
        {
          v15[0] = @"name";
          v15[1] = @"reason";
          v16[0] = v5;
          v16[1] = @"Extension is required.";
          v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
          *a4 = [NSError errorWithDomain:@"APFileSystemNameErrorDomain" code:1 userInfo:v12];
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
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Name contains illegal characters. %{private}@", buf, 0xCu);
      }

      if (!a4)
      {
        v10 = 0;
        goto LABEL_16;
      }

      v17[0] = @"name";
      v17[1] = @"reason";
      v18[0] = v5;
      v18[1] = @"Name contains illegal characters.";
      v8 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
      [NSError errorWithDomain:@"APFileSystemNameErrorDomain" code:1 userInfo:v8];
      *a4 = v10 = 0;
    }
  }

  else
  {
    if (!a4)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v21 = @"reason";
    v22 = @"Name is empty.";
    v6 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [NSError errorWithDomain:@"APFileSystemNameErrorDomain" code:1 userInfo:v6];
    *a4 = v10 = 0;
  }

LABEL_16:

LABEL_17:
  return v10;
}

@end