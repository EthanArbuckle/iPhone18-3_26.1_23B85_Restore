@interface NISpatialBrowsingConfiguration
+ (id)responderConfigurationWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NISpatialBrowsingConfiguration)init;
- (NISpatialBrowsingConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NISpatialBrowsingConfiguration

+ (id)responderConfigurationWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"NISpatialBrowsingConfiguration.mm" lineNumber:24 description:@"deviceIdentifier cannot be nil."];
  }

  v6 = objc_alloc_init(NISpatialBrowsingConfiguration);
  [(NISpatialBrowsingConfiguration *)v6 setResponder:1];
  [(NISpatialBrowsingConfiguration *)v6 setDeviceIdentifier:v5];

  return v6;
}

- (NISpatialBrowsingConfiguration)init
{
  v6.receiver = self;
  v6.super_class = NISpatialBrowsingConfiguration;
  v2 = [(NIConfiguration *)&v6 initInternal];
  v3 = v2;
  if (v2)
  {
    v2->_responder = 0;
    v2->_updatesPolicy = 1;
    deviceIdentifier = v2->_deviceIdentifier;
    v2->_deviceIdentifier = 0;

    v3->_maxNearbyObjectAge = 10.0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NISpatialBrowsingConfiguration;
  v4 = [(NIConfiguration *)&v6 copyWithZone:a3];
  [v4 setResponder:self->_responder];
  [v4 setDeviceIdentifier:self->_deviceIdentifier];
  [v4 setUpdatesPolicy:self->_updatesPolicy];
  [v4 setMaxNearbyObjectAge:self->_maxNearbyObjectAge];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NISpatialBrowsingConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_responder forKey:@"responder"];
  [v4 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v4 encodeInteger:self->_updatesPolicy forKey:@"updatesPolicy"];
  [v4 encodeDouble:@"maxNearbyObjectAge" forKey:self->_maxNearbyObjectAge];
}

- (NISpatialBrowsingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NISpatialBrowsingConfiguration;
  v5 = [(NIConfiguration *)&v14 initWithCoder:v4];
  if (v5 && (v6 = [v4 decodeIntegerForKey:@"updatesPolicy"], v6 < 2))
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    v8 = [v4 decodeBoolForKey:@"responder"];
    [v4 decodeDoubleForKey:@"maxNearbyObjectAge"];
    v10 = v9;
    v5->_responder = v8;
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v7;

    v5->_updatesPolicy = v6;
    v5->_maxNearbyObjectAge = v10;
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
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
      v13 = 1;
    }

    else
    {
      v7 = [(NISpatialBrowsingConfiguration *)v5 isResponder];
      responder = self->_responder;
      v9 = [(NISpatialBrowsingConfiguration *)v6 updatesPolicy];
      updatesPolicy = self->_updatesPolicy;
      v11 = [(NISpatialBrowsingConfiguration *)v6 deviceIdentifier];
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = self->_deviceIdentifier == 0;
      }

      v14 = [(NISpatialBrowsingConfiguration *)v6 deviceIdentifier];
      v15 = [v14 isEqualToString:self->_deviceIdentifier];

      [(NISpatialBrowsingConfiguration *)v6 maxNearbyObjectAge];
      v13 = 0;
      if (responder == v7 && v9 == updatesPolicy)
      {
        v13 = (v12 | v15) & (v16 == self->_maxNearbyObjectAge);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceIdentifier hash];
  responder = self->_responder;
  updatesPolicy = self->_updatesPolicy;
  v6 = [NSNumber numberWithDouble:self->_maxNearbyObjectAge];
  v7 = [v6 hash];

  return v3 ^ responder ^ updatesPolicy ^ v7;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NISpatialBrowsingConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  if (self->_responder)
  {
    v2 = @"Yes";
  }

  else
  {
    v2 = @"No";
  }

  if (self->_updatesPolicy == 1)
  {
    v3 = @"SignificantChanges";
  }

  else
  {
    v3 = @"Stream";
  }

  v4 = [NSString stringWithFormat:@"<maxNearbyObjectAge: %0.2fsec, isResponder: %@, deviceIdentifier: %@, updatesPolicy: %@>", *&self->_maxNearbyObjectAge, v2, self->_deviceIdentifier, v3];

  return v4;
}

@end