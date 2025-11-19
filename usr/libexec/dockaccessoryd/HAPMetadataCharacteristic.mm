@interface HAPMetadataCharacteristic
- (HAPMetadataCharacteristic)initWithName:(id)a3 uuid:(id)a4 description:(id)a5 format:(id)a6 properties:(id)a7;
- (id)description;
- (id)generateDictionary:(id)a3;
- (void)dump;
@end

@implementation HAPMetadataCharacteristic

- (HAPMetadataCharacteristic)initWithName:(id)a3 uuid:(id)a4 description:(id)a5 format:(id)a6 properties:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  v18 = 0;
  if (v12 && v13 && v14 && v15 && v16)
  {
    v29.receiver = self;
    v29.super_class = HAPMetadataCharacteristic;
    v18 = [(HAPMetadataCharacteristic *)&v29 init];
    if (v18)
    {
      v19 = [v12 copy];
      v20 = *(v18 + 1);
      *(v18 + 1) = v19;

      v21 = [v13 copy];
      v22 = *(v18 + 3);
      *(v18 + 3) = v21;

      v23 = [v14 copy];
      v24 = *(v18 + 2);
      *(v18 + 2) = v23;

      v25 = [v15 copy];
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

- (id)generateDictionary:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(HAPMetadataCharacteristic *)self uuidStr];
  v7 = [HAPMetadata shortenHAPType:v6 baseUUIDSuffix:v4];

  [v5 setObject:v7 forKeyedSubscript:@"ShortUUID"];
  v8 = [(HAPMetadataCharacteristic *)self chrDescription];
  [v5 setObject:v8 forKeyedSubscript:@"DefaultDescription"];

  v9 = [(HAPMetadataCharacteristic *)self format];
  [v5 setObject:v9 forKeyedSubscript:@"Format"];

  v10 = [(HAPMetadataCharacteristic *)self properties];
  [v5 setObject:v10 forKeyedSubscript:@"Properties"];

  [v5 setObject:&stru_10027BDA0 forKeyedSubscript:@"LocalizationKey"];
  v11 = [(HAPMetadataCharacteristic *)self units];

  if (v11)
  {
    v12 = [(HAPMetadataCharacteristic *)self units];
    [v5 setObject:v12 forKeyedSubscript:@"Units"];
  }

  v13 = [(HAPMetadataCharacteristic *)self valueMetadata];
  v14 = [v13 generateDictionary];
  [v5 addEntriesFromDictionary:v14];

  return v5;
}

- (id)description
{
  v3 = [(HAPMetadataCharacteristic *)self name];
  v4 = [(HAPMetadataCharacteristic *)self uuidStr];
  v5 = [(HAPMetadataCharacteristic *)self chrDescription];
  v6 = [(HAPMetadataCharacteristic *)self format];
  v7 = [(HAPMetadataCharacteristic *)self properties];
  v8 = [NSString stringWithFormat:@"HAPMetadataCharacteristic %@(%@) - %@ - format %@, properties %@", v3, v4, v5, v6, v7];

  return v8;
}

- (void)dump
{
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(0);
    v5 = [(HAPMetadataCharacteristic *)self name];
    v6 = [(HAPMetadataCharacteristic *)self uuidStr];
    v7 = [(HAPMetadataCharacteristic *)self chrDescription];
    v8 = [(HAPMetadataCharacteristic *)self format];
    v9 = [(HAPMetadataCharacteristic *)self properties];
    v10 = [(HAPMetadataCharacteristic *)self units];
    v11 = 138544898;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataCharaceristics %@(%@):  description: %@  format: %@  properties: %@  units:%@", &v11, 0x48u);
  }
}

@end