@interface DYGTGPUToolsVersionInfo
- (DYGTGPUToolsVersionInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYGTGPUToolsVersionInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDictionary *)self->_infoPlist copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDictionary *)self->_versionPlist copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  *(v5 + 2) = self->_interposeVersionGL;
  *(v5 + 3) = self->_interposeVersionMetal;
  return v5;
}

- (DYGTGPUToolsVersionInfo)initWithCoder:(id)a3
{
  v4 = a3;
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
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"infoPlist"];
    infoPlist = v5->_infoPlist;
    v5->_infoPlist = v8;

    v10 = objc_opt_class();
    v11 = [v4 decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"versionPlist"];
    versionPlist = v5->_versionPlist;
    v5->_versionPlist = v11;

    v5->_interposeVersionGL = [v4 decodeInt32ForKey:@"interposeVersion"];
    v5->_interposeVersionMetal = [v4 decodeInt32ForKey:@"interposeVersionMetal"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  infoPlist = self->_infoPlist;
  v5 = a3;
  [v5 encodeObject:infoPlist forKey:@"infoPlist"];
  [v5 encodeObject:self->_versionPlist forKey:@"versionPlist"];
  [v5 encodeInt32:self->_interposeVersionGL forKey:@"interposeVersion"];
  [v5 encodeInt32:self->_interposeVersionMetal forKey:@"interposeVersionMetal"];
}

@end