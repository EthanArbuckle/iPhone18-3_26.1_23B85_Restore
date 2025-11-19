@interface PrivacyProxyNetworkStatusTime
- (PrivacyProxyNetworkStatusTime)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PrivacyProxyNetworkStatusTime

- (id)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    sub_1000417D0(v3, self->_networkStatus, @"Network Status", 0, 14);
    v4 = [NSDateFormatter localizedStringFromDate:self->_networkStatusStartTime dateStyle:1 timeStyle:2];
    sub_1000417D0(v3, v4, @"Network Status Start Time", 0, 14);

    v5 = [NSDateFormatter localizedStringFromDate:self->_networkStatusEndTime dateStyle:1 timeStyle:2];
    sub_1000417D0(v3, v5, @"Network Status End Time", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PrivacyProxyNetworkStatusTime allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    sub_10000A4F0(v4, self->_networkStatus);
    sub_10003B8A4(v5, self->_networkStatusStartTime);
    networkStatusEndTime = self->_networkStatusEndTime;
  }

  else
  {
    sub_10000A4F0(v4, 0);
    sub_10003B8A4(v5, 0);
    networkStatusEndTime = 0;
  }

  sub_100006B14(v5, networkStatusEndTime);
  return v5;
}

- (PrivacyProxyNetworkStatusTime)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PrivacyProxyNetworkStatusTime;
  v5 = [(PrivacyProxyNetworkStatusTime *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyNetworkStatusTimeNetworkStatus"];
    networkStatus = v5->_networkStatus;
    v5->_networkStatus = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyNetworkStatusTimeNetworkStartTime"];
    networkStatusStartTime = v5->_networkStatusStartTime;
    v5->_networkStatusStartTime = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyNetworkStatusTimeNetworkEndTime"];
    networkStatusEndTime = v5->_networkStatusEndTime;
    v5->_networkStatusEndTime = v10;

    v12 = v5;
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "[super init] failed", v15, 2u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeObject:self->_networkStatus forKey:@"PrivacyProxyNetworkStatusTimeNetworkStatus"];
    [v5 encodeObject:self->_networkStatusStartTime forKey:@"PrivacyProxyNetworkStatusTimeNetworkStartTime"];
    networkStatusEndTime = self->_networkStatusEndTime;
  }

  else
  {
    [v5 encodeObject:0 forKey:@"PrivacyProxyNetworkStatusTimeNetworkStatus"];
    [v5 encodeObject:0 forKey:@"PrivacyProxyNetworkStatusTimeNetworkStartTime"];
    networkStatusEndTime = 0;
  }

  [v5 encodeObject:networkStatusEndTime forKey:@"PrivacyProxyNetworkStatusTimeNetworkEndTime"];
}

@end