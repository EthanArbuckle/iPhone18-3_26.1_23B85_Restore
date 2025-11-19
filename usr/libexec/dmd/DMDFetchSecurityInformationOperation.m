@interface DMDFetchSecurityInformationOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDFetchSecurityInformationOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchSecurityInformationOperation;
  [(DMDFetchSecurityInformationOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v17 = +[MCDeviceCapabilities currentDevice];
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [DMFSecurityInformation alloc];
  v5 = [v17 supportsBlockLevelEncryption];
  v6 = [v17 supportsFileLevelEncryption];
  v7 = [v3 isPasscodeSet];
  v8 = [v3 currentPasscodeIsCompliantWithGlobalRestrictionsOutError:0];
  v9 = [v3 currentPasscodeIsCompliantWithProfileRestrictionsOutError:0];
  v10 = MCFeaturePasscodeLockGraceTime;
  v11 = [v3 effectiveValueForSetting:MCFeaturePasscodeLockGraceTime];
  v12 = [v11 unsignedIntegerValue];
  v13 = [v3 userValueForSetting:v10];
  v14 = [v4 initWithSupportsBlockLevelEncryption:v5 supportsFileLevelEncryption:v6 passcodeIsSet:v7 passcodeIsCompliantWithGlobalRestrictions:v8 passcodeIsCompliantWithProfileRestrictions:v9 passcodeLockGracePeriodEnforced:v12 passcodeLockGracePeriod:{objc_msgSend(v13, "unsignedIntegerValue")}];

  v15 = [[DMFFetchSecurityInformationResultObject alloc] initWithSecurityInformation:v14];
  [(DMDFetchSecurityInformationOperation *)self endOperationWithResultObject:v15];
}

@end