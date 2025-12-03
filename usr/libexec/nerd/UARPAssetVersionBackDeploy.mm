@interface UARPAssetVersionBackDeploy
- (BOOL)isEqual:(id)equal;
- (UARPAssetVersionBackDeploy)init;
- (UARPAssetVersionBackDeploy)initWithBVERString:(id)string;
- (UARPAssetVersionBackDeploy)initWithCoder:(id)coder;
- (UARPAssetVersionBackDeploy)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion releaseVersion:(unint64_t)releaseVersion buildVersion:(unint64_t)buildVersion;
- (UARPAssetVersionBackDeploy)initWithVersionString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetVersionBackDeploy

- (UARPAssetVersionBackDeploy)init
{
  [(UARPAssetVersionBackDeploy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAssetVersionBackDeploy)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion releaseVersion:(unint64_t)releaseVersion buildVersion:(unint64_t)buildVersion
{
  v11.receiver = self;
  v11.super_class = UARPAssetVersionBackDeploy;
  result = [(UARPAssetVersionBackDeploy *)&v11 init];
  if (result)
  {
    result->_majorVersion = version;
    result->_minorVersion = minorVersion;
    result->_releaseVersion = releaseVersion;
    result->_buildVersion = buildVersion;
  }

  return result;
}

- (UARPAssetVersionBackDeploy)initWithVersionString:(id)string
{
  v4 = [string componentsSeparatedByString:@"."];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    integerValue = [v5 integerValue];
    integerValue2 = 0;
LABEL_5:
    integerValue3 = 0;
LABEL_6:
    integerValue4 = 0;
    goto LABEL_7;
  }

  if ([v4 count] == 2)
  {
    v8 = [v4 objectAtIndexedSubscript:0];
    integerValue = [v8 integerValue];

    v5 = [v4 objectAtIndexedSubscript:1];
    integerValue2 = [v5 integerValue];
    goto LABEL_5;
  }

  if ([v4 count] == 3)
  {
    v13 = [v4 objectAtIndexedSubscript:0];
    integerValue = [v13 integerValue];

    v14 = [v4 objectAtIndexedSubscript:1];
    integerValue2 = [v14 integerValue];

    v5 = [v4 objectAtIndexedSubscript:2];
    integerValue3 = [v5 integerValue];
    goto LABEL_6;
  }

  if ([v4 count] != 4)
  {
    integerValue = 0;
    integerValue2 = 0;
    integerValue3 = 0;
    integerValue4 = 0;
    goto LABEL_8;
  }

  v15 = [v4 objectAtIndexedSubscript:0];
  integerValue = [v15 integerValue];

  v16 = [v4 objectAtIndexedSubscript:1];
  integerValue2 = [v16 integerValue];

  v17 = [v4 objectAtIndexedSubscript:2];
  integerValue3 = [v17 integerValue];

  v5 = [v4 objectAtIndexedSubscript:3];
  integerValue4 = [v5 integerValue];
LABEL_7:

LABEL_8:
  v11 = [(UARPAssetVersionBackDeploy *)self initWithMajorVersion:integerValue minorVersion:integerValue2 releaseVersion:integerValue3 buildVersion:integerValue4];

  return v11;
}

- (UARPAssetVersionBackDeploy)initWithBVERString:(id)string
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

  v15 = [(UARPAssetVersionBackDeploy *)self initWithMajorVersion:integerValue minorVersion:v9 releaseVersion:v7 buildVersion:integerValue2];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UARPAssetVersionBackDeploy alloc];
  majorVersion = self->_majorVersion;
  minorVersion = self->_minorVersion;
  releaseVersion = self->_releaseVersion;
  buildVersion = self->_buildVersion;

  return [(UARPAssetVersionBackDeploy *)v4 initWithMajorVersion:majorVersion minorVersion:minorVersion releaseVersion:releaseVersion buildVersion:buildVersion];
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

- (UARPAssetVersionBackDeploy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"majorVersion"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minorVersion"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseVersion"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];

  v9 = -[UARPAssetVersionBackDeploy initWithMajorVersion:minorVersion:releaseVersion:buildVersion:](self, "initWithMajorVersion:minorVersion:releaseVersion:buildVersion:", [v5 unsignedIntegerValue], objc_msgSend(v6, "unsignedIntegerValue"), objc_msgSend(v7, "unsignedIntegerValue"), objc_msgSend(v8, "unsignedIntegerValue"));
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
      if (majorVersion == [(UARPAssetVersionBackDeploy *)v5 majorVersion]&& (minorVersion = self->_minorVersion, minorVersion == [(UARPAssetVersionBackDeploy *)v5 minorVersion]) && (releaseVersion = self->_releaseVersion, releaseVersion == [(UARPAssetVersionBackDeploy *)v5 releaseVersion]))
      {
        buildVersion = self->_buildVersion;
        v10 = buildVersion == [(UARPAssetVersionBackDeploy *)v5 buildVersion];
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
  majorVersion = [(UARPAssetVersionBackDeploy *)self majorVersion];
  if (majorVersion < [compareCopy majorVersion])
  {
    goto LABEL_2;
  }

  majorVersion2 = [(UARPAssetVersionBackDeploy *)self majorVersion];
  if (majorVersion2 > [compareCopy majorVersion])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  minorVersion = [(UARPAssetVersionBackDeploy *)self minorVersion];
  if (minorVersion >= [compareCopy minorVersion])
  {
    minorVersion2 = [(UARPAssetVersionBackDeploy *)self minorVersion];
    if (minorVersion2 > [compareCopy minorVersion])
    {
      goto LABEL_4;
    }

    releaseVersion = [(UARPAssetVersionBackDeploy *)self releaseVersion];
    if (releaseVersion >= [compareCopy releaseVersion])
    {
      releaseVersion2 = [(UARPAssetVersionBackDeploy *)self releaseVersion];
      if (releaseVersion2 <= [compareCopy releaseVersion])
      {
        buildVersion = [(UARPAssetVersionBackDeploy *)self buildVersion];
        if (buildVersion >= [compareCopy buildVersion])
        {
          buildVersion2 = [(UARPAssetVersionBackDeploy *)self buildVersion];
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

@end