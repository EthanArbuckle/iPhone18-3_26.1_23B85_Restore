@interface CCDEnrollmentRetrieveCloudConfigurationRequest
- (id)enrollmentURLString;
- (id)requestPayload;
@end

@implementation CCDEnrollmentRetrieveCloudConfigurationRequest

- (id)enrollmentURLString
{
  v2 = [CCDFeatures depBaseURLStringWithURLString:@"https://iprofiles.apple.com"];
  v3 = [v2 stringByAppendingPathComponent:@"/v2/profile"];

  return v3;
}

- (id)requestPayload
{
  v2 = objc_opt_new();

  return v2;
}

@end