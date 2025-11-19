@interface NFRemoteAdminRedirectStatePerformanceMetrics
- (NFRemoteAdminRedirectStatePerformanceMetrics)initWithCoder:(id)a3;
- (id)asDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFRemoteAdminRedirectStatePerformanceMetrics

- (NFRemoteAdminRedirectStatePerformanceMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NFRemoteAdminRedirectStatePerformanceMetrics;
  v5 = [(NFRemoteAdminRedirectStatePerformanceMetrics *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalResponsesWithBody"];
    v5->_totalResponsesWithBody = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferWithMaxResponseTime"];
    v5->_transferWithMaxResponseTime = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxResponseTime"];
    [v8 doubleValue];
    v5->_maxNetworkResponseTime = v9;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalResponseTime"];
    [v10 doubleValue];
    v5->_totalNetworkResponseTime = v11;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalAPDUTime"];
    [v12 doubleValue];
    v5->_totalAPDUTime = v13;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalSessionTime"];
    [v14 doubleValue];
    v5->_totalSessionTime = v15;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nsUrlSessionError"];
    nsUrlSessionError = v5->_nsUrlSessionError;
    v5->_nsUrlSessionError = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  totalResponsesWithBody = self->_totalResponsesWithBody;
  v11 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:totalResponsesWithBody];
  [v11 encodeObject:v5 forKey:@"totalResponsesWithBody"];

  v6 = [NSNumber numberWithUnsignedInteger:self->_transferWithMaxResponseTime];
  [v11 encodeObject:v6 forKey:@"transferWithMaxResponseTime"];

  v7 = [NSNumber numberWithDouble:self->_maxNetworkResponseTime];
  [v11 encodeObject:v7 forKey:@"maxResponseTime"];

  v8 = [NSNumber numberWithDouble:self->_totalNetworkResponseTime];
  [v11 encodeObject:v8 forKey:@"totalResponseTime"];

  v9 = [NSNumber numberWithDouble:self->_totalAPDUTime];
  [v11 encodeObject:v9 forKey:@"totalAPDUTime"];

  v10 = [NSNumber numberWithDouble:self->_totalSessionTime];
  [v11 encodeObject:v10 forKey:@"totalSessionTime"];

  [v11 encodeObject:self->_nsUrlSessionError forKey:@"nsUrlSessionError"];
}

- (id)asDictionary
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithUnsignedInteger:self->_totalResponsesWithBody];
  [v3 setObject:v4 forKey:@"totalResponsesWithBody"];

  v5 = [NSNumber numberWithUnsignedInteger:self->_transferWithMaxResponseTime];
  [v3 setObject:v5 forKey:@"transferWithMaxResponseTime"];

  v6 = [NSNumber numberWithInteger:(self->_totalNetworkResponseTime * 1000.0)];
  [v3 setObject:v6 forKey:@"sumOfAllResponseTime"];

  v7 = [NSNumber numberWithInteger:(self->_maxNetworkResponseTime * 1000.0)];
  [v3 setObject:v7 forKey:@"maxResponseTime"];

  nsUrlSessionError = self->_nsUrlSessionError;
  if (nsUrlSessionError)
  {
    v9 = [NSNumber numberWithInteger:[(NSError *)nsUrlSessionError code]];
    [v3 setObject:v9 forKey:@"clientNSURLSessionErrorCode"];
  }

  return v3;
}

@end