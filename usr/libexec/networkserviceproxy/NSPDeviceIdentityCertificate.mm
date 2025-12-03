@interface NSPDeviceIdentityCertificate
+ (id)sharedDeviceIdentity;
+ (void)removeFromPreferences;
- (NSPDeviceIdentityCertificate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)deviceIdentityAuthenticationFailed;
- (void)encodeWithCoder:(id)coder;
- (void)resetDeviceIdentityInfo;
- (void)signData:(id)data andFetchDeviceIdentityCertificate:(id)certificate;
@end

@implementation NSPDeviceIdentityCertificate

- (id)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    v4 = [NSDateFormatter localizedStringFromDate:self->_deviceIdentityFetchDate dateStyle:1 timeStyle:2];
    sub_1000417D0(v3, v4, @"Device Identity Fetch Date", 0, 14);

    sub_1000417D0(v3, self->_deviceIdentityRetryCount, @"Device Identity Retry Count", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPDeviceIdentityCertificate allocWithZone:?]];
  p_isa = &v4->super.isa;
  if (self)
  {
    v4->_diskVersion = self->_diskVersion;
    deviceIdentityFetchDate = self->_deviceIdentityFetchDate;
  }

  else
  {
    deviceIdentityFetchDate = 0;
    v4->_diskVersion = 0;
  }

  objc_storeStrong(&v4->_deviceIdentityFetchDate, deviceIdentityFetchDate);
  if (self)
  {
    deviceIdentityRetryCount = self->_deviceIdentityRetryCount;
  }

  else
  {
    deviceIdentityRetryCount = 0;
  }

  objc_storeStrong(p_isa + 4, deviceIdentityRetryCount);
  return p_isa;
}

- (NSPDeviceIdentityCertificate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = NSPDeviceIdentityCertificate;
  v5 = [(NSPDeviceIdentityCertificate *)&v14 init];
  if (v5)
  {
    v5->_diskVersion = [coderCopy decodeIntegerForKey:@"DiskVersion"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentityFetchDate"];
    deviceIdentityFetchDate = v5->_deviceIdentityFetchDate;
    v5->_deviceIdentityFetchDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceIdentityRetryCount"];
    deviceIdentityRetryCount = v5->_deviceIdentityRetryCount;
    v5->_deviceIdentityRetryCount = v8;

    v10 = v5;
  }

  else
  {
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "[super init] failed", v13, 2u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"DiskVersion"];
  if (self)
  {
    [coderCopy encodeObject:self->_deviceIdentityFetchDate forKey:@"DeviceIdentityFetchDate"];
    deviceIdentityRetryCount = self->_deviceIdentityRetryCount;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"DeviceIdentityFetchDate"];
    deviceIdentityRetryCount = 0;
  }

  [coderCopy encodeObject:deviceIdentityRetryCount forKey:@"DeviceIdentityRetryCount"];
}

+ (void)removeFromPreferences
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"DeviceIdentityInfo", 0, kCFPreferencesCurrentApplication);
  v2 = CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  v3 = nplog_obj();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removed device identity info from preference file", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to remove device identity info from preference file", buf, 2u);
  }
}

+ (id)sharedDeviceIdentity
{
  if (qword_100129788 != -1)
  {
    dispatch_once(&qword_100129788, &stru_100109D10);
  }

  v3 = qword_100129780;

  return v3;
}

- (void)resetDeviceIdentityInfo
{
  if (self)
  {
    v3 = self->_deviceIdentityFetchDate;
    if (v3)
    {
      v4 = 1;
      goto LABEL_6;
    }

    deviceIdentityRetryCount = self->_deviceIdentityRetryCount;
  }

  else
  {
    deviceIdentityRetryCount = 0;
  }

  v3 = 0;
  v4 = deviceIdentityRetryCount != 0;
LABEL_6:

  sub_100006B14(self, 0);
  sub_10001B680(self, 0);
  if (self)
  {
    self->_ignoreExistingKeychainIdentity = 0;
  }

  if (v4)
  {

    sub_100049F3C(self);
  }
}

- (void)deviceIdentityAuthenticationFailed
{
  if (self)
  {
    self->_ignoreExistingKeychainIdentity = 1;
  }
}

- (void)signData:(id)data andFetchDeviceIdentityCertificate:(id)certificate
{
  dataCopy = data;
  certificateCopy = certificate;
  if (!self || (v8 = self->_deviceIdentityFetchDate) == 0 || (v9 = v8, [(NSDate *)self->_deviceIdentityFetchDate timeIntervalSinceNow], v11 = v10, v9, v11 <= 0.0))
  {
LABEL_12:
    v35[0] = kMAOptionsBAAValidity;
    v35[1] = kMAOptionsBAASCRTAttestation;
    v36[0] = &off_100113D38;
    v36[1] = &off_100113D50;
    v35[2] = kMAOptionsBAAOIDSToInclude;
    v34[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
    v34[1] = kMAOptionsBAAOIDDeviceIdentifiers;
    v34[2] = kMAOptionsBAAOIDDeviceOSInformation;
    v20 = [NSArray arrayWithObjects:v34 count:3];
    v36[2] = v20;
    v35[3] = kMAOptionsBAANetworkTimeoutInterval;
    v35[4] = kMAOptionsBAAKeychainLabel;
    v36[3] = &off_100113D68;
    v36[4] = @"PrivacyProxy";
    v35[5] = kMAOptionsBAADeleteDuplicateKeychainItems;
    v36[5] = &off_100113D80;
    v21 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:6];

    if (qword_100129778 != -1)
    {
      dispatch_once(&qword_100129778, &stru_100109CF0);
    }

    if (byte_100129770 == 1)
    {
      objc_initWeak(buf, self);
      v22 = [NSMutableDictionary dictionaryWithDictionary:v21];
      [v22 setObject:&off_100113D80 forKeyedSubscript:kMAOptionsBAASkipNetworkRequest];
      v23 = NPGetInternalQueue();
      v31[1] = _NSConcreteStackBlock;
      v31[2] = 3221225472;
      v31[3] = sub_10004AB88;
      v31[4] = &unk_100109D38;
      objc_copyWeak(&v33, buf);
      v32 = certificateCopy;
      DeviceIdentityCreateHostSignatureWithCompletion();

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    else
    {
      if (self && self->_ignoreExistingKeychainIdentity)
      {
        v28 = [NSMutableDictionary dictionaryWithDictionary:v21];
        [v28 setObject:&off_100113D80 forKeyedSubscript:kMAOptionsBAAIgnoreExistingKeychainItems];
        self->_ignoreExistingKeychainIdentity = 0;
      }

      objc_initWeak(buf, self);
      v24 = NPGetInternalQueue();
      objc_copyWeak(v31, buf);
      v29 = dataCopy;
      v30 = certificateCopy;
      DeviceIdentityIssueClientCertificateWithCompletion();

      objc_destroyWeak(v31);
      objc_destroyWeak(buf);
    }

    goto LABEL_21;
  }

  v12 = self->_deviceIdentityRetryCount;
  if (!v12 || (v13 = v12, v14 = [(NSNumber *)self->_deviceIdentityRetryCount unsignedIntValue], v13, v14 <= 4))
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      unsignedIntValue = [(NSNumber *)self->_deviceIdentityRetryCount unsignedIntValue];
      *buf = 67109120;
      LODWORD(v38) = unsignedIntValue + 1;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "previously failed to fetch device identity, allowing retry %u", buf, 8u);
    }

    v17 = [NSNumber numberWithUnsignedInt:[(NSNumber *)self->_deviceIdentityRetryCount unsignedIntValue]+ 1];
    deviceIdentityRetryCount = self->_deviceIdentityRetryCount;
    self->_deviceIdentityRetryCount = v17;

    if ((sub_100049F3C(self) & 1) == 0)
    {
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to write device identity info to file", buf, 2u);
      }
    }

    goto LABEL_12;
  }

  v25 = nplog_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = self->_deviceIdentityFetchDate;
    v27 = [NSDateFormatter localizedStringFromDate:v26 dateStyle:1 timeStyle:2];
    *buf = 138412290;
    v38 = v27;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "deferring fetching device identity until %@", buf, 0xCu);
  }

  (*(certificateCopy + 2))(certificateCopy, 0, 0);
LABEL_21:
}

@end