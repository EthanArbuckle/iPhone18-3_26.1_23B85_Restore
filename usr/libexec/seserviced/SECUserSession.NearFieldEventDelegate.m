@interface SECUserSession.NearFieldEventDelegate
- (void)session:(id)a3 didExpireAuthorizationForApplet:(id)a4;
- (void)session:(id)a3 didReceiveHCIData:(id)a4 forAppletWithIdentifier:(id)a5;
- (void)session:(id)a3 fieldChanged:(BOOL)a4;
@end

@implementation SECUserSession.NearFieldEventDelegate

- (void)session:(id)a3 didReceiveHCIData:(id)a4 forAppletWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_10021AAE0(v11, v13, v14, v16);
  sub_10006A178(v14, v16);
  sub_10006A178(v11, v13);
}

- (void)session:(id)a3 fieldChanged:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10021ABA8(a4);
}

- (void)session:(id)a3 didExpireAuthorizationForApplet:(id)a4
{
  v7 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = a3;
  v10 = a4;
  v11 = self;

  os_unfair_lock_lock((v8 + 32));
  v12 = *(v8 + 16);
  sub_100113B54(v12);
  os_unfair_lock_unlock((v8 + 32));

  if (v12)
  {
    v12(v13);
    sub_1000B2A4C(v12);
  }
}

@end