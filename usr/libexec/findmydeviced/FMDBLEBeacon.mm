@interface FMDBLEBeacon
- (BOOL)isEqual:(id)a3;
- (FMDBLEBeacon)init;
- (FMDBLEBeacon)initWithCoder:(id)a3;
- (FMDBLEBeacon)initWithConfiguration:(id)a3;
- (FMDBLEBeacon)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDBLEBeacon

- (FMDBLEBeacon)initWithConfiguration:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FMDBLEBeacon;
  v5 = [(FMDBLEBeacon *)&v13 init];
  if (v5)
  {
    v6 = +[NSDate date];
    [(FMDBLEBeacon *)v5 setUpdateDate:v6];

    v7 = [v4 name];
    [(FMDBLEBeacon *)v5 setName:v7];

    v8 = [v4 rssi];
    [(FMDBLEBeacon *)v5 setRssi:v8];

    v9 = [v4 beaconIdentifier];
    [(FMDBLEBeacon *)v5 setIdentifier:v9];

    v10 = [v4 colorCode];
    [(FMDBLEBeacon *)v5 setColorCode:v10];

    -[FMDBLEBeacon setPrimary:](v5, "setPrimary:", [v4 primary]);
    -[FMDBLEBeacon setUtpConnected:](v5, "setUtpConnected:", [v4 utpConnected]);
    v11 = [v4 styleDescriptor];
    [(FMDBLEBeacon *)v5 setStyleDescriptor:v11];
  }

  return v5;
}

- (FMDBLEBeacon)initWithDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = FMDBLEBeacon;
  return [(FMDBLEBeacon *)&v4 init];
}

- (FMDBLEBeacon)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = FMDBLEBeacon;
  v5 = [(FMDBLEBeacon *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("rssi");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDBLEBeacon *)v5 setRssi:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("updateDate");
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(FMDBLEBeacon *)v5 setUpdateDate:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
    [(FMDBLEBeacon *)v5 setIdentifier:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector("name");
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    [(FMDBLEBeacon *)v5 setName:v15];

    v16 = objc_opt_class();
    v17 = NSStringFromSelector("colorCode");
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    [(FMDBLEBeacon *)v5 setColorCode:v18];

    v19 = objc_opt_class();
    v20 = NSStringFromSelector("primary");
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
    -[FMDBLEBeacon setPrimary:](v5, "setPrimary:", [v21 BOOLValue]);

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"styleDescriptor"];
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
  v4 = [(FMDBLEBeacon *)self rssi];
  [v3 fm_safeSetObject:v4 forKey:@"rssi"];

  v5 = [(FMDBLEBeacon *)self name];
  [v3 fm_safeSetObject:v5 forKey:@"name"];

  v6 = [(FMDBLEBeacon *)self updateDate];
  if (v6)
  {
    v7 = [(FMDBLEBeacon *)self updateDate];
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 fm_epoch]);
    [v3 fm_safeSetObject:v8 forKey:@"updateTimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7C48 forKey:@"updateTimestamp"];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDBLEBeacon *)self rssi];
  v6 = NSStringFromSelector("rssi");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(FMDBLEBeacon *)self updateDate];
  v8 = NSStringFromSelector("updateDate");
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDBLEBeacon *)self identifier];
  [v4 encodeObject:v9 forKey:@"beaconIdentifier"];

  v10 = [(FMDBLEBeacon *)self name];
  v11 = NSStringFromSelector("name");
  [v4 encodeObject:v10 forKey:v11];

  v12 = [(FMDBLEBeacon *)self colorCode];
  v13 = NSStringFromSelector("colorCode");
  [v4 encodeObject:v12 forKey:v13];

  v14 = [NSNumber numberWithBool:[(FMDBLEBeacon *)self primary]];
  v15 = NSStringFromSelector("primary");
  [v4 encodeObject:v14 forKey:v15];

  v17 = [(FMDBLEBeacon *)self styleDescriptor];
  v16 = NSStringFromSelector("styleDescriptor");
  [v4 encodeObject:v17 forKey:v16];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FMDBLEBeacon *)v4 hash];
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
  v2 = [(FMDBLEBeacon *)self identifier];
  v3 = [v2 stringValue];
  v4 = [v3 hash];

  return v4;
}

@end