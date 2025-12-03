@interface DYGTMTLDeviceProfile
- (DYGTMTLDeviceProfile)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYGTMTLDeviceProfile

- (DYGTMTLDeviceProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DYGTMTLDeviceProfile;
  v5 = [(DYGTMTLDeviceProfile *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedFeatureSets"];
    supportedFeatureSets = v5->_supportedFeatureSets;
    v5->_supportedFeatureSets = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedGPUFamilies"];
    supportedGPUFamilies = v5->_supportedGPUFamilies;
    v5->_supportedGPUFamilies = v10;

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"defaultSamplePositions"];
    defaultSamplePositions = v5->_defaultSamplePositions;
    v5->_defaultSamplePositions = v16;

    v5->_version = [coderCopy decodeInt64ForKey:@"version"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInt64:self->_streamRef forKey:@"streamRef"];
  [coderCopy encodeObject:self->_supportedFeatureSets forKey:@"supportedFeatureSets"];
  [coderCopy encodeObject:self->_supportedGPUFamilies forKey:@"supportedGPUFamilies"];
  [coderCopy encodeObject:self->_defaultSamplePositions forKey:@"defaultSamplePositions"];
  [coderCopy encodeInt64:self->_version forKey:@"version"];
}

@end