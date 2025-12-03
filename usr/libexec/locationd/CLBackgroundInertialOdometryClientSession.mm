@interface CLBackgroundInertialOdometryClientSession
- (CLBackgroundInertialOdometryClientSession)initWithClient:(id)client withIdentifier:(id)identifier usingReferenceFrame:(unint64_t)frame atMachContinuousTime:(double)time;
- (void)dealloc;
@end

@implementation CLBackgroundInertialOdometryClientSession

- (CLBackgroundInertialOdometryClientSession)initWithClient:(id)client withIdentifier:(id)identifier usingReferenceFrame:(unint64_t)frame atMachContinuousTime:(double)time
{
  v12.receiver = self;
  v12.super_class = CLBackgroundInertialOdometryClientSession;
  v10 = [(CLBackgroundInertialOdometryClientSession *)&v12 init];
  if (v10)
  {
    v10->_client = client;
    v10->_identifier = [identifier copy];
    v10->_referenceFrame = frame;
    v10->_sessionStartTime = time;
  }

  return v10;
}

- (void)dealloc
{
  self->_client = 0;

  self->_identifier = 0;
  v3.receiver = self;
  v3.super_class = CLBackgroundInertialOdometryClientSession;
  [(CLBackgroundInertialOdometryClientSession *)&v3 dealloc];
}

@end