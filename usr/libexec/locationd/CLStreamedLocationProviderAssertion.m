@interface CLStreamedLocationProviderAssertion
- (id)initInUniverse:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)releaseAssertion;
- (void)takeAssertion;
@end

@implementation CLStreamedLocationProviderAssertion

- (id)initInUniverse:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLStreamedLocationProviderAssertion;
  v4 = [(CLStreamedLocationProviderAssertion *)&v6 init];
  if (v4)
  {
    -[CLStreamedLocationProviderAssertion setProxy:](v4, "setProxy:", [objc_msgSend(a3 "vendor")]);
    [(CLStreamedLocationProviderAssertion *)v4 takeAssertion];
  }

  return v4;
}

- (void)invalidate
{
  [(CLStreamedLocationProviderAssertion *)self releaseAssertion];

  [(CLStreamedLocationProviderAssertion *)self setProxy:0];
}

- (void)dealloc
{
  [(CLStreamedLocationProviderAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = CLStreamedLocationProviderAssertion;
  [(CLStreamedLocationProviderAssertion *)&v3 dealloc];
}

- (void)takeAssertion
{
  if (qword_1025D47B0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Must be overridden, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47B0 != -1)
      {
        dispatch_once(&qword_1025D47B0, &stru_102456810);
      }
    }

    v3 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Must be overridden", "{msg%{public}.0s:Must be overridden, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47B0 != -1)
      {
        dispatch_once(&qword_1025D47B0, &stru_102456810);
      }
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Must be overridden, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D47B0, &stru_102456810);
  }
}

- (void)releaseAssertion
{
  if (qword_1025D47B0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Must be overridden, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47B0 != -1)
      {
        dispatch_once(&qword_1025D47B0, &stru_102456810);
      }
    }

    v3 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Must be overridden", "{msg%{public}.0s:Must be overridden, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47B0 != -1)
      {
        dispatch_once(&qword_1025D47B0, &stru_102456810);
      }
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Must be overridden, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D47B0, &stru_102456810);
  }
}

@end