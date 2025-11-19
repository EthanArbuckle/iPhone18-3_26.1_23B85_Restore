@interface MODictionaryEncoder
+ (id)decodeToDictionary:(id)a3;
+ (id)encodeDictionary:(id)a3;
@end

@implementation MODictionaryEncoder

+ (id)encodeDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MODictionaryEncoder encodeDictionary:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"MODictionaryEncoder.m" lineNumber:23 description:{@"Object is not of dictionary type (in %s:%d)", "+[MODictionaryEncoder encodeDictionary:]", 23}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v8 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v13];
    v9 = v13;
    if (v9 || !v8)
    {
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MODictionaryEncoder *)v9 encodeDictionary:v11];
      }

      v10 = 0;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

+ (id)decodeToDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MODictionaryEncoder decodeToDictionary:];
    }

    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"MODictionaryEncoder.m" lineNumber:46 description:{@"Object is not of data type (in %s:%d)", "+[MODictionaryEncoder decodeToDictionary:]", 46}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v13];
    v9 = v13;
    if (v9 || !v8)
    {
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(MODictionaryEncoder *)v9 decodeToDictionary:v11];
      }

      v10 = 0;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

+ (void)encodeDictionary:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 23;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Object is not of dictionary type (in %s:%d)", v1, 0x12u);
}

+ (void)encodeDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error when serialization to json, %@", &v2, 0xCu);
}

+ (void)decodeToDictionary:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 46;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", v1, 0x12u);
}

+ (void)decodeToDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Error when serialization to dictionary, %@", &v2, 0xCu);
}

@end