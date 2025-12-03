@interface MCNewChaperonePayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions;
@end

@implementation MCNewChaperonePayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  if (error)
  {
    v7 = MCInstallationErrorDomain;
    v8 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v7 code:4024 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];
  }

  return 0;
}

- (void)didInstallOldGlobalRestrictions:(id)restrictions newGlobalRestrictions:(id)globalRestrictions
{
  CFPreferencesSetAppValue(@"com.apple.purplebuddy", kCFBooleanTrue, @"SetupDone");

  CFPreferencesAppSynchronize(@"com.apple.purplebuddy");
}

@end