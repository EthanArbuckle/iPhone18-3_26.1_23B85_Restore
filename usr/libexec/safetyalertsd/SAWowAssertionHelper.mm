@interface SAWowAssertionHelper
- (void)assertWoW:(BOOL)w;
@end

@implementation SAWowAssertionHelper

- (void)assertWoW:(BOOL)w
{
  wCopy = w;
  isAsserted = self->isAsserted;
  v6 = SALogObjectGeneral;
  v7 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (isAsserted == wCopy)
  {
    if (v7)
    {
      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#wow,#warning,assertWoW,noChange}", &v10, 0x12u);
    }
  }

  else
  {
    if (v7)
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = wCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#wow,assertWoW,triggered, state:%{public}hhd}", &v10, 0x18u);
    }

    self->isAsserted = wCopy;
    v8 = +[CUTWiFiManager sharedInstance];
    v9 = v8;
    if (wCopy)
    {
      [v8 addWoWClient:self];
    }

    else
    {
      [v8 removeWoWClient:self];
    }
  }
}

@end