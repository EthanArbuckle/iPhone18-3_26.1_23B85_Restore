@interface DeviceRegionCodeInput
+ (id)_mgDeviceRegionCode;
- (BOOL)inArray:(id)array;
- (BOOL)isChinaSKU;
- (BOOL)isEqual:(id)equal;
- (DeviceRegionCodeInput)init;
- (DeviceRegionCodeInput)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DeviceRegionCodeInput

- (BOOL)inArray:(id)array
{
  arrayCopy = array;
  deviceRegionCode = [(DeviceRegionCodeInput *)self deviceRegionCode];
  if (deviceRegionCode)
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
          v7 = [v6 containsObject:deviceRegionCode];
        }

        else
        {
          v10 = sub_10001F638();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = 136315138;
            v12 = "[DeviceRegionCodeInput inArray:]";
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Region list contains non-String entries", &v11, 0xCu);
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
      v12 = "[DeviceRegionCodeInput inArray:]";
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
  deviceRegionCode = [(DeviceRegionCodeInput *)self deviceRegionCode];
  v7.receiver = self;
  v7.super_class = DeviceRegionCodeInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[DeviceRegionCodeInput deviceRegionCode:%@ %@]", deviceRegionCode, v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = DeviceRegionCodeInput;
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
    deviceRegionCode = [(DeviceRegionCodeInput *)self deviceRegionCode];
    deviceRegionCode2 = [(DeviceRegionCodeInput *)v5 deviceRegionCode];
    v8 = sub_1000277EC(deviceRegionCode, deviceRegionCode2);

    if ((v8 & 1) == 0)
    {
      v9 = sub_10001F638();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[DeviceRegionCodeInput isEqual:]";
        v14 = 2080;
        v15 = "deviceRegionCode";
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
  v7.super_class = DeviceRegionCodeInput;
  v3 = [(EligibilityInput *)&v7 hash];
  deviceRegionCode = [(DeviceRegionCodeInput *)self deviceRegionCode];
  v5 = [deviceRegionCode hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = DeviceRegionCodeInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  deviceRegionCode = [(DeviceRegionCodeInput *)self deviceRegionCode];
  v7 = [deviceRegionCode copyWithZone:zone];
  [v5 setDeviceRegionCode:v7];

  return v5;
}

- (DeviceRegionCodeInput)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DeviceRegionCodeInput;
  v3 = [(EligibilityInput *)&v7 initWithInputType:6 status:0 process:@"eligibilityd"];
  if (v3)
  {
    v4 = +[DeviceRegionCodeInput _mgDeviceRegionCode];
    deviceRegionCode = v3->_deviceRegionCode;
    v3->_deviceRegionCode = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = DeviceRegionCodeInput;
  [(EligibilityInput *)&v3 encodeWithCoder:coder];
}

- (BOOL)isChinaSKU
{
  deviceRegionCode = [(DeviceRegionCodeInput *)self deviceRegionCode];
  v3 = [deviceRegionCode isEqualToString:@"CH"];

  return v3;
}

- (DeviceRegionCodeInput)init
{
  v6.receiver = self;
  v6.super_class = DeviceRegionCodeInput;
  v2 = [(EligibilityInput *)&v6 initWithInputType:6 status:0 process:@"eligibilityd"];
  if (v2)
  {
    v3 = +[DeviceRegionCodeInput _mgDeviceRegionCode];
    deviceRegionCode = v2->_deviceRegionCode;
    v2->_deviceRegionCode = v3;
  }

  return v2;
}

+ (id)_mgDeviceRegionCode
{
  v2 = MGGetStringAnswer();

  return v2;
}

@end