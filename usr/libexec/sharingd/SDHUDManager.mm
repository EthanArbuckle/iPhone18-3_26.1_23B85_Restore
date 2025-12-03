@interface SDHUDManager
+ (SDHUDManager)shared;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)bannerDidDismissWithType:(int64_t)type;
- (void)currentBannerRequestWithCompletion:(id)completion;
- (void)dismissPairedUnlockBanner;
- (void)postPairedUnlockBannerFor:(id)for needsLockButton:(BOOL)button needsUpdate:(BOOL)update;
- (void)start;
- (void)updatePairedUnlockBannerToUnlocked;
@end

@implementation SDHUDManager

+ (SDHUDManager)shared
{
  if (qword_1009738A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1009A0B90;

  return v3;
}

- (void)start
{
  selfCopy = self;
  sub_1004517C4(&unk_1008E25C0, sub_100454A40, &unk_1008E25D8);
}

- (void)postPairedUnlockBannerFor:(id)for needsLockButton:(BOOL)button needsUpdate:(BOOL)update
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_1004507F8(v8, v10, button, update);
}

- (void)updatePairedUnlockBannerToUnlocked
{
  selfCopy = self;
  sub_1004517C4(&unk_1008E2520, sub_100454A24, &unk_1008E2538);
}

- (void)dismissPairedUnlockBanner
{
  selfCopy = self;
  sub_1004517C4(&unk_1008E24D0, sub_100454A1C, &unk_1008E24E8);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100454068(connectionCopy);

  return v9 & 1;
}

- (void)currentBannerRequestWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100452FA8(sub_1003CCB40, v5);
}

- (void)bannerDidDismissWithType:(int64_t)type
{
  selfCopy = self;
  sub_1004538B8(type);
}

@end