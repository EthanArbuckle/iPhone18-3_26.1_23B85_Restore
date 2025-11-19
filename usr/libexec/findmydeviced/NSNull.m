@interface NSNull
- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4;
- (NSNull)initWithFMDCoder:(id)a3 error:(id *)a4;
@end

@implementation NSNull

- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSNull null];
  v7 = +[NSNull objectType];
  v12 = 0;
  [v5 encodeObject:v6 forKey:v7 error:&v12];

  v8 = v12;
  if (v8)
  {
    v9 = sub_10017DAFC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100227DB4(v8, v9);
    }

    if (a4)
    {
      v10 = v8;
      *a4 = v8;
    }
  }

  return v8 == 0;
}

- (NSNull)initWithFMDCoder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = +[NSNull objectType];
  v16 = 0;
  v9 = [v6 decodeObjectOfClass:v7 forKey:v8 error:&v16];

  v10 = v16;
  if (!v10)
  {
    if (v9)
    {
      self = [(NSNull *)self init];
      v13 = self;
      goto LABEL_9;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = sub_10017DAFC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100227E2C(v9, v11);
  }

  if (!a4)
  {
    goto LABEL_8;
  }

  v12 = v10;
  v13 = 0;
  *a4 = v10;
LABEL_9:
  v14 = v13;

  return v14;
}

@end