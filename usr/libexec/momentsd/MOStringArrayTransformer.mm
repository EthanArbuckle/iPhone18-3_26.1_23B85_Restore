@interface MOStringArrayTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation MOStringArrayTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOStringArrayTransformer transformedValue:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOStringArrayTransformer.m" lineNumber:32 description:{@"Object is not of array type (in %s:%d)", "-[MOStringArrayTransformer transformedValue:]", 32}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_new();
    v9 = [valueCopy componentsJoinedByString:&stru_100343BF0];
    v10 = [v9 dataUsingEncoding:4];
    [v8 appendData:v10];

    v11 = [NSData dataWithData:v8];
  }

  else
  {
LABEL_8:
    v11 = 0;
  }

  return v11;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOStringArrayTransformer reverseTransformedValue:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOStringArrayTransformer.m" lineNumber:49 description:{@"Object is not of data type (in %s:%d)", "-[MOStringArrayTransformer reverseTransformedValue:]", 49}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [[NSString alloc] initWithData:valueCopy encoding:4];
    if ([v8 length])
    {
      v9 = [v8 componentsSeparatedByString:&stru_100343BF0];
    }

    else
    {
      v9 = &__NSArray0__struct;
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

- (void)transformedValue:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 32;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Object is not of array type (in %s:%d)", v1, 0x12u);
}

- (void)reverseTransformedValue:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 49;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", v1, 0x12u);
}

@end