@interface HAPValueTransformer
+ (Class)expectedClassForFormat:(unint64_t)format;
- (id)reverseTransformedValue:(id)value format:(unint64_t)format error:(id *)error;
- (id)transformedValue:(id)value format:(unint64_t)format error:(id *)error;
@end

@implementation HAPValueTransformer

+ (Class)expectedClassForFormat:(unint64_t)format
{
  if (format - 1 > 0xE)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_1002732C8[format - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

- (id)transformedValue:(id)value format:(unint64_t)format error:(id *)error
{
  valueCopy = value;
  if (valueCopy && (v8 = [objc_opt_class() expectedClassForFormat:format], (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [NSString stringWithFormat:@"Value class, %@, is not of the expected class %@", objc_opt_class(), v8];
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_10007FAFC(0);
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPValueTransformer] %@", buf, 0x16u);
    }

    if (error)
    {
      v15 = NSLocalizedDescriptionKey;
      v16 = v10;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *error = [NSError errorWithDomain:@"HAPErrorDomain" code:-6756 userInfo:v13];
    }

    v9 = 0;
  }

  else
  {
    v9 = valueCopy;
  }

  return v9;
}

- (id)reverseTransformedValue:(id)value format:(unint64_t)format error:(id *)error
{
  valueCopy = value;
  if (valueCopy && (v8 = [objc_opt_class() expectedTransformedClassForFormat:format], (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [NSString stringWithFormat:@"Value class, %@, is not of the expected class %@", objc_opt_class(), v8];
    v11 = sub_10007FAA0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_10007FAFC(0);
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPValueTransformer] %@", buf, 0x16u);
    }

    if (error)
    {
      v15 = NSLocalizedDescriptionKey;
      v16 = v10;
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *error = [NSError errorWithDomain:@"HAPErrorDomain" code:-6756 userInfo:v13];
    }

    v9 = 0;
  }

  else
  {
    v9 = valueCopy;
  }

  return v9;
}

@end