@interface HAPMetadataCharacteristic
- (HAPMetadataCharacteristic)initWithName:(id)name uuid:(id)uuid description:(id)description format:(id)format properties:(id)properties;
- (id)description;
- (id)generateDictionary:(id)dictionary;
- (void)dump;
@end

@implementation HAPMetadataCharacteristic

- (HAPMetadataCharacteristic)initWithName:(id)name uuid:(id)uuid description:(id)description format:(id)format properties:(id)properties
{
  nameCopy = name;
  uuidCopy = uuid;
  descriptionCopy = description;
  formatCopy = format;
  propertiesCopy = properties;
  v17 = propertiesCopy;
  v18 = 0;
  if (nameCopy && uuidCopy && descriptionCopy && formatCopy && propertiesCopy)
  {
    v29.receiver = self;
    v29.super_class = HAPMetadataCharacteristic;
    v18 = [(HAPMetadataCharacteristic *)&v29 init];
    if (v18)
    {
      v19 = [nameCopy copy];
      v20 = *(v18 + 1);
      *(v18 + 1) = v19;

      v21 = [uuidCopy copy];
      v22 = *(v18 + 3);
      *(v18 + 3) = v21;

      v23 = [descriptionCopy copy];
      v24 = *(v18 + 2);
      *(v18 + 2) = v23;

      v25 = [formatCopy copy];
      v26 = *(v18 + 5);
      *(v18 + 5) = v25;

      v27 = v17;
      self = *(v18 + 4);
      *(v18 + 4) = v27;
    }

    else
    {
      self = 0;
    }
  }

  return v18;
}

- (id)generateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[NSMutableDictionary dictionary];
  uuidStr = [(HAPMetadataCharacteristic *)self uuidStr];
  v7 = [HAPMetadata shortenHAPType:uuidStr baseUUIDSuffix:dictionaryCopy];

  [v5 setObject:v7 forKeyedSubscript:@"ShortUUID"];
  chrDescription = [(HAPMetadataCharacteristic *)self chrDescription];
  [v5 setObject:chrDescription forKeyedSubscript:@"DefaultDescription"];

  format = [(HAPMetadataCharacteristic *)self format];
  [v5 setObject:format forKeyedSubscript:@"Format"];

  properties = [(HAPMetadataCharacteristic *)self properties];
  [v5 setObject:properties forKeyedSubscript:@"Properties"];

  [v5 setObject:&stru_10027BDA0 forKeyedSubscript:@"LocalizationKey"];
  units = [(HAPMetadataCharacteristic *)self units];

  if (units)
  {
    units2 = [(HAPMetadataCharacteristic *)self units];
    [v5 setObject:units2 forKeyedSubscript:@"Units"];
  }

  valueMetadata = [(HAPMetadataCharacteristic *)self valueMetadata];
  generateDictionary = [valueMetadata generateDictionary];
  [v5 addEntriesFromDictionary:generateDictionary];

  return v5;
}

- (id)description
{
  name = [(HAPMetadataCharacteristic *)self name];
  uuidStr = [(HAPMetadataCharacteristic *)self uuidStr];
  chrDescription = [(HAPMetadataCharacteristic *)self chrDescription];
  format = [(HAPMetadataCharacteristic *)self format];
  properties = [(HAPMetadataCharacteristic *)self properties];
  v8 = [NSString stringWithFormat:@"HAPMetadataCharacteristic %@(%@) - %@ - format %@, properties %@", name, uuidStr, chrDescription, format, properties];

  return v8;
}

- (void)dump
{
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(0);
    name = [(HAPMetadataCharacteristic *)self name];
    uuidStr = [(HAPMetadataCharacteristic *)self uuidStr];
    chrDescription = [(HAPMetadataCharacteristic *)self chrDescription];
    format = [(HAPMetadataCharacteristic *)self format];
    properties = [(HAPMetadataCharacteristic *)self properties];
    units = [(HAPMetadataCharacteristic *)self units];
    v11 = 138544898;
    v12 = v4;
    v13 = 2112;
    v14 = name;
    v15 = 2112;
    v16 = uuidStr;
    v17 = 2112;
    v18 = chrDescription;
    v19 = 2112;
    v20 = format;
    v21 = 2112;
    v22 = properties;
    v23 = 2112;
    v24 = units;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataCharaceristics %@(%@):  description: %@  format: %@  properties: %@  units:%@", &v11, 0x48u);
  }
}

@end