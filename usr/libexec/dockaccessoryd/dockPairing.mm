@interface dockPairing
- (void)clearSecureTrackingUserPreference;
- (void)saveSecureTrackingUserPreferenceWithEnabled:(BOOL)enabled;
- (void)setSetupPayloadWithUri:(id)uri completion:(id)completion;
@end

@implementation dockPairing

- (void)setSetupPayloadWithUri:(id)uri completion:(id)completion
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  sub_1001801F4(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)saveSecureTrackingUserPreferenceWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);

  if (enabledCopy)
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