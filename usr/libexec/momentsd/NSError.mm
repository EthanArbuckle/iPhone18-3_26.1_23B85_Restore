@interface NSError
+ (id)errorUsingError:(id)error withUnderyingError:(id)underyingError;
@end

@implementation NSError

+ (id)errorUsingError:(id)error withUnderyingError:(id)underyingError
{
  errorCopy = error;
  underyingErrorCopy = underyingError;
  v7 = underyingErrorCopy;
  if (errorCopy)
  {
    if (underyingErrorCopy)
    {
      userInfo = [errorCopy userInfo];
      if (userInfo)
      {
        userInfo2 = [errorCopy userInfo];
        v10 = [NSMutableDictionary dictionaryWithDictionary:userInfo2];
      }

      else
      {
        v10 = objc_opt_new();
      }

      [v10 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
      userInfo3 = [errorCopy userInfo];
      v14 = [userInfo3 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      if (v14)
      {
        v15 = v14;
        userInfo4 = [v7 userInfo];
        v17 = [userInfo4 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        if (v17)
        {
          userInfo5 = [errorCopy userInfo];
          v19 = [userInfo5 objectForKeyedSubscript:NSLocalizedDescriptionKey];
          userInfo6 = [v7 userInfo];
          v21 = [userInfo6 objectForKeyedSubscript:NSLocalizedDescriptionKey];
          v22 = [NSString stringWithFormat:@"%@ (due '%@')", v19, v21];
          [v10 setObject:v22 forKeyedSubscript:NSLocalizedDescriptionKey];

          goto LABEL_16;
        }
      }

      else
      {
      }

      userInfo7 = [v7 userInfo];
      v24 = [userInfo7 objectForKeyedSubscript:NSLocalizedDescriptionKey];

      if (!v24)
      {
LABEL_17:
        domain = [errorCopy domain];
        v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [errorCopy code], v10);

        goto LABEL_19;
      }

      userInfo5 = [v7 userInfo];
      v19 = [userInfo5 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      userInfo6 = [NSString stringWithFormat:@"due '%@'", v19];
      [v10 setObject:userInfo6 forKeyedSubscript:NSLocalizedDescriptionKey];
LABEL_16:

      goto LABEL_17;
    }

    v11 = errorCopy;
LABEL_8:
    v12 = v11;
    goto LABEL_19;
  }

  if (underyingErrorCopy)
  {
    v11 = underyingErrorCopy;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

@end