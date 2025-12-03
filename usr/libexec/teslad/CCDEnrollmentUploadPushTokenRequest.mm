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
  pushToken = [(CCDEnrollmentUploadPushTokenRequest *)self pushToken];
  [v3 setPushToken:pushToken];

  pushTopic = [(CCDEnrollmentUploadPushTokenRequest *)self pushTopic];
  [v3 setPushTopic:pushTopic];

  [v3 setEligibleForMigration:{-[CCDEnrollmentUploadPushTokenRequest eligibleForMigration](self, "eligibleForMigration")}];
  eligibilityDescription = [(CCDEnrollmentUploadPushTokenRequest *)self eligibilityDescription];
  [v3 setEligibilityDescription:eligibilityDescription];

  return v3;
}

@end