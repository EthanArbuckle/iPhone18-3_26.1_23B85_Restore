@interface KmlCachedAuthorization
+ (id)decodeWithData:(id)data error:(id *)error;
- (KmlCachedAuthorization)initWithAuthorizationInfo:(id)info;
- (KmlCachedAuthorization)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KmlCachedAuthorization

- (KmlCachedAuthorization)initWithAuthorizationInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = KmlCachedAuthorization;
  v5 = [(KmlCachedAuthorization *)&v15 init];
  if (v5)
  {
    v5->_state = [infoCopy state];
    authorizationID = [infoCopy authorizationID];
    authorizationID = v5->_authorizationID;
    v5->_authorizationID = authorizationID;

    remainingTime = [infoCopy remainingTime];

    if (remainingTime)
    {
      v9 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00);
      remainingTime2 = [infoCopy remainingTime];
      [remainingTime2 doubleValue];
      v12 = [NSNumber numberWithDouble:v11 + v9];
      authExpirationTime = v5->_authExpirationTime;
      v5->_authExpirationTime = v12;
    }

    else
    {
      remainingTime2 = v5->_authExpirationTime;
      v5->_authExpirationTime = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  authExpirationTime = [(KmlCachedAuthorization *)self authExpirationTime];
  [coderCopy encodeObject:authExpirationTime forKey:@"authExpirationTime"];

  authorizationID = [(KmlCachedAuthorization *)self authorizationID];
  [coderCopy encodeObject:authorizationID forKey:@"authorizationID"];

  [coderCopy encodeInteger:-[KmlCachedAuthorization state](self forKey:{"state"), @"state"}];
}

- (KmlCachedAuthorization)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = KmlCachedAuthorization;
  v5 = [(KmlCachedAuthorization *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authExpirationTime"];
    authExpirationTime = v5->_authExpirationTime;
    v5->_authExpirationTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationID"];
    authorizationID = v5->_authorizationID;
    v5->_authorizationID = v8;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
  }

  return v5;
}

+ (id)decodeWithData:(id)data error:(id *)error
{
  v5 = qword_10051B080;
  dataCopy = data;
  if (v5 != -1)
  {
    sub_10037A378();
  }

  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10051B088 fromData:dataCopy error:error];

  return v7;
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00);
  [v3 appendString:@"\n"];
  v5 = [NSString stringWithFormat:@"\tAuthorizationId     : %@\n", self->_authorizationID];
  [v3 appendString:v5];

  [(NSNumber *)self->_authExpirationTime doubleValue];
  v7 = [NSString stringWithFormat:@"\tAuthExpirationTime  : %.2f\n", v6 - v4];
  [v3 appendString:v7];

  v8 = [NSString stringWithFormat:@"\tState               : %d\n", self->_state];
  [v3 appendString:v8];

  return v3;
}

@end