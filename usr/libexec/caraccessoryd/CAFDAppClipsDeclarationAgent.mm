@interface CAFDAppClipsDeclarationAgent
- (_TtC13caraccessoryd28CAFDAppClipsDeclarationAgent)init;
- (void)supportedAppClipsForPairedVehicleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CAFDAppClipsDeclarationAgent

- (_TtC13caraccessoryd28CAFDAppClipsDeclarationAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)supportedAppClipsForPairedVehicleIdentifier:(id)identifier completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(selfCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> (), v12);

  (*(v7 + 8))(v10, v6);
}

@end