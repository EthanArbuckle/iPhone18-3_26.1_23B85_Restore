@interface UARPComponentVersion
- (BOOL)addToVersion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UARPComponentVersion)init;
- (UARPComponentVersion)initWithBVERString:(id)a3;
- (UARPComponentVersion)initWithCoder:(id)a3;
- (UARPComponentVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 releaseVersion:(unint64_t)a5 buildVersion:(unint64_t)a6;
- (UARPComponentVersion)initWithProjectSourceVersion:(id)a3 projectBuildVersion:(id)a4;
- (UARPComponentVersion)initWithSimpleBVERString:(id)a3;
- (UARPComponentVersion)initWithVersionString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPComponentVersion

- (UARPComponentVersion)init
{
  [(UARPComponentVersion *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPComponentVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 releaseVersion:(unint64_t)a5 buildVersion:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = UARPComponentVersion;
  result = [(UARPComponentVersion *)&v11 init];
  if (result)
  {
    result->_majorVersion = a3;
    result->_minorVersion = a4;
    result->_releaseVersion = a5;
    result->_buildVersion = a6;
  }

  return result;
}

- (UARPComponentVersion)initWithVersionString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"."];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  if ([v4 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [v7 integerValue];
  }

  if ([v4 count] < 3)
  {
    v10 = 0;
  }

  else
  {
    v9 = [v4 objectAtIndexedSubscript:2];
    v10 = [v9 integerValue];
  }

  if ([v4 count] < 4)
  {
    v12 = 0;
  }

  else
  {
    v11 = [v4 objectAtIndexedSubscript:3];
    v12 = [v11 integerValue];
  }

  v13 = [(UARPComponentVersion *)self initWithMajorVersion:v6 minorVersion:v8 releaseVersion:v10 buildVersion:v12];

  return v13;
}

- (UARPComponentVersion)initWithBVERString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"|"];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 componentsSeparatedByString:@"."];

  if ([v6 count] == 3)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v23 = [v7 integerValue];

    v8 = [v6 objectAtIndexedSubscript:1];
    v22 = [v8 substringWithRange:{0, objc_msgSend(v8, "length") - 12}];
    v21 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 12, 3}];
    v20 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 9, 3}];
    v9 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 6, 3}];
    v10 = [v8 substringWithRange:{objc_msgSend(v8, "length") - 3, 3}];
    v11 = [v22 integerValue];
    v12 = [v21 integerValue] | (v11 << 16);
    v13 = [v20 integerValue];
    v14 = ([v9 integerValue] << 8) | (v13 << 20);
    v15 = v14 | [v10 integerValue];
    v16 = [v6 objectAtIndexedSubscript:2];
    v17 = [v16 integerValue];

    self = [(UARPComponentVersion *)self initWithMajorVersion:v23 minorVersion:v12 releaseVersion:v15 buildVersion:v17];
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (UARPComponentVersion)initWithSimpleBVERString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"|"];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 componentsSeparatedByString:@"."];

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if ([v6 count] == 3)
  {
    v11 = [v6 objectAtIndexedSubscript:0];
    v10 = [v11 integerValue];

    v12 = [v6 objectAtIndexedSubscript:1];
    v13 = [v12 longLongValue];

    v9 = HIDWORD(v13);
    v7 = v13;
    v14 = [v6 objectAtIndexedSubscript:2];
    v8 = [v14 integerValue];
  }

  v15 = [(UARPComponentVersion *)self initWithMajorVersion:v10 minorVersion:v9 releaseVersion:v7 buildVersion:v8];

  return v15;
}

- (UARPComponentVersion)initWithProjectSourceVersion:(id)a3 projectBuildVersion:(id)a4
{
  v6 = a4;
  v7 = [(UARPComponentVersion *)self initWithVersionString:a3];
  v8 = [v6 integerValue];

  v7->_buildVersion = v8;
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UARPComponentVersion alloc];
  majorVersion = self->_majorVersion;
  minorVersion = self->_minorVersion;
  releaseVersion = self->_releaseVersion;
  buildVersion = self->_buildVersion;

  return [(UARPComponentVersion *)v4 initWithMajorVersion:majorVersion minorVersion:minorVersion releaseVersion:releaseVersion buildVersion:buildVersion];
}

- (void)encodeWithCoder:(id)a3
{
  majorVersion = self->_majorVersion;
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedInteger:majorVersion];
  [v5 encodeObject:v6 forKey:@"majorVersion"];

  v7 = [NSNumber numberWithUnsignedInteger:self->_minorVersion];
  [v5 encodeObject:v7 forKey:@"minorVersion"];

  v8 = [NSNumber numberWithUnsignedInteger:self->_releaseVersion];
  [v5 encodeObject:v8 forKey:@"releaseVersion"];

  v9 = [NSNumber numberWithUnsignedInteger:self->_buildVersion];
  [v5 encodeObject:v9 forKey:@"buildVersion"];
}

- (UARPComponentVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"majorVersion"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minorVersion"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseVersion"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buildVersion"];

  v9 = -[UARPComponentVersion initWithMajorVersion:minorVersion:releaseVersion:buildVersion:](self, "initWithMajorVersion:minorVersion:releaseVersion:buildVersion:", [v5 unsignedIntegerValue], objc_msgSend(v6, "unsignedIntegerValue"), objc_msgSend(v7, "unsignedIntegerValue"), objc_msgSend(v8, "unsignedIntegerValue"));
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v10 = 1;
    }

    else
    {
      v5 = v4;
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(UARPComponentVersion *)self majorVersion];
  if (v5 < [v4 majorVersion])
  {
    goto LABEL_2;
  }

  v7 = [(UARPComponentVersion *)self majorVersion];
  if (v7 > [v4 majorVersion])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v9 = [(UARPComponentVersion *)self minorVersion];
  if (v9 >= [v4 minorVersion])
  {
    v10 = [(UARPComponentVersion *)self minorVersion];
    if (v10 > [v4 minorVersion])
    {
      goto LABEL_4;
    }

    v11 = [(UARPComponentVersion *)self releaseVersion];
    if (v11 >= [v4 releaseVersion])
    {
      v12 = [(UARPComponentVersion *)self releaseVersion];
      if (v12 <= [v4 releaseVersion])
      {
        v13 = [(UARPComponentVersion *)self buildVersion];
        if (v13 >= [v4 buildVersion])
        {
          v14 = [(UARPComponentVersion *)self buildVersion];
          v6 = v14 > [v4 buildVersion];
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

- (BOOL)addToVersion:(id)a3
{
  majorVersion = self->_majorVersion;
  v5 = a3;
  self->_majorVersion = [v5 majorVersion] + majorVersion;
  minorVersion = self->_minorVersion;
  self->_minorVersion = [v5 minorVersion] + minorVersion;
  releaseVersion = self->_releaseVersion;
  self->_releaseVersion = [v5 releaseVersion] + releaseVersion;
  buildVersion = self->_buildVersion;
  v9 = [v5 buildVersion];

  self->_buildVersion = v9 + buildVersion;
  return 1;
}

- (unint64_t)hash
{
  v2 = [(UARPComponentVersion *)self versionString];
  v3 = [v2 hash];

  return v3;
}

@end