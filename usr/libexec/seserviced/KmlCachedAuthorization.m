@interface KmlCachedAuthorization
+ (id)decodeWithData:(id)a3 error:(id *)a4;
- (KmlCachedAuthorization)initWithAuthorizationInfo:(id)a3;
- (KmlCachedAuthorization)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KmlCachedAuthorization

- (KmlCachedAuthorization)initWithAuthorizationInfo:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = KmlCachedAuthorization;
  v5 = [(KmlCachedAuthorization *)&v15 init];
  if (v5)
  {
    v5->_state = [v4 state];
    v6 = [v4 authorizationID];
    authorizationID = v5->_authorizationID;
    v5->_authorizationID = v6;

    v8 = [v4 remainingTime];

    if (v8)
    {
      v9 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00);
      v10 = [v4 remainingTime];
      [v10 doubleValue];
      v12 = [NSNumber numberWithDouble:v11 + v9];
      authExpirationTime = v5->_authExpirationTime;
      v5->_authExpirationTime = v12;
    }

    else
    {
      v10 = v5->_authExpirationTime;
      v5->_authExpirationTime = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(KmlCachedAuthorization *)self authExpirationTime];
  [v6 encodeObject:v4 forKey:@"authExpirationTime"];

  v5 = [(KmlCachedAuthorization *)self authorizationID];
  [v6 encodeObject:v5 forKey:@"authorizationID"];

  [v6 encodeInteger:-[KmlCachedAuthorization state](self forKey:{"state"), @"state"}];
}

- (KmlCachedAuthorization)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = KmlCachedAuthorization;
  v5 = [(KmlCachedAuthorization *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authExpirationTime"];
    authExpirationTime = v5->_authExpirationTime;
    v5->_authExpirationTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorizationID"];
    authorizationID = v5->_authorizationID;
    v5->_authorizationID = v8;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
  }

  return v5;
}

+ (id)decodeWithData:(id)a3 error:(id *)a4
{
  v5 = qword_10051B080;
  v6 = a3;
  if (v5 != -1)
  {
    sub_10037A378();
  }

  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10051B088 fromData:v6 error:a4];

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