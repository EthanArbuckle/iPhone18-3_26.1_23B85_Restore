@interface DIPWebService
- (_TtC8coreidvd13DIPWebService)init;
- (void)dealloc;
@end

@implementation DIPWebService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession);
  v3 = *(v2 + 16);
  selfCopy = self;

  [v3 invalidateAndCancel];
  [*(v2 + 24) invalidateAndCancel];

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for DIPWebService();
  [(DIPWebService *)&v5 dealloc];
}

- (_TtC8coreidvd13DIPWebService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end