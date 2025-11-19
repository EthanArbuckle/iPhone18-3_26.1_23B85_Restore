@interface dockPairing
- (void)clearSecureTrackingUserPreference;
- (void)saveSecureTrackingUserPreferenceWithEnabled:(BOOL)a3;
- (void)setSetupPayloadWithUri:(id)a3 completion:(id)a4;
@end

@implementation dockPairing

- (void)setSetupPayloadWithUri:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  sub_1001801F4(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)saveSecureTrackingUserPreferenceWithEnabled:(BOOL)a3
{
  v3 = a3;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);

  if (v3)
  {
    v5 = 5;
  }

  else
  {
    v5 = 12;
  }

  sub_1000EC468(v5);
}

- (void)clearSecureTrackingUserPreference
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);

  sub_1000EC468(13);
}

@end