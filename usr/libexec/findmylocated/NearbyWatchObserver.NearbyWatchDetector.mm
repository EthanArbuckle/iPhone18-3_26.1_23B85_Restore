@interface NearbyWatchObserver.NearbyWatchDetector
- (_TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector)init;
- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby;
@end

@implementation NearbyWatchObserver.NearbyWatchDetector

- (void)deviceIsNearbyDidChange:(id)change isNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  v5 = (self + OBJC_IVAR____TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector_state);
  selfCopy = self;
  os_unfair_lock_lock(v5);
  v6 = sub_10004B564(&qword_1005A94D8, &qword_1004C2988);
  sub_100089034(v5 + *(v6 + 28), nearbyCopy, 0);
  os_unfair_lock_unlock(v5);
}

- (_TtCC13findmylocated19NearbyWatchObserverP33_D1058E42C246155F13E2C4F9907E5BB119NearbyWatchDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end