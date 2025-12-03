@interface SESKeyDesignationStorageCoordinator
+ (id)getAndReturnError:(id *)error;
- (_TtC10seserviced35SESKeyDesignationStorageCoordinator)init;
- (id)findKeyWithKeyIdentifier:(id)identifier;
- (void)commit;
- (void)designateKeyWithAid:(id)aid slotNumber:(int64_t)number keyIdentifier:(id)identifier assetACL:(id)l assetACLAttestation:(id)attestation operationApprovalVersion:(int64_t)version designation:(int64_t)designation;
- (void)removeDesignationWithKeyIdentifier:(id)identifier;
- (void)removeWithDesignation:(int64_t)designation;
@end

@implementation SESKeyDesignationStorageCoordinator

+ (id)getAndReturnError:(id *)error
{
  v3 = sub_100120FD0();

  return v3;
}

- (id)findKeyWithKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_10011FFF0(v6, v8);
  sub_10006A178(v6, v8);

  return v9;
}

- (void)designateKeyWithAid:(id)aid slotNumber:(int64_t)number keyIdentifier:(id)identifier assetACL:(id)l assetACLAttestation:(id)attestation operationApprovalVersion:(int64_t)version designation:(int64_t)designation
{
  aidCopy = aid;
  identifierCopy = identifier;
  lCopy = l;
  attestationCopy = attestation;
  selfCopy = self;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  sub_10012050C(v17, v19, number, v20, v22, v23, v25, v26, v28, version, designation);
  sub_10006A178(v26, v28);
  sub_10006A178(v23, v25);
  sub_10006A178(v20, v22);
  sub_10006A178(v17, v19);
}

- (void)removeDesignationWithKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys;
  swift_beginAccess();
  sub_100069E2C(v6, v8);
  v10 = sub_100121D60((selfCopy + v9), v6, v8);
  sub_10006A178(v6, v8);
  v11 = *(&selfCopy->super.isa + v9);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v13 = *(&selfCopy->super.isa + v9);
    }

    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12 >= v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v10)
    {
LABEL_3:
      sub_1001A2540(v10, v12);
      swift_endAccess();
      sub_10006A178(v6, v8);
      *(&selfCopy->super.isa + OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_mutated) = 1;

      return;
    }
  }

  __break(1u);
}

- (void)removeWithDesignation:(int64_t)designation
{
  v5 = OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys;
  swift_beginAccess();
  selfCopy = self;
  v7 = sub_100120D70((self + v5), designation);
  v8 = *(&self->super.isa + v5);
  if (v8 >> 62)
  {
    v10 = v7;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v10;
    if (v9 >= v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v7)
    {
LABEL_3:
      sub_1001A2540(v7, v9);
      swift_endAccess();
      *(&selfCopy->super.isa + OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_mutated) = 1;

      return;
    }
  }

  __break(1u);
}

- (void)commit
{
  v2 = OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_mutated;
  if (*(&self->super.isa + OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_mutated) == 1)
  {
    v3 = OBJC_IVAR____TtC10seserviced35SESKeyDesignationStorageCoordinator_keys;
    swift_beginAccess();
    v5 = *(&self->super.isa + v3);
    sub_1001217D8();
    selfCopy = self;

    isa = Array._bridgeToObjectiveC()().super.isa;

    SESDesignatedKeyCommit();

    *(&self->super.isa + v2) = 0;
  }
}

- (_TtC10seserviced35SESKeyDesignationStorageCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end