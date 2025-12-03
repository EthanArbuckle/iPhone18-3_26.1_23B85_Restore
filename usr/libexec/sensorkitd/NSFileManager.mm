@interface NSFileManager
- (int64_t)fileSizeOfURL:(id)l;
@end

@implementation NSFileManager

- (int64_t)fileSizeOfURL:(id)l
{
  v10 = 0;
  v11 = 0;
  if (([l getResourceValue:&v11 forKey:NSURLFileSizeKey error:&v10] & 1) == 0)
  {
    if (qword_100071A00 == -1)
    {
      v8 = qword_100071A08;
      if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_ERROR))
      {
        return [v11 longLongValue];
      }
    }

    else
    {
      dispatch_once(&qword_100071A00, &stru_100060F40);
      v8 = qword_100071A08;
      if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_ERROR))
      {
        return [v11 longLongValue];
      }
    }

    *buf = 138543618;
    lCopy2 = l;
    v14 = 2114;
    v15 = v10;
    v5 = "Failed to get file size for %{public}@. %{public}@";
    v6 = v8;
    v7 = 22;
    goto LABEL_11;
  }

  if (!v11)
  {
    if (qword_100071A00 != -1)
    {
      dispatch_once(&qword_100071A00, &stru_100060F40);
      v4 = qword_100071A08;
      if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_ERROR))
      {
        return [v11 longLongValue];
      }

      goto LABEL_5;
    }

    v4 = qword_100071A08;
    if (os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      *buf = 138543362;
      lCopy2 = l;
      v5 = "Failed to get file size for %{public}@ with no error";
      v6 = v4;
      v7 = 12;
LABEL_11:
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
    }
  }

  return [v11 longLongValue];
}

@end