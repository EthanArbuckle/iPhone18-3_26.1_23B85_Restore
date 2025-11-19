@interface HAPAccessoryInfo
- (BOOL)isCertified;
- (BOOL)isDenylisted;
- (HAPAccessoryInfo)initWithName:(id)a3 manufacturer:(id)a4 modelName:(id)a5 category:(id)a6 certificationStatus:(id)a7 denylisted:(id)a8 ppid:(id)a9;
- (id)description;
@end

@implementation HAPAccessoryInfo

- (HAPAccessoryInfo)initWithName:(id)a3 manufacturer:(id)a4 modelName:(id)a5 category:(id)a6 certificationStatus:(id)a7 denylisted:(id)a8 ppid:(id)a9
{
  v15 = a3;
  v16 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v17 = a9;
  if (!v15)
  {
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10007FAFC(0);
      v19 = v23 = v16;
      *buf = 138543362;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Accessory name is Unknown", buf, 0xCu);

      v16 = v23;
    }

    v15 = @"Unknown";
  }

  v28.receiver = self;
  v28.super_class = HAPAccessoryInfo;
  v20 = [(HAPAccessoryInfo *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, v15);
    objc_storeStrong(&v21->_manufacturer, a4);
    objc_storeStrong(&v21->_modelName, a5);
    objc_storeStrong(&v21->_category, a6);
    objc_storeStrong(&v21->_certificationStatus, a7);
    objc_storeStrong(&v21->_denylisted, a8);
    objc_storeStrong(&v21->_ppid, a9);
    v21->_authenticated = 0;
  }

  return v21;
}

- (BOOL)isCertified
{
  v2 = [(HAPAccessoryInfo *)self certificationStatus];
  v3 = [v2 uppercaseString];
  v4 = [@"CERTIFIED" isEqualToString:v3];

  return v4;
}

- (BOOL)isDenylisted
{
  v2 = [(HAPAccessoryInfo *)self denylisted];
  v3 = [v2 uppercaseString];
  v4 = [@"YES" isEqualToString:v3];

  return v4;
}

- (id)description
{
  v3 = [(HAPAccessoryInfo *)self name];
  v4 = [(HAPAccessoryInfo *)self manufacturer];
  v5 = [(HAPAccessoryInfo *)self modelName];
  v6 = [(HAPAccessoryInfo *)self category];
  v7 = [(HAPAccessoryInfo *)self certificationStatus];
  v8 = [(HAPAccessoryInfo *)self denylisted];
  v9 = [(HAPAccessoryInfo *)self ppid];
  v10 = [NSString stringWithFormat:@"Name: %@, Manufacturer: %@, Model: %@, Category: %@, Certification Status: %@, denylisted: %@, ppid: %@", v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

@end