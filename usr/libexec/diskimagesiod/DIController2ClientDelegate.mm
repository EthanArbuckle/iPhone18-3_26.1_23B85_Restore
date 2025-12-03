@interface DIController2ClientDelegate
- (void)attachCompletedWithHandle:(id)handle reply:(id)reply;
@end

@implementation DIController2ClientDelegate

- (void)attachCompletedWithHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v8 = *__error();
  if (sub_1000E95F0())
  {
    v18[1] = 0;
    v9 = sub_1000E957C();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v20 = 63;
    v21 = 2080;
    v22 = "[DIController2ClientDelegate attachCompletedWithHandle:reply:]";
    v23 = 2114;
    v24 = handleCopy;
    LODWORD(v17) = 28;
    v16 = buf;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      fprintf(__stderrp, "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v20 = 63;
      v21 = 2080;
      v22 = "[DIController2ClientDelegate attachCompletedWithHandle:reply:]";
      v23 = 2114;
      v24 = handleCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Received: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v8;
  xpcEndpoint = [handleCopy xpcEndpoint];

  if (xpcEndpoint)
  {
    v18[0] = 0;
    v13 = [handleCopy addToRefCountWithError:v18];
    v14 = v18[0];
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      replyCopy[2](replyCopy, v14);

      goto LABEL_12;
    }
  }

  [(DIController2ClientDelegate *)self setDeviceHandle:handleCopy, v16, v17];
  replyCopy[2](replyCopy, 0);
LABEL_12:
}

@end