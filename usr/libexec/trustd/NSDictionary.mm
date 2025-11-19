@interface NSDictionary
- (BOOL)writeToClassDURL:(id)a3 permissions:(unsigned __int16)a4 error:(id *)a5;
@end

@implementation NSDictionary

- (BOOL)writeToClassDURL:(id)a3 permissions:(unsigned __int16)a4 error:(id *)a5
{
  v8 = a3;
  if (![(NSDictionary *)self writeToURL:v8 error:a5])
  {
    goto LABEL_10;
  }

  v17 = 0;
  if (sub_1000353E8([v8 fileSystemRepresentation], &v17))
  {
    if (!chmod([v8 fileSystemRepresentation], a4))
    {
      v15 = 1;
      goto LABEL_11;
    }

    v9 = *__error();
    v10 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 fileSystemRepresentation];
      v12 = strerror(v9);
      *buf = 136315394;
      v21 = v11;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to change permissions of %s: %s", buf, 0x16u);
    }

    if (a5)
    {
      v18 = NSLocalizedDescriptionKey;
      v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"failed to change permissions of %s: %s", [v8 fileSystemRepresentation], strerror(v9));
      v19 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:v14];
    }

    goto LABEL_10;
  }

  if (!a5)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v15 = 0;
  *a5 = v17;
LABEL_11:

  return v15;
}

@end