@interface CLAvengerObservationReporterService
- (void)unregisterForAvengerScanner;
@end

@implementation CLAvengerObservationReporterService

- (void)unregisterForAvengerScanner
{
  if (qword_1025D47D0 != -1)
  {
    sub_101A76BB4();
  }

  v3 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLAvengerObservationReporterService received avenger scanner unregistration}", v4, 0x12u);
  }

  self->_scannerClient = 0;
}

@end