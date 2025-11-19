@interface SDHUDManager
+ (SDHUDManager)shared;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)bannerDidDismissWithType:(int64_t)a3;
- (void)currentBannerRequestWithCompletion:(id)a3;
- (void)dismissPairedUnlockBanner;
- (void)postPairedUnlockBannerFor:(id)a3 needsLockButton:(BOOL)a4 needsUpdate:(BOOL)a5;
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
  v2 = self;
  sub_1004517C4(&unk_1008E25C0, sub_100454A40, &unk_1008E25D8);
}

- (void)postPairedUnlockBannerFor:(id)a3 needsLockButton:(BOOL)a4 needsUpdate:(BOOL)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  sub_1004507F8(v8, v10, a4, a5);
}

- (void)updatePairedUnlockBannerToUnlocked
{
  v2 = self;
  sub_1004517C4(&unk_1008E2520, sub_100454A24, &unk_1008E2538);
}

- (void)dismissPairedUnlockBanner
{
  v2 = self;
  sub_1004517C4(&unk_1008E24D0, sub_100454A1C, &unk_1008E24E8);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100454068(v7);

  return v9 & 1;
}

- (void)currentBannerRequestWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100452FA8(sub_1003CCB40, v5);
}

- (void)bannerDidDismissWithType:(int64_t)a3
{
  v4 = self;
  sub_1004538B8(a3);
}

@end