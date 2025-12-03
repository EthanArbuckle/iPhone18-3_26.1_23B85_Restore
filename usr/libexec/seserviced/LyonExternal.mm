@interface LyonExternal
+ (_TtC10seserviced12LyonExternal)shared;
- (BOOL)blockRangingForReaderIdentifierWithReaderIdentifier:(id)identifier timeout:(double)timeout error:(id *)error;
- (BOOL)unblockRangingForReaderIdentifierWithReaderIdentifier:(id)identifier error:(id *)error;
- (_TtC10seserviced12LyonExternal)init;
- (id)getAllEndpoints;
- (id)getEndpointWithKeyIdentifier:(id)identifier;
- (id)getSupportedAliroVersions;
- (uint64_t)applyLatestAliroProtocolVersions;
- (void)updatePreArmState:(BOOL)state for:(id)for;
@end

@implementation LyonExternal

+ (_TtC10seserviced12LyonExternal)shared
{
  if (qword_100501C98 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B700;

  return v3;
}

- (id)getAllEndpoints
{
  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  sub_1000CAA04();
  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  sub_10023EFC4();
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)getEndpointWithKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_1002E8EF8(v6, v8);
  sub_10006A178(v6, v8);

  return v9;
}

- (BOOL)blockRangingForReaderIdentifierWithReaderIdentifier:(id)identifier timeout:(double)timeout error:(id *)error
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  selfCopy = self;
  sub_1002E9528(v7, v9, timeout);

  return 1;
}

- (BOOL)unblockRangingForReaderIdentifierWithReaderIdentifier:(id)identifier error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  sub_1002E96E4(v5, v7);

  return 1;
}

- (id)getSupportedAliroVersions
{
  v2 = sub_1002E9890();

  return v2;
}

- (void)updatePreArmState:(BOOL)state for:(id)for
{
  stateCopy = state;
  forCopy = for;
  selfCopy = self;
  sub_1002E9CE8(stateCopy, forCopy);
}

- (_TtC10seserviced12LyonExternal)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(LyonExternal *)&v3 init];
}

- (uint64_t)applyLatestAliroProtocolVersions
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v6 = v5;
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v4, v0);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  aBlock[4] = sub_1002E8844;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100346DB0;
  aBlock[3] = &unk_1004CFF30;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

@end