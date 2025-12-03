@interface HAPMetadataProperty
+ (id)init:(id)init withDictionary:(id)dictionary;
- (HAPMetadataProperty)initWithType:(id)type bitPosition:(id)position description:(id)description;
- (id)description;
- (id)generateDictionary;
- (void)dump;
@end

@implementation HAPMetadataProperty

- (HAPMetadataProperty)initWithType:(id)type bitPosition:(id)position description:(id)description
{
  typeCopy = type;
  positionCopy = position;
  descriptionCopy = description;
  v18.receiver = self;
  v18.super_class = HAPMetadataProperty;
  v11 = [(HAPMetadataProperty *)&v18 init];
  v12 = v11;
  if (descriptionCopy)
  {
    if (v11)
    {
      v13 = [typeCopy copy];
      propertyType = v12->_propertyType;
      v12->_propertyType = v13;

      objc_storeStrong(&v12->_bitPosition, position);
      v15 = [descriptionCopy copy];
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

+ (id)init:(id)init withDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  initCopy = init;
  v7 = [dictionaryCopy hmf_numberForKey:@"Position"];
  v8 = [dictionaryCopy hmf_stringForKey:@"DefaultDescription"];

  v9 = [[HAPMetadataProperty alloc] initWithType:initCopy bitPosition:v7 description:v8];

  return v9;
}

- (id)generateDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  bitPosition = [(HAPMetadataProperty *)self bitPosition];
  [v3 setObject:bitPosition forKeyedSubscript:@"Position"];

  propertyDescription = [(HAPMetadataProperty *)self propertyDescription];
  [v3 setObject:propertyDescription forKeyedSubscript:@"DefaultDescription"];

  [v3 setObject:&stru_10027BDA0 forKeyedSubscript:@"LocalizationKey"];

  return v3;
}

- (id)description
{
  propertyType = [(HAPMetadataProperty *)self propertyType];
  propertyDescription = [(HAPMetadataProperty *)self propertyDescription];
  bitPosition = [(HAPMetadataProperty *)self bitPosition];
  v6 = [NSString stringWithFormat:@"Unit %@ - %@ - bit %@", propertyType, propertyDescription, bitPosition];

  return v6;
}

- (void)dump
{
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(0);
    propertyType = [(HAPMetadataProperty *)self propertyType];
    propertyDescription = [(HAPMetadataProperty *)self propertyDescription];
    bitPosition = [(HAPMetadataProperty *)self bitPosition];
    v8 = 138544130;
    v9 = v4;
    v10 = 2112;
    v11 = propertyType;
    v12 = 2112;
    v13 = propertyDescription;
    v14 = 2112;
    v15 = bitPosition;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataProperty %@:  description: %@  bitPosition: %@", &v8, 0x2Au);
  }
}

@end