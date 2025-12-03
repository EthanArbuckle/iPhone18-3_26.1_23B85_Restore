@interface NIRegionPredicate
- (BOOL)isEqual:(id)equal;
- (NIRegionPredicate)initWithCoder:(id)coder;
- (NIRegionPredicate)initWithName:(id)name devicePresencePreset:(int64_t)preset;
- (NIRegionPredicate)initWithName:(id)name radius:(float)radius;
- (NIRegionPredicate)initWithName:(id)name radius:(float)radius preferredUpdateRate:(int64_t)rate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIRegionPredicate

- (NIRegionPredicate)initWithName:(id)name radius:(float)radius preferredUpdateRate:(int64_t)rate
{
  nameCopy = name;
  if (!nameCopy)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NIRegionPredicate.mm" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  if (radius <= 0.0)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NIRegionPredicate.mm" lineNumber:23 description:@"radius must be larger than 0"];
  }

  v16.receiver = self;
  v16.super_class = NIRegionPredicate;
  v11 = [(NIRegionPredicate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_radius = radius;
    v12->_regionSizeCategory = 0;
    v12->_preferredUpdateRate = rate;
    *&v12->_requiresUserIntent = 0;
    v12->_devicePresencePreset = 0;
  }

  return v12;
}

- (NIRegionPredicate)initWithName:(id)name radius:(float)radius
{
  nameCopy = name;
  v7 = objc_alloc(objc_opt_class());
  *&v8 = radius;
  v9 = [v7 initWithName:nameCopy radius:0 preferredUpdateRate:v8];

  return v9;
}

- (NIRegionPredicate)initWithName:(id)name devicePresencePreset:(int64_t)preset
{
  nameCopy = name;
  if (nameCopy)
  {
    if (preset)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NIRegionPredicate.mm" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (preset)
    {
      goto LABEL_3;
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"NIRegionPredicate.mm" lineNumber:43 description:@"device presence preset cannot be unspecified"];

LABEL_3:
  v8 = objc_alloc(objc_opt_class());
  [NIDevicePresenceConfiguration _radiusFromDevicePresencePreset:preset];
  v9 = [v8 initWithName:nameCopy radius:?];

  if (v9)
  {
    v9->_devicePresencePreset = preset;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  name = self->_name;
  regionSizeCategory = self->_regionSizeCategory;
  *&v7 = self->_radius;
  preferredUpdateRate = self->_preferredUpdateRate;
  requiresUserIntent = self->_requiresUserIntent;
  coarseEstimation = self->_coarseEstimation;
  devicePresencePreset = self->_devicePresencePreset;

  return [v4 initWithName:name regionSizeCategory:regionSizeCategory radius:preferredUpdateRate preferredUpdateRate:requiresUserIntent requiresUserIntent:coarseEstimation coarseEstimation:devicePresencePreset devicePresencePreset:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_regionSizeCategory forKey:@"regionSizeCategory"];
  *&v4 = self->_radius;
  [coderCopy encodeFloat:@"radius" forKey:v4];
  [coderCopy encodeInteger:self->_preferredUpdateRate forKey:@"preferredUpdateRate"];
  [coderCopy encodeBool:self->_requiresUserIntent forKey:@"requiresUserIntent"];
  [coderCopy encodeInteger:self->_devicePresencePreset forKey:@"devicePresencePreset"];
  [coderCopy encodeBool:self->_coarseEstimation forKey:@"coarseEstimation"];
}

- (NIRegionPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeIntegerForKey:@"regionSizeCategory"];
  [coderCopy decodeFloatForKey:@"radius"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"preferredUpdateRate"];
  v10 = [coderCopy decodeIntegerForKey:@"devicePresencePreset"];
  if (v5 && ((v11 = v10, v8 >= 0.0) || v10))
  {
    v13 = [coderCopy decodeBoolForKey:@"requiresUserIntent"];
    v14 = [coderCopy decodeBoolForKey:@"coarseEstimation"];
    v18.receiver = self;
    v18.super_class = NIRegionPredicate;
    v15 = [(NIRegionPredicate *)&v18 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_name, v5);
      v16->_radius = v8;
      v16->_regionSizeCategory = v6;
      v16->_preferredUpdateRate = v9;
      v16->_requiresUserIntent = v13;
      v16->_devicePresencePreset = v11;
      v16->_coarseEstimation = v14;
    }

    self = v16;
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
      v9 = 1;
    }

    else
    {
      name = [(NIRegionPredicate *)v5 name];
      v9 = [name isEqualToString:self->_name] && -[NIRegionPredicate regionSizeCategory](v6, "regionSizeCategory") == self->_regionSizeCategory && (-[NIRegionPredicate radius](v6, "radius"), v8 == self->_radius) && -[NIRegionPredicate preferredUpdateRate](v6, "preferredUpdateRate") == self->_preferredUpdateRate && self->_requiresUserIntent == -[NIRegionPredicate requiresUserIntent](v6, "requiresUserIntent") && self->_coarseEstimation == -[NIRegionPredicate coarseEstimation](v6, "coarseEstimation");
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIRegionPredicate *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  name = self->_name;
  regionSizeCategory = self->_regionSizeCategory;
  if (regionSizeCategory)
  {
    if (regionSizeCategory != 10)
    {
      sub_1004BA500();
    }

    v5 = @"Large";
  }

  else
  {
    v5 = @"Default";
  }

  radius = self->_radius;
  v7 = [NIInternalUtils NINearbyObjectUpdateRateToString:self->_preferredUpdateRate];
  devicePresencePreset = self->_devicePresencePreset;
  if (devicePresencePreset >= 9)
  {
    sub_1004BA4D4();
  }

  v9 = [NSString stringWithFormat:@"name: %@, cat: %@, radius: %0.2f m, rate: %s, intent: %d, coarse: %d, presencePreset: %s", name, v5, radius, v7, self->_requiresUserIntent, self->_coarseEstimation, off_1009A3640[devicePresencePreset]];

  return v9;
}

@end