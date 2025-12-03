@interface CLAbsoluteAltitudeClientLocal
- (CLAbsoluteAltitudeClientLocal)initWithElevationSubscription:(void *)subscription;
- (void)onElevationThresold:(float)thresold direction:(BOOL)direction;
- (void)onSignificantElevationUpdate:(CLSignificantElevation *)update;
@end

@implementation CLAbsoluteAltitudeClientLocal

- (CLAbsoluteAltitudeClientLocal)initWithElevationSubscription:(void *)subscription
{
  v5.receiver = self;
  v5.super_class = CLAbsoluteAltitudeClientLocal;
  result = [(CLAbsoluteAltitudeClientLocal *)&v5 init];
  if (result)
  {
    result->_elevationSubscription = subscription;
    result->_valid = 1;
  }

  else
  {
    MEMORY[0x10] = 0;
  }

  return result;
}

- (void)onSignificantElevationUpdate:(CLSignificantElevation *)update
{
  elevationSubscription = self->_elevationSubscription;
  v4 = *&update->sourceId[12];
  v6[0] = *&update->recordId;
  v6[1] = v4;
  v5 = *&update->pressure;
  v6[2] = *&update->endTime;
  v6[3] = v5;
  sub_100823478(elevationSubscription, v6);
}

- (void)onElevationThresold:(float)thresold direction:(BOOL)direction
{
  directionCopy = direction;
  if (qword_1025D4410 != -1)
  {
    sub_10194ACC0();
  }

  v6 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    thresoldCopy = thresold;
    v9 = 1024;
    v10 = directionCopy;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "elevation threshold alert,threshold,%f,above,%d", &v7, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194ACD4(directionCopy, thresold);
  }
}

@end