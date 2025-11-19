@interface DMDFetchClassroomInstructorEndpointOperation
+ (id)whitelistedClassesForRequest;
- (void)waitUntilFinished;
@end

@implementation DMDFetchClassroomInstructorEndpointOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchClassroomInstructorEndpointOperation;
  [(DMDFetchClassroomInstructorEndpointOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

@end