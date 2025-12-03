@interface UWBLyonSession
- (void)session:(id)session didPrefetchAcwgUrsk:(unsigned int)ursk error:(id)error;
- (void)session:(id)session didReceiveAopSFZoneUpdate:(id)update;
- (void)session:(id)session didStartAcwgRanging:(int64_t)ranging;
- (void)session:(id)session didSuspendAcwgRanging:(int64_t)ranging;
- (void)session:(id)session requestAcwgRangingSessionResume:(unsigned int)resume withSessionTriggerReason:(int64_t)reason;
- (void)session:(id)session requestAcwgRangingSessionSuspend:(unsigned int)suspend withSuspendTriggerReason:(int64_t)reason;
@end

@implementation UWBLyonSession

- (void)session:(id)session requestAcwgRangingSessionSuspend:(unsigned int)suspend withSuspendTriggerReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  sub_10024EAA0(sub_1000E232C);
}

- (void)session:(id)session requestAcwgRangingSessionResume:(unsigned int)resume withSessionTriggerReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  sub_10024EAA0(sub_1000E2750);
}

- (void)session:(id)session didStartAcwgRanging:(int64_t)ranging
{
  sessionCopy = session;
  selfCopy = self;
  sub_10024EAA0(sub_1000E2C0C);
}

- (void)session:(id)session didSuspendAcwgRanging:(int64_t)ranging
{
  sessionCopy = session;
  selfCopy = self;
  sub_10024EC34();
}

- (void)session:(id)session didPrefetchAcwgUrsk:(unsigned int)ursk error:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  sub_10024ECB4(error, sub_1000CFDD0);
}

- (void)session:(id)session didReceiveAopSFZoneUpdate:(id)update
{
  sessionCopy = session;
  updateCopy = update;
  selfCopy = self;
  sub_10024ECB4(update, sub_1000D0564);
}

@end