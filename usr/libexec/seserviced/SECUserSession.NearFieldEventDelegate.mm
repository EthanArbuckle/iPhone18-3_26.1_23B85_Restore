@interface SECUserSession.NearFieldEventDelegate
- (void)session:(id)session didExpireAuthorizationForApplet:(id)applet;
- (void)session:(id)session didReceiveHCIData:(id)data forAppletWithIdentifier:(id)identifier;
- (void)session:(id)session fieldChanged:(BOOL)changed;
@end

@implementation SECUserSession.NearFieldEventDelegate

- (void)session:(id)session didReceiveHCIData:(id)data forAppletWithIdentifier:(id)identifier
{
  sessionCopy = session;
  dataCopy = data;
  identifierCopy = identifier;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_10021AAE0(v11, v13, v14, v16);
  sub_10006A178(v14, v16);
  sub_10006A178(v11, v13);
}

- (void)session:(id)session fieldChanged:(BOOL)changed
{
  sessionCopy = session;
  selfCopy = self;
  sub_10021ABA8(changed);
}

- (void)session:(id)session didExpireAuthorizationForApplet:(id)applet
{
  v7 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  sessionCopy = session;
  appletCopy = applet;
  selfCopy = self;

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