@interface NSDictionary
- (BOOL)writeToClassDURL:(id)l permissions:(unsigned __int16)permissions error:(id *)error;
@end

@implementation NSDictionary

- (BOOL)writeToClassDURL:(id)l permissions:(unsigned __int16)permissions error:(id *)error
{
  lCopy = l;
  if (![(NSDictionary *)self writeToURL:lCopy error:error])
  {
    goto LABEL_10;
  }

  v17 = 0;
  if (sub_1000353E8([lCopy fileSystemRepresentation], &v17))
  {
    if (!chmod([lCopy fileSystemRepresentation], permissions))
    {
      v15 = 1;
      goto LABEL_11;
    }

    v9 = *__error();
    v10 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      fileSystemRepresentation = [lCopy fileSystemRepresentation];
      v12 = strerror(v9);
      *buf = 136315394;
      v21 = fileSystemRepresentation;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "failed to change permissions of %s: %s", buf, 0x16u);
    }

    if (error)
    {
      v18 = NSLocalizedDescriptionKey;
      v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"failed to change permissions of %s: %s", [lCopy fileSystemRepresentation], strerror(v9));
      v19 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:v14];
    }

    goto LABEL_10;
  }

  if (!error)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v15 = 0;
  *error = v17;
LABEL_11:

  return v15;
}

@end