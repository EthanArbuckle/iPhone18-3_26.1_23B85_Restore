@interface NIBluetoothSample
- (BOOL)isEqual:(id)a3;
- (NIBluetoothSample)initWithBluetoothSample:(id)a3;
- (NIBluetoothSample)initWithCoder:(id)a3;
- (NIBluetoothSample)initWithRSSI:(double)a3 identifier:(id)a4 model:(id)a5 channel:(int)a6 machContinuousTimeSeconds:(double)a7 partIdentifier:(id)a8 name:(id)a9 presenceConfigData:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIBluetoothSample

- (NIBluetoothSample)initWithRSSI:(double)a3 identifier:(id)a4 model:(id)a5 channel:(int)a6 machContinuousTimeSeconds:(double)a7 partIdentifier:(id)a8 name:(id)a9 presenceConfigData:(id)a10
{
  v26 = a4;
  v19 = a5;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (self)
  {
    self->_rssi = a3;
    objc_storeStrong(&self->_identifier, a4);
    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = @"NONE";
    }

    model = self->_model;
    self->_model = &v23->isa;

    self->_channel = a6;
    self->_machContinuousTimeSeconds = a7;
    objc_storeStrong(&self->_partIdentifier, a8);
    objc_storeStrong(&self->_name, a9);
    objc_storeStrong(&self->_presenceConfigData, a10);
  }

  return self;
}

- (NIBluetoothSample)initWithBluetoothSample:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"NIBluetoothSample.mm" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"sample"}];
  }

  v21.receiver = self;
  v21.super_class = NIBluetoothSample;
  v6 = [(NIBluetoothSample *)&v21 init];
  if (v6)
  {
    [v5 rssi];
    v6->_rssi = v7;
    v8 = [v5 identifier];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [v5 model];
    model = v6->_model;
    v6->_model = v10;

    v6->_channel = [v5 channel];
    [v5 machContinuousTimeSeconds];
    v6->_machContinuousTimeSeconds = v12;
    v13 = [v5 partIdentifier];
    partIdentifier = v6->_partIdentifier;
    v6->_partIdentifier = v13;

    v15 = [v5 name];
    name = v6->_name;
    v6->_name = v15;

    v17 = [v5 presenceConfigData];
    presenceConfigData = v6->_presenceConfigData;
    v6->_presenceConfigData = v17;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithBluetoothSample:self];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeDouble:@"rssi" forKey:self->_rssi];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_model forKey:@"model"];
  [v5 encodeInt:self->_channel forKey:@"channel"];
  [v5 encodeDouble:@"machContinuousTimeSeconds" forKey:self->_machContinuousTimeSeconds];
  [v5 encodeObject:self->_partIdentifier forKey:@"partIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_presenceConfigData forKey:@"presenceConfigData"];
  v4 = [NSNumber numberWithInteger:self->_devicePlacement];
  [v5 encodeObject:v4 forKey:@"devicePlacement"];
}

- (NIBluetoothSample)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & (v6 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 decodeDoubleForKey:@"rssi"];
    v8 = v7;
    v9 = [v4 decodeIntForKey:@"channel"];
    [v4 decodeDoubleForKey:@"machContinuousTimeSeconds"];
    v11 = v10;
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partIdentifier"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v12 = 0;
      }
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v13 = 0;
      }
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presenceConfigData"];
    v15 = [v4 decodeIntegerForKey:@"devicePlacement"];
    v20.receiver = self;
    v20.super_class = NIBluetoothSample;
    v16 = [(NIBluetoothSample *)&v20 init];
    v17 = v16;
    if (v16)
    {
      v16->_rssi = v8;
      objc_storeStrong(&v16->_identifier, v5);
      objc_storeStrong(&v17->_model, v6);
      v17->_channel = v9;
      v17->_machContinuousTimeSeconds = v11;
      objc_storeStrong(&v17->_partIdentifier, v12);
      objc_storeStrong(&v17->_name, v13);
      objc_storeStrong(&v17->_presenceConfigData, v14);
      v17->_devicePlacement = v15;
    }

    self = v17;

    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v36 = 1;
LABEL_32:

      goto LABEL_33;
    }

    identifier = self->_identifier;
    if (!identifier)
    {
      v8 = [(NIBluetoothSample *)v5 identifier];

      if (!v8)
      {
        v10 = 1;
LABEL_7:
        model = self->_model;
        if (!model)
        {
          v12 = [(NIBluetoothSample *)v6 model];

          if (!v12)
          {
            v14 = 1;
LABEL_11:
            rssi = self->_rssi;
            [(NIBluetoothSample *)v6 rssi];
            v17 = v16;
            channel = self->_channel;
            v18 = [(NIBluetoothSample *)v6 channel];
            v19 = v10;
            machContinuousTimeSeconds = self->_machContinuousTimeSeconds;
            [(NIBluetoothSample *)v6 machContinuousTimeSeconds];
            v22 = v21;
            partIdentifier = self->_partIdentifier;
            if (!partIdentifier)
            {
              v24 = [(NIBluetoothSample *)v6 partIdentifier];

              if (!v24)
              {
                v26 = 1;
LABEL_15:
                name = self->_name;
                if (!name)
                {
                  v28 = [(NIBluetoothSample *)v6 name];

                  if (!v28)
                  {
                    v30 = 1;
LABEL_19:
                    presenceConfigData = self->_presenceConfigData;
                    if (!presenceConfigData)
                    {
                      v32 = [(NIBluetoothSample *)v6 presenceConfigData];

                      if (!v32)
                      {
                        v34 = 1;
                        goto LABEL_23;
                      }

                      presenceConfigData = self->_presenceConfigData;
                    }

                    v33 = [(NIBluetoothSample *)v6 presenceConfigData];
                    v34 = [(NSData *)presenceConfigData isEqualToData:v33];

LABEL_23:
                    v35 = v19 & v14;
                    if (rssi != v17)
                    {
                      v35 = 0;
                    }

                    if (channel != v18)
                    {
                      v35 = 0;
                    }

                    if (machContinuousTimeSeconds != v22)
                    {
                      v35 = 0;
                    }

                    v36 = v35 & v30 & v26 & v34;
                    goto LABEL_32;
                  }

                  name = self->_name;
                }

                v29 = [(NIBluetoothSample *)v6 name];
                v30 = [(NSString *)name isEqualToString:v29];

                goto LABEL_19;
              }

              partIdentifier = self->_partIdentifier;
            }

            v25 = [(NIBluetoothSample *)v6 partIdentifier];
            v26 = [(NSString *)partIdentifier isEqualToString:v25];

            goto LABEL_15;
          }

          model = self->_model;
        }

        v13 = [(NIBluetoothSample *)v6 model];
        v14 = [(NSString *)model isEqualToString:v13];

        goto LABEL_11;
      }

      identifier = self->_identifier;
    }

    v9 = [(NIBluetoothSample *)v6 identifier];
    v10 = [(NSString *)identifier isEqualToString:v9];

    goto LABEL_7;
  }

  v36 = 0;
LABEL_33:

  return v36;
}

- (unint64_t)hash
{
  v15 = [NSNumber numberWithDouble:self->_rssi];
  v3 = [v15 hash];
  v4 = [(NSString *)self->_identifier hash];
  v5 = [(NSString *)self->_model hash];
  v6 = [NSNumber numberWithInteger:self->_channel];
  v7 = v3;
  v8 = [v6 hash];
  v9 = [NSNumber numberWithDouble:self->_machContinuousTimeSeconds];
  v10 = [v9 hash];
  v11 = [(NSString *)self->_name hash];
  v12 = [(NSString *)self->_partIdentifier hash];
  v13 = [(NSData *)self->_presenceConfigData hash];

  return v4 ^ v7 ^ v5 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@"Identifier: %@", self->_identifier];
  [v6 appendFormat:@", RSSI: %.2f", *&self->_rssi];
  [v6 appendFormat:@", Mach Continuous Time Seconds: %f", *&self->_machContinuousTimeSeconds];
  [v6 appendFormat:@", Channel: %d", self->_channel];
  [v6 appendFormat:@", Model: %@", self->_model];
  v7 = [(NIBluetoothSample *)self descriptionInternal];
  [v6 appendString:v7];

  [v6 appendString:@">"];

  return v6;
}

- (id)descriptionInternal
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@", partIdentifier: %@", self->_partIdentifier];
  [v3 appendFormat:@", devicePlacement: %ld", self->_devicePlacement];

  return v3;
}

@end