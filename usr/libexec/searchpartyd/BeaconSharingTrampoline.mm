@interface BeaconSharingTrampoline
- (_TtC12searchpartyd23BeaconSharingTrampoline)init;
- (void)checkDataIntegrityWithShareIdentifier:(id)a3 completion:(id)a4;
- (void)share:(id)a3 recipients:(id)a4 shareType:(unint64_t)a5 completion:(id)a6;
- (void)sharingLimitsWithCompletion:(id)a3;
- (void)startRefreshingSharesWithCompletion:(id)a3;
- (void)stopRefreshingSharesWithCompletion:(id)a3;
- (void)updatedCircleIdentifiers:(id)a3 completion:(id)a4;
@end

@implementation BeaconSharingTrampoline

- (void)share:(id)a3 recipients:(id)a4 shareType:(unint64_t)a5 completion:(id)a6
{
  v32 = self;
  v33 = a5;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v30 = &v28 - v9;
  v31 = type metadata accessor for UUID();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v31);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v16 = _Block_copy(a6);
  v29 = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for TaskPriority();
  v19 = v30;
  (*(*(v18 - 8) + 56))(v30, 1, 1, v18);
  v20 = v15;
  v21 = v31;
  (*(v10 + 16))(v13, v20, v31);
  v22 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v32;
  *(v24 + 4) = v33;
  *(v24 + 5) = v25;
  (*(v10 + 32))(&v24[v22], v13, v21);
  *&v24[v23] = v28;
  v26 = &v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v26 = sub_1001BDE18;
  v26[1] = v17;
  v27 = v25;

  sub_10025EDD4(0, 0, v19, &unk_101390CF8, v24);

  (*(v10 + 8))(v29, v21);
}

- (void)startRefreshingSharesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = *sub_1000035D0((&self->super.isa + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *&self->implementation[OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 16]);
  v6 = self;
  sub_1001B9924(v5, sub_1001BE468);
}

- (void)stopRefreshingSharesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1001B9B28(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)updatedCircleIdentifiers:(id)a3 completion:(id)a4
{
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  type metadata accessor for UUID();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v11;
  v14[6] = sub_1001BE468;
  v14[7] = v12;
  v15 = self;
  sub_10025EDD4(0, 0, v9, &unk_101390B60, v14);
}

- (void)checkDataIntegrityWithShareIdentifier:(id)a3 completion:(id)a4
{
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v15 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v18 = _Block_copy(a4);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_1000D2A70(v17, v15, &qword_1016980D0, &unk_10138F3B0);
  v23 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = self;
  sub_1000D2AD8(v15, v24 + v23, &qword_1016980D0, &unk_10138F3B0);
  v25 = (v24 + ((v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_1001BC47C;
  v25[1] = v21;
  v26 = self;

  sub_10025EDD4(0, 0, v10, &unk_101390B28, v24);

  sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
}

- (void)sharingLimitsWithCompletion:(id)a3
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = sub_1001BC2E0;
  v11[5] = v9;
  sub_10025EDD4(0, 0, v7, &unk_101390AF8, v11);
}

- (_TtC12searchpartyd23BeaconSharingTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end