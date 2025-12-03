@interface UARPComponentVersion
- (BOOL)addToVersion:(id)version;
- (BOOL)isEqual:(id)equal;
- (UARPComponentVersion)init;
- (UARPComponentVersion)initWithBVERString:(id)string;
- (UARPComponentVersion)initWithCoder:(id)coder;
- (UARPComponentVersion)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion releaseVersion:(unint64_t)releaseVersion buildVersion:(unint64_t)buildVersion;
- (UARPComponentVersion)initWithProjectSourceVersion:(id)version projectBuildVersion:(id)buildVersion;
- (UARPComponentVersion)initWithSimpleBVERString:(id)string;
- (UARPComponentVersion)initWithVersionString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPComponentVersion

- (UARPComponentVersion)init
{
  [(UARPComponentVersion *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPComponentVersion)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion releaseVersion:(unint64_t)releaseVersion buildVersion:(unint64_t)buildVersion
{
  v11.receiver = self;
  v11.super_class = UARPComponentVersion;
  result = [(UARPComponentVersion *)&v11 init];
  if (result)
  {
    result->_majorVersion = version;
    result->_minorVersion = minorVersion;
    result->_releaseVersion = releaseVersion;
    result->_buildVersion = buildVersion;
  }

  return result;
}

- (UARPComponentVersion)initWithVersionString:(id)string
{
  v4 = [string componentsSeparatedByString:@"."];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  if ([v4 count] < 2)
  {
    integerValue2 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:1];
    integerValue2 = [v7 integerValue];
  }

  if ([v4 count] < 3)
  {
    integerValue3 = 0;
  }

  else
  {
    v9 = [v4 objectAtIndexedSubscript:2];
    integerValue3 = [v9 integerValue];
  }

  if ([v4 count] < 4)
  {
    integerValue4 = 0;
  }

  else
  {
    v11 = [v4 objectAtIndexedSubscript:3];
    integerValue4 = [v11 integerValue];
  }

  v13 = [(UARPComponentVersion *)self initWithMajorVersion:integerValue minorVersion:integerValue2 releaseVersion:integerValue3 buildVersion:integerValue4];

  return v13;
}

- (UARPComponentVersion)initWithBVERString:(id)string
{
  v4 = [string componentsSeparatedByString:@"|"];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 componentsSeparatedByString:@"."];

  if ([v6 count] == 3)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    integerValue = [v7 integerValue];

    v8 = [v6 objectAtIndexedSubscript:1];
    v22 = [v8 substringWithRange:{0, objc_msgSend(v8, "length") - 12}];
    v21 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 12, 3}];
    v20 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 9, 3}];
    v9 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 6, 3}];
    v10 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 3, 3}];
    integerValue2 = [v22 integerValue];
    v12 = [v21 integerValue] | (integerValue2 << 16);
    integerValue3 = [v20 integerValue];
    v14 = ([v9 integerValue] << 8) | (integerValue3 << 20);
    v15 = v14 | [v10 integerValue];
    v16 = [v6 objectAtIndexedSubscript:2];
    integerValue4 = [v16 integerValue];

    self = [(UARPComponentVersion *)self initWithMajorVersion:integerValue minorVersion:v12 releaseVersion:v15 buildVersion:integerValue4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPComponentVersion)initWithSimpleBVERString:(id)string
{
  v4 = [string componentsSeparatedByString:@"|"];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 componentsSeparatedByString:@"."];

  v7 = 0;
  integerValue2 = 0;
  v9 = 0;
  integerValue = 0;
  if ([v6 count] == 3)
  {
    v11 = [v6 objectAtIndexedSubscript:0];
    integerValue = [v11 integerValue];

    v12 = [v6 objectAtIndexedSubscript:1];
    longLongValue = [v12 longLongValue];

    v9 = HIDWORD(longLongValue);
    v7 = longLongValue;
    v14 = [v6 objectAtIndexedSubscript:2];
    integerValue2 = [v14 integerValue];
  }

  v15 = [(UARPComponentVersion *)self initWithMajorVersion:integerValue minorVersion:v9 releaseVersion:v7 buildVersion:integerValue2];

  return v15;
}

- (UARPComponentVersion)initWithProjectSourceVersion:(id)version projectBuildVersion:(id)buildVersion
{
  buildVersionCopy = buildVersion;
  v7 = [(UARPComponentVersion *)self initWithVersionString:version];
  integerValue = [buildVersionCopy integerValue];

  v7->_buildVersion = integerValue;
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPComponentVersion alloc];
  majorVersion = self->_majorVersion;
  minorVersion = self->_minorVersion;
  releaseVersion = self->_releaseVersion;
  buildVersion = self->_buildVersion;

  return [(UARPComponentVersion *)v4 initWithMajorVersion:majorVersion minorVersion:minorVersion releaseVersion:releaseVersion buildVersion:buildVersion];
}

- (void)encodeWithCoder:(id)coder
{
  majorVersion = self->_majorVersion;
  coderCopy = coder;
  v6 = [NSNumber numberWithUnsignedInteger:majorVersion];
  [coderCopy encodeObject:v6 forKey:@"majorVersion"];

  v7 = [NSNumber numberWithUnsignedInteger:self->_minorVersion];
  [coderCopy encodeObject:v7 forKey:@"minorVersion"];

  v8 = [NSNumber numberWithUnsignedInteger:self->_releaseVersion];
  [coderCopy encodeObject:v8 forKey:@"releaseVersion"];

  v9 = [NSNumber numberWithUnsignedInteger:self->_buildVersion];
  [coderCopy encodeObject:v9 forKey:@"buildVersion"];
}

- (UARPComponentVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"majorVersion"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minorVersion"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseVersion"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];

  v9 = -[UARPComponentVersion initWithMajorVersion:minorVersion:releaseVersion:buildVersion:](self, "initWithMajorVersion:minorVersion:releaseVersion:buildVersion:", [v5 unsignedIntegerValue], objc_msgSend(v6, "unsignedIntegerValue"), objc_msgSend(v7, "unsignedIntegerValue"), objc_msgSend(v8, "unsignedIntegerValue"));
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v10 = 1;
    }

    else
    {
      v5 = equalCopy;
      majorVersion = self->_majorVersion;
      if (majorVersion == [(UARPComponentVersion *)v5 majorVersion]&& (minorVersion = self->_minorVersion, minorVersion == [(UARPComponentVersion *)v5 minorVersion]) && (releaseVersion = self->_releaseVersion, releaseVersion == [(UARPComponentVersion *)v5 releaseVersion]))
      {
        buildVersion = self->_buildVersion;
        v10 = buildVersion == [(UARPComponentVersion *)v5 buildVersion];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  majorVersion = [(UARPComponentVersion *)self majorVersion];
  if (majorVersion < [compareCopy majorVersion])
  {
    goto LABEL_2;
  }

  majorVersion2 = [(UARPComponentVersion *)self majorVersion];
  if (majorVersion2 > [compareCopy majorVersion])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  minorVersion = [(UARPComponentVersion *)self minorVersion];
  if (minorVersion >= [compareCopy minorVersion])
  {
    minorVersion2 = [(UARPComponentVersion *)self minorVersion];
    if (minorVersion2 > [compareCopy minorVersion])
    {
      goto LABEL_4;
    }

    releaseVersion = [(UARPComponentVersion *)self releaseVersion];
    if (releaseVersion >= [compareCopy releaseVersion])
    {
      releaseVersion2 = [(UARPComponentVersion *)self releaseVersion];
      if (releaseVersion2 <= [compareCopy releaseVersion])
      {
        buildVersion = [(UARPComponentVersion *)self buildVersion];
        if (buildVersion >= [compareCopy buildVersion])
        {
          buildVersion2 = [(UARPComponentVersion *)self buildVersion];
          v6 = buildVersion2 > [compareCopy buildVersion];
          goto LABEL_5;
        }

        goto LABEL_2;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v6 = -1;
LABEL_5:

  return v6;
}

- (BOOL)addToVersion:(id)version
{
  majorVersion = self->_majorVersion;
  versionCopy = version;
  self->_majorVersion = [versionCopy majorVersion] + majorVersion;
  minorVersion = self->_minorVersion;
  self->_minorVersion = [versionCopy minorVersion] + minorVersion;
  releaseVersion = self->_releaseVersion;
  self->_releaseVersion = [versionCopy releaseVersion] + releaseVersion;
  buildVersion = self->_buildVersion;
  buildVersion = [versionCopy buildVersion];

  self->_buildVersion = buildVersion + buildVersion;
  return 1;
}

- (unint64_t)hash
{
  versionString = [(UARPComponentVersion *)self versionString];
  v3 = [versionString hash];

  return v3;
}

@end