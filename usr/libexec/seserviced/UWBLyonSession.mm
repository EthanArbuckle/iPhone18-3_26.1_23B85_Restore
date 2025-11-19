@interface UWBLyonSession
- (void)session:(id)a3 didPrefetchAcwgUrsk:(unsigned int)a4 error:(id)a5;
- (void)session:(id)a3 didReceiveAopSFZoneUpdate:(id)a4;
- (void)session:(id)a3 didStartAcwgRanging:(int64_t)a4;
- (void)session:(id)a3 didSuspendAcwgRanging:(int64_t)a4;
- (void)session:(id)a3 requestAcwgRangingSessionResume:(unsigned int)a4 withSessionTriggerReason:(int64_t)a5;
- (void)session:(id)a3 requestAcwgRangingSessionSuspend:(unsigned int)a4 withSuspendTriggerReason:(int64_t)a5;
@end

@implementation UWBLyonSession

- (void)session:(id)a3 requestAcwgRangingSessionSuspend:(unsigned int)a4 withSuspendTriggerReason:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_10024EAA0(sub_1000E232C);
}

- (void)session:(id)a3 requestAcwgRangingSessionResume:(unsigned int)a4 withSessionTriggerReason:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_10024EAA0(sub_1000E2750);
}

- (void)session:(id)a3 didStartAcwgRanging:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_10024EAA0(sub_1000E2C0C);
}

- (void)session:(id)a3 didSuspendAcwgRanging:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_10024EC34();
}

- (void)session:(id)a3 didPrefetchAcwgUrsk:(unsigned int)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_10024ECB4(a5, sub_1000CFDD0);
}

- (void)session:(id)a3 didReceiveAopSFZoneUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10024ECB4(a4, sub_1000D0564);
}

@end