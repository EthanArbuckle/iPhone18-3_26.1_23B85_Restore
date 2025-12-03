@interface HAPMetadataUnit
+ (id)init:(id)init withDictionary:(id)dictionary;
- (HAPMetadataUnit)initWithName:(id)name description:(id)description;
- (id)description;
- (id)generateDictionary;
- (void)dump;
@end

@implementation HAPMetadataUnit

- (HAPMetadataUnit)initWithName:(id)name description:(id)description
{
  nameCopy = name;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = HAPMetadataUnit;
  v8 = [(HAPMetadataUnit *)&v15 init];
  v9 = v8;
  if (descriptionCopy && nameCopy)
  {
    if (v8)
    {
      v10 = [nameCopy copy];
      name = v9->_name;
      v9->_name = v10;

      v12 = [descriptionCopy copy];
      unitDescription = v9->_unitDescription;
      v9->_unitDescription = v12;
    }

    else
    {
      unitDescription = 0;
    }
  }

  else
  {
    unitDescription = v8;
    v9 = 0;
  }

  return v9;
}

+ (id)init:(id)init withDictionary:(id)dictionary
{
  initCopy = init;
  v6 = [dictionary hmf_stringForKey:@"DefaultDescription"];
  v7 = [[HAPMetadataUnit alloc] initWithName:initCopy description:v6];

  return v7;
}

- (id)generateDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  unitDescription = [(HAPMetadataUnit *)self unitDescription];
  [v3 setObject:unitDescription forKeyedSubscript:@"DefaultDescription"];

  [v3 setObject:&stru_10027BDA0 forKeyedSubscript:@"LocalizationKey"];

  return v3;
}

- (id)description
{
  name = [(HAPMetadataUnit *)self name];
  unitDescription = [(HAPMetadataUnit *)self unitDescription];
  v5 = [NSString stringWithFormat:@"Unit %@ - %@", name, unitDescription];

  return v5;
}

- (void)dump
{
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(0);
    name = [(HAPMetadataUnit *)self name];
    unitDescription = [(HAPMetadataUnit *)self unitDescription];
    v7 = 138543874;
    v8 = v4;
    v9 = 2112;
    v10 = name;
    v11 = 2112;
    v12 = unitDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataUnit %@:  description: %@", &v7, 0x20u);
  }
}

@end