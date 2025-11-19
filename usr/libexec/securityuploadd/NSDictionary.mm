@interface NSDictionary
- (BOOL)writeToClassDURL:(id)a3 permissions:(unsigned __int16)a4 error:(id *)a5;
@end

@implementation NSDictionary

- (BOOL)writeToClassDURL:(id)a3 permissions:(unsigned __int16)a4 error:(id *)a5
{
  v8 = a3;
  if (![(NSDictionary *)self writeToURL:v8 error:a5])
  {
    goto LABEL_12;
  }

  v9 = [v8 fileSystemRepresentation];
  v10 = open(v9, 0);
  if (v10)
  {
    v11 = v10;
    if ((fcntl(v10, 64, 4) & 0x80000000) == 0)
    {
      close(v11);
      if (!chmod([v8 fileSystemRepresentation], a4))
      {
        v23 = 1;
        goto LABEL_13;
      }

      v12 = *__error();
      v13 = sub_1000146E4("SecError");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = [v8 fileSystemRepresentation];
        v33 = 2080;
        v34 = strerror(v12);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "failed to change permissions of %s: %s", buf, 0x16u);
      }

      if (a5)
      {
        v14 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"failed to change permissions of %s: %s", [v8 fileSystemRepresentation], strerror(v12), NSLocalizedDescriptionKey);
        v31 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:v15];
      }

      goto LABEL_12;
    }

    v24 = *__error();
    v37 = NSLocalizedDescriptionKey;
    v25 = __error();
    v26 = [NSString localizedStringWithFormat:@"failed to change protection class of %s: %s", v9, strerror(*v25)];
    *buf = v26;
    v27 = [NSDictionary dictionaryWithObjects:buf forKeys:&v37 count:1];
    v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:v27];

    v21 = v28;
    close(v11);
    if (!a5)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *__error();
    v35 = NSLocalizedDescriptionKey;
    v17 = __error();
    v18 = [NSString localizedStringWithFormat:@"failed to open file for protection class change %s: %s", v9, strerror(*v17)];
    v36 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:v19];

    v21 = v20;
    if (!a5)
    {
      goto LABEL_12;
    }
  }

  v22 = v21;
  v23 = 0;
  *a5 = v21;
LABEL_13:

  return v23;
}

@end