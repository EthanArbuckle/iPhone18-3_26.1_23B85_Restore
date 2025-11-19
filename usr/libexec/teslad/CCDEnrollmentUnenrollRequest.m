@interface CCDEnrollmentUnenrollRequest
- (id)enrollmentURLString;
- (id)requestPayload;
@end

@implementation CCDEnrollmentUnenrollRequest

- (id)enrollmentURLString
{
  v2 = [CCDFeatures depBaseURLStringWithURLString:@"https://iprofiles.apple.com"];
  v3 = [v2 stringByAppendingPathComponent:@"/v2/unenroll"];

  return v3;
}

- (id)requestPayload
{
  v2 = objc_opt_new();

  return v2;
}

@end