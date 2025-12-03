@interface PrivacyProxyNetworkStatusTime
- (PrivacyProxyNetworkStatusTime)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (PrivacyProxyNetworkStatusTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PrivacyProxyNetworkStatusTime;
  v5 = [(PrivacyProxyNetworkStatusTime *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyNetworkStatusTimeNetworkStatus"];
    networkStatus = v5->_networkStatus;
    v5->_networkStatus = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyNetworkStatusTimeNetworkStartTime"];
    networkStatusStartTime = v5->_networkStatusStartTime;
    v5->_networkStatusStartTime = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivacyProxyNetworkStatusTimeNetworkEndTime"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_networkStatus forKey:@"PrivacyProxyNetworkStatusTimeNetworkStatus"];
    [coderCopy encodeObject:self->_networkStatusStartTime forKey:@"PrivacyProxyNetworkStatusTimeNetworkStartTime"];
    networkStatusEndTime = self->_networkStatusEndTime;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"PrivacyProxyNetworkStatusTimeNetworkStatus"];
    [coderCopy encodeObject:0 forKey:@"PrivacyProxyNetworkStatusTimeNetworkStartTime"];
    networkStatusEndTime = 0;
  }

  [coderCopy encodeObject:networkStatusEndTime forKey:@"PrivacyProxyNetworkStatusTimeNetworkEndTime"];
}

@end