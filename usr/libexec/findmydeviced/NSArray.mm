@interface NSArray
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSArray)initWithFMDCoder:(id)coder error:(id *)error;
@end

@implementation NSArray

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  objectType = [objc_opt_class() objectType];
  v16 = 0;
  [coderCopy encodeObjects:self forKey:objectType error:&v16];
  v8 = v16;

  objectType2 = [objc_opt_class() objectType];
  objectTypeKey = [objc_opt_class() objectTypeKey];
  v15 = v8;
  [coderCopy encodeObject:objectType2 forKey:objectTypeKey error:&v15];

  v11 = v15;
  if (v11)
  {
    v12 = sub_10017DAFC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022570C(v11, v12);
    }

    if (error)
    {
      v13 = v11;
      *error = v11;
    }
  }

  return v11 == 0;
}

- (NSArray)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v5 = objc_opt_new();
  for (i = 0; ; ++i)
  {
    v7 = [NSSet setWithObject:&OBJC_PROTOCOL___FMDCodable];
    v8 = [NSString stringWithFormat:@"FM.object.%ld", i];
    v19 = 0;
    v9 = [coderCopy decodeObjectOfProtocols:v7 forKey:v8 error:&v19];
    v10 = v19;

    if (v10 || v9 == 0)
    {
      break;
    }

    [v5 addObject:v9];
  }

  if (v10)
  {
    v12 = sub_10017DAFC();
    selfCopy = self;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100225784(v10, v12);
    }

    if (error)
    {
      v14 = v10;
      v15 = 0;
      *error = v10;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    selfCopy = [(NSArray *)self initWithArray:v5];
    v15 = selfCopy;
  }

  return v15;
}

@end