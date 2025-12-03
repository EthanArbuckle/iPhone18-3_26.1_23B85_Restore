@interface UMProcessProvider
- (BOOL)terminatePID:(int)d withReasonNamespace:(unsigned int)namespace reasonCode:(unint64_t)code reasonString:(id)string error:(id *)error;
- (id)pathForPID:(int)d error:(id *)error;
- (id)pidsUsingVolumeAtPath:(id)path error:(id *)error;
- (unint64_t)uniquePIDForPID:(int)d error:(id *)error;
@end

@implementation UMProcessProvider

- (id)pathForPID:(int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  bzero(buffer, 0x401uLL);
  if (proc_pidpath(d, buffer, 0x400u))
  {
    v6 = [NSString stringWithUTF8String:buffer];
  }

  else
  {
    v7 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985D4();
    }

    v8 = qword_1000EB470;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v6 = 0;
  }

  return v6;
}

- (unint64_t)uniquePIDForPID:(int)d error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  buffer = 0u;
  v5 = proc_pidinfo(d, 17, 0, &buffer, 56);
  if (v5 < 0)
  {
    v7 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985D4();
    }

    v8 = qword_1000EB470;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }

  else
  {
    if (v5 == 56)
    {
      return v19;
    }

    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985D4();
    }

    v13 = qword_1000EB470;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }

  return 0;
}

- (id)pidsUsingVolumeAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = pathCopy;
  if (error)
  {
    *error = 0;
  }

  v7 = proc_listpidspath(1u, 0, [pathCopy UTF8String], 3u, 0, 0);
  if (v7 < 0)
  {
    v17 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v17 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985FC();
    }

    v18 = qword_1000EB470;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_1000011A8(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v13 = 0;
  }

  else
  {
    v8 = v7 + 200;
    v9 = malloc_type_malloc(v7 + 200, 0x1797894BuLL);
    v10 = proc_listpidspath(1u, 0, [v6 UTF8String], 3u, v9, v8);
    v11 = v10;
    if ((v10 & 0x80000000) != 0)
    {
      v23 = *__error();
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v23 userInfo:0];
      }

      if (qword_1000EB478 != -1)
      {
        sub_1000985FC();
      }

      v24 = qword_1000EB470;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_1000011A8(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v27 = _os_log_send_and_compose_impl();
          v28 = v27;
          if (v27)
          {
            sub_100002A8C(v27);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      v13 = 0;
    }

    else
    {
      v12 = v10 >> 2;
      v13 = [NSMutableArray arrayWithCapacity:v12];
      if (v11 >= 4)
      {
        v14 = v9;
        do
        {
          v15 = *v14++;
          v16 = [NSNumber numberWithInt:v15];
          [v13 addObject:v16];

          --v12;
        }

        while (v12);
      }
    }

    free(v9);
  }

  return v13;
}

- (BOOL)terminatePID:(int)d withReasonNamespace:(unsigned int)namespace reasonCode:(unint64_t)code reasonString:(id)string error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [string UTF8String];
  v11 = terminate_with_reason();
  if (v11)
  {
    v12 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
    }

    if (qword_1000EB478 != -1)
    {
      sub_1000985FC();
    }

    v13 = qword_1000EB470;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        *buf = 67109888;
        dCopy2 = d;
        v22 = 1024;
        namespaceCopy = namespace;
        v24 = 2048;
        codeCopy = code;
        v26 = 1024;
        v27 = v12;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }

  else
  {
    if (qword_1000EB478 != -1)
    {
      sub_1000985FC();
    }

    v18 = qword_1000EB470;
    if (os_log_type_enabled(qword_1000EB470, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      dCopy2 = d;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Terminated process %d", buf, 8u);
    }
  }

  return v11 == 0;
}

@end