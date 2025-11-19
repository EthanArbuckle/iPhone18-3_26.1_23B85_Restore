@interface KTManagerWatchdogControl
- (KTManagerWatchdogControl)initWithDew:(id)a3;
- (void)watchdogNiceExit;
- (void)watchdogRudeExitWithReason:(id)a3;
@end

@implementation KTManagerWatchdogControl

- (KTManagerWatchdogControl)initWithDew:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = KTManagerWatchdogControl;
  v5 = [(KTManagerWatchdogControl *)&v8 init];
  if (v5)
  {
    -[KTManagerWatchdogControl setMaybeDoFastExit:](v5, "setMaybeDoFastExit:", [v4 fastWatchdogExit]);
    v6 = v5;
  }

  return v5;
}

- (void)watchdogNiceExit
{
  if (qword_10038BD00 != -1)
  {
    sub_1002499E4();
  }

  v2 = qword_10038BD08;
  if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "watchdogNiceExit", v3, 2u);
  }

  xpc_transaction_exit_clean();
}

- (void)watchdogRudeExitWithReason:(id)a3
{
  v3 = a3;
  if (qword_10038BD00 != -1)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v4 = qword_10038BD08;
    if (os_log_type_enabled(qword_10038BD08, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "watchdogRudeExit: %@", &v5, 0xCu);
    }

    [v3 UTF8String];
    abort_with_payload();
LABEL_5:
    dispatch_once(&qword_10038BD00, &stru_10031A448);
  }
}

@end