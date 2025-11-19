@interface CLAbsoluteAltitudeClientLocal
- (CLAbsoluteAltitudeClientLocal)initWithElevationSubscription:(void *)a3;
- (void)onElevationThresold:(float)a3 direction:(BOOL)a4;
- (void)onSignificantElevationUpdate:(CLSignificantElevation *)a3;
@end

@implementation CLAbsoluteAltitudeClientLocal

- (CLAbsoluteAltitudeClientLocal)initWithElevationSubscription:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLAbsoluteAltitudeClientLocal;
  result = [(CLAbsoluteAltitudeClientLocal *)&v5 init];
  if (result)
  {
    result->_elevationSubscription = a3;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

- (void)onSignificantElevationUpdate:(CLSignificantElevation *)a3
{
  elevationSubscription = self->_elevationSubscription;
  v4 = *&a3->sourceId[12];
  v6[0] = *&a3->recordId;
  v6[1] = v4;
  v5 = *&a3->pressure;
  v6[2] = *&a3->endTime;
  v6[3] = v5;
  sub_100823478(elevationSubscription, v6);
}

- (void)onElevationThresold:(float)a3 direction:(BOOL)a4
{
  v4 = a4;
  if (qword_1025D4410 != -1)
  {
    sub_10194ACC0();
  }

  v6 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = a3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "elevation threshold alert,threshold,%f,above,%d", &v7, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194ACD4(v4, a3);
  }
}

@end