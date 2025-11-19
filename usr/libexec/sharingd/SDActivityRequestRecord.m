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
  v3 = [(SDActivityRequestRecord *)self requestIdentifier];
  v4 = [v3 UUIDString];
  v5 = [(SDActivityRequestRecord *)self deviceIdentifier];
  requestCreatedDate = self->_requestCreatedDate;
  v7 = [(SDActivityRequestRecord *)self completionHandler];
  if (v7)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(SDActivityRequestRecord *)self timeoutTimer];
  v10 = [(SDActivityRequestRecord *)self error];
  v11 = [NSString stringWithFormat:@"message/requestIdentifier:%@, deviceIdentifier:%@, requestCreated:%@, hasCompletionHandler:%@, _timeoutTimer:%@, error:%@", v4, v5, requestCreatedDate, v8, v9, v10];

  return v11;
}

@end