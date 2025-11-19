@interface CCDEnrollmentStartMDMMigrationRequest
- (id)enrollmentURLString;
- (id)requestPayload;
@end

@implementation CCDEnrollmentStartMDMMigrationRequest

- (id)enrollmentURLString
{
  v2 = [CCDFeatures depBaseURLStringWithURLString:@"https://iprofiles.apple.com"];
  v3 = [v2 stringByAppendingPathComponent:@"/startMdmMigration"];

  return v3;
}

- (id)requestPayload
{
  v2 = objc_opt_new();

  return v2;
}

@end