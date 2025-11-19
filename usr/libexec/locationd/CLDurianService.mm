@interface CLDurianService
- (void)onAggressiveScanStarted;
@end

@implementation CLDurianService

- (void)onAggressiveScanStarted
{
  if (qword_1025D4610 != -1)
  {
    sub_101BE224C();
  }

  v2 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian onAggressiveScanStarted}", v3, 0x12u);
  }
}

@end