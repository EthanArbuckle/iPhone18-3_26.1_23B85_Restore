@interface CCDEnrollmentEndMDMMigrationRequest
- (id)enrollmentURLString;
- (id)requestPayload;
@end

@implementation CCDEnrollmentEndMDMMigrationRequest

- (id)enrollmentURLString
{
  v2 = [CCDFeatures depBaseURLStringWithURLString:@"https://iprofiles.apple.com"];
  v3 = [v2 stringByAppendingPathComponent:@"/endMdmMigration"];

  return v3;
}

- (id)requestPayload
{
  v3 = objc_opt_new();
  status = [(CCDEnrollmentEndMDMMigrationRequest *)self status];
  [v3 setStatus:status];

  serverUID = [(CCDEnrollmentEndMDMMigrationRequest *)self serverUID];
  [v3 setServerUID:serverUID];

  return v3;
}

@end