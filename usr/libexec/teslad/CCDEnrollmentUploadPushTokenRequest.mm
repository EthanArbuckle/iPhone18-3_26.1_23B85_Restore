@interface CCDEnrollmentUploadPushTokenRequest
- (id)enrollmentURLString;
- (id)requestPayload;
@end

@implementation CCDEnrollmentUploadPushTokenRequest

- (id)enrollmentURLString
{
  v2 = [CCDFeatures depBaseURLStringWithURLString:@"https://iprofiles.apple.com"];
  v3 = [v2 stringByAppendingPathComponent:@"/deviceRegister"];

  return v3;
}

- (id)requestPayload
{
  v3 = objc_opt_new();
  v4 = [(CCDEnrollmentUploadPushTokenRequest *)self pushToken];
  [v3 setPushToken:v4];

  v5 = [(CCDEnrollmentUploadPushTokenRequest *)self pushTopic];
  [v3 setPushTopic:v5];

  [v3 setEligibleForMigration:{-[CCDEnrollmentUploadPushTokenRequest eligibleForMigration](self, "eligibleForMigration")}];
  v6 = [(CCDEnrollmentUploadPushTokenRequest *)self eligibilityDescription];
  [v3 setEligibilityDescription:v6];

  return v3;
}

@end