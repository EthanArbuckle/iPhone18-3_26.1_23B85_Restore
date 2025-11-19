@interface KTLoggableDataArrayTransformer
+ (void)registerTransformer;
- (id)allowedTopLevelClasses;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation KTLoggableDataArrayTransformer

- (id)allowedTopLevelClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (void)registerTransformer
{
  v3 = objc_alloc_init(KTLoggableDataArrayTransformer);
  v2 = +[KTLoggableDataArrayTransformer name];
  [NSValueTransformer setValueTransformer:v3 forName:v2];
}

- (id)transformedValue:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];

  v5 = v8;
  if (v5)
  {
    if (qword_10039CAA8 != -1)
    {
      sub_10025CF8C();
    }

    v6 = qword_10039CAB0;
    if (os_log_type_enabled(qword_10039CAB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed to transform from data to KTLoggableDataArray: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (id)reverseTransformedValue:(id)a3
{
  v7 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (v4)
  {
    if (qword_10039CAA8 != -1)
    {
      sub_10025CFB4();
    }

    v5 = qword_10039CAB0;
    if (os_log_type_enabled(qword_10039CAB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "failed to transform from KTLoggableDataArray to data: %@", buf, 0xCu);
    }
  }

  return v3;
}

@end