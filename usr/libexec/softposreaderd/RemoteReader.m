@interface RemoteReader
- (_TtC14softposreaderd12RemoteReader)init;
- (void)cancelReadWithReply:(id)a3;
- (void)generateSecureReaderBlobWithTrxBlob:(id)a3 pinBlob:(id)a4 reply:(id)a5;
- (void)getCardReaderBlobWithTxnBlob:(id)a3 reply:(id)a4;
- (void)getSAFSessionTimeRemainingWithToken:(id)a3 reply:(id)a4;
- (void)readCardWithParameter:(id)a3 delegate:(id)a4 reply:(id)a5;
- (void)signBatchWithBatchId:(id)a3 count:(int64_t)a4 vtid:(id)a5 reply:(id)a6;
- (void)signTransactionWithPaymentCardData:(id)a3 generalCardData:(id)a4 transactionUUID:(id)a5 vtid:(id)a6 reply:(id)a7;
- (void)validateWithReadParameters:(id)a3 reply:(id)a4;
@end

@implementation RemoteReader

- (void)validateWithReadParameters:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v8 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v7);
  v9 = *(v8 + 8);
  v10 = a3;
  v11 = self;
  v9(v10, v7, v8);
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)readCardWithParameter:(id)a3 delegate:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v11 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v10);
  v12 = *(v11 + 16);
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  v12(a3, a4, sub_10018D094, v9, v10, v11);

  swift_unknownObjectRelease();
}

- (void)cancelReadWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v6 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v5);
  v7 = *(v6 + 24);
  v8 = self;
  v7(v5, v6);
  v4[2](v4);

  _Block_release(v4);
}

- (void)generateSecureReaderBlobWithTrxBlob:(id)a3 pinBlob:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = self;
  v11 = a4;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v11)
  {
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v18 = *&v10->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v19 = *&v10->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&v10->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v18);
  v20 = (*(v19 + 32))(v12, v14, v15, v17, v18, v19);
  v22 = v21;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8[2](v8, isa, 0);

  sub_10001A074(v15, v17);
  sub_100009548(v12, v14);
  _Block_release(v8);

  sub_100009548(v20, v22);
}

- (void)getSAFSessionTimeRemainingWithToken:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v9);
  v11 = *(v10 + 40);
  v12 = self;
  v13 = v11(v6, v8, v9, v10);

  v14 = [objc_allocWithZone(NSNumber) initWithInteger:v13];
  v5[2](v5, v14, 0);

  _Block_release(v5);
}

- (void)signTransactionWithPaymentCardData:(id)a3 generalCardData:(id)a4 transactionUUID:(id)a5 vtid:(id)a6 reply:(id)a7
{
  v13 = type metadata accessor for UUID();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = _Block_copy(a7);
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = self;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v22;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v24;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v39 = v21;
  v34 = *&v21->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v33 = *&v21->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&v21->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v34);
  v35 = (*(v33 + 48))(v28, v29, v25, v27, v16, v30, v32, v34, v33);

  v36 = v38;
  (*(v38 + 2))(v38, v35, 0);
  _Block_release(v36);

  sub_100009548(v25, v27);
  sub_100009548(v28, v29);
  (*(v40 + 8))(v16, v41);
}

- (void)signBatchWithBatchId:(id)a3 count:(int64_t)a4 vtid:(id)a5 reply:(id)a6
{
  v21 = a4;
  v8 = type metadata accessor for UUID();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a6);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v17 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v16 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v17);
  v18 = *(v16 + 56);
  v22 = self;
  v19 = v18(v11, v21, v13, v15, v17, v16);

  v12[2](v12, v19, 0);
  _Block_release(v12);

  (*(v23 + 8))(v11, v24);
}

- (void)getCardReaderBlobWithTxnBlob:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 16];
  v10 = *&self->instance[OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance + 24];
  sub_10000BE18((&self->super.isa + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance), v9);
  v11 = *(v10 + 64);
  v12 = self;
  v11(v6, v8, v9, v10);

  v13 = String._bridgeToObjectiveC()();

  v5[2](v5, v13);

  _Block_release(v5);
}

- (_TtC14softposreaderd12RemoteReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end