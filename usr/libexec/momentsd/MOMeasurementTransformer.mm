@interface MOMeasurementTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation MOMeasurementTransformer

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
      [MOMeasurementTransformer transformedValue:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOMeasurementTransformer.m" lineNumber:30 description:{@"Object is not of NSMeasurement (in %s:%d)", "-[MOMeasurementTransformer transformedValue:]", 30}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSKeyedArchiver archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:0];
    v9 = [NSData dataWithData:v8];
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

  return v9;
}

- (id)reverseTransformedValue:(id)value
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
      [MOMeasurementTransformer reverseTransformedValue:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOMeasurementTransformer.m" lineNumber:48 description:{@"Object is not of data type (in %s:%d)", "-[MOMeasurementTransformer reverseTransformedValue:]", 48}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:valueCopy error:0];
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  return v8;
}

- (void)transformedValue:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 30;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Object is not of NSMeasurement (in %s:%d)", v1, 0x12u);
}

- (void)reverseTransformedValue:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 48;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", v1, 0x12u);
}

@end