@interface BannerViewControllerBase
- (NSString)description;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (_TtC17proximitycontrold24BannerViewControllerBase)initWithCoder:(id)a3;
- (_TtC17proximitycontrold24BannerViewControllerBase)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation BannerViewControllerBase

- (_TtC17proximitycontrold24BannerViewControllerBase)initWithCoder:(id)a3
{
  *&self->requestID[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)requesterIdentifier
{
  static String._fromUTF8Repairing(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)requestIdentifier
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID);
  v3 = *&self->requestID[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID];

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)description
{
  v2 = self;
  sub_1000CCC94();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC17proximitycontrold24BannerViewControllerBase)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end