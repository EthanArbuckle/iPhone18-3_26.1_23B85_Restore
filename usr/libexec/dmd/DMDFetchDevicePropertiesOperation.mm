@interface DMDFetchDevicePropertiesOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchDevicePropertiesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchDevicePropertiesOperation;
  [(DMDFetchDevicePropertiesOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[DMDDeviceController shared];
  propertyKeys = [requestCopy propertyKeys];
  v7 = [NSSet setWithArray:propertyKeys];
  v16 = [v5 deviceWithKeys:v7];

  propertyKeys2 = [requestCopy propertyKeys];

  v9 = [v16 dictionaryWithValuesForKeys:propertyKeys2];
  v10 = [v9 mutableCopy];

  v11 = +[NSNull null];
  v12 = [v10 allKeysForObject:v11];

  [v10 removeObjectsForKeys:v12];
  v13 = [DMFFetchDevicePropertiesResultObject alloc];
  errorsForKeys = [v16 errorsForKeys];
  v15 = [v13 initWithValuesByPropertyKey:v10 errorsByPropertyKey:errorsForKeys];
  [(DMDFetchDevicePropertiesOperation *)self endOperationWithResultObject:v15];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___DMDFetchDevicePropertiesOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", requestCopy, error))
  {
    goto LABEL_6;
  }

  propertyKeys = [requestCopy propertyKeys];

  if (!propertyKeys)
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.propertyKeys";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *error = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_7;
  }

  LOBYTE(error) = 1;
LABEL_7:

  return error;
}

@end