@interface HAPAccessoryInfo
- (BOOL)isCertified;
- (BOOL)isDenylisted;
- (HAPAccessoryInfo)initWithName:(id)name manufacturer:(id)manufacturer modelName:(id)modelName category:(id)category certificationStatus:(id)status denylisted:(id)denylisted ppid:(id)ppid;
- (id)description;
@end

@implementation HAPAccessoryInfo

- (HAPAccessoryInfo)initWithName:(id)name manufacturer:(id)manufacturer modelName:(id)modelName category:(id)category certificationStatus:(id)status denylisted:(id)denylisted ppid:(id)ppid
{
  nameCopy = name;
  manufacturerCopy = manufacturer;
  modelNameCopy = modelName;
  categoryCopy = category;
  statusCopy = status;
  denylistedCopy = denylisted;
  ppidCopy = ppid;
  if (!nameCopy)
  {
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10007FAFC(0);
      v19 = v23 = manufacturerCopy;
      *buf = 138543362;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Accessory name is Unknown", buf, 0xCu);

      manufacturerCopy = v23;
    }

    nameCopy = @"Unknown";
  }

  v28.receiver = self;
  v28.super_class = HAPAccessoryInfo;
  v20 = [(HAPAccessoryInfo *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, nameCopy);
    objc_storeStrong(&v21->_manufacturer, manufacturer);
    objc_storeStrong(&v21->_modelName, modelName);
    objc_storeStrong(&v21->_category, category);
    objc_storeStrong(&v21->_certificationStatus, status);
    objc_storeStrong(&v21->_denylisted, denylisted);
    objc_storeStrong(&v21->_ppid, ppid);
    v21->_authenticated = 0;
  }

  return v21;
}

- (BOOL)isCertified
{
  certificationStatus = [(HAPAccessoryInfo *)self certificationStatus];
  uppercaseString = [certificationStatus uppercaseString];
  v4 = [@"CERTIFIED" isEqualToString:uppercaseString];

  return v4;
}

- (BOOL)isDenylisted
{
  denylisted = [(HAPAccessoryInfo *)self denylisted];
  uppercaseString = [denylisted uppercaseString];
  v4 = [@"YES" isEqualToString:uppercaseString];

  return v4;
}

- (id)description
{
  name = [(HAPAccessoryInfo *)self name];
  manufacturer = [(HAPAccessoryInfo *)self manufacturer];
  modelName = [(HAPAccessoryInfo *)self modelName];
  category = [(HAPAccessoryInfo *)self category];
  certificationStatus = [(HAPAccessoryInfo *)self certificationStatus];
  denylisted = [(HAPAccessoryInfo *)self denylisted];
  ppid = [(HAPAccessoryInfo *)self ppid];
  v10 = [NSString stringWithFormat:@"Name: %@, Manufacturer: %@, Model: %@, Category: %@, Certification Status: %@, denylisted: %@, ppid: %@", name, manufacturer, modelName, category, certificationStatus, denylisted, ppid];

  return v10;
}

@end