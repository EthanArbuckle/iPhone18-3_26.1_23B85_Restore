@interface UMLibNotifyProvider
- (BOOL)notificationHasPostedForToken:(int)a3 error:(id *)a4;
- (BOOL)post:(id)a3;
- (BOOL)setState:(unint64_t)a3 forToken:(int)a4;
- (int)registerCheck:(id)a3;
- (int)registerPlain:(id)a3;
- (unint64_t)stateForToken:(int)a3 error:(id *)a4;
@end

@implementation UMLibNotifyProvider

- (BOOL)post:(id)a3
{
  v3 = a3;
  v4 = notify_post([v3 UTF8String]);
  if (v4)
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088DF8();
    }

    v5 = qword_1000EB2A8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
LABEL_17:
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_20;
      }

LABEL_19:
      v11 = 0;
LABEL_20:
      free(v11);
    }
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088DF8();
    }

    v5 = qword_1000EB2A8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return v4 == 0;
}

- (int)registerPlain:(id)a3
{
  v3 = a3;
  [v3 UTF8String];
  if (notify_register_plain())
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v4 = qword_1000EB2A8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v4 = qword_1000EB2A8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
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

  return -1;
}

- (int)registerCheck:(id)a3
{
  v3 = a3;
  out_token = -1;
  v4 = notify_register_check([v3 UTF8String], &out_token);
  if (v4)
  {
    v5 = v4;
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v6 = qword_1000EB2A8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_1000011A8(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v19 = 138543618;
        v20 = v3;
        v21 = 1024;
        v22 = v5;
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    v16 = -1;
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v11 = qword_1000EB2A8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v19 = 138543618;
        v20 = v3;
        v21 = 1024;
        v22 = out_token;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v16 = out_token;
  }

  return v16;
}

- (BOOL)notificationHasPostedForToken:(int)a3 error:(id *)a4
{
  *a4 = 0;
  check = 0;
  v6 = notify_check(a3, &check);
  if (v6)
  {
    v7 = v6;
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v8 = qword_1000EB2A8;
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
        v22 = 67109376;
        v23 = a3;
        v24 = 1024;
        v25 = v7;
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

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v19 = v18;
    result = 0;
    *a4 = v18;
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v13 = qword_1000EB2A8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v22 = 67109376;
        v23 = a3;
        v24 = 1024;
        v25 = check;
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

    return check == 1;
  }

  return result;
}

- (BOOL)setState:(unint64_t)a3 forToken:(int)a4
{
  v4 = notify_set_state(a4, a3);
  if (v4)
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088DF8();
    }

    v5 = qword_1000EB2A8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
LABEL_17:
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_20;
      }

LABEL_19:
      v11 = 0;
LABEL_20:
      free(v11);
    }
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088DF8();
    }

    v5 = qword_1000EB2A8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return v4 == 0;
}

- (unint64_t)stateForToken:(int)a3 error:(id *)a4
{
  *a4 = 0;
  state64 = 0;
  state = notify_get_state(a3, &state64);
  if (state)
  {
    v6 = state;
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v7 = qword_1000EB2A8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v19 = 67109376;
        v20 = a3;
        v21 = 1024;
        LODWORD(v22) = v6;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    return 0;
  }

  else
  {
    if (qword_1000EB2B0 != -1)
    {
      sub_100088E0C();
    }

    v12 = qword_1000EB2A8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = sub_1000011A8(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v19 = 67109376;
        v20 = a3;
        v21 = 2048;
        v22 = state64;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    return state64;
  }
}

@end