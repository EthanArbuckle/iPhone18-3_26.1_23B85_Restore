@interface NSArray
- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4;
- (NSArray)initWithFMDCoder:(id)a3 error:(id *)a4;
@end

@implementation NSArray

- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() objectType];
  v16 = 0;
  [v6 encodeObjects:self forKey:v7 error:&v16];
  v8 = v16;

  v9 = [objc_opt_class() objectType];
  v10 = [objc_opt_class() objectTypeKey];
  v15 = v8;
  [v6 encodeObject:v9 forKey:v10 error:&v15];

  v11 = v15;
  if (v11)
  {
    v12 = sub_10017DAFC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022570C(v11, v12);
    }

    if (a4)
    {
      v13 = v11;
      *a4 = v11;
    }
  }

  return v11 == 0;
}

- (NSArray)initWithFMDCoder:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_new();
  for (i = 0; ; ++i)
  {
    v7 = [NSSet setWithObject:&OBJC_PROTOCOL___FMDCodable];
    v8 = [NSString stringWithFormat:@"FM.object.%ld", i];
    v19 = 0;
    v9 = [v4 decodeObjectOfProtocols:v7 forKey:v8 error:&v19];
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
    v13 = self;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100225784(v10, v12);
    }

    if (a4)
    {
      v14 = v10;
      v15 = 0;
      *a4 = v10;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v13 = [(NSArray *)self initWithArray:v5];
    v15 = v13;
  }

  return v15;
}

@end