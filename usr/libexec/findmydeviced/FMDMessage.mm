@interface FMDMessage
+ (void)stopAllSounds;
- (void)activate;
@end

@implementation FMDMessage

- (void)activate
{
  v3 = +[FMDMessageMgr_iOS sharedInstance];
  [v3 activateMessage:self];
}

+ (void)stopAllSounds
{
  v2 = +[FMDMessageMgr_iOS sharedInstance];
  [v2 stopAllSounds];
}

@end