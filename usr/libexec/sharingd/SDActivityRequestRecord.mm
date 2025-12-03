@interface SDActivityRequestRecord
- (SDActivityRequestRecord)init;
- (id)description;
@end

@implementation SDActivityRequestRecord

- (SDActivityRequestRecord)init
{
  v6.receiver = self;
  v6.super_class = SDActivityRequestRecord;
  v2 = [(SDActivityRequestRecord *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    requestCreatedDate = v2->_requestCreatedDate;
    v2->_requestCreatedDate = v3;
  }

  return v2;
}

- (id)description
{
  requestIdentifier = [(SDActivityRequestRecord *)self requestIdentifier];
  uUIDString = [requestIdentifier UUIDString];
  deviceIdentifier = [(SDActivityRequestRecord *)self deviceIdentifier];
  requestCreatedDate = self->_requestCreatedDate;
  completionHandler = [(SDActivityRequestRecord *)self completionHandler];
  if (completionHandler)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  timeoutTimer = [(SDActivityRequestRecord *)self timeoutTimer];
  error = [(SDActivityRequestRecord *)self error];
  v11 = [NSString stringWithFormat:@"message/requestIdentifier:%@, deviceIdentifier:%@, requestCreated:%@, hasCompletionHandler:%@, _timeoutTimer:%@, error:%@", uUIDString, deviceIdentifier, requestCreatedDate, v8, timeoutTimer, error];

  return v11;
}

@end