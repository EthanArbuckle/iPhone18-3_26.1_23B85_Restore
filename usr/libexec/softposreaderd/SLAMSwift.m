@interface SLAMSwift
- (id)transceive:(id)a3 error:(id *)a4;
- (void)log:(id)a3;
@end

@implementation SLAMSwift

- (id)transceive:(id)a3 error:(id *)a4
{
  v6 = a3;

  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (self->isCancelled[0] == 1)
  {
    type metadata accessor for CancellationError();
    sub_1000905E0();
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    sub_100009548(v7, v9);
    if (a4)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      v18 = 0;
      *a4 = v12;
    }

    else
    {

      v18 = 0;
    }
  }

  else
  {
    v10 = *&self->session[24];
    v11 = *&self->session[32];
    sub_10000BE18(self->session, v10);
    v14 = (*(v11 + 16))(v7, v9, v10, v11);
    v16 = v15;
    sub_10008E290(v7, v9, v14, v15);

    sub_100009548(v7, v9);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100009548(v14, v16);
    v18 = isa;
  }

  return v18;
}

- (void)log:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_10008DC14(v3, v5);
}

@end