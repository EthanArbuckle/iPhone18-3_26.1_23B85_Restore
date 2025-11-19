@interface DMDFetchDevicePropertiesOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
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

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[DMDDeviceController shared];
  v6 = [v4 propertyKeys];
  v7 = [NSSet setWithArray:v6];
  v16 = [v5 deviceWithKeys:v7];

  v8 = [v4 propertyKeys];

  v9 = [v16 dictionaryWithValuesForKeys:v8];
  v10 = [v9 mutableCopy];

  v11 = +[NSNull null];
  v12 = [v10 allKeysForObject:v11];

  [v10 removeObjectsForKeys:v12];
  v13 = [DMFFetchDevicePropertiesResultObject alloc];
  v14 = [v16 errorsForKeys];
  v15 = [v13 initWithValuesByPropertyKey:v10 errorsByPropertyKey:v14];
  [(DMDFetchDevicePropertiesOperation *)self endOperationWithResultObject:v15];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___DMDFetchDevicePropertiesOperation;
  if (!objc_msgSendSuper2(&v10, "validateRequest:error:", v6, a4))
  {
    goto LABEL_6;
  }

  v7 = [v6 propertyKeys];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v11 = DMFInvalidParameterErrorKey;
    v12 = @"request.propertyKeys";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_6:
    LOBYTE(a4) = 0;
    goto LABEL_7;
  }

  LOBYTE(a4) = 1;
LABEL_7:

  return a4;
}

@end