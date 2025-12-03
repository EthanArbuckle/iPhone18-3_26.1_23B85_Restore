@interface DYGTGPUToolsVersionInfo
- (DYGTGPUToolsVersionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYGTGPUToolsVersionInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDictionary *)self->_infoPlist copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDictionary *)self->_versionPlist copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  *(v5 + 2) = self->_interposeVersionGL;
  *(v5 + 3) = self->_interposeVersionMetal;
  return v5;
}

- (DYGTGPUToolsVersionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DYGTGPUToolsVersionInfo;
  v5 = [(DYGTGPUToolsVersionInfo *)&v14 init];
  if (v5)
  {
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v15 count:3];
    v7 = [NSSet setWithArray:v6];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"infoPlist"];
    infoPlist = v5->_infoPlist;
    v5->_infoPlist = v8;

    v10 = objc_opt_class();
    v11 = [coderCopy decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"versionPlist"];
    versionPlist = v5->_versionPlist;
    v5->_versionPlist = v11;

    v5->_interposeVersionGL = [coderCopy decodeInt32ForKey:@"interposeVersion"];
    v5->_interposeVersionMetal = [coderCopy decodeInt32ForKey:@"interposeVersionMetal"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  infoPlist = self->_infoPlist;
  coderCopy = coder;
  [coderCopy encodeObject:infoPlist forKey:@"infoPlist"];
  [coderCopy encodeObject:self->_versionPlist forKey:@"versionPlist"];
  [coderCopy encodeInt32:self->_interposeVersionGL forKey:@"interposeVersion"];
  [coderCopy encodeInt32:self->_interposeVersionMetal forKey:@"interposeVersionMetal"];
}

@end