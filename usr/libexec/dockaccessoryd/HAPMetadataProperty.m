@interface HAPMetadataProperty
+ (id)init:(id)a3 withDictionary:(id)a4;
- (HAPMetadataProperty)initWithType:(id)a3 bitPosition:(id)a4 description:(id)a5;
- (id)description;
- (id)generateDictionary;
- (void)dump;
@end

@implementation HAPMetadataProperty

- (HAPMetadataProperty)initWithType:(id)a3 bitPosition:(id)a4 description:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HAPMetadataProperty;
  v11 = [(HAPMetadataProperty *)&v18 init];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      v13 = [v8 copy];
      propertyType = v12->_propertyType;
      v12->_propertyType = v13;

      objc_storeStrong(&v12->_bitPosition, a4);
      v15 = [v10 copy];
      propertyDescription = v12->_propertyDescription;
      v12->_propertyDescription = v15;
    }

    else
    {
      propertyDescription = 0;
    }
  }

  else
  {
    propertyDescription = v11;
    v12 = 0;
  }

  return v12;
}

+ (id)init:(id)a3 withDictionary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 hmf_numberForKey:@"Position"];
  v8 = [v5 hmf_stringForKey:@"DefaultDescription"];

  v9 = [[HAPMetadataProperty alloc] initWithType:v6 bitPosition:v7 description:v8];

  return v9;
}

- (id)generateDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(HAPMetadataProperty *)self bitPosition];
  [v3 setObject:v4 forKeyedSubscript:@"Position"];

  v5 = [(HAPMetadataProperty *)self propertyDescription];
  [v3 setObject:v5 forKeyedSubscript:@"DefaultDescription"];

  [v3 setObject:&stru_10027BDA0 forKeyedSubscript:@"LocalizationKey"];

  return v3;
}

- (id)description
{
  v3 = [(HAPMetadataProperty *)self propertyType];
  v4 = [(HAPMetadataProperty *)self propertyDescription];
  v5 = [(HAPMetadataProperty *)self bitPosition];
  v6 = [NSString stringWithFormat:@"Unit %@ - %@ - bit %@", v3, v4, v5];

  return v6;
}

- (void)dump
{
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(0);
    v5 = [(HAPMetadataProperty *)self propertyType];
    v6 = [(HAPMetadataProperty *)self propertyDescription];
    v7 = [(HAPMetadataProperty *)self bitPosition];
    v8 = 138544130;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataProperty %@:  description: %@  bitPosition: %@", &v8, 0x2Au);
  }
}

@end