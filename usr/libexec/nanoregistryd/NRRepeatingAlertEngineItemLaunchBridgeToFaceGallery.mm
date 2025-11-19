@interface NRRepeatingAlertEngineItemLaunchBridgeToFaceGallery
- (void)alternateButtonWasPressed;
@end

@implementation NRRepeatingAlertEngineItemLaunchBridgeToFaceGallery

- (void)alternateButtonWasPressed
{
  CFPreferencesSetAppValue(@"kShouldJumpToFaceGalleryKey", kCFBooleanTrue, @"com.apple.Bridge");

  CFPreferencesAppSynchronize(@"com.apple.Bridge");
}

@end