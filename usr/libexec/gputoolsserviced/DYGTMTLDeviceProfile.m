@interface DYGTMTLDeviceProfile
- (DYGTMTLDeviceProfile)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYGTMTLDeviceProfile

- (DYGTMTLDeviceProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DYGTMTLDeviceProfile;
  v5 = [(DYGTMTLDeviceProfile *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedFeatureSets"];
    supportedFeatureSets = v5->_supportedFeatureSets;
    v5->_supportedFeatureSets = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedGPUFamilies"];
    supportedGPUFamilies = v5->_supportedGPUFamilies;
    v5->_supportedGPUFamilies = v10;

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"defaultSamplePositions"];
    defaultSamplePositions = v5->_defaultSamplePositions;
    v5->_defaultSamplePositions = v16;

    v5->_version = [v4 decodeInt64ForKey:@"version"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeInt64:self->_streamRef forKey:@"streamRef"];
  [v5 encodeObject:self->_supportedFeatureSets forKey:@"supportedFeatureSets"];
  [v5 encodeObject:self->_supportedGPUFamilies forKey:@"supportedGPUFamilies"];
  [v5 encodeObject:self->_defaultSamplePositions forKey:@"defaultSamplePositions"];
  [v5 encodeInt64:self->_version forKey:@"version"];
}

@end