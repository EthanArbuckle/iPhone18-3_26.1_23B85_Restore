@interface NSNull
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSNull)initWithFMDCoder:(id)coder error:(id *)error;
@end

@implementation NSNull

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v6 = +[NSNull null];
  v7 = +[NSNull objectType];
  v12 = 0;
  [coderCopy encodeObject:v6 forKey:v7 error:&v12];

  v8 = v12;
  if (v8)
  {
    v9 = sub_10017DAFC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100227DB4(v8, v9);
    }

    if (error)
    {
      v10 = v8;
      *error = v8;
    }
  }

  return v8 == 0;
}

- (NSNull)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v7 = objc_opt_class();
  v8 = +[NSNull objectType];
  v16 = 0;
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8 error:&v16];

  v10 = v16;
  if (!v10)
  {
    if (v9)
    {
      self = [(NSNull *)self init];
      selfCopy = self;
      goto LABEL_9;
    }

LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  v11 = sub_10017DAFC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100227E2C(v9, v11);
  }

  if (!error)
  {
    goto LABEL_8;
  }

  v12 = v10;
  selfCopy = 0;
  *error = v10;
LABEL_9:
  v14 = selfCopy;

  return v14;
}

@end