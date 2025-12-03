@interface FMDExtAccessoryConfiguration
- (FMDExtAccessoryConfiguration)initWithCoder:(id)coder;
- (FMDExtAccessoryConfiguration)initWithConfigurationInfo:(id)info;
- (double)detachNotificaitonsWaitTime;
- (double)timeoutForFeature:(id)feature;
- (id)flavorForFeature:(id)feature;
- (id)infoForFeature:(id)feature;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDExtAccessoryConfiguration

- (FMDExtAccessoryConfiguration)initWithConfigurationInfo:(id)info
{
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = FMDExtAccessoryConfiguration;
  v5 = [(FMDExtAccessoryConfiguration *)&v20 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [infoCopy objectForKeyedSubscript:@"config"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = sub_10000BE38();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = infoCopy;
      v18 = "Invalid configuration type %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    }

LABEL_13:

    v16 = 0;
    goto LABEL_14;
  }

  v7 = [v6 objectForKeyedSubscript:@"type"];
  accessoryType = v5->_accessoryType;
  v5->_accessoryType = v7;

  v9 = [v6 objectForKeyedSubscript:@"version"];
  version = v5->_version;
  v5->_version = v9;

  v11 = [v6 objectForKeyedSubscript:@"features"];
  features = v5->_features;
  v5->_features = v11;

  if (!v5->_accessoryType || !v5->_version || !v5->_features)
  {
    v17 = sub_10000BE38();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = infoCopy;
      v18 = "Partial configuration received %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v13 = [(FMDExtAccessoryConfiguration *)v5 infoForFeature:@"lastKnownLocation"];
  v14 = [[FMDSupportedAccessory alloc] initWithType:v5->_accessoryType locationInfo:v13];
  supportedAccessory = v5->_supportedAccessory;
  v5->_supportedAccessory = v14;

LABEL_7:
  v16 = v5;
LABEL_14:

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryType = [(FMDExtAccessoryConfiguration *)self accessoryType];
  [coderCopy encodeObject:accessoryType forKey:@"accessoryType"];

  version = [(FMDExtAccessoryConfiguration *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  features = [(FMDExtAccessoryConfiguration *)self features];
  [coderCopy encodeObject:features forKey:@"features"];

  supportedAccessory = [(FMDExtAccessoryConfiguration *)self supportedAccessory];
  [coderCopy encodeObject:supportedAccessory forKey:@"supportedAccessory"];
}

- (FMDExtAccessoryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = FMDExtAccessoryConfiguration;
  v5 = [(FMDExtAccessoryConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    accessoryType = v5->_accessoryType;
    v5->_accessoryType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v8;

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v10, v11, v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"features"];
    features = v5->_features;
    v5->_features = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportedAccessory"];
    supportedAccessory = v5->_supportedAccessory;
    v5->_supportedAccessory = v16;
  }

  return v5;
}

- (id)flavorForFeature:(id)feature
{
  featureCopy = feature;
  features = [(FMDExtAccessoryConfiguration *)self features];
  v6 = [features objectForKeyedSubscript:featureCopy];
  if (!v6)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v7 = v6;
  features2 = [(FMDExtAccessoryConfiguration *)self features];
  v9 = [features2 objectForKeyedSubscript:featureCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    features = [(FMDExtAccessoryConfiguration *)self features];
    v11 = [features objectForKeyedSubscript:featureCopy];
    v12 = [v11 objectForKeyedSubscript:@"flavor"];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (double)timeoutForFeature:(id)feature
{
  featureCopy = feature;
  features = [(FMDExtAccessoryConfiguration *)self features];
  v6 = [features objectForKeyedSubscript:featureCopy];

  v7 = 2.0;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 objectForKeyedSubscript:@"timeout"];
      if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v8 doubleValue];
        v7 = v9;
      }
    }
  }

  return v7;
}

- (id)infoForFeature:(id)feature
{
  featureCopy = feature;
  features = [(FMDExtAccessoryConfiguration *)self features];
  v6 = [features objectForKeyedSubscript:featureCopy];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)detachNotificaitonsWaitTime
{
  features = [(FMDExtAccessoryConfiguration *)self features];
  v3 = [features objectForKeyedSubscript:@"nwd"];

  v4 = 0.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 objectForKeyedSubscript:@"delay"];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v5 doubleValue];
        v4 = v6;
      }
    }
  }

  return v4;
}

@end