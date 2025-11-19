@interface MCNewChaperonePayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
@end

@implementation MCNewChaperonePayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  if (a6)
  {
    v7 = MCInstallationErrorDomain;
    v8 = MCErrorArray();
    *a6 = [NSError MCErrorWithDomain:v7 code:4024 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];
  }

  return 0;
}

- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  CFPreferencesSetAppValue(@"com.apple.purplebuddy", kCFBooleanTrue, @"SetupDone");

  CFPreferencesAppSynchronize(@"com.apple.purplebuddy");
}

@end