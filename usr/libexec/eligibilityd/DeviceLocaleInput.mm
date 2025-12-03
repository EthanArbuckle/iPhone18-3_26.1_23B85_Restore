@interface DeviceLocaleInput
+ (id)fallbackDeviceLocale;
- (BOOL)inArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (DeviceLocaleInput)initWithCoder:(id)coder;
- (DeviceLocaleInput)initWithDeviceLocale:(id)locale status:(unint64_t)status process:(id)process;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DeviceLocaleInput

- (BOOL)inArray:(id)array
{
  arrayCopy = array;
  deviceLocale = [(DeviceLocaleInput *)self deviceLocale];
  if (deviceLocale)
  {
    objc_opt_class();
    v6 = arrayCopy;
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        objc_opt_class();
        if (sub_100027870(v6))
        {
          v7 = [v6 containsObject:deviceLocale];
        }

        else
        {
          v10 = sub_10001F638();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = 136315138;
            v12 = "[DeviceLocaleInput inArray:]";
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Locale list contains non-String entries", &v11, 0xCu);
          }

          v7 = 0;
        }

LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v8 = sub_10001F638();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[DeviceLocaleInput inArray:]";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Unexpected type passed to selector: %@", &v11, 0x16u);
    }

    v7 = 0;
    v6 = v8;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (NSString)description
{
  deviceLocale = [(DeviceLocaleInput *)self deviceLocale];
  v7.receiver = self;
  v7.super_class = DeviceLocaleInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[DeviceLocaleInput deviceLocale:%@ %@]", deviceLocale, v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = DeviceLocaleInput;
  if (![(EligibilityInput *)&v11 isEqual:equalCopy])
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceLocale = [(DeviceLocaleInput *)self deviceLocale];
    deviceLocale2 = [(DeviceLocaleInput *)v5 deviceLocale];
    v8 = sub_1000277EC(deviceLocale, deviceLocale2);

    if ((v8 & 1) == 0)
    {
      v9 = sub_10001F638();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[DeviceLocaleInput isEqual:]";
        v14 = 2080;
        v15 = "deviceLocale";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = DeviceLocaleInput;
  v3 = [(EligibilityInput *)&v7 hash];
  deviceLocale = [(DeviceLocaleInput *)self deviceLocale];
  v5 = [deviceLocale hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = DeviceLocaleInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  deviceLocale = [(DeviceLocaleInput *)self deviceLocale];
  v7 = [deviceLocale copyWithZone:zone];
  [v5 setDeviceLocale:v7];

  return v5;
}

- (DeviceLocaleInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceLocale"];
  if (!v5)
  {
    v9.receiver = self;
    v9.super_class = DeviceLocaleInput;
    v7 = [(EligibilityInput *)&v9 initWithInputType:4 status:0 process:@"eligibilityd"];
    v6 = +[DeviceLocaleInput fallbackDeviceLocale];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = v5;
  v10.receiver = self;
  v10.super_class = DeviceLocaleInput;
  v7 = [(EligibilityInput *)&v10 initWithCoder:coderCopy];
  if (v7)
  {
LABEL_3:
    objc_storeStrong(&v7->_deviceLocale, v6);
  }

LABEL_4:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DeviceLocaleInput;
  coderCopy = coder;
  [(EligibilityInput *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DeviceLocaleInput *)self deviceLocale:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"deviceLocale"];
}

- (DeviceLocaleInput)initWithDeviceLocale:(id)locale status:(unint64_t)status process:(id)process
{
  localeCopy = locale;
  processCopy = process;
  if (localeCopy)
  {
    type = xpc_get_type(localeCopy);
    if (type != &_xpc_type_string)
    {
      v11 = type;
      v12 = sub_10001F638();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[DeviceLocaleInput initWithDeviceLocale:status:process:]";
        v20 = 2080;
        name = xpc_type_get_name(v11);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Device locale input is wrong data type: %s", buf, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_14;
    }

    v12 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v12 = 0;
  }

  if (status == 1 && !v12)
  {
    v12 = +[DeviceLocaleInput fallbackDeviceLocale];

    status = 0;
    processCopy = @"eligibilityd";
  }

  v17.receiver = self;
  v17.super_class = DeviceLocaleInput;
  v14 = [(EligibilityInput *)&v17 initWithInputType:4 status:status process:processCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deviceLocale, v12);
  }

  self = v15;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

+ (id)fallbackDeviceLocale
{
  v2 = +[GlobalConfiguration sharedInstance];
  currentUsername = [v2 currentUsername];

  if (currentUsername)
  {
    v4 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, currentUsername, kCFPreferencesAnyHost);
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v8 = [[NSLocale alloc] initWithLocaleIdentifier:v6];
      regionCode = [v8 regionCode];
    }

    else
    {
      regionCode = 0;
    }
  }

  else
  {
    regionCode = 0;
  }

  return regionCode;
}

@end