@interface NIBluetoothSample
- (BOOL)isEqual:(id)equal;
- (NIBluetoothSample)initWithBluetoothSample:(id)sample;
- (NIBluetoothSample)initWithCoder:(id)coder;
- (NIBluetoothSample)initWithRSSI:(double)i identifier:(id)identifier model:(id)model channel:(int)channel machContinuousTimeSeconds:(double)seconds partIdentifier:(id)partIdentifier name:(id)name presenceConfigData:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIBluetoothSample

- (NIBluetoothSample)initWithRSSI:(double)i identifier:(id)identifier model:(id)model channel:(int)channel machContinuousTimeSeconds:(double)seconds partIdentifier:(id)partIdentifier name:(id)name presenceConfigData:(id)self0
{
  identifierCopy = identifier;
  modelCopy = model;
  partIdentifierCopy = partIdentifier;
  nameCopy = name;
  dataCopy = data;
  if (self)
  {
    self->_rssi = i;
    objc_storeStrong(&self->_identifier, identifier);
    if (modelCopy)
    {
      v23 = modelCopy;
    }

    else
    {
      v23 = @"NONE";
    }

    model = self->_model;
    self->_model = &v23->isa;

    self->_channel = channel;
    self->_machContinuousTimeSeconds = seconds;
    objc_storeStrong(&self->_partIdentifier, partIdentifier);
    objc_storeStrong(&self->_name, name);
    objc_storeStrong(&self->_presenceConfigData, data);
  }

  return self;
}

- (NIBluetoothSample)initWithBluetoothSample:(id)sample
{
  sampleCopy = sample;
  if (!sampleCopy)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"NIBluetoothSample.mm" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"sample"}];
  }

  v21.receiver = self;
  v21.super_class = NIBluetoothSample;
  v6 = [(NIBluetoothSample *)&v21 init];
  if (v6)
  {
    [sampleCopy rssi];
    v6->_rssi = v7;
    identifier = [sampleCopy identifier];
    identifier = v6->_identifier;
    v6->_identifier = identifier;

    model = [sampleCopy model];
    model = v6->_model;
    v6->_model = model;

    v6->_channel = [sampleCopy channel];
    [sampleCopy machContinuousTimeSeconds];
    v6->_machContinuousTimeSeconds = v12;
    partIdentifier = [sampleCopy partIdentifier];
    partIdentifier = v6->_partIdentifier;
    v6->_partIdentifier = partIdentifier;

    name = [sampleCopy name];
    name = v6->_name;
    v6->_name = name;

    presenceConfigData = [sampleCopy presenceConfigData];
    presenceConfigData = v6->_presenceConfigData;
    v6->_presenceConfigData = presenceConfigData;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithBluetoothSample:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"rssi" forKey:self->_rssi];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeInt:self->_channel forKey:@"channel"];
  [coderCopy encodeDouble:@"machContinuousTimeSeconds" forKey:self->_machContinuousTimeSeconds];
  [coderCopy encodeObject:self->_partIdentifier forKey:@"partIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_presenceConfigData forKey:@"presenceConfigData"];
  v4 = [NSNumber numberWithInteger:self->_devicePlacement];
  [coderCopy encodeObject:v4 forKey:@"devicePlacement"];
}

- (NIBluetoothSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & (v6 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [coderCopy decodeDoubleForKey:@"rssi"];
    v8 = v7;
    v9 = [coderCopy decodeIntForKey:@"channel"];
    [coderCopy decodeDoubleForKey:@"machContinuousTimeSeconds"];
    v11 = v10;
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partIdentifier"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v12 = 0;
      }
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v13 = 0;
      }
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presenceConfigData"];
    v15 = [coderCopy decodeIntegerForKey:@"devicePlacement"];
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
      identifier = [(NIBluetoothSample *)v5 identifier];

      if (!identifier)
      {
        v10 = 1;
LABEL_7:
        model = self->_model;
        if (!model)
        {
          model = [(NIBluetoothSample *)v6 model];

          if (!model)
          {
            v14 = 1;
LABEL_11:
            rssi = self->_rssi;
            [(NIBluetoothSample *)v6 rssi];
            v17 = v16;
            channel = self->_channel;
            channel = [(NIBluetoothSample *)v6 channel];
            v19 = v10;
            machContinuousTimeSeconds = self->_machContinuousTimeSeconds;
            [(NIBluetoothSample *)v6 machContinuousTimeSeconds];
            v22 = v21;
            partIdentifier = self->_partIdentifier;
            if (!partIdentifier)
            {
              partIdentifier = [(NIBluetoothSample *)v6 partIdentifier];

              if (!partIdentifier)
              {
                v26 = 1;
LABEL_15:
                name = self->_name;
                if (!name)
                {
                  name = [(NIBluetoothSample *)v6 name];

                  if (!name)
                  {
                    v30 = 1;
LABEL_19:
                    presenceConfigData = self->_presenceConfigData;
                    if (!presenceConfigData)
                    {
                      presenceConfigData = [(NIBluetoothSample *)v6 presenceConfigData];

                      if (!presenceConfigData)
                      {
                        v34 = 1;
                        goto LABEL_23;
                      }

                      presenceConfigData = self->_presenceConfigData;
                    }

                    presenceConfigData2 = [(NIBluetoothSample *)v6 presenceConfigData];
                    v34 = [(NSData *)presenceConfigData isEqualToData:presenceConfigData2];

LABEL_23:
                    v35 = v19 & v14;
                    if (rssi != v17)
                    {
                      v35 = 0;
                    }

                    if (channel != channel)
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

                name2 = [(NIBluetoothSample *)v6 name];
                v30 = [(NSString *)name isEqualToString:name2];

                goto LABEL_19;
              }

              partIdentifier = self->_partIdentifier;
            }

            partIdentifier2 = [(NIBluetoothSample *)v6 partIdentifier];
            v26 = [(NSString *)partIdentifier isEqualToString:partIdentifier2];

            goto LABEL_15;
          }

          model = self->_model;
        }

        model2 = [(NIBluetoothSample *)v6 model];
        v14 = [(NSString *)model isEqualToString:model2];

        goto LABEL_11;
      }

      identifier = self->_identifier;
    }

    identifier2 = [(NIBluetoothSample *)v6 identifier];
    v10 = [(NSString *)identifier isEqualToString:identifier2];

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
  descriptionInternal = [(NIBluetoothSample *)self descriptionInternal];
  [v6 appendString:descriptionInternal];

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