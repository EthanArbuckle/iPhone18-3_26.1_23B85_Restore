@interface FMDBLEBeacon
- (BOOL)isEqual:(id)equal;
- (FMDBLEBeacon)init;
- (FMDBLEBeacon)initWithCoder:(id)coder;
- (FMDBLEBeacon)initWithConfiguration:(id)configuration;
- (FMDBLEBeacon)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDBLEBeacon

- (FMDBLEBeacon)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = FMDBLEBeacon;
  v5 = [(FMDBLEBeacon *)&v13 init];
  if (v5)
  {
    v6 = +[NSDate date];
    [(FMDBLEBeacon *)v5 setUpdateDate:v6];

    name = [configurationCopy name];
    [(FMDBLEBeacon *)v5 setName:name];

    rssi = [configurationCopy rssi];
    [(FMDBLEBeacon *)v5 setRssi:rssi];

    beaconIdentifier = [configurationCopy beaconIdentifier];
    [(FMDBLEBeacon *)v5 setIdentifier:beaconIdentifier];

    colorCode = [configurationCopy colorCode];
    [(FMDBLEBeacon *)v5 setColorCode:colorCode];

    -[FMDBLEBeacon setPrimary:](v5, "setPrimary:", [configurationCopy primary]);
    -[FMDBLEBeacon setUtpConnected:](v5, "setUtpConnected:", [configurationCopy utpConnected]);
    styleDescriptor = [configurationCopy styleDescriptor];
    [(FMDBLEBeacon *)v5 setStyleDescriptor:styleDescriptor];
  }

  return v5;
}

- (FMDBLEBeacon)initWithDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = FMDBLEBeacon;
  return [(FMDBLEBeacon *)&v4 init];
}

- (FMDBLEBeacon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = FMDBLEBeacon;
  v5 = [(FMDBLEBeacon *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("rssi");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDBLEBeacon *)v5 setRssi:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("updateDate");
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDBLEBeacon *)v5 setUpdateDate:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
    [(FMDBLEBeacon *)v5 setIdentifier:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector("name");
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    [(FMDBLEBeacon *)v5 setName:v15];

    v16 = objc_opt_class();
    v17 = NSStringFromSelector("colorCode");
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    [(FMDBLEBeacon *)v5 setColorCode:v18];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector("primary");
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    -[FMDBLEBeacon setPrimary:](v5, "setPrimary:", [v21 BOOLValue]);

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"styleDescriptor"];
    [(FMDBLEBeacon *)v5 setStyleDescriptor:v22];
  }

  return v5;
}

- (FMDBLEBeacon)init
{
  v5.receiver = self;
  v5.super_class = FMDBLEBeacon;
  v2 = [(FMDBLEBeacon *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDBLEBeacon *)v2 setPrimary:0];
    [(FMDBLEBeacon *)v3 setUtpConnected:0];
  }

  return v3;
}

- (NSDictionary)dictionaryValue
{
  v3 = +[NSMutableDictionary dictionary];
  rssi = [(FMDBLEBeacon *)self rssi];
  [v3 fm_safeSetObject:rssi forKey:@"rssi"];

  name = [(FMDBLEBeacon *)self name];
  [v3 fm_safeSetObject:name forKey:@"name"];

  updateDate = [(FMDBLEBeacon *)self updateDate];
  if (updateDate)
  {
    updateDate2 = [(FMDBLEBeacon *)self updateDate];
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [updateDate2 fm_epoch]);
    [v3 fm_safeSetObject:v8 forKey:@"updateTimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7C48 forKey:@"updateTimestamp"];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rssi = [(FMDBLEBeacon *)self rssi];
  v6 = NSStringFromSelector("rssi");
  [coderCopy encodeObject:rssi forKey:v6];

  updateDate = [(FMDBLEBeacon *)self updateDate];
  v8 = NSStringFromSelector("updateDate");
  [coderCopy encodeObject:updateDate forKey:v8];

  identifier = [(FMDBLEBeacon *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"beaconIdentifier"];

  name = [(FMDBLEBeacon *)self name];
  v11 = NSStringFromSelector("name");
  [coderCopy encodeObject:name forKey:v11];

  colorCode = [(FMDBLEBeacon *)self colorCode];
  v13 = NSStringFromSelector("colorCode");
  [coderCopy encodeObject:colorCode forKey:v13];

  v14 = [NSNumber numberWithBool:[(FMDBLEBeacon *)self primary]];
  v15 = NSStringFromSelector("primary");
  [coderCopy encodeObject:v14 forKey:v15];

  styleDescriptor = [(FMDBLEBeacon *)self styleDescriptor];
  v16 = NSStringFromSelector("styleDescriptor");
  [coderCopy encodeObject:styleDescriptor forKey:v16];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FMDBLEBeacon *)equalCopy hash];
      v6 = v5 == [(FMDBLEBeacon *)self hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(FMDBLEBeacon *)self identifier];
  stringValue = [identifier stringValue];
  v4 = [stringValue hash];

  return v4;
}

@end