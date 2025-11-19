@interface DeviceLocaleInput
+ (id)fallbackDeviceLocale;
- (BOOL)inArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DeviceLocaleInput)initWithCoder:(id)a3;
- (DeviceLocaleInput)initWithDeviceLocale:(id)a3 status:(unint64_t)a4 process:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DeviceLocaleInput

- (BOOL)inArray:(id)a3
{
  v4 = a3;
  v5 = [(DeviceLocaleInput *)self deviceLocale];
  if (v5)
  {
    objc_opt_class();
    v6 = v4;
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        objc_opt_class();
        if (sub_100027870(v6))
        {
          v7 = [v6 containsObject:v5];
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
  v3 = [(DeviceLocaleInput *)self deviceLocale];
  v7.receiver = self;
  v7.super_class = DeviceLocaleInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[DeviceLocaleInput deviceLocale:%@ %@]", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DeviceLocaleInput;
  if (![(EligibilityInput *)&v11 isEqual:v4])
  {
    goto LABEL_9;
  }

  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(DeviceLocaleInput *)self deviceLocale];
    v7 = [(DeviceLocaleInput *)v5 deviceLocale];
    v8 = sub_1000277EC(v6, v7);

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
  v4 = [(DeviceLocaleInput *)self deviceLocale];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = DeviceLocaleInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  v6 = [(DeviceLocaleInput *)self deviceLocale];
  v7 = [v6 copyWithZone:a3];
  [v5 setDeviceLocale:v7];

  return v5;
}

- (DeviceLocaleInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceLocale"];
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
  v7 = [(EligibilityInput *)&v10 initWithCoder:v4];
  if (v7)
  {
LABEL_3:
    objc_storeStrong(&v7->_deviceLocale, v6);
  }

LABEL_4:

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DeviceLocaleInput;
  v4 = a3;
  [(EligibilityInput *)&v6 encodeWithCoder:v4];
  v5 = [(DeviceLocaleInput *)self deviceLocale:v6.receiver];
  [v4 encodeObject:v5 forKey:@"deviceLocale"];
}

- (DeviceLocaleInput)initWithDeviceLocale:(id)a3 status:(unint64_t)a4 process:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    type = xpc_get_type(v8);
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

      v13 = 0;
      goto LABEL_14;
    }

    v12 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v12 = 0;
  }

  if (a4 == 1 && !v12)
  {
    v12 = +[DeviceLocaleInput fallbackDeviceLocale];

    a4 = 0;
    v9 = @"eligibilityd";
  }

  v17.receiver = self;
  v17.super_class = DeviceLocaleInput;
  v14 = [(EligibilityInput *)&v17 initWithInputType:4 status:a4 process:v9];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deviceLocale, v12);
  }

  self = v15;
  v13 = self;
LABEL_14:

  return v13;
}

+ (id)fallbackDeviceLocale
{
  v2 = +[GlobalConfiguration sharedInstance];
  v3 = [v2 currentUsername];

  if (v3)
  {
    v4 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, v3, kCFPreferencesAnyHost);
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
      v7 = [v8 regionCode];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end