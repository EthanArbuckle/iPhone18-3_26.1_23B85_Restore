@interface DYGTDeviceInfo
- (DYGTDeviceInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setMainScreenDescriptor:(id *)descriptor;
@end

@implementation DYGTDeviceInfo

- (DYGTDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = DYGTDeviceInfo;
  v5 = [(DYGTDeviceInfo *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"permanentIdentifier"];
    permanentIdentifier = v5->_permanentIdentifier;
    v5->_permanentIdentifier = v6;

    v5->_runtimeIdentifier = [coderCopy decodeInt64ForKey:@"runtimeIdentifier"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    build = v5->_build;
    v5->_build = v14;

    v5->_platform = [coderCopy decodeInt32ForKey:@"platform"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalVersion"];
    metalVersion = v5->_metalVersion;
    v5->_metalVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gputoolsVersionInfo"];
    gputoolsVersionInfo = v5->_gputoolsVersionInfo;
    v5->_gputoolsVersionInfo = v18;

    v5->_mainScreenDescriptor.width = [coderCopy decodeInt32ForKey:@"mainScreenResolution.width"];
    v5->_mainScreenDescriptor.height = [coderCopy decodeInt32ForKey:@"mainScreenResolution.height"];
    v5->_mainScreenDescriptor.scale = [coderCopy decodeInt32ForKey:@"mainScreenResolution.scale"];
    [coderCopy decodeDoubleForKey:@"mainScreenDescriptor.orientation"];
    v5->_mainScreenDescriptor.orientation = v20;
    v5->_mainScreenDescriptor.type = [coderCopy decodeInt32ForKey:@"mainScreenDescriptor.type"];
    v21 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedGLProfileContextsInfo"];
    profiles = v5->_profiles;
    v5->_profiles = v21;

    v5->_nativePointerSize = [coderCopy decodeInt32ForKey:@"nativePointerSize"];
    platform = v5->_platform;
    if (platform == 7)
    {
      v24 = 9;
      goto LABEL_6;
    }

    if (platform == 8)
    {
      v24 = 10;
LABEL_6:
      v5->_platform = v24;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  permanentIdentifier = self->_permanentIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:permanentIdentifier forKey:@"identifier"];
  [coderCopy encodeInt64:self->_runtimeIdentifier forKey:@"runtimeIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_productType forKey:@"productType"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
  [coderCopy encodeObject:self->_build forKey:@"build"];
  [coderCopy encodeInt32:self->_platform forKey:@"platform"];
  [coderCopy encodeObject:self->_metalVersion forKey:@"metalVersion"];
  [coderCopy encodeObject:self->_gputoolsVersionInfo forKey:@"gputoolsVersionInfo"];
  [coderCopy encodeInt32:self->_mainScreenDescriptor.width forKey:@"mainScreenResolution.width"];
  [coderCopy encodeInt32:self->_mainScreenDescriptor.height forKey:@"mainScreenResolution.height"];
  [coderCopy encodeInt32:self->_mainScreenDescriptor.scale forKey:@"mainScreenResolution.scale"];
  [coderCopy encodeDouble:@"mainScreenDescriptor.orientation" forKey:self->_mainScreenDescriptor.orientation];
  [coderCopy encodeInt32:self->_mainScreenDescriptor.type forKey:@"mainScreenDescriptor.type"];
  [coderCopy encodeObject:self->_profiles forKey:@"supportedGLProfileContextsInfo"];
  [coderCopy encodeInt32:self->_nativePointerSize forKey:@"nativePointerSize"];
}

- (void)setMainScreenDescriptor:(id *)descriptor
{
  v3 = *&descriptor->var0;
  *&self->_mainScreenDescriptor.scale = *&descriptor->var3;
  *&self->_mainScreenDescriptor.orientation = v3;
}

@end