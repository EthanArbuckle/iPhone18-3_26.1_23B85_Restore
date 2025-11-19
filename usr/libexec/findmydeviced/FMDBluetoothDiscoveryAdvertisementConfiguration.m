@interface FMDBluetoothDiscoveryAdvertisementConfiguration
- (FMDBluetoothDiscoveryAdvertisementConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDBluetoothDiscoveryAdvertisementConfiguration

- (FMDBluetoothDiscoveryAdvertisementConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = FMDBluetoothDiscoveryAdvertisementConfiguration;
  v5 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)&v49 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("primary");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    -[FMDBluetoothDiscoveryAdvertisementConfiguration setPrimary:](v5, "setPrimary:", [v8 BOOLValue]);

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("utpConnected");
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    -[FMDBluetoothDiscoveryAdvertisementConfiguration setUtpConnected:](v5, "setUtpConnected:", [v11 BOOLValue]);

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("name");
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v5 setName:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("rssi");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v5 setRssi:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("address");
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v5 setAddress:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("colorCode");
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v5 setColorCode:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector("beaconIdentifier");
    v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v5 setBeaconIdentifier:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("inCaseStatus");
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    -[FMDBluetoothDiscoveryAdvertisementConfiguration setInCaseStatus:](v5, "setInCaseStatus:", [v29 unsignedIntegerValue]);

    v30 = objc_opt_class();
    v31 = NSStringFromSelector("inEarStatus");
    v32 = [v4 decodeObjectOfClass:v30 forKey:v31];
    -[FMDBluetoothDiscoveryAdvertisementConfiguration setInEarStatus:](v5, "setInEarStatus:", [v32 unsignedIntegerValue]);

    v33 = objc_opt_class();
    v34 = NSStringFromSelector("availability");
    v35 = [v4 decodeObjectOfClass:v33 forKey:v34];
    -[FMDBluetoothDiscoveryAdvertisementConfiguration setAvailability:](v5, "setAvailability:", [v35 unsignedIntegerValue]);

    v36 = objc_opt_class();
    v37 = NSStringFromSelector("lidClosedStatus");
    v38 = [v4 decodeObjectOfClass:v36 forKey:v37];
    -[FMDBluetoothDiscoveryAdvertisementConfiguration setLidClosedStatus:](v5, "setLidClosedStatus:", [v38 unsignedIntegerValue]);

    v39 = objc_opt_class();
    v40 = NSStringFromSelector("audioStateStatus");
    v41 = [v4 decodeObjectOfClass:v39 forKey:v40];
    -[FMDBluetoothDiscoveryAdvertisementConfiguration setAudioStateStatus:](v5, "setAudioStateStatus:", [v41 unsignedIntegerValue]);

    v42 = objc_opt_class();
    v43 = NSStringFromSelector("onHeadStatus");
    v44 = [v4 decodeObjectOfClass:v42 forKey:v43];
    -[FMDBluetoothDiscoveryAdvertisementConfiguration setOnHeadStatus:](v5, "setOnHeadStatus:", [v44 unsignedIntegerValue]);

    v45 = objc_opt_class();
    v46 = NSStringFromSelector("styleDescriptor");
    v47 = [v4 decodeObjectOfClass:v45 forKey:v46];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v5 setStyleDescriptor:v47];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithBool:[(FMDBluetoothDiscoveryAdvertisementConfiguration *)self primary]];
  v6 = NSStringFromSelector("primary");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [NSNumber numberWithBool:[(FMDBluetoothDiscoveryAdvertisementConfiguration *)self utpConnected]];
  v8 = NSStringFromSelector("utpConnected");
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)self name];
  v10 = NSStringFromSelector("name");
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)self rssi];
  v12 = NSStringFromSelector("rssi");
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)self address];
  v14 = NSStringFromSelector("address");
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)self colorCode];
  v16 = NSStringFromSelector("colorCode");
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)self beaconIdentifier];
  v18 = NSStringFromSelector("beaconIdentifier");
  [v4 encodeObject:v17 forKey:v18];

  v19 = [NSNumber numberWithUnsignedInteger:[(FMDBluetoothDiscoveryAdvertisementConfiguration *)self inCaseStatus]];
  v20 = NSStringFromSelector("inCaseStatus");
  [v4 encodeObject:v19 forKey:v20];

  v21 = [NSNumber numberWithUnsignedInteger:[(FMDBluetoothDiscoveryAdvertisementConfiguration *)self inEarStatus]];
  v22 = NSStringFromSelector("inEarStatus");
  [v4 encodeObject:v21 forKey:v22];

  v23 = [NSNumber numberWithUnsignedInteger:[(FMDBluetoothDiscoveryAdvertisementConfiguration *)self availability]];
  v24 = NSStringFromSelector("availability");
  [v4 encodeObject:v23 forKey:v24];

  v25 = [NSNumber numberWithUnsignedInteger:[(FMDBluetoothDiscoveryAdvertisementConfiguration *)self lidClosedStatus]];
  v26 = NSStringFromSelector("lidClosedStatus");
  [v4 encodeObject:v25 forKey:v26];

  v27 = [NSNumber numberWithUnsignedInteger:[(FMDBluetoothDiscoveryAdvertisementConfiguration *)self audioStateStatus]];
  v28 = NSStringFromSelector("audioStateStatus");
  [v4 encodeObject:v27 forKey:v28];

  v29 = [NSNumber numberWithUnsignedInteger:[(FMDBluetoothDiscoveryAdvertisementConfiguration *)self onHeadStatus]];
  v30 = NSStringFromSelector("onHeadStatus");
  [v4 encodeObject:v29 forKey:v30];

  v32 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)self styleDescriptor];
  v31 = NSStringFromSelector("styleDescriptor");
  [v4 encodeObject:v32 forKey:v31];
}

@end